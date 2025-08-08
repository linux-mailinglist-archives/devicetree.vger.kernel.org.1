Return-Path: <devicetree+bounces-202657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D88B1E505
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A3F158605E
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93013274677;
	Fri,  8 Aug 2025 08:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SmBYrewt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603CD273D85
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754643201; cv=none; b=XYtP9jgdf+QWA/nHH/c/6DHkOCKlVECKAeBhLGHEyMS02kuzDrstKQaDCChgsikzEBY+zS1De2beeL2HeIvcs6Fv/jGWKVfN5E/CyZtx7wBAKpJYt2x9NX49NM/rR+2WThp2rYyrIO8crvxesXeS9Y8+8GgPiC3f9V1Xd55au7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754643201; c=relaxed/simple;
	bh=xLcisQUmX1kKWJaAAGMAi99CaZ3yNW/4jd6IUN4d/Tc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=B18Ws5GC+rTsR237vt0gEJHR2sO94LnVNLRybToQ56e7XE4B14q4uuANPoLfs7tb/IjWZPeU+xtAfPVa6kmFtSazeCIrGJl60vc5rosMHD5mX0dvYOlG2CX8oYOU3czuSMLHySGZ7EHDeq0w4eUlBfOU7M/ToaZ1zT8802rdRS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SmBYrewt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57871bKC012668
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:53:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XAMShpBw6gl
	5ZzER3GWo8lF+QTIMlJwqOkE02a/mRys=; b=SmBYrewto+jNpsi4mCt3DQSMm8s
	yyWJMBkdy7sYhTSI4EFHOId4KZhIezx18DuJfacTiZI76cgvob5NnPVDSOves4Am
	8bF7BfkiJhIB4Ul4yAjnLk8jmCBL/PlU/oN98Zu4HskcRTu7qtZAVeiJrO7crsCj
	Bs5+wJDgbVYVjXyqqgOBN10fIlsT3t7E95FSsykffNmCLwcppshrZTN3fuFj4v9d
	/++nJXyXw1D6GhB1dzt0AB7oq2XKqFTyJP7jdcy4LZQ5io1qI4cpctS5iKhltfGT
	kNdktzesb29biz17JE5DvVPaPgKHBKcRoHjr7Bk/bn+eSmdyLyyls46uxgg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpybhgch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:53:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b06908ccacso43351301cf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754643197; x=1755247997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XAMShpBw6gl5ZzER3GWo8lF+QTIMlJwqOkE02a/mRys=;
        b=KrT4cAqlw2aWLyifVmd/ihgEAEhvuOgzqgX1U3nyBD4FakKjqWrGJhjsF6dQGV+VWv
         9hnBNihWf5OpTUgmkNS4C9VpVpw2UZAl4eb45HyLJExSSSYGq3k+uDvNabgK6vL5SaMt
         usCR83JkER4ZwgVKzFGkptlKs+AMSir4Z9ngh63BzGx7SOIM/+G6GMfnpZLD9CHNyJ2c
         4X+E9gMttqaQpy15rUFeUmrwlOSbT0NJJnyMF5JXWRzYqBHuxP0pLMfBvJkR53LV6bOC
         V6CVgOkZ+dfEV5NVQsCsf79jlvV81jvueUPm5oxFmuWird3q+4/aCLs0bgvfJ95Mj+Ky
         qG/w==
X-Forwarded-Encrypted: i=1; AJvYcCUBm2rHL4TM+MyUU1WlBnq6BcQSj2nfxSCuKO0eJAYiFAiYp3asDKu9AVJW1YhxtN2+0OH0aTHdXPZR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1vI6TTtgZSUgDcBiUmbD/O+W6Y0iTkn0fudQr88o+qgPFmCEr
	k5iU078QR3N+W0fWe1bwvq0aoKb8k/XIHbrSZ55Ofn9hhsUIuzUYvk6uPr17q9Q9FDSermZTNkh
	R8R9Wi58h6obf7dTlVzsxzgD3VUnfv9VfpMs6KCrBF2VXrHGkpfsRNfNF+N6Y4WtM/v+3piM6kh
	g=
