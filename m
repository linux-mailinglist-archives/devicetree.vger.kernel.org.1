Return-Path: <devicetree+bounces-249198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B194CD9D00
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:42:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C92A3027167
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B70F346ACD;
	Tue, 23 Dec 2025 15:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BkZ9QdlJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NctPEehh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8195A346A05
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503555; cv=none; b=aAXIk96Fqn8HflhxaYWrVAReCkbW0LFhzpjvyF/8/qfsT8DYZPdkRRooHq3kO/iUUXCBKU64jJhGQrY2rnNEFMAhqzLIhpX+6JQgmJqlQ04pE98ygGt7jWo/bocae57bgNmHVomBrOWyzvynh/9yGdt6p1kQOfoyNM8GDbvKFi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503555; c=relaxed/simple;
	bh=FBEZSzQ0rqkvVrjYCGkubQOeZuQXJmK12Qqhdra07SY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iZwuFrDEf4Ncxm/udLknwWAlE9yOBFv/E5+9CKWLJZ35fmD4qsStnpQP10VfImHciqj1BoHvCTiSDO708cFtapJ1oeSUWDrwCPDKf7/gnlMEEVsVLJlAp1jz7oyyW6vLAra7d9tDVNs35ZoxLol3ckIwLfmWEtqIG3DNkvoU95s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BkZ9QdlJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NctPEehh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN8gooU2748768
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UdW1aYhvWI0
	surAr2E3GwiYANfzJ7XxjkfIeaqYtXoE=; b=BkZ9QdlJ8Z5uZ2zJYghIid4QPgS
	OSeCArKOoFfat/9sEuS6uH4rAVZwZthBCnhEMhjftv9+JCu9hSXdQ+TbSYRGevrX
	Ac1DNhga3r6YV4VpejBjP5RxIV33bbRapAQVSCAfa+fxDn3udSwsPKsLHqmWfg1S
	dyi3Jen9dPKYejBmBlg8UXtdFJVTBBuS5EpLL1bSQCu9j2asqa/uLqCOUpr0hNhZ
	uJW127TC2BoDH1+t0Fo6g9InwPy67FJDKLnlh4n2uCcUxayFS1CwNt2zfLj7J2+K
	uVO71QyWBBq6ZT6jqrl2q0tcedgRolU/mEEo3PO7Y3H2OHDjsJYTFbwBO+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5ctht2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b8738fb141so1508663385a.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503552; x=1767108352; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdW1aYhvWI0surAr2E3GwiYANfzJ7XxjkfIeaqYtXoE=;
        b=NctPEehhx00gZQar+Ryzn8MXEmC+MZ2W2WbEXDaxhWHC46K5fFp8PlY71DEfU4rAxr
         aED0ALBOHL0AxrKOZaYNVI5ocuKdxbvzKNZepb0dMxg4OlUKcQM+clPDAgqe4rIBihFF
         VgYW/cSbOt/cTa409nFUHBmt2dry4FNh29xV/oiVZK2MclCJGF/vBw4EXFRz/ho6C75F
         daRowkXB0iUTDGxfUTZwHS9GIXe+F6/ZxsspbgJk/N8ITDfQMUoHjIyAnlUGv8YzSnRR
         pQ7xVBhs68F7kP0SoOBVIqs6Om/G9McZNvXrbd5M8pBkmtzIvaz2zjGw9ErTwoYyhqtT
         qG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503552; x=1767108352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UdW1aYhvWI0surAr2E3GwiYANfzJ7XxjkfIeaqYtXoE=;
        b=aZtR0z0dbqNLyu2+XQhlXbrDOumsY40gWcRKw28Edk9TnJ49K5GWzIrqjA6TKb2THd
         CbbFUg04uq9OmF7H/KQXvpvLpIMmptrZUYjQ27Ne5xi2gUek2wVzZrVcAUfyb7UXuP76
         ZmcSSJddreMWILSn/6EXPXuagwg9Mw35jdw2NnozdtYCKLDQFHt03GFZNdwaSvnt76qB
         XhbxcuL1KM8UpfeqrQ8Jj+Nl3jKvqYABV/jKnZMhVgTZ73w4oVPLuU7VCcq4yYt5G423
         k5h0FEWFOSfYtvM6vslY6RNHXK0dmwcHxO5dGIyfv2KaEGRbLRwLyQX/q1xVALMMHSZQ
         4h/A==
