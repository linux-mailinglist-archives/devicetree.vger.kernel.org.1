Return-Path: <devicetree+bounces-238590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6C6C5C8D9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 60A7A4EDF40
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 224C630FC1E;
	Fri, 14 Nov 2025 10:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ni/koqcy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H2DS3wHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6739430F80C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115471; cv=none; b=bb+24tA2kKbLah48qyGWSy5R7e0YxjNJBCKPLj8LsNXfkoCrSNQ72o6hY0GoxAKEYKTfnf7LcpaMxEY5dWZNVqS4NCd1jv1f9rC76mLsUgJ2+wQ4q3uLaEyik6VMRTWCGJl6RMfNEi5gYyWLz+2y//8LsdTZbGQTqx1MfxVUtzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115471; c=relaxed/simple;
	bh=kcmW0XnS8Yzh2PXq68K4fV/7FcgWMTxoDHcIGBnCUf8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qPlwXQxLD0CbJRSt0FATmb/Ez/iWKDfS+nHe3EwmsWBOwM47zB2Ns3aweKq/vnyVmygO1Pet9nGMGTd92vwyykCcXBCx8E+b5BJ82aVrnkMYk7/MXULF8/Fdhzfbg4D73Z/o6vFzUloXsk37s4ow2fCHIVj1n9hYKxz8JxkITdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ni/koqcy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H2DS3wHg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8S2w01431744
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=XRkEi9TvTDddXsjzQ3dIxy
	ddID7H11dRAdtDY/Rt/Yg=; b=ni/koqcyKUSdqgdng20tU2NPYzqah9q+cnwXNB
	dflEhkhKe+HGcD61Rk2EtfeUv5NICDqOJOb2CfVEM99Hn9kU0PWNFRvGtyy6Mgd9
	pqD/neMBhU+Sy+Y9rNuZ8KT7Wb9wNJQBcoz3OT30n+6o6dgSx9WyGy1nhMGNxIfE
	yVl6PnVdyqbOya/JojkoPlAyhBmv4WrD7/yZd31xdPCka4VdQVlRKjmjHJpDSkr1
	094qcInOLmCpjb4Dd6hw+57f3bf77U8EnG1WESfAvYN0qdpL9xmh0mb3fMfla47J
	t8oxBX/9L6A1JLtVU7JFnJFZlDWhTyefrEZRz6PUgfHYWpqw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g1rn3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:17:46 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29845b18d1aso24248555ad.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763115465; x=1763720265; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XRkEi9TvTDddXsjzQ3dIxyddID7H11dRAdtDY/Rt/Yg=;
        b=H2DS3wHg5DMvp13ZDyTBZeHEF0sqQZzQFguyTyBA/W05AkKPwHNdVOAIb0iE6npiPQ
         jRb4wiwiACZupQ/rjfq1LYlM9U5eS2H8DpW53uQM92XMMJoGcZBnS4dvmfl2UoQtCjXc
         dm4FnkPYXXwgZXg0aNY4IzDy6ifwpMgFAjCYQBOOIGxTPPZBsVEqFPHYTXqlepj9gagg
         uhCW4ffQqwMVtGZ+bsq+VuBketCNZ42ibzEDhnzQFtw1++/61r2oyxnqYjYzusBkZcbO
         0GJBcSTynAH4Adw2aWyCp7nsNe+TlHb8oaFK3nOs6p6jfjwcrjQmqAE6JNV3OG5rFYqp
         C+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763115465; x=1763720265;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XRkEi9TvTDddXsjzQ3dIxyddID7H11dRAdtDY/Rt/Yg=;
        b=UZKDV/KskHCghhkwJI2e0d43lqGfV1Iv2BeIne+p0umKjOi87CaLVp68SpJTqIXJ2w
         0qF/HmolUKaq1O4RFabqtx5gEeqWojevlCXxqy2SnCAGCC+k4AKUPkyxZFEgWDmpVeon
         oATS+ulHGcdXBR+wbJKMC8IPviAMNx6lmTAmYf80PB8qOEXkDSgvJMNUfZlW2HqzM7Ld
         dHLa9mAvVC3GuIRFiN5E2012jKrEWrsb1v43VTcGnbU3W7/BmE5n0No8ndKY9opNCZgH
         FQSlgaysTCEfr0A0YU0TvpEt3XtWZpl8T835kAAXskqHZANNK/vX9cXIDR0q/EIA6Vtp
         K6Nw==
X-Forwarded-Encrypted: i=1; AJvYcCWlUVz9UHSwfPHxTObk2JM/ivjBkdfec0NwUSnMFd5U+2idGIhvfov5BD1tvXv4RAAiyiLNIQki32An@vger.kernel.org
X-Gm-Message-State: AOJu0YydF8Nt8ktNyxIM/aPRMnqR8AqdJJ2V1Vi1D92uqrNtWrecUd9s
	PKz6CcJ9Xn8mhBYJjWEvGFYHdJ4t/T5F/VleK0jEC+WY+J8eQypZzpUEBjIHLI4vUAtVz8XRbrM
	uDuHGSYCESnCvr9YRj02UzqEXAAOs5lAXuLlzdLDZXuoVKVx6Euh9QEPw+ojgNOnG
