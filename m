Return-Path: <devicetree+bounces-252086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03860CFA522
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F5A93059A96
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1C434DB69;
	Tue,  6 Jan 2026 18:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ondwMtV/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SOWUQA/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BEB33DECA
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767725493; cv=none; b=g8GnfxO2bOjMJTZr7pOqkSxb9zlgUUvJmp3r6N8E6ShWRU82Qa7o5SVMfsIQWx0j5IuM+eP4uHTU2YQK8aLfDomPmleLLlkvVsLOwgarS0ATA47F4qY24LQIjE+l8yJjX5gq+dw1S9UqxQcs16Haczjwh6lpqg87jqD3FNzJi4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767725493; c=relaxed/simple;
	bh=pgdtTQHhXKiO49RaCk3l5q4GgjDwgYQEfzDO84YFXDw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sC9CUZ44ZQOQW3grCtUvtwq1FNqufYzWwrFBdAgavCNCLs/ool3IaCtY9W4ZfkYAjJr2gXRZNkskoVEp6RkQ/vxt8D7rwJkHMzu3KLWzm/G/vjOLymSVrba7cHewvZlwii8XYUaekrZkOdbmbiOk0YUfrZbdqjLKoSFIlrMM93k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ondwMtV/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SOWUQA/a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606GiqYv959393
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 18:51:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=91NZBgGUZeF
	hXOKJLzluCah/B6l8p1WCZKPnCh6Jauw=; b=ondwMtV/JalPRf3Z6x/7snBr4tB
	Mr17TK8ukU4XeRgRjvgoYCHPhggcYuF3MFFDuleONE/iz0J9nmoTOCGmMX/DN6F5
	9Gp1ayoYwKYmEUA6AtSCetXswp5kspyACvpCRv7zLy/Ilj+UvJ7yN8oAFcd5hot5
	rFWmS2wf5gZ4Vk3QL/8tFJnzXFM5ZY1Ls8xkO7BlCybnGNZA4ftBcdjmMWHvEuph
	Umb6780m9eBUBMCzi8vflXLtuSYZcwpu/2WCzHsUnKm17zg00AtQkLJBunNelxZ1
	1VxcV/40B3RJYYDN+h3xEiG7oCYSwvNOHljnjVSqlkfGeN7jDTlAzAziKKw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh66ercq5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 18:51:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee04f4c632so23062151cf.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767725490; x=1768330290; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=91NZBgGUZeFhXOKJLzluCah/B6l8p1WCZKPnCh6Jauw=;
        b=SOWUQA/apG+8GAKV+jOH0QRe/s4cb6FOGDcK7FK5fC95ZXQMbQyjSUKP0A5q72xjqQ
         nmaETPYlnpbPRnhK0unhlqqBJATuF+yYYw6rtxYYfjK/LpFg1xi5Q4STfxFWuR0hpIdJ
         NJGYpyUyWeCrgZWO4tSxnnkZ/vPSL540fbcl9XV+TwMbD81qMj6nJtzRxSY9c0tpvHpN
         tPEOE6fciBcexeDvQxeOLI2KHxhUTGJOBt/LCO025oNcBoBYC7L8Zu29tSPhF6Pdmf9v
         Da95G0re09L4qgn0iOCc3vRLfMbXkmEgaT/5oQBYiA1j9Y4WOo4zvr4peNn/Cs3X2E5u
         E+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767725490; x=1768330290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=91NZBgGUZeFhXOKJLzluCah/B6l8p1WCZKPnCh6Jauw=;
        b=I3KEscxN/B+YqNOIvyMRDbw+EqpsIj4K9KVa6flQQ6EZMclk9x7NHO0wrBZV5kjO8G
         4Molt7sKfHMj3W+Ra+1ePH2Gr/X4KLpDZWJD/qe35qgKieexGqQUpdbd1yhqa5Oapmqa
         Rcbg8zrVQYVsoQ4APwxoQ/lBYQlpmrkN92zmWYxjXFfxI5y4hhz77BaHRtMfUwbpIJLm
         1eSie0ukS2zzNGThlmprVQ5TrsRChw+S1rkyZU29sFUngQYlkMuC8e1Gm9lspwvUBa3v
         iULCyg24rOPYrNCwddctOyUFrzCKcYG2WkhNg2qM88qTdWL73+kq+DgQmqd3yOJxuHDg
         zHdg==
