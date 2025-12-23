Return-Path: <devicetree+bounces-249188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F035CD9C4F
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40137304A29A
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B4528C014;
	Tue, 23 Dec 2025 15:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PkJmdE2+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VkOkkGaH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058E91FE45D
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503482; cv=none; b=s2QeDBzl9HNbTRog//sLAlBnPdYOZxijpVApciJselUnGXRZd8JTWgdgHkwLmEVzOqzuv/s2KKTy10EgJ/wgkxlkbunFsF2jfGmZgfPRNyBjmRb66F1U3E8Cww8xGP+DUNaur/WuGVfWxBix00LSZ6nf3imFnJO/7Dg9xGPrUpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503482; c=relaxed/simple;
	bh=vmXsaiTHEm7r8KkNcYV1iQ7TVZuwQ8i+4gOM19/Azt0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=djE2EdLN3sMYDrNuAGzujdhfoRyqnRgWxSoMGGcNPVOxuAgDt4L5ejlWy+u1MYbsa9T67TmG6wGxHOzBz75S2RDYJ+B8z4eQSIr41R/ChiLGQstef2TVK7LMmjb23fTJOBheUCnLhISKOMh0V0pg+WuVAjkmAaihzrWB12NDcCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PkJmdE2+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VkOkkGaH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNBRF3q700762
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=enkE1tTZKHT5McMw/4sLoei+1i1ZWXAWJbo
	tyOg3Oyo=; b=PkJmdE2+bw2xyH3PzDA4ovUenuJLthPLkwFU097F8HyV/nexdq9
	GCu1UJqdU9Mxvxx/nDR9K79bvnIABCMU9ghY0eM4bo4NbkwuR1xBpKOBX+0Auy2n
	j9qZ37A+d2GiaU0Rx+f2KtXnvv86oWyQaSelaR9rIa+CKI5M694palNlgWEjybI1
	9mi7bgahD4De1K4tvLZa+lfQS1phd5wktusvw5nZZrwDnDm0EOzhjJ4NFPlszWva
	BbQcMxj5kep1GOBqa7/A7EBdwLOdvQPQaNu9RmDUUtMrXXlnaNbpGsL3g5+gGtqk
	kHeWW4mxXyvXnzRGYxw7TwsfLdTOyshLWOA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jrmtm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e19c8558so164473585a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503479; x=1767108279; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=enkE1tTZKHT5McMw/4sLoei+1i1ZWXAWJbotyOg3Oyo=;
        b=VkOkkGaH8E8UzIV/L4gBatd2C9agmRjUlsTycrEVy0W8WZz/O3jvok9MYkuNBxIU7e
         1nuxDW7xvzGQNShaVe6TOiFYpU840phJTW71TLahSTmZw74Z+8U2+Kv9KjVhx3Y4sYFL
         eClMtCxeZvLqzVar9VAf4Y981/FT954r3dQNEfhEiilYCQudzgiDnNvG10SsTle+3VUo
         bY8Vf5DuaHdJUILubAnYc1upRet7BD6d6Pr5AKXZDADbbvAbctRyH+lMtUxJVcidSaQT
         mX/F6mbnq6u/uvQZSKX97ErTgEGhrNisGEnWyuj5yfJzQ5qYTQtYopyKCDXNypiPB3j5
         NlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503479; x=1767108279;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enkE1tTZKHT5McMw/4sLoei+1i1ZWXAWJbotyOg3Oyo=;
        b=rmujVa9halyCKmdld7NPU7vk6LY06o4IHndy8XgBGYRE+xeCNqt/N+8zC6zs6eQttY
         sImfloAxbG69mZNZxuGul4sT1woTLhACMAjOAY1ZUdC3HnSbGup/4AaTVcKWt8IwUC5t
         4XJhhRqivPkGw7DCzYHUAS3850kAH+9Zuj/C6YkakKIIMI62XmzmiMSs6K4Not4YWfDO
         9LEnfcpPGTnRbKTwtp9tVQFNs5jmpZQ/S9hymf3anxi7evjZHAMeQAU5PiRtLA1rM9Xr
         S5rxbNeA0l3jAru3X8SovC05n8YUkUCc0J8ycNpJ0VrUvTtJySQBIossJph7BcQRwmrx
         7DEw==
X-Forwarded-Encrypted: i=1; AJvYcCWu7HV5Q15de4cAM5CO0jckc+tM2dpehPR6Mr/S4mfX0uu/xgEBghkU/KR5U4KDOwm0ex/nEY+vFmtT@vger.kernel.org
X-Gm-Message-State: AOJu0YyS1epp0D2bguasZblWUCdfiHxAicSp9UdwdF61G8y82o1SFOME
	3ELlpiIZW3pGdFX73S5Lq6c8EZIxacCvN8Ggq/yOTN/A/mEY8VqUpjSrJvGSMBnA5+UbsxEVqTS
	qYS8B3BcEw6WMZEOdoX0ji1abEB1x3CjuRInhNyn5NhVl24xCRtFJbXBpViYj5MVA
X-Gm-Gg: AY/fxX5R0+hGWu6WOeuq+2b5+cgbE5As4+R/vEMtSHJz/cA34jViqHwrgwXU6RqmF3G
	/RPYXZK7GVh9iMFmJTqc6waqoma9b3COeKQ6U6GYe23z1+TQHHBuKT25NdU051TOEftXY+7vofi
	OzWyOAOMiKvU/b0WRjMQDg1wrr/lzqlWw7aU567eq6mZXNVjcjrAKD9bypkpor7xJEelLSPgxLY
	bd3y6PwyCyc9QqbEC0GTCchwvbuhi4LuPefz612/58Nr9F2p3n+HWwT+YpscYB8z7GVMZ7u+UUo
	VztitOi09rUwjMHfG+7EUmDS02sJIwKoA7TgpKUmST4SiLVFPeqlMqqrnilHzs6OP19QbnOwx9y
	QGrIboMpbnY1zhnTl3YD2vfm1aaD47wv+SK/BWi4mXMCCbowWF4sAYevijoy0GIU6ID4=
