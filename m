Return-Path: <devicetree+bounces-249193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B89CD9C61
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 026A93031377
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B7032D0D2;
	Tue, 23 Dec 2025 15:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DgbzYhRE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dJzOggg6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF22A313E32
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503522; cv=none; b=V3n85GxGAukzDF/Ol0FnnPbdJFQEzh+xgVo49ViCOI0SP2Z4KPOtFfDn/a6OWLpXuiYxnqqQNd+EdPQICnJdxM8B+aXp/wNCku76+Vfp7TD0YN8ftYe+Ywk1LB3omKM46hSUPRUyL7qJVN0tg+wZf0NxUnKnAWn3PJLDLenwlt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503522; c=relaxed/simple;
	bh=bRCEA5WdZjwerxsywxU/VtZRDX77oDIuicp8EVoamkM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nJ+I8LEjXE4mJRgqEGYlhlub4fw+okt4HUF0tWvBizGs80F41z/HqdtecgTBILxjSgAtlGYC8OC7Ab3fwwVxLmKAMA4YnZbTRj25QPOoYe/U2oCLzhvINzf9kHeHLAeunhe3J8qiUeUg6bOYFuVk7FF7MEzknbAC8htVGyaQ88Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DgbzYhRE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dJzOggg6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNBIdYL1357222
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dhqH0YezyHc
	yTr7nQt07ksXjul0ev8UZo8LNGlyPO0s=; b=DgbzYhREcWyLhbDQSm3N1PLmUJ5
	UV+nl0TxSM+r5+oL5uuIIKcBlZIRhqt7c+e3izTNt5lRMAnixthHRkQ9L2DAz2Ob
	Li6CQIb759OUkQF/km4VT0hHTynOC44vnAE7heEGmuwfTAO+UjKu8OxvLaeU9Un1
	t6jd3VTsHkZGKpDZXqhIf5qYI+2DIsjD3DnhtCvbBrQWI/ZCUB4s4cOm0lvQFDmY
	7/dqnieRIoyLYgsh3afdhqCWw19E2H990QECHlN5w+B61xiKwMOjE4ZFoSZAap2B
	aMOuAqDYwZs/Mx1OHR50PKp1x7VU1znni0xMFpzs8vXZDy1QmzO5iro+3ZQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b78xc3nkp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6855557aso131918911cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503519; x=1767108319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dhqH0YezyHcyTr7nQt07ksXjul0ev8UZo8LNGlyPO0s=;
        b=dJzOggg6fapksIq2IP+U0TQunxl9gq+ShY6+fP3DGi/pPNCbQ5NgeXG3T5rwHMRuMI
         DRiYCJXHY5WwBRXq1lUD3aVTmBulwoG2qZPjk6ptwWDz9b3y2wRYyC3Q447NU0bHVvwx
         fsOj9KxV4CDIy08LFrafqI/xmi7jYEgJVTQYCABRnr5I98sgL6ewmsqAS743m7sIJRdX
         J3gwTYES4YE5/ujVimqMW/TOYE1yPzn4+E9sw+y1eMGDz8IgwMuSaKPFOtTJLLu0oXyF
         +gu9vqucslSvBjove8t5888uYMLlnyFnOVVGsRdw0uUII0duVGdVaVTDpaJ3X7sel7N9
         OTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503519; x=1767108319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dhqH0YezyHcyTr7nQt07ksXjul0ev8UZo8LNGlyPO0s=;
        b=Vf3lpEyt/g6QFhSEbGygf3HariCdSXlG8VIU1ZfFAKnVO7//uHq6y25VFWLthZ1q2v
         5foB6VPv7T4xIXcuIO+p+UMx1k2No+UVBw9zAHN3awtTEtiN7RDmji4vt7g/ADBILnpO
         OmoMpTOQ1Fnqa8AHghl+bORAIrZLuCSM+BqkVm56oP4j/7Iaya0hFYqMirm6quCeAXcz
         d3PyJriVfPkM18Bar9G2w5jtaDIItynQkePrCjLjsXwZzhmIOr9cDd2+tEFiMU7kghNW
         aXc6mNNC9pRswRVFEgLrhOdRJCepZJQUtr9DzyDxoeeUKI5M34SExCl7CXdCASxda9Qd
         OwDw==