X-Forwarded-Encrypted: i=1; AJvYcCVerGJyCMtSdOAK9hgdudp/D2jO+iNBa97As9JUaHb3Pi+kZGKtNgt9MaPFnxSF7aZQ9Fib7ZNL38Se@vger.kernel.org
X-Gm-Message-State: AOJu0YwJIlzhSIf7RPe6EckbIm9QN5yz3q58aQYkBQ5csNDZNHGsJeam
	2EgY7m2N2IRS6ERkwlDyLj7C2aO3gQNKQWRtbL6Ns5ZFxh2Grza6sDgG3PcjHXBi4Jy6NMKz+Eg
	zaiv6nou4uuc0cMDfXDtQVpnff02gZ1dL3IFur46Ut1JiX1Fc3KAovkgo1LwTEW5t
X-Gm-Gg: AY/fxX77na6HL6EPRC1SLPIRroxRdUs9pVSCYUuVqtDEZuoR0VwXEq17NY1FrjK5Fb4
	Loi8umgyemOJhvm8ZL+Ro9B+gp0U6snBUoCwr52kZOI77sUUc9XDWP06tuR4h++cLXl4gQPOMAn
	2YyRcgfkvM0d9Sn1DKRPEydXALnU/HhCT5+l5HMkckLdOKeutRo99PXN5LoTelaM51EJkCHeb5q
	CE2yldSVIR7Uo2pDqWpVEh94wq49owBkGrAr9knJApA6LqTtyhL7rHYK9h050zcWcQIKaQDF3a9
	M9dycpSAPaVfTZ/0iFTTrzG/Q0WpneuL+uHH1iPKzG2MeoqPf4XgNVrKYJj21py0ncGhMvGWGpb
	s48ipOHXR1N07Xxjb5Qu8fGIuLg==
X-Received: by 2002:ac8:7082:0:b0:4ff:b21d:bf01 with SMTP id d75a77b69052e-4ffb2ccd64amr5228251cf.13.1767725490542;
        Tue, 06 Jan 2026 10:51:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsS7N9gUYEg1/0mKUHt7A0n+kPNGlYKSFsW+TU1Mr10vOy4zc3bHqlduhC56QITFI8rsn3ag==
X-Received: by 2002:ac8:7082:0:b0:4ff:b21d:bf01 with SMTP id d75a77b69052e-4ffb2ccd64amr5227991cf.13.1767725490046;
        Tue, 06 Jan 2026 10:51:30 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a51183asm296561566b.49.2026.01.06.10.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 10:51:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [RFT PATCH 2/2] arm64: dts: qcom: ipq9574: Complete USB DWC3 wrapper interrupts