X-Received: by 2002:ac8:5908:0:b0:4ee:1c81:b1d5 with SMTP id d75a77b69052e-4f4abd79529mr259722611cf.46.1766503479345;
        Tue, 23 Dec 2025 07:24:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFCw4vHCvah2o4Cv9Nn1hBede70hg3oYyiodU1ijSIBMwr8RVRLddE8a/R3rPskB6gW64UdA==
X-Received: by 2002:ac8:5908:0:b0:4ee:1c81:b1d5 with SMTP id d75a77b69052e-4f4abd79529mr259721981cf.46.1766503478728;
        Tue, 23 Dec 2025 07:24:38 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f3ffbasm1455311366b.61.2025.12.23.07.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:24:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Harshit Shah <hshah@axiado.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: axiado: Use lowercase hex
Date: Tue, 23 Dec 2025 16:24:33 +0100
Message-ID: <20251223152432.155299-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=935; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=vmXsaiTHEm7r8KkNcYV1iQ7TVZuwQ8i+4gOM19/Azt0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrQwtaOKEyi5tBHtwrJN3zIE6Ws9qt+KgU3Y/
 PY/1P7bNEGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0MAAKCRDBN2bmhouD
 123tD/9sq2XZEs25PeHXMn0/3GZeIifNVJayA4pM8k+JW01OUyq7H4hVZtGBmzhkKjtp/H4Gzfn
 pmk6CimFC3xQSB6iYPRe6jp608K3XO3EI4g2Lpc0qxhZwZjwDUihVUY4Mx6+2nHy7I6QUS3BBUU
 cFql07OznDKHSeir7fWm0FqsXLAr/zaloyYxvrzxV7IkLNvAfOaJhVp0kFewsib6c10P2yt4o2M
 c9jqkpv511HtyJu4MBlcZ/aJ0xKorowtuVCCvcIt6nF48Or4C4ikHZKwFACODgxGEyc7j8SVjJk
 zOszTJBqkCKFgTpvdk0ZiD2FCSQ0pJ7xDZYo+NsWDwfAiY0+tbGLVNGENibgI7guaqLokJdM1Xg
 p0G1S1K0J3bWe/o7sQUbamd8ntbiHpmW3DnaZ0dFFEPc6SMV1kP2F1GrZ1dICPS92YtVyxX6A4C
 CnJ1TRq0PQj5nKmFx2n9L+Y+BeIca670Jo3SHNJWKcTekWsSFlwoMXRwBSlD4tV41am1JkhKsBb
 1B1K1kUy2KnUdkopoCsMcevs4HTOqInZ/tGjeVyDzgHuRyhk2mARzjed+5yCObucitf50n/jL0m
 j4HlxLGxaZabXoqsI+hdh0jejS93e51id+lReED/HFMrcSZP3EmW6BQLjq6buUIUFfvV1S0S85i tyO6TzfvKsL2jiQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX4vsZgkYg9REu
 WiQwUekMunrEnhLteiZvuxdy4PMGjhXMtl3xjQxHsnhBzzLHh+JXw3opfVha/63ONPB6LbvJyRd
 wrpOb00r2wdarbX0wZ45rQGDGX65RiknK/eeVYowBzNsB1XjVQ7Z4oprPiEV2Krr8KciAxpH4M/
 I6G031JGd/Hw3lOXKQVKIzzLJQ8FMuu8toJRHtFoDQDjT3w8EyI2OqWM9H+aK5YmEsu9hBoGdhb
 p/jUku7QOPQruI2X3FHwFtZK8pPdIMDUsStnsQLhvwpmCmF0UJ/OIkiK2tCw6kv+U4b2Fv1fwvJ
 of3dGrzEhdDeBJrs9u6T9NiFxm3XlWPNXhFQUdhB4LmCYWw2M45gvdNXPA0moisVo7EYQQthzkG
 ScsmXiMQo+67n6BgUqtcNk3YnPQTT/cgac0RwJGaBg4NN55Q+4eYhjouHVLHqi4tOwywVBcxk9H
 VcN8YsNPVSoWVCC+yYw==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694ab437 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=O68X4J5GT_4SPXitl-cA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: sU4XwB0tu7Tg7zEb2j4LnKnkC4rQ-IVr
X-Proofpoint-ORIG-GUID: sU4XwB0tu7Tg7zEb2j4LnKnkC4rQ-IVr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

The DTS code coding style expects lowercase hex for values and unit
addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/axiado/ax3000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/axiado/ax3000.dtsi b/arch/arm64/boot/dts/axiado/ax3000.dtsi
index 792f52e0c7dd..d515f3141529 100644
--- a/arch/arm64/boot/dts/axiado/ax3000.dtsi
+++ b/arch/arm64/boot/dts/axiado/ax3000.dtsi
@@ -480,7 +480,7 @@ uart0: serial@80520000 {
 
 		uart1: serial@805a0000 {
 			compatible = "axiado,ax3000-uart", "cdns,uart-r1p12";
-			reg = <0x00 0x805A0000 0x00 0x100>;
+			reg = <0x00 0x805a0000 0x00 0x100>;
 			interrupt-parent = <&gic500>;
 			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "uart_clk", "pclk";
-- 
2.51.0