X-Gm-Gg: ASbGncvIGHce9HtGdUARs8xAVXQjBWqpEytavlwpaYhJ7gUQzkBPlbeoKFvU0ZRkrFV
	YXrN12NI1qr6KgJZVg3gRTqKO/TcHZPi+prHCGV1DRhsZmiOWiLdCntwzXv/diuPs5QWnBVkxCD
	RmzlBwC9YGBxx6LYoaJaTLmwztUReNsGtXPJKshUnvqIRiPYr+DJxnpckHx2a3oKNxluNwqP5Mn
	OI0NPjaLTdljtY1GpqqxZQbkqz1R9ZHM9N5PFthQ5Tx+Bsm87jYFuHk6KsZXA27HpDUZJct4umb
	JsaeaO020q0Ei6xhfV4IsOA/zobJ9vY6rrdhEU8LdeqiV2n8iQXj7lQgXst0VAbopwlLHqmOUXK
	0/w0XYrey8Ur3
X-Received: by 2002:a05:622a:248:b0:4ab:41a7:847 with SMTP id d75a77b69052e-4b0aedc95c1mr30198141cf.31.1754643197267;
        Fri, 08 Aug 2025 01:53:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJP2aWj+S7AivPnjl0T9O7ur4HP90mdxQ0hwDryC5Qx7SHbXMaFhvERCN4XIMhJujoabrZNQ==
X-Received: by 2002:a05:622a:248:b0:4ab:41a7:847 with SMTP id d75a77b69052e-4b0aedc95c1mr30197871cf.31.1754643196868;
        Fri, 08 Aug 2025 01:53:16 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5e99e04sm123818745e9.11.2025.08.08.01.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:53:16 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 8/8] arm64: dts: qcom: qrb2210-rb1: Enable Venus
Date: Fri,  8 Aug 2025 10:53:00 +0200
Message-Id: <20250808085300.1403570-9-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX7gbBGqDupmJD
 nJEx/6vn3sBIWC54BAumxOxE5Jj17jIyFt9p8W7pxYyv7kXiFjglnTF/vK8VX1hX71thJI35zXw
 fWtmsWZG0tugu09u2c8KorUdh2tBR8ORO68/s1GTpQQjpxSAE4FZ9LYClRaR4xHy9R60dzHjPRe
 lr9j3yz5x8aYjZfUMeeUfpgC/oT8eAcm/uJHH1Mi6uswVlgkMmT9e3d/ktKpsnDpEKw0y/jZ6ot
 KnxaCY1ctiX7+zbTZw4yerr8IroSryaLeQem9ogwW2pRffby+DSYK41fEAdzShxE+bZ1P1eIqKe
 sAO5lGySI99CvVEq0FCbUrQUkctI11c35y9u0o8dv+JRcDl6cPU7v63Sexs0TPawB00cWzObVsC
 Pl2sMHy+
X-Proofpoint-GUID: qjf7yPsX-Gv5WNm48QdAmvbvRHnnU9ZE
X-Authority-Analysis: v=2.4 cv=EavIQOmC c=1 sm=1 tr=0 ts=6895bafe cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Qms5JgQ9tnEuTiNUcoUA:9
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: qjf7yPsX-Gv5WNm48QdAmvbvRHnnU9ZE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

Enable Venus on the QRB2210 RB1 development board.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index b2e0fc5501c1..e92d0d6ad1b8 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -698,6 +698,10 @@ &usb_qmpphy_out {
 	remote-endpoint = <&pm4125_ss_in>;
 };
 
+&venus {
+	status = "okay";
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
 	vdd-1.8-xo-supply = <&pm4125_l13>;
-- 
2.34.1


