Return-Path: <devicetree+bounces-193899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE23AFC271
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 08:08:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 911D7169DB1
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 06:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A3E21FF2D;
	Tue,  8 Jul 2025 06:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="AARM8Egs"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D6621E08B
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 06:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751954890; cv=none; b=vAmi1OuxrtDkixh9hYooqAQp/2k5KSV0No3dRZlgrCvFdvSE/gZ1zqcjySgZQc8+2eLKcWKAkhjsLcsrNx0H4PdAjRVnhyjyurR+Rwjf/UgIF4t6brOhxMVVc9v4BK+36lkkjehe+RNAT+egn4VM3rM0jjbLSVMuBCeQhUR0j88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751954890; c=relaxed/simple;
	bh=25UiW6629URZeKqWd4szAoxmIeiqK59ITssZ/WmW6N8=;
	h=From:To:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=q0I+Z/psSbVic32kgqOPBR6ZLm36Uhl9f+RJA1G0eUdlIbH5QSMVZGU9otILQ1GANuSuEesPhAcz+qLpxXFd0sEEfFpC5QU8nnRbwqK+TPpkbt4xOeGIxdJ6ceww/ublZ25wzcIKEoTzPhIWH9cxLTAUAqq38SN5mFro7evgnxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=AARM8Egs; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250708060806epoutp0474316b8662e40234286213c7a7c9dbd1~QMa-J3OUA2790127901epoutp04I
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 06:08:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250708060806epoutp0474316b8662e40234286213c7a7c9dbd1~QMa-J3OUA2790127901epoutp04I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751954886;
	bh=3p+zdleNxB6xRk4PA0vX4wiF7EshOfZNCGt0ekbxrE4=;
	h=From:To:In-Reply-To:Subject:Date:References:From;
	b=AARM8EgstyoyfWyL4eq5vQTpP8M+VWdAQahD+yHqVQiAU4TVAXYyg7vjPgHLfE/gL
	 t/fmgKJfWSxJY27IjWEBJjQGctDhYe3ra1EOdmO4k7410qp41JNLgxyf/8Kfp8Yqhf
	 FxbF9GMIQ1To9jsOyjggBa95scHa6aBbHTFUz0cM=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250708060805epcas5p34c5e724bc477b39ce43f2ad0190c11e2~QMa_xKtgX0555505555epcas5p3A;
	Tue,  8 Jul 2025 06:08:05 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.179]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4bbrJ349PBz2SSKb; Tue,  8 Jul
	2025 06:08:03 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250708050010epcas5p257fc957d612d63e061303608bcc1002b~QLfrkfgkS1015710157epcas5p2E;
	Tue,  8 Jul 2025 05:00:10 +0000 (GMT)
Received: from INBRO002520 (unknown [107.122.1.191]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250708050008epsmtip29ff3634961b9082c94f5de5773bcd1f9~QLfp-s9Ri1376613766epsmtip28;
	Tue,  8 Jul 2025 05:00:08 +0000 (GMT)
From: "Devang Tailor" <dev.tailor@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<alexandre.belloni@bootlin.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<linux-rtc@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <inux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <faraz.ata@samsung.com>
In-Reply-To: <46fb0a9d-be33-46c6-98d1-501970ec8e7a@kernel.org>
Subject: RE: [PATCH 3/3] arm64: dts: exynosautov9: add RTC DT node
Date: Tue, 8 Jul 2025 10:30:07 +0530
Message-ID: <156a01dbefc5$2e8203f0$8b860bd0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHhFGtl4NDuGuGnv9eMR4cSGFTkLQGbtz9QAkmtjDMBFtDZJrP1e9Qg
Content-Language: en-in
X-CMS-MailID: 20250708050010epcas5p257fc957d612d63e061303608bcc1002b
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250702051533epcas5p28698c81b7ec141938f8808393c498cb7
References: <20250702052426.2404256-1-dev.tailor@samsung.com>
	<CGME20250702051533epcas5p28698c81b7ec141938f8808393c498cb7@epcas5p2.samsung.com>
	<20250702052426.2404256-4-dev.tailor@samsung.com>
	<46fb0a9d-be33-46c6-98d1-501970ec8e7a@kernel.org>

Hi Krzysztof,


> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 07 July 2025 14:53
> To: Devang Tailor <dev.tailor@samsung.com>;
> alexandre.belloni@bootlin.com; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; linux-rtc@vger.kernel.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; inux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org;
> faraz.ata@samsung.com
> Subject: Re: [PATCH 3/3] arm64: dts: exynosautov9: add RTC DT node
> 
> On 02/07/2025 07:24, Devang Tailor wrote:
> > --- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> > +++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> > @@ -1633,6 +1633,16 @@ pwm: pwm@103f0000 {
> >  			clock-names = "timers";
> >  			status = "disabled";
> >  		};
> > +
> > +		rtc: rtc@10540000 {
> > +			compatible = "samsung,exynosautov9-rtc";
> > +			reg = <0x10540000 0x100>;
> > +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> > +				<GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
> 
> 
> Misaligned. Should match earlier '<'.

Will update it to match last '<' 's alignment.

> 
> 
> Best regards,
> Krzysztof