X-Forwarded-Encrypted: i=1; AJvYcCWp5Lnp8eHljM9dAvIcrRojBi5Sl+BJqypnRQGdJJnuoIXTRaRrW6vk3XsK22gTN51A6Y3zSnTTF84S@vger.kernel.org
X-Gm-Message-State: AOJu0YzIi4auwyFSZphQKUJ/5qTRblI4NvrDl+r7XxvpXR+95nzRFIi8
	H1IgSJKKz37WaS8MqPMAY+j2qgyZVKYcPx+niXEBed3T2HRa1Sg6L0RUhEDXBZokQE1RbQMGHHm
	7lta5v1Y5NKkaOsK1idIr8+lqO0JDhWxdgXGul2o1o1G2Rg2FMmH56FRgWPoJmjJz
X-Gm-Gg: AY/fxX6Ze/4K2Nq6wx8c3MElMRLUio0hRBfWUWxetivi12HfEWycqUaSCklOdgYvKY9
	V95RIZtL2YnIpkoiCBqzAuI9kLQ9/dOWw8DIR6xft3wSeIUx48rwb0SRf218rKGn26o7n2GilUI
	X2hrKjfwFpy1q/mEFLNKUZIpyJfDF88x+Z/kBEw4tG8sfDlgFuGGJNTQdbK05HM9eRmDYb0oIYx
	L+agHbe3A3n0j27bkoIKMPu2/gg1xfwdTJl4Av9vvdcuX+cTkGZxpAvbY9zoYQQlDqXzqwUw5Nw
	hEinoH7qjpbNCEdbQc9K+bmuZQNbn1g897ppB63YN3Pwb7OdlmN4cYnkUdHKpkQjwbve6Th6NVh
	6IWQdA6bygtVSLhhqVFqYbdlgwLG/t8ldf4BNgOHj0hrlrl6q9kVsqeBqHMPZ1c9sysQ=
X-Received: by 2002:ac8:5d4a:0:b0:4ee:4656:54e8 with SMTP id d75a77b69052e-4f35f43a8cfmr245640701cf.26.1766503519023;
        Tue, 23 Dec 2025 07:25:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYdX5DVriXxl3lRoz2KEvuxixKRhDGRRNaC2K/TMI8+3ZTIFHIrpER1bN8UvqBsSzeZ7B02A==
X-Received: by 2002:ac8:5d4a:0:b0:4ee:4656:54e8 with SMTP id d75a77b69052e-4f35f43a8cfmr245640251cf.26.1766503518439;
        Tue, 23 Dec 2025 07:25:18 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b12dsm1430334666b.48.2025.12.23.07.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: amlogic: Use lowercase hex
Date: Tue, 23 Dec 2025 16:25:12 +0100
Message-ID: <20251223152510.155463-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2286; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=bRCEA5WdZjwerxsywxU/VtZRDX77oDIuicp8EVoamkM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrRX7Pv4ajlqk8l7cS+8qWwjY/4ZJPEjj2+RB
 rbgZkZ6kLWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0VwAKCRDBN2bmhouD
 15mPEACD9OjTy8MttZryxejwVc1ebJia3fnu2UdYli/1ipU9uPQydDsq5Km8mNbfIB/gqFzvP0x
 b+adC5IzfKQ+2MrB1rRoZWpOhtx5z+NnbgKyO8fvlSPuVvQ0mvG1TNZBH1lsKEDlMg8aNmqI7cQ
 N7P5HgR8PF1qV88Htx11c/kBmQ8pxWz2uWJvyXZT+MS8Q3uXzdoo3yx8Np1KShb1TMJTH1RvkN6
 ID4K+K6ToGzxL9rBuGiXJQfRcFTm/+cxh1IFmYFm3qjJH/9aknBQ30G3+iwvOWpPNc+7guAdQoc
 3FoGNmoCV2I/A++9WrsYBE7BKhfHgl46zGU8hQ3Uv07rcXZW1EhoQnmhkLDI52lGPDRpx0QZjiM
 IpYJCX8c0KAujax/iQH4CgmhbxAuyjqEjchOKDLdZfJQm6oWQkzIJ9P+VEgzB7KSNDd8M/MTZmL
 k6Dx/WZ1YvobpBS48LGvSW41TbcIIbn0EEHVKvTypOmJlDyvnVk7miQiAfaET44IhWfulxVb5Jm
 iv0dr7K2s6jj6sMeaO08EmHkl1QMLZBIGVmSUuYQCaPf/LBTDwdzdqYRBuoCAlO/ikpwLzZmxZT
 0CMlkcZb5Ny60MDx91ZLQo3DjC22PmU1dkyv65FQFy+KEALSEzoPowcoY4vk9EHkJ9qyUyBM/u6 LaAu6q3A1kry+2A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8GpEwcBhRhtHpUQRPc_BuY5gUCI1Ocfd
