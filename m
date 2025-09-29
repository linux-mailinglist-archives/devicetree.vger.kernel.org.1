Return-Path: <devicetree+bounces-222338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE43BA82DE
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:49:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FDDE174B7E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31EDD2BEC59;
	Mon, 29 Sep 2025 06:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="MPrC84OF"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7066724E4B4
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759128555; cv=none; b=a86o29NSl9Ft9NeaikxMB5LWR5+uwwz3i2u7grAq1VDllOcNT/wDSszBbcUqVtHmgXmIEfRq4GMVsl2L+TNX4Rlp9qyzOdCAgTHuhqQ9n7ctWKRp79ZJ5ZeJk98LqwQoQru75qJjBBH8e5LC4TyYmfLvvf8kYElEN0vP46ZlyXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759128555; c=relaxed/simple;
	bh=i6H7PiTWtFyXx1EDWLzRArKpM+33BIbig/ztJFn1z0w=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=h0Wt8AY6f+9Yz6Sewz2gmQaN4RQrO7Q8x2UH1QlC83h+HmuRY73r30K4H6syUunDT39fmPkzq3pxgeyoworbGiqMnDvbbzYb90SpNBMt4k/YK29isi6X2yDLBYkEk6rQsO1rOoMlv0lhh63OlVLjzXNv8j9BrPVojlkdp143VvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=MPrC84OF; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250929064911epoutp0478331ab9f6e523dc7e206bae7d262145~prhj0JugF1103711037epoutp04A
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:49:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250929064911epoutp0478331ab9f6e523dc7e206bae7d262145~prhj0JugF1103711037epoutp04A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759128551;
	bh=uW/biS9+F79MB+CEqJ9ljHsHmR77xOXVQzzomERvLW4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=MPrC84OFDqt7d3aP+YosXCmgVdD6JBYu/kycQG+DiK1eqtnCzRGBhb0qLcuEApmNa
	 EoVd4+mtKlHxzUKwzPwpL3BJlF8B/4JTgkklMM66EfxBR7Vp5amEIyfFwnqvu1M+cm
	 ED825+mozegBa9zCeVUiY90AMWxn3Y4itj48RFjc=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250929064911epcas5p3258155eb119b44766be8084abd31a1ac~prhjMtLud1689416894epcas5p3Z;
	Mon, 29 Sep 2025 06:49:11 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.90]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4cZsH95hMFz6B9mD; Mon, 29 Sep
	2025 06:49:09 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250929064909epcas5p3d66043c4ebddff823a0ff065dc94f005~prhhf_UNC1007110071epcas5p3_;
	Mon, 29 Sep 2025 06:49:09 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250929064906epsmtip18de76634ab37e3abc408d75247b35fdf~prheozuOU1376013760epsmtip1G;
	Mon, 29 Sep 2025 06:49:05 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Pritam Manohar Sutar'" <pritam.sutar@samsung.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <andre.draszik@linaro.org>,
	<peter.griffin@linaro.org>, <kauschluss@disroot.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <igor.belwon@mentallysanemainliners.org>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250903073827.3015662-6-pritam.sutar@samsung.com>
Subject: RE: [PATCH v8 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Mon, 29 Sep 2025 12:19:04 +0530
Message-ID: <001701dc310d$27fead10$77fc0730$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgLXAGWnAetyVdK0GaSqAA==
Content-Language: en-us
X-CMS-MailID: 20250929064909epcas5p3d66043c4ebddff823a0ff065dc94f005
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35@epcas5p1.samsung.com>
	<20250903073827.3015662-6-pritam.sutar@samsung.com>

Hi pritam

> -----Original Message-----
> From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Sent: Wednesday, September 3, 2025 1:08 PM
> To: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com;
> pritam.sutar@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> samsung-soc@vger.kernel.org; rosa.pila@samsung.com;
> dev.tailor@samsung.com; faraz.ata@samsung.com;
> muhammed.ali@samsung.com; selvarasu.g@samsung.com
> Subject: [PATCH v8 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 combo ssphy
> 
> The USBDRD31 5nm controller consists of Synopsys USB20 femptoPhy and
> USB31 SSP+ combophy. Document support for the USB31 SSP+ phy found on
> combophy of the ExynosAutov920 SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>




