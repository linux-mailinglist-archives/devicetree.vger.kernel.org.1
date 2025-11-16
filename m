Return-Path: <devicetree+bounces-239101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1D3C61564
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 14:12:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B60DD35047E
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C822D8DA8;
	Sun, 16 Nov 2025 13:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="TuwwCpKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335192D7DC7;
	Sun, 16 Nov 2025 13:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763298751; cv=none; b=PKr93NzcJ4O5rjOFcca0l4TZGW52JTuekccXkDWh2ItK4vhLQz15NUQ3okbqUSnYxdBh4NnrmNaklJksduEyHegeYrHGuyE6qWBfjUrY07k+x5nkJdFKb/UqrQorTCj6Z8vt7N7BNAGDqPTz3G19fdFrBDMe11R7uc8+fq2HFc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763298751; c=relaxed/simple;
	bh=6pWrqvJ6kTGH14rcD3XSN5RJccBAC505U5M2IFpUZ7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZW47Josd4JQFEExhVx9zQJRupt1jcLI3MfA+hSAuq7yBPqT+alBDAkfoqGeL5gAz3IkTQMnQpZrNKUSNyEScjRR0v2aA/SEHZw4pJRpKSrB5c+le/29x0iabhJVhAzmycwMifo4axCO6WcsAVqDwLHlKX21t/H9pXpK2X1ukG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=TuwwCpKF; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=1bAnrOtRdIsc3omVj8pzR/BbI+fOSQczz6AsAKVXxRg=;
	b=TuwwCpKF5TN26ytgn8rs8S957dSI+8IU5Fmg2m0eCIFSVM+2WV64zM157nXm0E
	xURcr1UrtM0QArIIW9IgZ55EaoGQlNHn5o2isNxAatuD7d8EgWM6Vb/mxb/IIlXq
	F4i8JU/inkfsNHQCm2gLUvl1Ym1FVWabS8jl42lWgTKmI=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCnHEyOzRlpmY0YAg--.8000S3;
	Sun, 16 Nov 2025 21:11:44 +0800 (CST)
Date: Sun, 16 Nov 2025 21:11:42 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux@ew.tq-group.com,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: mba8mx: Add MicIn routing
Message-ID: <aRnNjnyUPc82GVZp@dragon>
References: <20251113104859.1354420-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113104859.1354420-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:M88vCgCnHEyOzRlpmY0YAg--.8000S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUw4SoDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNxA4nWkZzZBtmQAA3b

On Thu, Nov 13, 2025 at 11:48:54AM +0100, Alexander Stein wrote:
> MicIn is connected to IN3_L. Add routing including the Mic Bias.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied all, thanks!


