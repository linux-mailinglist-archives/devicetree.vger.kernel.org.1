Return-Path: <devicetree+bounces-179112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D09ABEDFD
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 10:33:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AA1C4A4080
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 08:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5048A237A4F;
	Wed, 21 May 2025 08:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iOFYlVVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD1C2367A3
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747816359; cv=none; b=MhKlT/oG46tIKpjJ1qK+iQwZdAvdArCFjsUcc9D7an73aAJUYoNnbFOlB/aXY7Y4aBTnBiP+PKHqAOVQM+Co7ltOSZU17WGe24Btzxl1mvn9IW2/XZ5j755NruVG7tfIr4bkpVWstvYDOLIRm/qsVW/rfrLcySJfEPFHpnSGr8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747816359; c=relaxed/simple;
	bh=vNy7Hg/TiGtEZictJW89jX/dHyDjn42M2TrCGJb8CAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eITOvilr/nj77AxtZnCbbO3RPKWl8JA6of7k8obmZsI1gubWfrAw/eXNIbHhz7qM2Jvf7omPeHhqN143WXmdOcZ8QGrpM5rciK7GK0dDwjc73RIlZuz3kkbfvpMEe0w2Nf/D8s1jdeKK6ohBc6SOQQsFkyqtbyB1n5ruzDhWuoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iOFYlVVT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L557vL004215
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5YbBsH4zeCrmK/Ek4rH6YPASrY2/sAhfKu9QU9dC1zs=; b=iOFYlVVTYd97TA+M
	ZhChquoX6E6IFjCIlPvWvPuuNRbyUJ+P7AHmRalAXljt09QrAFs92dsrB6bBZ9e5
	lSwnO5/ivtlBCRLSpEIiRlcU23HlouBKpAdPAHY6AlJwg/TWpt7pugCxA9ozc4Iy
	WivM+mSbEy5EU8yVSAW8J1M+XiFi7yXCTrWU/BbPLavE9fOLmmZNBkaq5MZAyU9o
	eh645nHMU0TdIiVdrLwFfSv1BjRvMYY6zyV+OnK7vui7ua0QyIxnJ9YHP6Ds6YxS
	L9IiSpFg+R6PLmkWMlOtSbHm3TeN2gpu/QhppQ4GWazyWJS0n2jbHkQgzzWIkC4k
	ANQB3w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s8c20px6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:35 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-22e3b03cd64so51550315ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 01:32:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747816354; x=1748421154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5YbBsH4zeCrmK/Ek4rH6YPASrY2/sAhfKu9QU9dC1zs=;
        b=JZ6o5BoqaTxYL3uKBctv4g3QHY0RoukjjOj4vBn0nXMPnO0OLCYvwAsRmhHm5TZ826
         EkMKSj4rVIiq32y0aN0JJfEr/Er/8EODyjp/TNjhbMmSEBJKSrSS8J0vOm4vYumJILnv
         dEggmEUkrMED1viQsOCTAqiOtjz8MKYon+sOBr8/91NF/Jdl5XavYCuexpHPxN3kqbCI
         DuQAchpSbKosNK2D9/jLffm7QpaFLfhpGp+GlXmvgw7IxG6z0LQ1kOt4k5xFgrnrkgEf
         P3+k1v3mRY9VDCV4hh/I3u4Sz/E9CBqEpGTjjeyy8DoF3ir6Lqk02yHbYCo9SIc7/oKC
         oIAw==
X-Forwarded-Encrypted: i=1; AJvYcCUDxZ8YsfKXhla6aP4WQsZ3SaP7TLDeLtaVBith8deTBPpTJTykRnr6HsWvWHLPaby0JL/u9YyLGpdk@vger.kernel.org
X-Gm-Message-State: AOJu0YxFUOoBknrVTBjfGwq3x6xxJN+POzJA3yQ1YOWmKaw/J3svQA74
	b1lGgKP3e8ODTRH0XcFj1/cY1KYnCwH+wdHp5eLI23HjjPa30EtxBux8FmhNp0CHa3vRtfPrbLd
	YlRo2vItDDeWL1ouHt3qW47V8kMLdJwHvMbTkxGFV8s28HZMxc9Rkk1Mi+lKvYOSi
X-Gm-Gg: ASbGncvFDyz/1VrPGB0iGMnFnjKHinqwy6UYS9kPnIVK2XxMsp1XSInvW654dPSVBxU
	YRndlbUutomgb4QBlfxCfojRC5rRP320RNWitDuFySKgPYUR4DLlS7g+pz5dq/vOFm1UC/M52db
	0LZZmmBWEpUQEOEKpLNRzc7nALWTxJ7ETIIYz8mUv+Nr+/ArPczYsoENPNa5su2NeeR+hYN7/k+
	qM/1W0CCmaCJ7eUlw5OPDUbsHeA0NCGpNvlKTY+YIK/f3ndOnuDDqfxoruvONDjBej7QcgHmz4t
	uG6TDH4MpbLqlf4xWduyi9s9og==