X-Forwarded-Encrypted: i=1; AJvYcCWH535OMnHGN1jUw1nD1VAWH4+nNITRqA5BnZd5gmu/Dhs23bNKn1Q1NYV5Ubv/zHY/BrA0WthJEWEc@vger.kernel.org
X-Gm-Message-State: AOJu0YxVF5KIPSes07ecwgsxs4LfrcfVU5VK+v/tYrv1jxzKgRThnWr/
	F2vFlCRF7RS+erg1mgRRUPV55BrRyTd7U8vFHrtiBccGisf7tG5bZA4XOYTMjPf4kgWY1mGapon
	Ux/72QVWo732pO8Z/bImlPX7YmFpxUYRcVIqUbnRO+Pc1NpGovelNt2f2xIL3wlJ0
X-Gm-Gg: AY/fxX5Ym5ryiVJcjQ7SeZeUFnmQ765saabZW3YsSSXEZZ5BEaiO6IOK1JtgLBKqWRG
	KZlsKy66rrRtiULPDzo/rnAX3a+QpsWcDwUgssoe4BTLsMG9agl6wVRTyDfFfL2iH4la/2ESWnb
	uhPOyBacV0qP7q4AoDA+jF3myri86Q00esGrxXWG1i5g9FYFar+b1xD9euPzFghTMwhebgJYIwA
	/wOJvTF1S/3ZGe+VqG67wpJv1ecZeza5kI5i4yXSoxK18MsBwNVP8RWdrMWIkKEJyxYNK6Ji2Rg
	LncmzwBvqxgkbeVFDWvP5e1CZMWPVOeXdfJ1mNpPGblO8R9i8kktZzAQBefRggmXJa1XeT09uFc
	96oFiXWWTmSK3UDfyHdINVF8swtL+bFIzKVpo++ybyFcqFmEPo79NEwpKGVUFaUozC5A=
X-Received: by 2002:ac8:5a81:0:b0:4ee:26b3:e512 with SMTP id d75a77b69052e-4f35f3b7834mr261949861cf.13.1766503551545;
        Tue, 23 Dec 2025 07:25:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCNDdleerV1/mr7P7xnuU+g14yJD9qFowrQWc2bYEBnzRPcsjZ3dwIcpaeMjLcAMNRqp69yA==
X-Received: by 2002:ac8:5a81:0:b0:4ee:26b3:e512 with SMTP id d75a77b69052e-4f35f3b7834mr261949381cf.13.1766503550971;
        Tue, 23 Dec 2025 07:25:50 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f18575sm1401626566b.54.2025.12.23.07.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: st: Minor whitespace cleanup
