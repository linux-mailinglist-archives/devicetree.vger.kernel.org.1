Return-Path: <devicetree+bounces-251530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 689ECCF3DF4
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:41:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 06C9230090F4
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F3B133066F;
	Mon,  5 Jan 2026 13:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZZTtcHlQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bPAYG4aX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BE33195EC
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767620050; cv=none; b=G+P5xAZttJm+8Yc6DXJziJjT9GavQjA01E1v6Purh2xl6Qi7nyi2IpxJgHi/iYjZCetuL06zhUh4ui+X1Ap3Tq3yshTDLwP5f1jyhvKkjpLFTuIIy1AO6e/5FOzDNWwYnqKpq82G+yS9goDkN34E7Qq5HguccSoJGVNzW/981JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767620050; c=relaxed/simple;
	bh=JLd+YJVelW7DAYz5I5oq+Bq5OMySRygwF3/FHKcXlRE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KFrRovbgEX30303mhZm40SOqsoeZ+sayDVuKK3/0mTMhVTd6yoDZ8Z6aoNsCoOBpUq06JGDUL3Dsc0AN4bYyuV1zawOXqZDokcIbRnrlHmkQoKhMHekP+5ZtWXhUTJ/amCWpjmKewCs8vS5xrSytJ4JtZzjuSjerH18QhRFYMV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZZTtcHlQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bPAYG4aX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058w7ch593907
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:34:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	apBQxo7qSrwo1nwoLIpfGQYjycgRUvqMuCwBV3g5lLc=; b=ZZTtcHlQNrsTzjLh
	QSr7zfF8N7pHuS//wC9rxrFLzRwLboR0uCAkHp5eH7Vw+IDC2rMxtArb5nn1gNwH
	6N5r+iiSIIVRxY/OkCw55fcjm/PSXGURJB266yofdElUACg/sbqaHMeg+4v/tDKR
	r+JcB9Ihorh+NlFmYLKq9sjRFhKLR+ScWF4dh8v45tc2ddyppRRJFBbglWBcj+ty
	Wh79bhCQ2g81as2nOX+2+tWhNwvvtTi/W9SHzVNUW1Tf1IYhsGpcdgdfXqDy8TrZ
	pdE6b1z1AIT976TA2inhM8ZblQtmAJEGN8iDWA9lXRByd8iU1Z/xrTYGNW8GDOB9
	G1JMsQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bga8pgpf7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:34:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f4a5dba954so373724931cf.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767620043; x=1768224843; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=apBQxo7qSrwo1nwoLIpfGQYjycgRUvqMuCwBV3g5lLc=;
        b=bPAYG4aXZc3Hnzx9hDmhSivfQww82gpjH6OFv5pGSwtmKwYCqzJny/+LI+S4tzPs2m
         xT5bbF+S21Hg0vjO2CrGzQMGBfitLcdNKrG7R90amTWHMw2u2aZZETm8krNBwsuPPUGn
         vE9BLDUxS7t09jXOIpZ+4N9474EVNw5BK8sIVfyDRMkJZvPCwRDljK7uD6UDuioXihg0
         D5nT0wQFia+VkXW/Izr/G39gN2sCxwZojqkTGGYLCuXqjYWP8ITWoTvWvAwBS1xomtP5
         SqVXGyERgUWi25emU08ZxgqVrHRmcRmB5AeaBjfdm9jeklUbrSk0YpWP+ax10uk9xJbz
         MegA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767620043; x=1768224843;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=apBQxo7qSrwo1nwoLIpfGQYjycgRUvqMuCwBV3g5lLc=;
        b=EBCT29WGJ1JDopvSS7YGiaoQzO/iRp35wTRxvG4vb/IHSf9E7ES2dNyzxSS+aWoVI6
         OWWbqWwJapa7NR4uFBhkaKyPPufc4ni8HjDNdv4pVrWlx0eM5Nz2FbevM5LDbe6YHBvv
         stB72JO6MvePk0lqJ5L+0QA8bJpAJQ4A2s/DwCfUw8lLuDDimsZqvwY92v9d+8GyH/3t
         nYmpDKIXc0D8XWQs3qVmcapXZekUprEzopC9RgN7PLORb2iPOGAU7jp2wjw1yykGfRSK
         Q8VwP64nrUWxT5dMaUEsLS2p0C7B46bqT3dMJxnY97+MYPl7Adz37/EzjnzEnxy3kFzt
         qgPw==
