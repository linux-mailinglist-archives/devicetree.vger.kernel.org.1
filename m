Return-Path: <devicetree+bounces-249197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6CDCD9D09
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:42:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E0F54301FAAE
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65D9F3469F7;
	Tue, 23 Dec 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E3nXzk9R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X6wE28d7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A66346782
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503553; cv=none; b=V2YF5sgQXf1LJkb6BFiTpzk6r+8vJN4wCqM9Mg+ece1fXCPb9CLBoq9xyO8Kg0Z9/Z9zZS1JWLvqSDHMqYOmqCNVc3OBFTI7vkHWXuXYn4WIPe/hWOseIlENXQaPoJjQJf+aCYj+xxxW+2xv2CB+sntA6AVXLGSgZi3DFFBlupI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503553; c=relaxed/simple;
	bh=TUV9WBdE7XaextWF8pSmMEIyYIZxno9GibptOAlYOOk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hw+S2Rt1zNL1ymtaIz4aDPM0H6wyUlLL1JkMKn1tqfW0/QgZnsfhwa+qMTloaF425XJpwUuyKzFj4LeJI1ubs6cHgdDwW5fnspqtVcow4Hfwa/eBag/TF8U0U/ZNJUjrn+FJSTJJEFf7Flb7mSxl/afJ3o/SeGZd/uVmKrzy8WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E3nXzk9R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X6wE28d7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNCdHSw559749
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=TtEztCWnj7QRqJ0GSyALKfu/qRVEAEmKKSa
	+oTR2QDU=; b=E3nXzk9RnMdtv4PuC0+mk3KKnbAB0gyZfBD7ctQaDriuv++n0m2
	dwTvyN4o/lE/iFITXN/b3TZ7umVEJ4ZwFCxcABdROe3XyJ0HNIshbOxppFzIPBnn
	T2GI1rOvWjgGwefREPJhJjRCsSjiFb1hdWwRzIG2o3StcbKDNfcr+qu1vDgLPiOg
	RLW9Yesx3ErO9Xwgzdi5yovCv+ZkknxxOa3Eq30KomnAb9dDWBZMNUuQV7aG15Ep
	D2kl285l3JFrN9s3XW8j96FbcCdvAzpBlvg6O0terYi3ScUy8vX0gDeZMFkFing/
	sKIE69bKF7PpTyt5dol7CUgdOM8VaWm20AQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9creef-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edad69b4e8so107742901cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503550; x=1767108350; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TtEztCWnj7QRqJ0GSyALKfu/qRVEAEmKKSa+oTR2QDU=;
        b=X6wE28d7QMC5wyhhhR9hFOCQ2KN8pzT6SkyWL8pJ1wkuIcLaJf77FFcroyCqpCF4wa
         8J+JKwpGlvjIbliKCNjkiwf/WjyFzEs4thwP8RCTfeyAYEW4IlKytUFxeDH8BKwWWMFC
         U38DMqOXbDQRz3r+j52mt5LwjDbQIibws1bYxCFpjJfI5VENO1zygMhL7E0zkdKZKfxH
         48J/UYCNXXnXkkzYVbCAb/3PYVk9FQOpmcyZyB4+uIbZ/wV1P5BhK2imuh06XBzZCQ8B
         2+EkNe6GuSCqJj0T5aWFVtkqU8Abj1W/4IGFTN+nA7OzPW2IvXrT2bLB2IntOG7pYEYJ
         Fk/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503550; x=1767108350;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TtEztCWnj7QRqJ0GSyALKfu/qRVEAEmKKSa+oTR2QDU=;
        b=vPmB/YVfUmy43IbnNSBMbhYaM1zEDI6BSlcrzfaa7HFed6j+Ep+35PZmNoJ8iWv1D8
         BHVK6ef0Few+ZgkS3reTCd7A7Ablbtz/oqZeP02cU/N5vjFFE+mBipBMAbh3lKKz/PUn
         8MhSjV6P6WMKQ5K2hY0kFF6fpGA0T8W4ygYW8Jzzr9abNuxxZT3Buy/AiFHwGpo9LdM/
         +tZLBIO9rmTbJM3YZtIz5rxnmW7ec9m2XpQtuTdV6bPy8DSgDZUgytJjIjohTqvdphcH
         zxpHDOzD8RZnXvWULXvXxuh0R8f+vWwaQUenrw33j5jaRgeldAVzTG5wPZOc6cKAdN3b
         59PQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2xgwqyoPodx34FgY3xj4oyWuJoVsLamWRpO9r1OKX1Qs/SL2fGTzoJB7o3QWdcxUPBE1KodxJM12Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzvfjZljSSYyxXgHF6t/Ks7j62noMGLLQIsLMxvwYCZfDvfPVCW
	W0gIb/Gpp8m7Dlvc6RWwhLyRGaitQDtnesmloMJxoPZqManuJSJ5LzYeoLB33EjqnXU6tB4gxef
	iNEAkqwBMlfpnAK+mAu+AEHB41EyJu9y+u7+3Kh5Qfny3kDI65h4lOqH8qkBlqFZk