Date: Tue, 23 Dec 2025 16:25:46 +0100
Message-ID: <20251223152544.155637-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251223152544.155637-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251223152544.155637-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1983; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=FBEZSzQ0rqkvVrjYCGkubQOeZuQXJmK12Qqhdra07SY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrR5CLCbMPCA+E3qJtui3ASvK8v0kBEUlo0Oy
 NQlwLFyfOWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0eQAKCRDBN2bmhouD
 1+QOEACamFldQRPk9FJbt40Z8CFaom3KSBw0pKmn8z0AJWEldRgP1HS/UX4s6dDYER0i144hxw2
 uR4moxseidWd3P20gX34IKLMao+wSN9KLkWbS/ExhknL80EreoZeU2gDW/QapEwsyYJ9nhPCISL
 OEVSYmRU5TnuJKvciCsORmIRx2mav5ze2EBzSvvqGjUuVwaTUcJAZFmtklYltmDwU92dW7xR0f2
 YxOQ2785PllvGACqJBknyip6lqYPfWJKA8c8gb8ZI88xPceP+lJDVN/Qx2DCNEWDVGSaENzcf1w
 bQuWL2YFIMzz/5f9vKWiwfQzlj7hKFVWsNGGOQl8pLSTt+jKBDpDJpXZqw7uhlJUeXcoStLzTi7
 qi0x5H7LcZrlohKtK4pyp0LknbngbouA8MPo+/E2aZnBhqf5S5liZgvv2Xc5b66PmpqPhd8vCSP
 EA4HqT35Isk1gFWSK2gEzT0KZtyfYshB9LNdfaYlvhXH1r8N3MDJg4aLNGzWM4NLRirexwTscHB
 WhqaYDdM7CwmOUIGi2fOlGQBfTgrTFtockKTF3huEw9bNmnGRxon1k8XQsQnxKhW+sIw+HRgM5j
 BIuXJNDOyUr46C2wKZqUBNgkMybEecAEDjVa7Njg1Nhft5OBN4v6gbLEfTNWGrKGc2pKDcC/St2 ep5cAKFKILMBRdw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfXxXbkkh5m3QVU
 LX0vu/y5Lesh36/p+TAtYFXHgYjZvuE1xWsdPuh5/SY5S8hgc7aqVrZnpI/qo4BJI6B9o26fcmZ
 DG0NGJCsCov7iEEab8RMnChrIqJ6OBRFF0rP/L253HEMFoyd0rCv1cVy33uHl9aeRNeZPpHAqz2
 9+oETheX+xomvc6hxQdWwJs6UYr3r1xocGSxj/2n6+avwYDSDgylAfYc7nnKboq9PMpUs8alxTK
 OlyU0Tyqld1yHxJVHDkuef3rl4JWq7Lop2ZfM9G1PHB7DuAiE55p6xs9A7KyhaM5lR8vSe1539g
 77fHc0MT3TvdJUeP+5UicHPT9Ii6S8flxiAVS4OKLnx9jVdraH8jlrHXhxXBZxydRpMHMT3rnuN
 xDVpKpsZSjPp/ICMgj5eMkdGfXvuDjxx98Fk310a1YX3Os8mqvPS1lC6UCsiMyiIIpyayWUyDXB
 S4dYe5kYBT+LrKJXWEA==
X-Proofpoint-ORIG-GUID: MikOQ7h_SOAbivlmTdTY622iDREhB9hT
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694ab480 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sndkAbgyudk1eiRVjvgA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: MikOQ7h_SOAbivlmTdTY622iDREhB9hT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

The DTS code coding style expects exactly one space around '=' and
before '{' characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/st/stm32mp235f-dk.dts  | 2 +-
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts  | 2 +-
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/st/stm32mp235f-dk.dts b/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
index c3e688068223..9a2b2f50df76 100644
--- a/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp235f-dk.dts
@@ -93,7 +93,7 @@ mdio {
 		phy1_eth1: ethernet-phy@1 {
 			compatible = "ethernet-phy-id001c.c916";
 			reg = <1>;
-			reset-gpios =  <&gpioa 2 GPIO_ACTIVE_LOW>;
+			reset-gpios = <&gpioa 2 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
 			reset-deassert-us = <80000>;
 		};
diff --git a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
index e718d888ce21..4a489a8d9aca 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
@@ -93,7 +93,7 @@ mdio {
 		phy1_eth1: ethernet-phy@1 {
 			compatible = "ethernet-phy-id001c.c916";
 			reg = <1>;
-			reset-gpios =  <&gpioa 2 GPIO_ACTIVE_LOW>;
+			reset-gpios = <&gpioa 2 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
 			reset-deassert-us = <80000>;
 		};
diff --git a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
index bb6d6393d2e4..0c5fc7a7be8d 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
@@ -186,7 +186,7 @@ mdio {
 		phy1_eth1: ethernet-phy@4 {
 			compatible = "ethernet-phy-id001c.c916";
 			reg = <4>;
-			reset-gpios =  <&gpioj 9 GPIO_ACTIVE_LOW>;
+			reset-gpios = <&gpioj 9 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
 			reset-deassert-us = <80000>;
 		};
-- 
2.51.0


