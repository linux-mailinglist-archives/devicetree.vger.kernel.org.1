Return-Path: <devicetree+bounces-82202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB691EDC0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 06:15:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEE73285076
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 04:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1341DA24;
	Tue,  2 Jul 2024 04:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="T0aZp4XZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5186FCB
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 04:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719893730; cv=none; b=HLT01Jbtd/ZOu0XwEMRNW/+LjabF1jX3D+a8XPH5i/U3Q6HqQaAOlQXK5OEevTnmGisdMJfYUhCzv/Cd0MjwVGjJHqJ8er3Qa5dD0XfSSkIfnnc19mlPtqCqrh9NIYCNHUti1K1hRTEv3piYQZGnwaXSnR21fQKpeYrq3aYClCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719893730; c=relaxed/simple;
	bh=B6JQ1lFaaesqbygFK3DaqXC/sXzecViX0oE8axOCyxE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T5P9uX80XIenYA7wk79jKf2ae1kw0C+mR84wfgod64TIC0ahVZBs3VdlcdEWBsZ4fM4fL3XLcioxGmKlPujkugI3oZQdhG767VFz9PdGJ03UXPeudWgrgkBlCNYHgSvo/88ojIAvVblk2KHTUpYIKYy3OB3pe1D9Tz+c31K8fWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=T0aZp4XZ; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=3vKI+MzES17VVsUxVndZKuD9mJDGOI0oaeEUsf55ffk=;
	b=T0aZp4XZo+o5opEzlG6QWhkgCtcDcN4FJA5s+CVmJuZR6cnf180nqenx2MX4q9
	nPHFJgwlbN6Fd30cBzk1p4egSGm7lbLytfTQ5LCIHRSZPC3P9LqAkdIhUiQdTamE
	gZQpnf3D4cAH30W4EfVNMlWhyho+AffKE2uZMTjyUmCrA=
Received: from dragon (unknown [114.218.218.47])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgBnjyfDfoNmhv48AA--.8122S3;
	Tue, 02 Jul 2024 12:15:01 +0800 (CST)
Date: Tue, 2 Jul 2024 12:14:59 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: Remove 'snps,rx-sched-sp'
Message-ID: <ZoN+w6jNx+EU04dO@dragon>
References: <20240701205458.164053-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701205458.164053-1-festevam@gmail.com>
X-CM-TRANSID:Mc8vCgBnjyfDfoNmhv48AA--.8122S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUx66zUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAUQZWZqrzHYLQAAsT

On Mon, Jul 01, 2024 at 05:54:58PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to nxp,dwmac-imx.yaml, 'snps,rx-sched-sp' is not a valid
> property.
> 
> Remove it from the imx8mp board devicetree files to avoid
> dt-schema warnings:
> 
> ... 'snps,tx-sched-sp' does not match any of the regexes
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