X-Gm-Gg: AY/fxX7NpcxE8twgXsm8W5xp9ejoJBQpfu2zi0tBd77GA0R5QtK/KqzdKR++O0sPyn5
	bHP87sQ+xEf44dIZ8BOn8brgnLqYCVdF9BG1jwv98KIuqFf8LBxgvj8Pd4tDvxx7XGcaInKAqVj
	9XeoEVXvUPmAD7rbUKvUunxMwSaSxU68FQg3eMQTz3pVE4r9Xlzj930P2mkCGh2SaAjUWF8RZcZ
	Y++LUYuGRQi/PMXuAa1XtHb+quKWtxXBORFy0oJWIhR59tFIjDwKTIMPXlua4+0CpK+REffiEAU
	CB4FvpTvfaohtvybkZWLHjrvPmZ16Q2wo4eTpBBJGo8feCc1TEB8WDn38+4ivWzw9NYr4okixFQ
	ATZcQOiXdheFIrahh8uJ6n9avy5gjC3sva4IP5TgML4JAT3jWC7SwfoGQCMzoB+wICqo=
X-Received: by 2002:a05:622a:510:b0:4f1:c1d5:e37e with SMTP id d75a77b69052e-4f35f2b5da0mr261741871cf.0.1766503549727;
        Tue, 23 Dec 2025 07:25:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGfEiyxKd274Zyf+GFBh17CVqHI7gHxe7xWhTEgn25kY+EbcwJaW0WRnZeTw9IKDZq1o5KycA==
X-Received: by 2002:a05:622a:510:b0:4f1:c1d5:e37e with SMTP id d75a77b69052e-4f35f2b5da0mr261741331cf.0.1766503549176;
        Tue, 23 Dec 2025 07:25:49 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f18575sm1401626566b.54.2025.12.23.07.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: st: Use hyphen in node names
