Return-Path: <devicetree+bounces-252085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE482CFAB30
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DA3231645FA
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE78348468;
	Tue,  6 Jan 2026 18:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iqEWhL3T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FNQ4AdUF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019D283FF9
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767725492; cv=none; b=asNhkCYuquOZizzngaRfs2HPuZBywzKahUsNfc4Boz/zp1pv6Mm7aEvhOwYOQkrO7k6usvtUC+KVmWlhISdSDIEbhmtk5GBFAkblpjtBEvtZ/YGLP4qGwHTx+RWB213YLtyLEat/VcwYFYIVsKNUycTv8bAFnD+0BzY81XIHHPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767725492; c=relaxed/simple;
	bh=Xuo83gqJRGnpPAOs6iQzERsKv6wSsG/YRYnYXPqa/Sg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RLaQYdJJL5YgOfbOAHgDnfKAj+IzfyaFFOgHdBYtaek0bXorUui6PtQ21MecJTTpfkzXYbrf5JXyT8uNHlTCRcDy58TvT0MPvoy4d260o/9O0ziktn7nj5QtIFfKrTtilrj/smjqFwSqYFTEE+8/pzeWS/nJNNZMTKn7uW4kg4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iqEWhL3T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FNQ4AdUF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606GivLX959519
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 18:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Yj64iyrcVeeNZF45xM2M+SYkxf0GHgBWYFk
	jCsgGlNc=; b=iqEWhL3TZYBoUxiXOSkQuTPAmt22zWKXgtiNFryloZdc3lR705x
	Yj5tLwugEPxSkmFPQYzzp6um1ZHCs0EJEHyHfdp5P5IZRQxu/BV5m0PJxJhDssDB
	TpIlkPWQ5rwO0JCafXkdOf6PCsFsxA8p/Dk8ABHECXA56P/XHNje2Cn9DqRt9ojw
	mYnDqym4JozYqlfcSqADNkfoHWc7OOwOCTbad4+gUOZ7iG+RcrV2y2AcacWuFfDZ
	9PuwXcnrpaGF1XWn0YW7ec281P9avy1D5sten0/mJo8zIPDLZZiGt1MbDuc6Bt92
	sD7PT7S0ymtv0XGY0ikDbAL+PTiHE7/2eOw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh66ercq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 18:51:29 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4fc0d0646f9so50753601cf.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767725489; x=1768330289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yj64iyrcVeeNZF45xM2M+SYkxf0GHgBWYFkjCsgGlNc=;
        b=FNQ4AdUFzGPxXA307SesPyPxLp4wMJWdwwdqxnpzd6dXrXChdcvt/1fIMhh9LVVPWf
         M/elI4sHeYUlg51iyssPT4kFR55s4mJUdqpyeFnoX+VRLstsEtvXrA4PLt1bynL4SbKD
         cYNocQIMmRw0ewUC3YWgO2h0OqCsL4H8SVTVwk/y7Lp81qzvawXqAA8I8UTAVeEKEpZ/
         hNM9afipN1SDwGjuUk39m2Loqu95FUJNBxgK8+wIyQJj1dwNG2oVcCqcMD4YKEhV+HZC
         qmLKoS7+loJDknR1wvabn7FVILQvnI+7Qu2vptmwrbVdG6K2MbsLde9l0JyqkSHSJaMM
         a3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767725489; x=1768330289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yj64iyrcVeeNZF45xM2M+SYkxf0GHgBWYFkjCsgGlNc=;
        b=V+90AuBmO8i6BFrlkdeSzvYJSKc61omUqM5cxe5huaOJNRhALEln33xGb9rn0Qc50B
         xRxvuTl1WoBj665s/OvdLZqcIm4ecAsUkVvzkwtXpyNBIgZ5xInoeNudZHP9FfkNs81l
         JDzizCc8iKwd7RojiMDCQ/KDYLHtLQwwOOLiQ1f4Sp2WyOP78VUNAB3cE/oE8o8toCHs
         5nWKUR9thU8gXuguMexPAkaYKr+hxWtwEFlT7uZ6DO/ALAvA/UAoqn1bDLjioTb3dt8J
         P0LyowWBolHZo057s1D/K9e1BBEmi6jMsFTch90Zm+ZvyEYTCUPVSZUg4f6EgplsPLQc
         y3EA==
