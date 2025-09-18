Return-Path: <devicetree+bounces-218669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 471F5B82FE9
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 07:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC0CA3A9A2C
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DFA21D59C;
	Thu, 18 Sep 2025 05:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="vCiBergy"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3B2749E6
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172851; cv=none; b=mYyhEcx/1JBkHKa2ZJCeDnEFRhYyVNkCv8nXELyeOZzro5Z+RLuFaFJ2V2z3fuo1IaL0+tZrddaE+w1YdjJaEH+FZLnlRqX5oE7d9vjZ/wlNAgmF4ckf67C21MYRp2MgQrTElFc0qfNQam9cRQpgheys3+UFeM75UVzTbbIJ5lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172851; c=relaxed/simple;
	bh=V2TyPk4XEK+XkD9ODvcJeJclPr8U78OB+kSII+k/G6g=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=RNi6qnzhTVw4qXIU9L95Rz3Dm1rD9H0yohULk0zeSLBhce39ehFKadMmeCczXPRG3LXmwo3F4c8JnwbD7EssfhEMGdwtMAtWQRYgsCcwBOCtWFqAvLQXhbPCRaj9DQWKBfJ89Rev7PU2oxzoANM6dt51jNaKmXoBpcwahs+Czps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=vCiBergy; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250918052048epoutp04a1344500ee5c1fa8c226a57f3e86e00f~mSOPwUJQR1262912629epoutp04h
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:20:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250918052048epoutp04a1344500ee5c1fa8c226a57f3e86e00f~mSOPwUJQR1262912629epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1758172848;
	bh=AQXYtLG811rspesNjys5torp/eS65WLI98/HzlXajwk=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=vCiBergy0tiSskEM/uKzbH4InL6MEas0MiJO+qQRXZ9Tz1VuY6i4Z7YVzsU9sZN8g
	 qjUIBcbeG1LGt2dkvUKD5pYMDGZuZoclzWnTdWFEs4zLYFIN8peRCfT8MgESMSiDzq
	 FzYjs3+7GjZm+CVbnfA850OlWpSThI8CG1jXVlfM=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250918052047epcas5p4237955d96a96acd0c586ae90f902bfc2~mSOPVGd-Y0748007480epcas5p4R;
	Thu, 18 Sep 2025 05:20:47 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.88]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cS3rG6CGvz2SSKr; Thu, 18 Sep
	2025 05:20:46 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250918052046epcas5p31bb142541f8c78b87e29725513303a90~mSON9xV6Q0428704287epcas5p36;
	Thu, 18 Sep 2025 05:20:46 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250918052044epsmtip22b3642af39e1b3f42516960a75e96c58~mSOL06D1m2005020050epsmtip24;
	Thu, 18 Sep 2025 05:20:44 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Ram Kumar Dwivedi'" <quic_rdwivedi@quicinc.com>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <mani@kernel.org>,
	<James.Bottomley@HansenPartnership.com>, <martin.petersen@oracle.com>
Cc: <linux-scsi@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>, "'Nitin
 Rawat'" <quic_nitirawa@quicinc.com>
In-Reply-To: <20250917140933.2042689-4-quic_rdwivedi@quicinc.com>
Subject: RE: [PATCH V6 3/4] ufs: pltfrm: Add DT support to limit HS gear and
 gear rate
Date: Thu, 18 Sep 2025 10:50:42 +0530
Message-ID: <06fc01dc285b$fcb77a10$f6266e30$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJRoHUYa79wgWtyawBlQOaHwFj68gIsk9d6Alr8OoKziTpyYA==
Content-Language: en-us
X-CMS-MailID: 20250918052046epcas5p31bb142541f8c78b87e29725513303a90
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250917141032epcas5p33b752eff99e2ffee97dc64604d5dc01a
References: <20250917140933.2042689-1-quic_rdwivedi@quicinc.com>
	<CGME20250917141032epcas5p33b752eff99e2ffee97dc64604d5dc01a@epcas5p3.samsung.com>
	<20250917140933.2042689-4-quic_rdwivedi@quicinc.com>



> -----Original Message-----
> From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Sent: Wednesday, September 17, 2025 7:40 PM
> To: alim.akhtar@samsung.com; avri.altman@wdc.com; bvanassche@acm.org;
> robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org; mani@kernel.org;
> James.Bottomley@HansenPartnership.com; martin.petersen@oracle.com
> Cc: linux-scsi@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org; Nitin Rawat
> <quic_nitirawa@quicinc.com>
> Subject: [PATCH V6 3/4] ufs: pltfrm: Add DT support to limit HS gear and
gear
> rate
> 
> Introduce parsing of 'limit-hs-gear' and 'limit-gear-rate'
> device tree properties to restrict high-speed gear and rate during
initialization.
> 
> This is useful in cases where the customer board may have signal
integrity, clock
> configuration or layout issues that prevent reliable operation at higher
gears.
> Such limitations are especially critical in those platforms, where
stability is
> prioritized over peak performance.
> 
> Co-developed-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> ---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>