Date: Tue, 23 Dec 2025 16:25:45 +0100
Message-ID: <20251223152544.155637-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1512; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=TUV9WBdE7XaextWF8pSmMEIyYIZxno9GibptOAlYOOk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrR4kCyqhm4Gsiig6bqUTW+5/U52bbrX4IHHk
 Uwz6YjfGo6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0eAAKCRDBN2bmhouD
 1wuiD/wOj4LGMQu/gq0pbdXRvVtoSb+cRbxvJrrhYETDzQJ3p0NGp29zy45oNjJnJKf6c176p5L
 oJuVIaMgEPDsosph6UeWCVEr3TX5S19EYrdfjzMHMAhhw4os1RJpjaOW5pnVxbbhFWbu6TyLiKe
 oyDuJaw5DCvh3GR6Ec1CwJo1V9LXPCqjqEkzY8PILB1OeGVbzLoh0jM0th53FG+BFkiJ0PlTdag
 2epNXoTV3yzJ1ZHO897bsVrnHGhEjC5xWLyIj7jZfuR+d1FX4xVWLlYbkhy+XZUnXLZROoMf482
 xBUbDyfx6I2wurISdzHJTariuC0s5q3xxQ6m7BTKeH/dO1Zm7ZF40qRV/ar16dCCs0gYt8Pl4qs
 KwvEmZxn3hi5MHoGXeT/hVsQZNpBAQbND/V1HZWWwa4OGNIhAz7b+PlfEBEFygvtapv0uAXVeJ4
 IrbmZ+g3jrGbVFBu0xbyTnHfRlpHnBLVdvntdKkkgBmsXDuDZnPMEn5Np1xYuby/LXl42cJEbsu
 QK8e0DZ7uueuZK1Mo48Vm+qupHJf57F59Sc8vvG0vO1Hll4MQEVi474Hs6Zvp389ONja9dQRlhP
 kRq1tpeKDru1aep2JZ/a5sOUWD+bTYhRBXSHIwES1aB/sfRpzwTOHwty9lVQpWI4fi9iBEQft5l JX3SuTnUt5zIUyw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 1x7cTfxoUcitKvGx3V7HOygXVN5jbw-J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfXyaHEbG3t9izO
 ztzk3Vuk2w2kmh3zdunBiWWUmXKy5fuB2vSHp1TKtMvYxec9tQUcli0VXBlLAmYtvympYwvdF+9
 kXKm6rlOu1/35P3soeHpo0z2e9bY4b6xboTuMpuku+uhH9Qr4KMTK6r7TSNJDbF3kblFuHt46TR
 7y8S0+BnCuDZ4zMCVDogEYNeYvkWYwEnxW3iUMRcpx47rSqXwzS+didpztCBNGdSYsZBGG9mBnv
 HcxuzyOtB2EwGepLJQe+vxuMNUrRVhde9Dq7VeqTrM470FzG+nh/wIgcf2gRqZ4uL0vKEY7Ce9k
 eTlI+OJwPlDZZ39OxvMD8e9G/fbcCAUjNGk+tYjIdduEcoSUe38t+XYK20bThUAHF3L0PRRrlO9
 pj5RJ3AtzHb8vU6fde3+XUSPOYscZY95GfUjmfgAnox6u2oQL2ZO6VS+wbrpDqbF/uuLh/uQdif
 Hwq9rzn4KEz2OFwWohg==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694ab47e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=fzvLM_iN_nYskE6_0WEA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 1x7cTfxoUcitKvGx3V7HOygXVN5jbw-J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230127

DTS coding style prefers hyphens instead of underscores in the node
names.  Change should be safe, because node names are not considered an
ABI.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/st/stm32mp231.dtsi | 4 ++--
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/st/stm32mp231.dtsi b/arch/arm64/boot/dts/st/stm32mp231.dtsi
index 88e214d395ab..a6658d836122 100644
--- a/arch/arm64/boot/dts/st/stm32mp231.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp231.dtsi
@@ -761,11 +761,11 @@ bsec: efuse@44000000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			part_number_otp@24 {
+			part-number-otp@24 {
 				reg = <0x24 0x4>;
 			};
 
-			package_otp@1e8 {
+			package-otp@1e8 {
 				reg = <0x1e8 0x1>;
 				bits = <0 3>;
 			};
diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index a8e6e0f77b83..ec5db00b9d72 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1739,11 +1739,11 @@ bsec: efuse@44000000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			part_number_otp@24 {
+			part-number-otp@24 {
 				reg = <0x24 0x4>;
 			};
 
-			package_otp@1e8 {
+			package-otp@1e8 {
 				reg = <0x1e8 0x1>;
 				bits = <0 3>;
 			};
-- 
2.51.0