X-Forwarded-Encrypted: i=1; AJvYcCXHZ3nyg68pp6XZ76dUXoWWXpKAUnxOh4sRmoQcGSWubhlLdEU++KXNu+ce1l+dXSHLNwp9M2wAjLZZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy0dgVnQtvnwyCfRdf7XD3osd2nyECDBAn6VVZWTQR7uol8XpP
	gZ6JEaUMyfX2dhksG0lOoPJtrb4kp9T2Od2q/bbZOGNmmiJtiT7yXEQ6/Ja/YgUHdrc+n9TzMHy
	Jod82bGHGwtnwJyxLOHUlhaR7+74XgsiD0GEY3CJYNukTTaTQRNmEDqD+kWb8nJCW
X-Gm-Gg: AY/fxX5BKUTe+TlbHATpnUvIvWSQ4Mda5ImYfDSeVgN5IXTsPM9juQAEmpglCC2bdSE
	UgaIhfVyeWbbf/bTDCDqQtsuJtrZivrxWKUQtnrhVQ8RD3wxbTeOtlvBhxE1J5Lbad4sUj9wfNr
	hfTseAJrpp8qzcpUmiT22d7QT7yIzVXnOIhn7BQdtwZI67x0uwFsoovwCliH3wjF5ID6QM6VrbB
	DbBFfom96SSWbtiDXxjDfV7do1aHOR9+ixSontqB2ewMfKusWh2unVZrG3HzswCOwnUjEtQ6kq3
	gfZSs3suXkRLaSemtJFG3Kf74V/sUsU9etWMdrKhioHW+ag32aAy+uGFFfExjujO45HZ6E+G45w
	HtQ+ynSIzowcq9LZJTR4bQYMZrA==
X-Received: by 2002:ac8:554e:0:b0:4ff:b211:6aa6 with SMTP id d75a77b69052e-4ffb2116becmr9448171cf.27.1767725488985;
        Tue, 06 Jan 2026 10:51:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6uszQnnP54mJthneaC7SyxnvOyIRkjvqEe+ucIvxAYHlteVvQQQXMN/mBsyYtkXZfhgiwcw==
X-Received: by 2002:ac8:554e:0:b0:4ff:b211:6aa6 with SMTP id d75a77b69052e-4ffb2116becmr9447921cf.27.1767725488577;
        Tue, 06 Jan 2026 10:51:28 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a51183asm296561566b.49.2026.01.06.10.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 10:51:28 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [RFT PATCH 1/2] arm64: dts: qcom: ipq5018: Correct USB DWC3 wrapper interrupts
