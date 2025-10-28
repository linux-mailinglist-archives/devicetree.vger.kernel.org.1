Return-Path: <devicetree+bounces-232021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DDBC13BE3
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7E775508461
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D992BDC34;
	Tue, 28 Oct 2025 09:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="mJLRAgOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C592E8E0E
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761642601; cv=none; b=cngr66NnST/kDEZVrQUPQsCYheFUIwPdbOyzXzZAmYYgXb2aYGfehYJPqi3eTIjil/YvnizpcBygo/QwOWtOFUAYHErl0FMgMBH49baLcjaW1RNwk1qAInab/G6Jd4g84G0dv7MuFzuSNpJZkiYM0WkK8OJgptQF27tOFryE2Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761642601; c=relaxed/simple;
	bh=zUGY+xPee4aWhCbNw7W10rqEHgwsqSjRvspTfW/+QYg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ptTfvYKue4m2m/8+GHze9KCg1CaYd6ZEfnmnbW7f34KwLqnEydr9XnRRnOkgi1n32FTYlDFXmpoIj6G/5n1ruf1A4SvV/rYkhYTXFUZxCeOE/2HDBQ5Q5c/u6B2t3pO2BgfDfN1kzlIMKd6gaqW1KNJnDxRuGTfrT/eBx0JH0FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=mJLRAgOB; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=WaTABlPQzql62JP4bYpGFB1GN/KGFtKB/QnUa6OyJ+E=;
	b=mJLRAgOBFmbF4UXSo3Qm6FPpTQs8JJU8wIFm7iGmahKNMDfFafS2NaRysmcHWa
	c8NiIPAv/k9sNdIJDaFtj+1k5XDbw7Mg3OFeFAbOQz4s3DxWQpNYZoMj8xZl3jCt
	7WImln7p/K3KCn4IAmqZQKXCN+G1FpLsBEc+lhPdVs0Lc=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXf10BiABp90vTAA--.48036S3;
	Tue, 28 Oct 2025 17:08:20 +0800 (CST)
Date: Tue, 28 Oct 2025 17:08:17 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Rain Yang <jiyu.yang@oss.nxp.com>
Cc: airlied@gmail.com, boris.brezillon@collabora.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	festevam@gmail.com, imx@lists.linux.dev, kernel@pengutronix.de,
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com,
	marek.vasut@mailbox.org, mripard@kernel.org, p.zabel@pengutronix.de,
	robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org,
	simona@ffwll.ch, sre@kernel.org, steven.price@arm.com,
	tzimmermann@suse.de, xianzhong.li@nxp.com
Subject: Re: [PATCH v3 2/2] arm64: dts: imx95: Describe Mali G310 GPU
Message-ID: <aQCIAfyUC6N5y2fB@dragon>
References: <20250925203938.169880-1-marek.vasut@mailbox.org>
 <20250925203938.169880-2-marek.vasut@mailbox.org>
 <ba95487c-ada7-48a4-90b7-fd99a0278f51@mailbox.org>
 <aP7DZCMk1pQ7wsFo@dragon>
 <aQB88c_AEC1RAZtH@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQB88c_AEC1RAZtH@oss.nxp.com>
X-CM-TRANSID:Ms8vCgDXf10BiABp90vTAA--.48036S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtrWrAFyUKr1kGw4UJw1xGrg_yoWkAFb_uF
	4UCrs7Aw42gryUtFZ3CF4q9ryvkw15Jry3uw15JFnrZ34DAa48Ca9IkrWxZa4rCrWDArn8
	tF98XryYkr4IvjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1qQ6JUUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNwV94mkAiAXl5gAA3K

On Tue, Oct 28, 2025 at 04:21:05PM +0800, Rain Yang wrote:
> On Mon, Oct 27, 2025 at 08:57:08AM +0800, Shawn Guo wrote:
> >On Sat, Oct 11, 2025 at 12:53:29PM +0200, Marek Vasut wrote:
> >> On 9/25/25 10:38 PM, Marek Vasut wrote:
> >> > The instance of the GPU populated in i.MX95 is the G310, describe this
> >> > GPU in the DT. Include dummy GPU voltage regulator and OPP tables.
> >> Is there still anything that should be changed with this patchset, or can it
> >> be applied ?
> >
> >I'm waiting binding change to be applied first.  Or is it already done?
> >
> >Shawn
> >
> Hi Shawn,
> It might be better for Marek to remove the always-on GPUAPB clock from the DTS, given that
> it's an SCMI protocol clock and the kernel expects it to be available during operations.
> 
> Also, the gpu_fix_reg appears unnecessary for the driver and could be removed[1].
> 
> [1] https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a8cb5ca53690aa809f4f65e14192753073e61a71,
> https://cgit.freedesktop.org/drm/drm-misc/commit/?id=02df3543f3e0ea572e2c739605ebd6c20e1149c4

Ah, sorry! I did not know we haven't reached agreement on the change.

Shawn