X-Gm-Gg: ASbGnctrVY7qVfYDZJSpr1DZOQbOTq0x0nCPP7TILAlD5c82LUbupUB6NNJzK2G4XHe
	Nvr1pg8eifewvtn45ZLoxN2DOfTizSewA7599GeOIQOBRTLcipCAbZ1F+JVzsAUmdlOVnRLfmNF
	CsFMveATdhHzdoJ1Z5majKPlIcFg8Idd1V05eAqhTaf5XZHv6mHFk4Cyo0o1NZMJxmH2kZqNT2h
	UNRPsr9v0wzpwyfd8Me/R4fwkNVMJcb5IiiPf0SxdjVnLBA+BzRd1rPJY+TziwS61QB4JTI1Ztp
	HIeB9/ioZKwivCjViQ+pZgaDQYI9jVAN7W5/57tZLv0ZuaunLTK/L49uwfvXAjRzozk0lM22ljz
	CNsKcSqAK4YThGLM+XAl8FeFyY6iMsVQ=
X-Received: by 2002:a17:903:384c:b0:295:557e:747e with SMTP id d9443c01a7336-2986a7408edmr27488535ad.40.1763115465274;
        Fri, 14 Nov 2025 02:17:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWxjHl3OrvYdcGzH+TDH7qcBOsFJC9wCxnE+LjjIFy8knZPDmKHSe+4uaPLEuy037XwPbfXA==
X-Received: by 2002:a17:903:384c:b0:295:557e:747e with SMTP id d9443c01a7336-2986a7408edmr27488355ad.40.1763115464779;
        Fri, 14 Nov 2025 02:17:44 -0800 (PST)
Received: from hu-afaisal-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2cca66sm50424595ad.99.2025.11.14.02.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:17:44 -0800 (PST)
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 15:47:37 +0530
Subject: [PATCH] arm64: dts: qcom: monaco-evk: Enable TPM (ST33)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-enable-tpm-monaco-v1-1-4ed566838698@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMABF2kC/x3MQQqAIBBA0avIrBtoIiO6SrRQm2qgVDQiiO6et
 HyL/x/InIQzDOqBxJdkCb6AKgVuM35llLkYmrrRRNQie2N3xjMeeARvXMBe654629XWaShdTLz
 I/T/H6X0/C6C7EWMAAAA=
X-Change-ID: 20251114-enable-tpm-monaco-855816b60bc5
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763115461; l=1302;
 i=khalid.ansari@oss.qualcomm.com; s=20251105; h=from:subject:message-id;
 bh=kcmW0XnS8Yzh2PXq68K4fV/7FcgWMTxoDHcIGBnCUf8=;
 b=AF50w4HZA71kjHq6WoO4CKgsjaq5L4F+yVlZzNRPZyCCAX9shHIXgmTNefBItJ451QqElHBOM
 CzkKq0G34RyAzQdXpvJKaiMAxKSnJLatLZDCj/aD7KTJPge45ataza+
X-Developer-Key: i=khalid.ansari@oss.qualcomm.com; a=ed25519;
 pk=eBXrIUgTWV0cgG+GsNeZPPgvj1Tm6g9L2sfcoxMGrKo=
X-Authority-Analysis: v=2.4 cv=L+AQguT8 c=1 sm=1 tr=0 ts=691701ca cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rjKJIZSWYijzmp-bF_wA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4MSBTYWx0ZWRfX0laJRkntPKS1
 e7y69CLlxWDFb92qEyqPGQH/GyOs0WcrlX1xUYC+/kjZsAFNh2GodXjifqkPAEOsEVtq1A9HkEx
 CQZrbP1dGBuxBnJ9SKrrgwNJcQXrNHd3KxJf4uO8aw/Pqy9J6Vt1G7J9L6uxgYJG5zwguWeMo0A
 yMxW3gHc09U510pZG09XJCbR2le090FL0+q/Hw08HyLi3VvL3bU0L5ZoQCrEvNUnNuGNu2nXG1O
 3aT8Qae1cnLLkTXVZQUjUjW1Wt+XU593ct0lp6p0+UxQK953Jhl9yUggeH2p9Z4W0AcQZJCMgP9
 ggG84aOn982gDihJvmwERoVV9KUBuOUR0t4fotgCWnKaIxtAcuDv+xgxIxzCptXoAUa1m9hlGB1
 SV8lsWPWUpKOO9szZ0smdAEidlg7eQ==
X-Proofpoint-ORIG-GUID: o9lLGWHlauxmR31xylJp1zhCgC3RuDHc
X-Proofpoint-GUID: o9lLGWHlauxmR31xylJp1zhCgC3RuDHc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140081

Enable ST33HTPM TPM over SPI10 on the Monaco IoT EVK by adding the
required SPI and TPM nodes.

Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
---
Hi,

As part of TPM support enablement on Monaco EVK, the following tests were performed to verify functionality: 

- TPM detected via tpm_tis_spi driver
- Verified functionality using tpm2-tools:
    * tpm2_getrandom
    * tpm2_rsadecrypt
    * Other basic TPM oeprations
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index e72cf6725a52..ca1bf3cc69bd 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -432,6 +432,16 @@ &serdes0 {
 	status = "okay";
 };
 
+&spi10 {
+	status = "okay";
+
+	tpm@0 {
+		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+	};
+};
+
 &tlmm {
 	ethernet0_default: ethernet0-default-state {
 		ethernet0_mdc: ethernet0-mdc-pins {

---
base-commit: 6fa9041b7177f6771817b95e83f6df17b147c8c6
change-id: 20251114-enable-tpm-monaco-855816b60bc5

Best regards,
-- 
Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>