X-Forwarded-Encrypted: i=1; AJvYcCUjglm5xKMr+xkZpS40Vi9tf5CJ8DRgQ1E714SbuwA/Nonjo6CfNUe1hB4MLLHBBOXtZwZy9i2eOxi1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5zmB2RN3kw0c0/4zox9n1DyXgydrujp7nZ4gT07ZgBEdG6gbY
	pkSfq4wejBedjiUOoKT8rIDepbj+//gawAT/k839IewLYZ2F4RwfBmwMeZcb3tRmMq7ex8apvYt
	XmL+RQbzYBGof6TxMm+L/EmDoh686+tDohUV8Mbt/grfWw8n2aYkH+YLQEs1yUwms
X-Gm-Gg: AY/fxX5sfwRVDfIFk2Z+Z7XrhTcl7aTvcwYBWbKKB4gT1Ri3DwZZ8y7tD3wsSV7lFhG
	VssJM4VfpyEw1G8XD8Ax0ZPdMOF6XchJy5aDp/XvsKy1WRduroNlthcJ6uG0WBLC3rt352hDjzi
	jPOTNc6Jq/fFCQCEXZju5gI6l4DALAc17S6BRvY08HV6mYBVE4f9YLZwaPxyLN5EN2toCrwiBXi
	c+pXNQa7iJ3cCuGYyRstj+d9Jwk8fl+W7eRPYO5pbY2ZBxEsG4wzWaAdFoFsMLv88K8pj2fc5LJ
	r3eacrHokS3LPPU85TTSP3u1mV7OnxGMWG7gMLG2I/WBr09yvlai8VgCNEdkTKZXU4Wn6vafUYI
	Ae0+qSOJs2YkX3bBKfSuXkODSiQJ1AnJ9lA==
X-Received: by 2002:ac8:5851:0:b0:4ed:b82b:19a3 with SMTP id d75a77b69052e-4f4abd03104mr752216821cf.32.1767620042638;
        Mon, 05 Jan 2026 05:34:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGL073c62Hd/WRutx99PIMM2D7+ut3zs1jMfjpXqo8+y09Dd4UVpcHVCw4KVlqpW3z5E7iWsQ==
X-Received: by 2002:ac8:5851:0:b0:4ed:b82b:19a3 with SMTP id d75a77b69052e-4f4abd03104mr752216391cf.32.1767620042172;
        Mon, 05 Jan 2026 05:34:02 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6d143f75sm147211015e9.5.2026.01.05.05.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:34:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 14:33:41 +0100
Subject: [PATCH 03/11] ARM: exynos: Simplify with scoped for each OF child
 loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-of-for-each-compatible-scoped-v1-3-24e99c177164@oss.qualcomm.com>
