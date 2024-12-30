Return-Path: <devicetree+bounces-134653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD67C9FE25E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 05:21:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73FFE16144D
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CDA146013;
	Mon, 30 Dec 2024 04:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="DoGSUBpm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566FD171C9
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735532512; cv=none; b=gpMRwC41u4l/DlIlOptPCINRzUOodHCJ18EZ6YNdOerl/2GznxWdIF+HxCtemUAjTaSBKu88lgsXKuuLDP9/Y3GJeRBDKWgYtFvwRowbtT/HZhrclOQ0lUYzL4LbfCqX2fhZdUJDM7ZqxNYhWFHRTnae+QmYwkj1cBjhgO+pSfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735532512; c=relaxed/simple;
	bh=FvtVOjLGyb7ehd/vMErz19jSwo4khXttPnM97iZjrZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dx8iIiyxdheqUtVzHivWrg+qysrVCgDSuOiOWotQox551yCu6jDwjDP3G9OSZ2YTFpoDBFJLHje2fOOYwCad+DTmANZaqp5oEqtOItAcCcMuHR9NhZ2KkyztC1ZAo55TpzNUgbAnPlXnoSbzrwIyMzXnB8EeehZbnGvO2m/XDbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=DoGSUBpm; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=T730CnmYeW1A7reDzp3gdGNzgsA+p2z7bTHc+UQZJGY=;
	b=DoGSUBpmsxOfocmQZw8r5Q2bS3t12yhstNh1LSyXF9IMzWL6jTki1IRdIaF3BL
	ue8dvBDRmse4whppRGswL4IaWCCkZJ8zgUld0VUPcZUn9pw1/uA1w3GKYcPtcBUD
	VHv6FPUmP11Z3fRUSoUmAoxr2AMEOqmxSCTfPDSTVWFak=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgB3vXy8H3Jn7u_1BQ--.60295S3;
	Mon, 30 Dec 2024 12:21:17 +0800 (CST)
Date: Mon, 30 Dec 2024 12:21:15 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	francesco.dolcini@toradex.com, Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH RESEND v2] ARM: dts: imx6qdl-apalis: Change to
 "adi,force-bt656-4"
Message-ID: <Z3Ifu23f/Zb/azGb@dragon>
References: <20241202131423.586743-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241202131423.586743-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgB3vXy8H3Jn7u_1BQ--.60295S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU2HGQDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEQ-FZWdyDppGaQAAsQ

On Mon, Dec 02, 2024 at 10:14:23AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to adv7180.yaml, the correct property name is
> "adi,force-bt656-4".
> 
> Update it accordingly to fix several dt-schema warnings:
> 
> adv7280@21: 'adv,force-bt656-4' does not match any of the regexes: ...
> 
> imx6qdl-apalis.dtsi is the only in-tree kernel user of this property.
> 
> BSD does have a adv7180 driver, so should not be impacted.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied, thanks!