X-Received: by 2002:a17:902:f790:b0:223:325c:89f6 with SMTP id d9443c01a7336-231d43d9ba7mr361417005ad.10.1747816354368;
        Wed, 21 May 2025 01:32:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEy/kg9EaC8vrO7GjPZbBJOrkxGMVByaa++GMMGsnNW1V04OXOaPLDepVmlUhDZHqqoHLiCA==
X-Received: by 2002:a17:902:f790:b0:223:325c:89f6 with SMTP id d9443c01a7336-231d43d9ba7mr361416705ad.10.1747816353991;
        Wed, 21 May 2025 01:32:33 -0700 (PDT)
Received: from [10.213.103.17] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-233abb99a06sm13194265ad.254.2025.05.21.01.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 01:32:33 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Wed, 21 May 2025 14:02:12 +0530
Subject: [PATCH v2 3/3] arm64: dts: qcom: Add QMP handle for qcom_stats
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250521-ddr_stats_-v2-3-2c54ea4fc071@oss.qualcomm.com>
References: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
In-Reply-To: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747816340; l=2423;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=vNy7Hg/TiGtEZictJW89jX/dHyDjn42M2TrCGJb8CAM=;
 b=gS+r51M4CZgGumTWm6b9SNQ8vTomZ2XokuytEKh4urcNsRHE+aAgwHfYtoySC2y+xfgU27xMx
 iM9h1yeqTAeD48OfoHC3S+zQAEm4r52VyHdcNvVNkluN3sh0WhTud5H
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDA4MyBTYWx0ZWRfX+LcDRomO6qwp
 1WDMRtV5OjqUZbx2oZh1qkqNM5wkIXCwS4lZWRxNpUMi4aNW7+d0sLEuN0qgvlPOArnocHH2iN/
 u5SGI8iEki5llv11/XSUew9qzGb3wp5JXSTat4NrX7rVGddof2b/WoVd/qCByuSqBhQCECdXe6D
 SlSUdy0DxDcnWMebquZfvPQChFLAeeSydslbBDoiJBTZsHIqho+WnWsGnOLLn399auTDsudCTJV
 K7QudLIcjWzoPMO7K1rUlUm9UUM8ueXqJZg5iYwfZVRtSy+T7aQD26QLEzxR8+JLpQZwSoT6Xsz
 LJ69WBzJRtCKSgqhotcoTZZqAX8Qk90IYFq2CewvM2v0rp4baAb7UHfHxXWOy7rag3Y8BHJWRyO
 a4pkRWNT6kh+f07ya6O0u1XdszIny6my+SolGQp5xE4uDI7iRb7KEgVB/8fhTVW3LU1HBKA7
X-Authority-Analysis: v=2.4 cv=RIuzH5i+ c=1 sm=1 tr=0 ts=682d8fa3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=GL-xn7CBy2CN3rfaf34A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: wHGsVgKCbwJ_vCW_JmoCC9KYVo0FDw9C
X-Proofpoint-GUID: wHGsVgKCbwJ_vCW_JmoCC9KYVo0FDw9C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_02,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxlogscore=660 spamscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505210083

Add QMP handle which is used to send QMP command to always on processor
to populate DDR stats. Add QMP handle for SM8450/SM8550/SM8650/SM8750.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 1 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 1 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 54c6d0fdb2afa51084c510eddc341d6087189611..33574ad706b915136546c7f92c7cd0b8a0d62b7e 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -3739,6 +3739,7 @@ aoss_qmp: power-management@c300000 {
 		sram@c3f0000 {
 			compatible = "qcom,rpmh-stats";
 			reg = <0 0x0c3f0000 0 0x400>;
+			qcom,qmp = <&aoss_qmp>;
 		};
 
 		spmi_bus: spmi@c400000 {
diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 82cabf777cd2c1dc87457aeede913873e7322ec2..e8371a90b9b98fbc12a429def8f6246c6418540a 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3943,6 +3943,7 @@ aoss_qmp: power-management@c300000 {
 		sram@c3f0000 {
 			compatible = "qcom,rpmh-stats";
 			reg = <0 0x0c3f0000 0 0x400>;
+			qcom,qmp = <&aoss_qmp>;
 		};
 
 		spmi_bus: spmi@c400000 {
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index c2937f7217943c4ca91a91eadc8259b2d6a01372..875b5a89d2555f258665c881ee3d96965b6d7a6a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5725,6 +5725,7 @@ aoss_qmp: power-management@c300000 {
 		sram@c3f0000 {
 			compatible = "qcom,rpmh-stats";
 			reg = <0 0x0c3f0000 0 0x400>;
+			qcom,qmp = <&aoss_qmp>;
 		};
 
 		spmi_bus: spmi@c400000 {
diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 149d2ed17641a085d510f3a8eab5a96304787f0c..4c54ed84e2d1ec836438448e2a02b6fe028f4c24 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2490,6 +2490,7 @@ aoss_qmp: power-management@c300000 {
 		sram@c3f0000 {
 			compatible = "qcom,rpmh-stats";
 			reg = <0x0 0x0c3f0000 0x0 0x400>;
+			qcom,qmp = <&aoss_qmp>;
 		};
 
 		spmi_bus: spmi@c400000 {

-- 
2.34.1


