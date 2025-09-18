Return-Path: <devicetree+bounces-218668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5829AB82FB6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 07:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B3F94A3B8A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3208F28C00C;
	Thu, 18 Sep 2025 05:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="tUmCjqVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC30283C82
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172699; cv=none; b=jZEKjw98CdZQkdta7ET54GNnuNu40j9uD2Sl05KOenLPdnWR3z/f1Ux+cUWt2MWG64Om0IQGP77U5jaES5rnoe0adReBOg0h8e93LInMn+lrN4UI+wOWrwe928FHLMKhjfvoPQlq7AeSpbtSxBz+J5VgKuRkkoVCvZTToWErWSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172699; c=relaxed/simple;
	bh=fZf3KUsg7TCNTOWtDcvxpkU6IoooWYXFis9GMSIjWv8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=QYvvK1CfNr7IrGrSHwC9HNh1Wk+5KvgWjISi9k6rkgF7ECJRhX/oxQyUD59PvUt7wAw773pYLwmB2wV6FwIhI03R7lBbg4VqI0p779+hzz3BWM5+rt9kvaYUor4cIKWWMCf6b3YvYvQRc/TkU449VbJKYFPo0uqs8LxKHDdSwQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=tUmCjqVg; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250918051814epoutp04df6c91ae47fd479f0e1d29cf1f52989c~mSMArYTEM1196311963epoutp04N
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:18:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250918051814epoutp04df6c91ae47fd479f0e1d29cf1f52989c~mSMArYTEM1196311963epoutp04N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1758172694;
	bh=zYYaazXEoaA47Z6YAhN7Q2mEYZHKsAgAX/eQnU0qqxc=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=tUmCjqVgDj7ueMX52I/bqfBjZ+pt2JjBaad5lk9lKPA7xhe8PCnW1mWNrCLpank/w
	 TVvBTwF6YfOKzTNgvYIqGcbNmZUf6oMEvZB/bSHQNg6NXIXVe8KO0XKCKgIFAWSxyE
	 iWfpbycULHATqQ84CixTD4dp1koLhekqqPQ42XHU=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250918051814epcas5p10ec0d7619d703aeeb316c67653f16c22~mSMAH4rP_2895528955epcas5p10;
	Thu, 18 Sep 2025 05:18:14 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.94]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cS3nG6xl8z2SSKk; Thu, 18 Sep
	2025 05:18:10 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250918051810epcas5p3a5c83da6d649a4729b7276bcef4bcef1~mSL8gmD4f2794027940epcas5p31;
	Thu, 18 Sep 2025 05:18:10 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250918051807epsmtip1fb442832e26bc55315d8712329278f9a~mSL50ebAg2306723067epsmtip1J;
	Thu, 18 Sep 2025 05:18:07 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Ram Kumar Dwivedi'" <quic_rdwivedi@quicinc.com>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <mani@kernel.org>,
	<James.Bottomley@HansenPartnership.com>, <martin.petersen@oracle.com>
Cc: <linux-scsi@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>, "'Krzysztof
 Kozlowski'" <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250917140933.2042689-2-quic_rdwivedi@quicinc.com>
Subject: RE: [PATCH V6 1/4] ufs: dt-bindings: Document gear and rate limit
 properties
Date: Thu, 18 Sep 2025 10:48:04 +0530
Message-ID: <06fb01dc285b$9fb00440$df100cc0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJRoHUYa79wgWtyawBlQOaHwFj68gJOjc3tAfKTdSizi2z2YA==
Content-Language: en-us
X-CMS-MailID: 20250918051810epcas5p3a5c83da6d649a4729b7276bcef4bcef1
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250917141019epcas5p466578f1a7322594d653ac3c3eb3e7cf0
References: <20250917140933.2042689-1-quic_rdwivedi@quicinc.com>
	<CGME20250917141019epcas5p466578f1a7322594d653ac3c3eb3e7cf0@epcas5p4.samsung.com>
	<20250917140933.2042689-2-quic_rdwivedi@quicinc.com>



> -----Original Message-----
> From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Sent: Wednesday, September 17, 2025 7:40 PM
> To: alim.akhtar@samsung.com; avri.altman@wdc.com; bvanassche@acm.org;
> robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org; mani@kernel.org;
> James.Bottomley@HansenPartnership.com; martin.petersen@oracle.com
> Cc: linux-scsi@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org; Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org>
> Subject: [PATCH V6 1/4] ufs: dt-bindings: Document gear and rate limit
> properties
> 
> Add optional "limit-hs-gear" and "limit-rate" properties to the UFS
controller
> common binding. These properties allow limiting the maximum HS gear and
rate.
> 
> This is useful in cases where the customer board may have signal
integrity, clock
> configuration or layout issues that prevent reliable operation at higher
gears.
> Such limitations are especially critical in those platforms, where
stability is
> prioritized over peak performance.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> ---
Thanks!
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


