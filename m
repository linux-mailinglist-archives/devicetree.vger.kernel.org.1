Return-Path: <devicetree+bounces-231272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2C4C0BD6B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 06:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE0A3189BFC6
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 05:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5F822D592C;
	Mon, 27 Oct 2025 05:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="F3/HY2nw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E71200BAE
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761543745; cv=none; b=E+3u0pdCnfTGraqmFHggymJtMJEoQW8O//P0CL9wLnZP6nObAaDoKBed6Khxy7kgPNElHb/H+ZQV30qsoUZye6FWCtWm27EQMdWtFG1efW1CsVrQngnGqnjjQQYGratYUah3JC4Or2jbnJPjmDEsctkgKvsrEKh3WLIlhoZr7lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761543745; c=relaxed/simple;
	bh=7Iz2Y6HOYP4x+XYWmYKLdl6D7380Pyz15nz2Nn9oXX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BDDrMeIwKA/EXRUmPjM+venavGiLEoMuK63PcCDOmaPuLr4gdh+1kI8td9pL2YZ/nr3bRx3hNwOttudIVGhqwAF7qtX+/uXGwedlTEUkAs8weGsLfEGkXMuUrNTQTaj1iKXgxBtggCYfhWkmsN/ZKRNvZTk+e5D0bbBayi4USIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=F3/HY2nw; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=iVn4b0deNMpWiRLKcZDZlWur5NaH7E5RHtbADcGazGw=;
	b=F3/HY2nw5S6JLNqpitn99uVadtBHG8q2efti5F2VT3SfG79Q1WOqTTiMz+TVIr
	1u/hHh/T6FAH6VTsaJmfN8fIbVQxm2dsiPmhmAdrPLSs3qyfZKe9Y8Pc1QPIqvFp
	rQM/0VVvWHU3Mwwfp/Z3Mc31nmltNz4zfJXQe0jVYvU2c=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDHz6gVBv9okR2+AA--.24198S3;
	Mon, 27 Oct 2025 13:41:43 +0800 (CST)
Date: Mon, 27 Oct 2025 13:41:40 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Jan Remmet <j.remmet@phytec.de>
Cc: Teresa Remmet <t.remmet@phytec.de>,
	Janine Hagemann <j.hagemann@phytec.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/6] arm64: dts: imx8mm-phyboard-polis-peb-av-10:
 reorder properties to match dts coding style
Message-ID: <aP8GFPBVQhyIA0-2@dragon>
References: <20251007-wip-j-remmet-phytec-de-bspimx8m-3801_peb-av-10_with_ac209-v2-0-7e5de62c79bf@phytec.de>
 <20251007-wip-j-remmet-phytec-de-bspimx8m-3801_peb-av-10_with_ac209-v2-3-7e5de62c79bf@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251007-wip-j-remmet-phytec-de-bspimx8m-3801_peb-av-10_with_ac209-v2-3-7e5de62c79bf@phytec.de>
X-CM-TRANSID:Ms8vCgDHz6gVBv9okR2+AA--.24198S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUcYhFUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIhegBmj-Bhc3ZAAA3G

On Tue, Oct 07, 2025 at 10:12:28AM +0200, Jan Remmet wrote:
> Sort properties. Rename regulator label to match schematics.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>

It doesn't apply to my branch.  Could you rebase?

Shawn


