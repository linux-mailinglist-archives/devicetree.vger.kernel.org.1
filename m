Return-Path: <devicetree+bounces-214104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDCBB48276
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 04:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A80523C16A4
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 02:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F17B522A817;
	Mon,  8 Sep 2025 02:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YKnBgkfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C45122157F
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 02:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757296993; cv=none; b=J5mKIJ/QqMRWfNhWnyPS0ln9Ib5sdtOajGuQ3h7GXDuGypW/67rAHmGkrRzp38/Anms+q76+1rdmaoC9Kj4V9YMgXsI42kY56FRNjQQMGtpSKg4GITLGym2f7rRFiLHBookDq0i3A4htDZL86NOD1XWJFyHzRG6LBmCKE3P0UKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757296993; c=relaxed/simple;
	bh=9cRSlY2NurvnURIS4RORNBk1ASEWuw2jDevqbo6Yazw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nVRH0fVc4TOfFd3QPsbtjy+oIznQALt+zB48sWVWZz9hpOtOgbD4wh+GgEo4GYRMgUh3cJlJJtm1Vej7MHU0Cix73chvfjonqMFCecoKRqB4YuHymaEqQg6pCCY6aTSqFE6TugkiRn6D4mzmmq/uvWx1Qj6+MKYqbAJuKr4AFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YKnBgkfY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5880K3Ws018961
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 02:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IZ0QPfKd6cfV3/gEri9raDeCAG7QUBZRVXE50fhUyeA=; b=YKnBgkfYRXGN832H
	az1L/4lkc9FISmLeT9cMttu7QGMCqPuyDwYPXMOYdo3D16SWc1B7AzUdtTe56PfJ
	GX4vNvw9tnqnUOVaGUNZ6Q2RUkSeX6g6y2IkhvdafxbenJOGyPpZPaOs0dn8kE9h
	4xxxrQUBHF4EJY+nAry/mYjwTKmoMTZOIxnVnW0jqKU2nR34bFnPdXuSQ1XAt4BQ
	KQl4P5k6IhDVydYA4ffiXj3cDKc+H4o5JoSP/XcmBRYPEw0ZHJJX/b+5gv2OwRub
	I5uMZ51v5psuaefB5e5MXqNGh6jiqbY/2BDstwCw6cOK4phwQBUjxZbvUQvEZqAf
	RKMCsQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a2ttj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 02:03:11 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7723aca1cbcso3600796b3a.2
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 19:03:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757296991; x=1757901791;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IZ0QPfKd6cfV3/gEri9raDeCAG7QUBZRVXE50fhUyeA=;
        b=urshYHloN1hBlgW8kBALqqE3KgIwgOSAhl76XFRtvolmam8oDAdCH24X8Cdgty3Nvn
         268G9oXB5PE6YaM36FnR5klsIoSJ2YqrN4AqtwMKi/W02gwoyzPCmWD+oDjAkQ4eyuwl
         YSo4NdgTgLoYCDB+RweAW5gy0ZXhNdhrI8fetyQTIXKnBr394AVpKKNqQEW8DstHq9tX
         SZHu4NzwouYG5Wq2TqXFD4vW5dp1WCxQAmaBQEpc2phyz61qziNyypQqzEPN2A0lrxeu
         /9PoKc5BztfJy6NuCXSrayacMi+ZPynzClu9RyO18svD8HaCRs5taaEOW8KXPgATKla5
         uk6A==
X-Forwarded-Encrypted: i=1; AJvYcCXLUD0iJ+4RCLmsSgShUjrYNZMQI3742mxZ+xKBEowBBj9MDBrpzssGFWvauHEGAdU4nUivtR5GpOxg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8lmy0+bud1JsyGHsfEJu2dQQ3rVtvQeFZwa+fwND+99g1WEu7
	fS7XKycvnC1HXryYQGMLuQRdc0hkG0oZ4YzI7uRBuGsToUnY3DZL7xM/LNZv1y6lDwGvpyMeHnp
	RqmN+hgqthsAXfqhGvlSrrKFMeRUvWoBXakpidgE7nCPFu5s/95KMFEwo0lPbceUY