Date: Tue,  6 Jan 2026 19:51:25 +0100
Message-ID: <20260106185123.19929-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260106185123.19929-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260106185123.19929-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1463; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=pgdtTQHhXKiO49RaCk3l5q4GgjDwgYQEfzDO84YFXDw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXVmsdcAZg1MjogcHM0qqMNxoGGdZeazYzH1Nd
 PxQyspbkjmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaV1ZrAAKCRDBN2bmhouD
 15VxEACHAo2DGQJEPgsegHjHm468m4AkzgOUfhfHxI9f4QzUL8Z2REbnT+sgSoKH5DFTLOw9mZs
 KFOuQciFVIL+IziAA4Ngt+4YbU8UF3GmacukuInYPvRm3n8XrqtnyP6R8mbJFAk1FmkSbMGuIQZ
 /KuH7NoGqZAJgHzhXvlD9tzRrNBaK9FkRbe8BISJNl9X+jfTO/+qxs0CaWf5wszK6iE2DBHrnPe
 NuAIUK2C4lVNM3a9mkwWGWlng20ztuQnT21UZGX+D0Hu6tyC7fLSttyUNNGSmwivA64NdeXwpB7
 d3Fn0pFhaKrvCsYCq2IbzCw2PZ/Xe7tqWmH51oNMjEfJ55FJEPjGpJmyL8s3YxxzVwgVH2kz5oT
 S181lge9e/zkMKJ3PfMQECWTQZ2KLcKA7xXW5dJfzHQmDArF1kBMGPsGg4kAdj7F/7ofrQSdP1B
 segKMu8AOK9A42ZGSkigi1N8WSJtrmb2v6NmR1D2ROPQ/FSToS72M2eOKUQ3SL9G/e/Fff1RDcy
 cSbdhnvzuRjoXo4Yrnst3Nw85BWIigfc0lJCRxQNYb0IaCuZPBjnWYe1uMTpoFt3BY2lnMw8STd
 1PsmdLEdov3rpS6lMe92kun5dGwtXNiCWl+3yGtgEPytG5y7pf8c4WGy0RUpShe5tb9hHvRS0QA gmdADZN94qWwpog==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE2MyBTYWx0ZWRfX7ddtzrcan6Ug
 6Ji7lNqTFOSRjV/VXv1WT/AoIHxDZH7ZFV0zMNpRlcT7TcKDSE/YbW5dKUKoHRcDewiAGMPTJFd
 fhPBq3v3n4ebNtEPlL0YuG27zPzDE97k9zhyk5Kl43+92wxZH+aelI1Q6b8ELRL1vskmvC98eDG
 s/hlpQxcTzi5sFqvAn0yAHanYVE7DN+JsrUIcdn7M6F/+JgY6CFjMG8PnWE5DgMCtQnABueMJSZ
 5pFdnwbWVyL4BRujDyXVUuAQugUXXjmYOSObFdSty64azBp2Ifu9WdYnh3A5blx1S2OkMmhIbs4
 RlwdjVAcBkMvm8iruFT+kuOhgn6js7y0LblPS9TcaNgUpvLTqQXrNUdYN9RKj5jVcpoZ8TUgojg
 KNixxbR0Z/Xo/6zaa3TxRRvRoF8lg1sFPUG0X2q+O8k5n/9/uaftAOsaMMXEcM69UI7+qgGdmu1
 domoiGVkqfVsq8zzdww==
X-Authority-Analysis: v=2.4 cv=HccZjyE8 c=1 sm=1 tr=0 ts=695d59b3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=fdEdBAgXS0YvdQABqkIA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 0h0z3WIZlGinN0J9EJX_crKKPlCMk4Cu
X-Proofpoint-GUID: 0h0z3WIZlGinN0J9EJX_crKKPlCMk4Cu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060163

Complete interrupts for DWC3 node to match what is required by
Devicetree bindings, as reported by dtbs_check:

  ipq9574-rdp433.dtb: usb@8af8800 (qcom,ipq9574-dwc3): interrupt-names: ['pwr_event'] is too short

The actual interrupt numbers are taken from reference manual of similar
chip, but not IPQ9574, due to lack of access to it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Not tested on hardware.

"lack of access" = no IPQ9574 at all.
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 86c9cb9fffc9..d7278f2137ac 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -765,8 +765,14 @@ usb3: usb@8af8800 {
 			assigned-clock-rates = <200000000>,
 					       <24000000>;
 
-			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "pwr_event";
+			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "qusb2_phy",
+					  "dm_hs_phy_irq",
+					  "dp_hs_phy_irq";
 
 			resets = <&gcc GCC_USB_BCR>;
 			status = "disabled";
-- 
2.51.0