X-Proofpoint-ORIG-GUID: 8GpEwcBhRhtHpUQRPc_BuY5gUCI1Ocfd
X-Authority-Analysis: v=2.4 cv=cuKWUl4i c=1 sm=1 tr=0 ts=694ab45f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=D5a3l2Sq9Oz2InJaWs8A:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX42iT/oPZwnPH
 YM99N3A5k2S0jsEupE5pp4gmG7FXs9PWk6UINlRM/fxGAruZ7IeBMV9cKrKSKQFiDzBNmubIDhO
 vi56Cj3NV8eLHsMckQ2ZNysqHjRN3XAuDbkzb/5kD3Uq8OuNVI/M6FoLPhLnLpvzhRju+V4dudG
 Cs0EipIMcwm9aUTI9PMdL61nrlbfd8lo/Xff0VNd141JpNwaw4akFVZYWiS8qKZhsfIeQYkbe7B
 US+14wW79hreL7aUzx3esf2OeYhg3raKkrea5EtduOz7n8HZu96v8A2VuKaUno227ji2pDY5ii7
 qT56gk0j4ePztmjrMMuVBdeaPVUjCpKIfLEx/21z54+dDLTgTaVTLonRgocpRvGErIM9MqAHZqJ
 1DlRsXHj9p2CBUB2W5H0vzVTENizh2suLNrBxzLKU0QA53705sZDmbThN9ItI5MG+y/zPaZh5P7
 vPMjXRzYf7dVtUD7v2w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

The DTS code coding style expects lowercase hex for values and unit
addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi               | 4 ++--
 arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-an400.dts   | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
index c9d9f3ddf73c..11e5323f95b7 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
@@ -108,7 +108,7 @@ scmi_shmem: sram@0 {
 	firmware {
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
-			arm,smc-id = <0x820000C1>;
+			arm,smc-id = <0x820000c1>;
 			shmem = <&scmi_shmem>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -989,7 +989,7 @@ sd: mmc@8a000 {
 			nand: nand-controller@8d000 {
 				compatible = "amlogic,meson-axg-nfc";
 				reg = <0x0 0x8d000 0x0 0x200>,
-					<0x0 0x8C000 0x0 0x4>;
+					<0x0 0x8c000 0x0 0x4>;
 				reg-names = "nfc", "emmc";
 				interrupts = <GIC_SPI 87 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_periphs CLKID_SYS_SD_EMMC_C>,
diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-an400.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-an400.dts
index c05edebb90b5..cab2ee9ea0d3 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-an400.dts
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-an400.dts
@@ -20,7 +20,7 @@ aliases {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x00000000 0x00000000 0xE0000000
+		reg = <0x00000000 0x00000000 0x00000000 0xe0000000
 			0x00000001 0x00000000 0x00000000 0x20000000>;
 	};
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts
index f5b3424c0f61..dddbbe6dca7c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-mecool-kiii-pro.dts
@@ -17,7 +17,7 @@ / {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x0 0x0 0x0 0xC0000000>;
+		reg = <0x0 0x0 0x0 0xc0000000>;
 	};
 
 	adc-keys {
-- 
2.51.0