X-Gm-Gg: ASbGncs9hEYjKw34pDg3xkGnrDkDqxH5R0z3fcUmumjGelqyVykFF27vbMZcjRnZsEh
	EbiERjwGWD9H/5vFkGcfMCj8WkyVREscYKk5tS2G4y2lJw5fKn8DVR7MxJCukKkk8NkFpLdYCyH
	NjfoV/Mn6yQoUsxwSTGuNtjMqDndY504CNv/Pf/B5gis6sqmzzZrciNKxzqJC0fxBT+/OgorH8T
	3GbzjkBcuOtdbj6Hn3hYARjNIjGIWEA2pASr5gBjNHiVm1/QRVYeZkrqbLVO5uMeB7rEGyXJGbU
	BZ+PukTu8Lfh9PkAGRk0V+DmbhMod8WLlQQoXDliYFL7XKjQS9Xrcxn1OUAmUdHM1+xp0fxQZTR
	7pMjA6ybyWj0ajied2N7FLJsf8W8=
X-Received: by 2002:a05:6a00:9a4:b0:76e:885a:c332 with SMTP id d2e1a72fcca58-7742dede382mr8601117b3a.32.1757296990878;
        Sun, 07 Sep 2025 19:03:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOs9jKUV6cIHNdp2p0J8iG1tJf8wBzxm8yWSXKthNym9v8Uth94m5iXHGoZZxFhI1pYHN9pQ==
X-Received: by 2002:a05:6a00:9a4:b0:76e:885a:c332 with SMTP id d2e1a72fcca58-7742dede382mr8601060b3a.32.1757296990322;
        Sun, 07 Sep 2025 19:03:10 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723f4858e6sm24285076b3a.4.2025.09.07.19.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 19:03:09 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 10:02:01 +0800
Subject: [PATCH v6 9/9] arm64: dts: qcom: lemans: Add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-enable-byte-cntr-for-tmc-v6-9-1db9e621441a@oss.qualcomm.com>
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
In-Reply-To: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757296941; l=820;
 i=jie.gan@oss.qualcomm.com; s=20240927; h=from:subject:message-id;
 bh=9cRSlY2NurvnURIS4RORNBk1ASEWuw2jDevqbo6Yazw=;
 b=tbAut7V9y1GHLMtaEckyjFizzcfbfFKrXsRyaR051mOcnrkay17afbh0raaPOgNxvrZC7TC5b
 9r6YmIT3PiPC0Q2P2HRKUC5MJekXUJa6Xeq74ntPUsDPgLOyqJilyBz
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=OZh7JyRifqJh4xmrcGgmwa8/LCS8O11Q+mtx4aZGmi4=
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68be395f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: G5IvKBnE-2mQcnQSmoVav7xW0XWhYuXB
X-Proofpoint-ORIG-GUID: G5IvKBnE-2mQcnQSmoVav7xW0XWhYuXB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX/V907RZ8ShES
 RaC0Pl+3N2XL+PkZjhHVA/d0IhyVYQE0S29U3YT+9h8sBsW7d9Qionl1VFx+W6KeueA9fHlbCdW
 5WGNDTorTvGSRLMSI52s1BPFXoEN7AjWi0sC2QafwyNuNJn06Bf7aZJZu51fVc1k2ZkitPp6qkf
 RMySRm+42F2wTkhRSZrQ+sa3gLW/sVxCIC9jbQbOAAxlb3iWyZfJZ/hg5oG8zJ0k2b7JWME0/qn
 vbIbmu7Djt6NsQeUODHiKmTOC01Sb8K6ehb2dj+i4RAvrPyxEcoMSP/gXeSPjJ56JjlBWFNv+HA
 gTENkkfMofAGdkSfda9X/I/y/z8cpNO34MYQsBcqGDE1UsmYh8sMpLFW7hU/rRyDe0EX9cF1Frf
 Bx/byeSw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_10,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index f5ec60086d60..0a17a26f85a5 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2774,6 +2774,11 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "etr0",
+					  "etr1";
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1