References: <20260105-of-for-each-compatible-scoped-v1-0-24e99c177164@oss.qualcomm.com>
In-Reply-To: <20260105-of-for-each-compatible-scoped-v1-0-24e99c177164@oss.qualcomm.com>
To: Miguel Ojeda <ojeda@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
        Bill Wendling <morbo@google.com>,
        Justin Stitt <justinstitt@google.com>,
        Russell King <linux@armlinux.org.uk>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Madhavan Srinivasan <maddy@linux.ibm.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal <nikhil.agarwal@amd.com>,
        Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        llvm@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-clk@vger.kernel.org, imx@lists.linux.dev,
        dmaengine@vger.kernel.org, linux-media@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1404;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=JLd+YJVelW7DAYz5I5oq+Bq5OMySRygwF3/FHKcXlRE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpW724uhqQJQeP4Vg/SI4D4SjbbtLmMEMQDRC5I
 un3PEi6+/aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVu9uAAKCRDBN2bmhouD
 13GOD/42JM6vglHCZIWxqXZXSDiZEKiNaq8l/k7h7Llh56nvuYIx3nbUDCR+0D5+3U1tYFCtovP
 KMPVAvqckUrgBJWsNEmhJNZFinrNc193abWGWdNS8PReyJxR2paW+PZRxPmIyHN6T9+4ClyKJYT
 orO/UFCcHSnr7VL3wA39p+weE0sJ30fO5hcgn7qMiATvRULDU+h9Rp2WdTMvMTec8zzJ7Mp7LGe
 Uvr6DKnbkGRq2LJqAjrH37R4v+mHWcm8bu2BiJAngB9hPMEiCwtFmvrvuP/FT8iOXa5Z/7K4L0j
 4yOz0FbvSemXetVtuW+50hYj6yzKhUtTXIMF8EruhLmquMUDS7Qva+XpabcbvgKMYHEcPbxotjV
 VA5P9H5hZcbnYb1cfw8Ab6IhT/bMrAtvhoDXpItPkBGfOv9woUFjvXNCBC3x6AEeQwH2+QNyDuu
 LJEmqLiwzse1GyN8YizPcFsZ3LBzvdQbvCbqupZ7783pewZPJRfbLYDaZ1I+/eAU0qlMFLmQti9
 8IRok6H212gxfCEHN1G/jibO//9cyPAmiQp8tpC5DVfBddLCvveHc8aOxAC0bbKTIvAAWNuZ9a5
 aa1uQKAhQw7ow82uEju+DJFlO5RrIBHE6W86AiOFG0xEKIu6/nKbVfSIvX/cjn3Iku1poulaIxV
 J5gu1QgYIhtkx0g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExOCBTYWx0ZWRfX0FQwK8qnfDCW
 OmeTOqkh1KH7E5MzbMGPKvb5OGStfKD3Q4337ZLWqRE7zzqRq1j+eoBpAjRPWCMItan8GxYaDqN
 nkoqOdukGkoyXL77QcT000K9+pmp6Z7tT0gPoi90mgYjtU84O/EFbq3WduXNE+hdOogBsMKNocr
 YYKENGh8CxmXWKs9ukdrRXR9MDDY7C5xSJBmgNdH4ppAPYkcEueguDif4K7uqC+qezgkHqdFMKz
 9bph9UWz275nLdYhMvwQohIqhun4wy2Sv1UEG7If1zUUoeNFilpj528ANEAwpwe1a5yMk6ff11W
 viHJ/Qxau3z3ReHpjF33yMxqvkYSDh619UDiTK93XRIXE+kXiQITujGViJ3xB0TsRob7AvtLA/C
 LhA+pKh0TG+aL3jbTkwx0603bWngUgejJLcrC6sRHGnnZ3ffq9bRrxvZHCDkRAp7nC40gNuLOhk
 LL5L51lrC5P6/q+hn8A==
X-Authority-Analysis: v=2.4 cv=JfWxbEKV c=1 sm=1 tr=0 ts=695bbdcc cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kVq6N5mEIK0mURhpU1kA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: ZfthBbtm1WJxo80LFbO5Q4CWSIWC2InS
X-Proofpoint-GUID: ZfthBbtm1WJxo80LFbO5Q4CWSIWC2InS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050118

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Depends on the first patch.
---
 arch/arm/mach-exynos/exynos.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
index 2e8099479ffa..18695076c34e 100644
--- a/arch/arm/mach-exynos/exynos.c
+++ b/arch/arm/mach-exynos/exynos.c
@@ -47,9 +47,7 @@ unsigned int exynos_rev(void)
 
 void __init exynos_sysram_init(void)
 {
-	struct device_node *node;
-
-	for_each_compatible_node(node, NULL, "samsung,exynos4210-sysram") {
+	for_each_compatible_node_scoped(node, NULL, "samsung,exynos4210-sysram") {
 		struct resource res;
 		if (!of_device_is_available(node))
 			continue;
@@ -57,15 +55,13 @@ void __init exynos_sysram_init(void)
 		of_address_to_resource(node, 0, &res);
 		sysram_base_addr = ioremap(res.start, resource_size(&res));
 		sysram_base_phys = res.start;
-		of_node_put(node);
 		break;
 	}
 
-	for_each_compatible_node(node, NULL, "samsung,exynos4210-sysram-ns") {
+	for_each_compatible_node_scoped(node, NULL, "samsung,exynos4210-sysram-ns") {
 		if (!of_device_is_available(node))
 			continue;
 		sysram_ns_base_addr = of_iomap(node, 0);
-		of_node_put(node);
 		break;
 	}
 }

-- 
2.51.0


