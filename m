Return-Path: <devicetree+bounces-185493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB01FAD8073
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 03:46:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD1E51898E7B
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 01:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AE619D8BC;
	Fri, 13 Jun 2025 01:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="oo78miOn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B38172636
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 01:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749779209; cv=none; b=slFP2KH3zeKvktvKImjrp0A1Xq2gqxU/VhH3gZRFDAH0kONNcVOg/31HJND/S2UKpbncnARjRfxitDypug+9kXG1cszPEaFevFi7PCxMF8VdlmkAKghVav9513PkEWhk8BZ8guvPofQCMGa4//ckNkGZC4UATjXPmJhjZvqa8wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749779209; c=relaxed/simple;
	bh=YnMLobDOQaFtMMtsTnn9f8l6N9PhKEpTxi19TYXJaLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dGjB0+osjxZDuUInFN14kNWeSeOySSvErOkEvVuAgAUNl7jV3gOfSmKlYOctxwToLmqeaAcdhYvUxTFMid9hkxb6kO6RBI8/zOYcaX2kgnauKSuCFTN3EVxVXTSc/DKFFXnkdRHVdkS3jOKUtH8pbrVHIVuwx/bEbUA2ees43Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=oo78miOn; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=0l4FT/265PtP2SlRKliEFOkYYKE2dg6XYNloUrx8/FM=;
	b=oo78miOng3B2Bj9xi0Nj2Zj5kn1rB5m7y8sVKakPNeeswRYl150SwHGPq1OCIR
	XOdUaJ1HsRX5uHOyHMzRWHHs2hLmLHSleYAAsDhM7ckrYoRXkb3rsKrAzOildVT/
	WHKKcx8Hph24JGthQPotDtBB3+mC67NeVhGkmdrrsygY0=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgCnvlLfgktoX1OLAA--.58062S3;
	Fri, 13 Jun 2025 09:46:08 +0800 (CST)
Date: Fri, 13 Jun 2025 09:46:07 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Subject: Re: [PATCH 1/3] ARM: dts: imx7s-warp: Improve the Bluetooth
 description
Message-ID: <aEuC37WwWCQHkXO2@dragon>
References: <20250513142320.4036324-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513142320.4036324-1-festevam@gmail.com>
X-CM-TRANSID:Mc8vCgCnvlLfgktoX1OLAA--.58062S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU1LvtDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBBdrZWhLgIcJPAAAsM

On Tue, May 13, 2025 at 11:23:18AM -0300, Fabio Estevam wrote:
> GPIO5_17 is connected to the BCM43455 BT_REG_ON pin.
> 
> Improve the Bluetooth devicetree description by using a more accurate
> description of the hardware as per brcm,bluetooth.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied all, thanks!


