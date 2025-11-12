Return-Path: <devicetree+bounces-237426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B6BC50FB1
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:43:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A19D74EDC74
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 07:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3922DBF5E;
	Wed, 12 Nov 2025 07:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YWIyzax9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bEwNj5dU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BD32C21CC
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762933344; cv=none; b=K7M2vf5tCC42I9z4wgfRjaySTG5SCPkhm8FbNlsSHvz03TP8JxLZ038q4ksO21frrfJk4NAx1yTfUgeqsvkYAuXpJiDY5f2z7QafbPkjqQEOFea5vb1bVNvVz1mHS+YZZNzgSCaAxU2eyk7bxSfTDEJiSeVTSQlAWeKSyChGqDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762933344; c=relaxed/simple;
	bh=qnRVyznIp2/9hXbw7y6c4CxmpQo/GrGH0lc7ReCMlUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=hHZxp4lLu2+pw9MIJIVto5UQGYzhee8EHtaqH/1pS2pePkAA+s8IOHTMYWhJO+MLfpb9RLFWutc1O/g8qRk2VxTCOTKxnI4fEHLTLUv28krkQHK91dQqs55DbgmGpWmWxIfubDvRHjINJfXif55nHBqRqA+E7IXWuz9EeZ0nw38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YWIyzax9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bEwNj5dU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC6SqKp350364
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:42:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=SRS46F7+myfHHV7nZlBsNh
	Dj7nA6bojeVEV1V5g3wDE=; b=YWIyzax9YUBwsaSonDzsKghEcyFx6/U1y4L8mW
	ban0xVOBCUoKlTcce2IG29NbgRhaRRyUmGpin5juhoFOuFVbSjYptMM6Lipu2rIY
	x5OLA4j+ps3itXz63ERxFFoxJZalA6TWi5DHG7zYXp00dbdntiP9eSP98L2Lqsgz
	T8er4KWq2XcUdn4WT4ly+2ZcbpmBnIVfY/vW/u3tRKBEgGR8y7qBJdvFBxkmty3p
	5cONehSYKPf7sIcF2ig1VeJKktqd0D6TQnYoRGkeT4V4A/5AaB7O8yZijBaJbiud
	jH4YOEq9HhHvRwirPNmZ06dcM0Z33AWvGoGa1MJ3WPWvKKZA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acn0nr6fu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:42:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297e1cf9aedso15875695ad.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762933336; x=1763538136; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SRS46F7+myfHHV7nZlBsNhDj7nA6bojeVEV1V5g3wDE=;
        b=bEwNj5dUW2C0cGf1qM795quWS6aigjAGCEFw2t76ALB3sSYofBRM6auJtB6jOpa8Sl
         KHt+2pmTqlBiUZ9/NHxu3Aufe0SXYSeuXNd44jHKuT+BUvkTc0b/0bAEhFy3GL2luLU5
         HB5mpY9qoSeQEMKr0TASGQCqn9UePvOeXoWcyfkFwMeFWcdW0PkF6VQmqpnuDcjH14dW
         7gwpsjdsyFjVUh2B/wgYcb+xp2ktHZqdCN5fRPvhVIOTdXiaxqlYqRM4WcdnLkf244Oo
         GWpCYyTGU0gQlAcnveRaIgqv/UiSB9dWjWxntHZcTWENah/7MwACRU3RCpEbh482xrsA
         +FAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762933336; x=1763538136;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SRS46F7+myfHHV7nZlBsNhDj7nA6bojeVEV1V5g3wDE=;
        b=kiac0GlylCd5A7njhFH/4y+MRLv9xc5f89JjLD5h6KeDQ4A0AiI7j3Xl4WW8z9K0jx
         cquO4IcLtn8uyxP3zfByv5r7cFm02szgD64yCe/LjSLBik4t1vv2L0Ww8swL8kq6CEN4
         nEU9+mSyEYlD1jPKY7CTVQRVMlfQVCoJyrnGxVpXLbo5vHlbHSbP4BKiJFmUl0XCligl
         bfuCAIRL0daI5mCkRhslKyFN/qltb2bzZzwg9gnGZlaXu9eb4SX3hoM+UuvYSUh3iDjf
         lWMPYtkrXsOYFlDjl+zhp1uGLH+epDzelXzUXSjJsXb9nKJlYq8DHt3njbZvhjFQ0vyG
         jWWg==
X-Forwarded-Encrypted: i=1; AJvYcCVETDoV12p6bz+PaK6LAkFI81X3jw9oXKsQhMRU4yE1cF0IiFfePY+kTO/oTnDo8MGQYk5qEWMmT7VN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm3I/EyjjbwtZnDC/P8PCknehY4w8KGM5gD4yHu+6GKxPlYVCg
	wd4yvcUgLf+Whf3zRgSvpWiQCQ9RTaGWlaVnZMYhCjZLeRgKw+G08BKHAhI5n6VYuSr2veXz7lJ
	yT2vwGdzIAkAKhXhZt9WhhdLbRbz9nsIetM4HXj/ZI8CmTBaiPp2tsgATdfQr9iav
X-Gm-Gg: ASbGnctbgleHkyXWbDPEpz3wqAZfsZowVj9HxRtg6OKYTa2MUgIkuCJhFV0gHiKNsol
	Oi3sQ5Qqh44WpVi06MHnt7cuxiQ1TC3WRybfHsWvMC+Cr+hKm2YETOXLUg50KW4DYLhCqKC8ucJ
	JcJXykP/VEEdMl+1oQ8vf/08F0bnQg4ONLAkZcF14WN+/x2dWqdLBFRIx8GIbTE481YcvACXkYi
	CgNoUeMnQ7EYf5m2oIzvpGLippzTg8zbzadghNp1y0DBjMQVk0aCy7ETZ9Mt483J1159XvTu2sz
	P4TFft+rWXB4lCsVwqVinFDVKuXtCxjoK6vpu4/GpHnsYLe+SOA5miAAui77AIPIC4ENF0Gyv7d
	FMKDQwYAcMOAVi7ciQ0SMCfyzutnFvw4=