Date: Tue,  6 Jan 2026 19:51:24 +0100
Message-ID: <20260106185123.19929-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1855; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=Xuo83gqJRGnpPAOs6iQzERsKv6wSsG/YRYnYXPqa/Sg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXVmsP2NQodDkckFfKenEt59tQ2tP8tDhpIVRp
 RZ7+KF/hJmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaV1ZrAAKCRDBN2bmhouD
 1+5QEACJ2Y4HPEMWYNgLDF6qOtlvm/KD0Jr4Ucwt4ZWau3y1XLDxmlTX/3iErYwirq+3qbqwkAQ
 0a2ah57InLXR8ZNccHZs+WIaLgD5r8Q6rAwzJZ36hqG1F4GP8+Z7X9irzMoNCvoM0TwI8rBRvfo
 3Vt7nRS+0rUfDSED4SrfqaISrf0UY/qmx+fM1uI0DcVNio5Q4eRx9g2i7lz9eP/Z3pVKxds+Vwr
 9lgSPsPjvmGTKpAOTGYm1YTQ6INTFjYCyVJHqN2OIQB+A5JDgDAuvny0AFJYNl245JkGCzWAqJ9
 QJLhwXaYHW2x7SjMrb23u05sqZDZ4zBPcwL19BK4YnHvqr9wpeVHbfp3kt3CG3WBQLtRofy7XFN
 E7/U4xjLMrgY7OIWB7x5jKCkGOvvuvDt1Fjj1QcTIlqRRRJixA9LOi2lPI3LimfmB0WdkRe/t0L
 yY6AaMXBPLF8sBB4IRVRqgd2fH9levrKGNSIq/2eLKfzo534rP+xeq2vkcYjxvKWxRQTl4WIcoW
 n7AMCwVcvlo7BSNmG08tUWy0dh3q05G6UTbOCI3k5yA2HXUuDvCqwQrjjqoiK3AJJJzmofdo4Ia
 uMKgpt4F8WhXpm3ZIbhUTXPVkUIlCw0J5i17RY8874CE7RDkD2D7x2o8rDvTKYF4mgtZJdDvwEA fsTV1kd7IuAITAw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE2MyBTYWx0ZWRfXwyBc+BNZ10am
 NQJZ1IX2IYyZlGWlDl5IN1xpkvpqz3I4tsZ5bcsauZ3des9SboDkI4QheqspFH79x7GDf2DizR7
 xtiAG52AqPWBPEVxEVXH9vXC249TpddaekjYxHqBb77xSjzA/JVQD53Dr9DslrrDXSpO931vKtt
 OCh4KEVNS8rdYD5Qkc61dN71yJ53Yx02sPhNHunA/PQo4ZTBJJRaUT4pFoKL+Xj80Ph6z4kovX6
 tMCrEYcYQ/Dwlnl91C40nICweHrNfA10G5lWRoRLemb/TF5O1PZkR42ITOAq91p2TcjH8/27Q1z
 JZSdl/yTwkDXnb50t6Cohy87cRToCzB6bJAuv7nc6xt4Ic5PzQlKHGZULgmq28/eSLLvhE+KDKB
 nU9gl8VdXNdQpgbjS/W+R7wocJmB2o5uqDtsw1ANNjXeHGB98pohNGHuzZ8+AEN9oKGQgh7iCCt
 jZiXFfRkAW4gnzDOH+Q==
X-Authority-Analysis: v=2.4 cv=HccZjyE8 c=1 sm=1 tr=0 ts=695d59b1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=L4kx1223G2YaxeqoHsIA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: xpjv4DSOkG6k7DV6Fg8rAbEPOxEvPwOf
X-Proofpoint-GUID: xpjv4DSOkG6k7DV6Fg8rAbEPOxEvPwOf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060163

Interrupts for DWC3 node were completely mixed up - SPI interrupt 62 is
not listed in reference manual at all.  It was also causing dtbs_check
warnings:

  ipq5018-rdp432-c2.dtb: usb@8af8800 (qcom,ipq5018-dwc3): interrupt-names:0: 'pwr_event' was expected
  ipq5018-rdp432-c2.dtb: usb@8af8800 (qcom,ipq5018-dwc3): interrupt-names: ['hs_phy_irq'] is too short

Warning itself was introduced by commit 53c6d854be4e ("dt-bindings: usb:
dwc3: Clean up hs_phy_irq in binding"), but this was trying to bring
sanity to the interrupts overall, although did a mistake for IPQ5018.
IPQ5018 does not have QUSB2 PHY and its interrupts should rather match
ones used in IPQ5332.

Correct it by using interrupts matching the bindings and reference
manual.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Not tested on hardware.

Bindings for this change:
lore.kernel.org/r/20260106185012.19551-3-krzysztof.kozlowski@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 721b642acf8e..6f8004a22a1f 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -571,8 +571,12 @@ usb: usb@8af8800 {
 			compatible = "qcom,ipq5018-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;
 
-			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "hs_phy_irq";
+			interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq";
 
 			clocks = <&gcc GCC_USB0_MASTER_CLK>,
 				 <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
-- 
2.51.0