X-Received: by 2002:a17:902:d4c3:b0:28e:756c:707e with SMTP id d9443c01a7336-2984eda94d4mr26638875ad.33.1762933335604;
        Tue, 11 Nov 2025 23:42:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFY/P0lC5DPYonYSA0luXIUsZtxf8uIzeBz3ZJrJSJzy3UVuUdgdDSnbIliXj9jNA4GRFaMOw==
X-Received: by 2002:a17:902:d4c3:b0:28e:756c:707e with SMTP id d9443c01a7336-2984eda94d4mr26638535ad.33.1762933335083;
        Tue, 11 Nov 2025 23:42:15 -0800 (PST)
Received: from hu-afaisal-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dbf097esm20457705ad.32.2025.11.11.23.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 23:42:14 -0800 (PST)
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 13:12:09 +0530
Subject: [PATCH v3] arm64: dts: qcom: hamoa-iot-evk: Enable TPM (ST33) on
 SPI11
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v3-1-39b19eb55cc3@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFA6FGkC/6XOwW7CMAwG4FdBOc8oTijNdtp7TBzc1qURpClxF
 jGhvvsCpx12goul35L/zzclnDyL+tjcVOLixce5Bvu2Uf1E85HBDzUro02DqFugFPY7GLLApY8
 BJgqRwMcMXE7AM3VnBsnWQl4CxBlk8YjQO9vYoR3ZGVa1e0k8+uvD/TrUPHnJMf083ih4374qF
 gQE15GzXePGntrPKLK9fNO5loRtHeoOF/MHq2dPYgY0oEZyGt/bXbf/B1vX9ReW+/bGbgEAAA=
 =
X-Change-ID: 20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-c8353d7fe82e
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762933331; l=1821;
 i=khalid.ansari@oss.qualcomm.com; s=20251105; h=from:subject:message-id;
 bh=qnRVyznIp2/9hXbw7y6c4CxmpQo/GrGH0lc7ReCMlUU=;
 b=hQK4ahqXPHRqTxFOZI2jgILKMQy08qbldZr4ZchvuRI0nuFSBaW1PhU3Aih2AeuXv0MNXOWFx
 il1jePjFzDvAZKUWV4TKSyyNUUZ0dwQr80Hn1xsoThSl07cIs5YxEfR
X-Developer-Key: i=khalid.ansari@oss.qualcomm.com; a=ed25519;
 pk=eBXrIUgTWV0cgG+GsNeZPPgvj1Tm6g9L2sfcoxMGrKo=
X-Proofpoint-GUID: L7H9WlonGuXukZODzeUcDCIbUmxIF-nh
X-Proofpoint-ORIG-GUID: L7H9WlonGuXukZODzeUcDCIbUmxIF-nh
X-Authority-Analysis: v=2.4 cv=acRsXBot c=1 sm=1 tr=0 ts=69143a58 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=0o05X4pXTjTZH81ee54A:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA2MCBTYWx0ZWRfX1IbRVewdIuN3
 jUVf6woVMKKMzkUOkLU0zSQCiyGQUZrhW3iOofdlD5rFIYudz6Own1YMF3wGYOAv/RIh5DbWH1a
 FnjcnUhqtWe50/+sitF8myaqpAca6vMz9VQS6dtNsCh4xc3BLnAdtRLlgH78mwe3nVhzAHll/+3
 bpYjCsAKp8zfCNGvnaMSNRvNp+BBDCpqrsyYW2R4+z8hYKDCCUkLsfoT/iOfhXR4OMq+jTaojPO
 WyqP86dzBgdAlrPqz8vO0U7VGe7rdn58F1xDP7KF7o1ZCw24PRfjz1oE1lSCs3E1pBcipUHHDLL
 KgvVrjXIM1NWe4FrR+UTgaki3Rjaj0xLaqXnyNOkhIUOAZZUwWMHlQXOJgfRlxXWwsvndf05gCV
 GY5b9zjedvvYXB9SfNgJa2KZZfhisA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_02,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120060

Enable ST33HTPM TPM over SPI11 on the Hamoa IoT EVK by adding the
required SPI and TPM nodes.

Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
---
Testing:
- TPM detected via tpm_tis_spi
- Verified functionality using tpm2-tools (e.g. tpm2_getrandom, tpm2_rsadecrypt)

Depends on:
- <20251106102448.3585332-1-xueyao.an@oss.qualcomm.com>
  Link: https://lore.kernel.org/linux-arm-msm/20251106102448.3585332-1-xueyao.an@oss.qualcomm.com/
---
Changes in v3:
- Squashed patches touching the same file into one.
- Link to v2: https://lore.kernel.org/r/20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-0-101a801974b6@oss.qualcomm.com

Changes in v2:
- Use "tcg,tpm_tis-spi" compatible to satisfy dtbs_check (was vendor-only).
- Add dependency change in cover letter.
- Link to v1: https://lore.kernel.org/r/20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v1-1-8ba83b58fca7@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..aecaebebcef5 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -917,6 +917,16 @@ &smb2360_2_eusb2_repeater {
 	vdd3-supply = <&vreg_l8b_3p0>;
 };
 
+&spi11 {
+	status = "okay";
+
+	tpm@0 {
+		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+	};
+};
+
 &swr0 {
 	status = "okay";
 

---
base-commit: 9c0826a5d9aa4d52206dd89976858457a2a8a7ed
change-id: 20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-c8353d7fe82e

Best regards,
-- 
Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>


