Return-Path: <devicetree+bounces-253371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F56BD0B797
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 18:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0C7A310B0FA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 16:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58911364EA2;
	Fri,  9 Jan 2026 16:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MOl4bzuB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gzJtO57a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A0030CDA1
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 16:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767977904; cv=none; b=ISXRbI0L1x/8oSieunlylDsvj3Jwx4NycG0m9V5rSmaWjpmYU6ovt5z7zamOElyC2ZTMfQgKV+0EmWlm7JyXoNpkIK+idkskfJ+bkHwddKR0KMcdb7Ur7DAsiSGsGJU5AWWDuNLJtKjZqs3rW13y0Mc5NGQ0R4bEHBwxpkTIH8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767977904; c=relaxed/simple;
	bh=abI4vVKZ2V3r6fPoj3rMop+rIaKgyFQ7QmKPzSitsLY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uVyc4jrsrgExx4TiDpsvP8RV0EK1jdMPBuyg9jptbsJNB7m8xMGPoC6ZQVK3QQhUFE8WjKwJFjnxqT95bgRBbuu7uzLU+2o02kH4AD0TIaWY2GPrj3KTy1hCgGSuOi6yWRQlSdmdyNA2Y6YO8VmdP7oa76O0ZNruzgBAlWpuSBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MOl4bzuB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gzJtO57a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099jJKn007896
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 16:58:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/ylUaLBidala1u98n/o6ZCU1ttqISuhXHyYTd1kU9MQ=; b=MOl4bzuBSkWhZR+W
	e45f2dSaxBgBGDuf1HyNyAouMHpD3OPIAKpLdTTQz60siPaIuA46bKvIADDGByRx
	SHQebU8ZwOw6m8f/ZHUK5WY9gT33MeYB8w4VLt82nfVny/c41UlLyTE9BiZ12vUT
	Ecclfxouckb/F0baX9Rh+DGum9cTsDnva7cgykx42OupLEBPUV6g4Eaxqtz0ONC1
	8Dbr5zR3m11HqeMUjULZw94ONdU6kBgkoko3IKxS03bSEbOLjWLiSDPhPZ4ZoXr4
	9Wvmgsr7yzW+VXoN9D884Am/S2z1saGWfAnB/aAtw3F7KCmNXiM5UxF/cxcZiyF2
	j2rm1g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjyaqh740-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 16:58:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b22d590227so550106885a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767977893; x=1768582693; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ylUaLBidala1u98n/o6ZCU1ttqISuhXHyYTd1kU9MQ=;
        b=gzJtO57atLX62BGZHqMr0eJ674L82+HWt+DzQKT7EZRIHSgkIXEk7o+jZRO1peRe92
         24GOaVpWmAFZbiP5WdYuShAVggG/o9uxysX0BCuv2x/Skv/iXJimbBdnF5xYoHlzaS02
         /47D6AhE4opAM665vafWL9JW7Dn4AAUYaPupPXlIC7P+pInjhF8W7rahjFq5HI59gQ6T
         pP4XGTOCRaGPot2RW9wzMLKQfC4yvEUDwtKRPK8ooaRaFB4aKFzkOsMq3TIcDxf36ACu
         gjDYwRpLLQ8ey1offiVAYkSQaQ7vF6iWrXmH2S35wuyrri+kM0ivIf6JrwBJY3Ug5bdV
         2RHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767977893; x=1768582693;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/ylUaLBidala1u98n/o6ZCU1ttqISuhXHyYTd1kU9MQ=;
        b=eB2NE0lk52MrT7U1gPDwC3FzHoSPjCDVEWY6iI+GtvuiZq6SL0cHgumL221OWLhKUk
         u0QkfA2lyJ/lBJQP0ETMhonqx3jTbAdm4OKr4K8vc9ue1AZahlcKPAPuWPHh3XL1nqpp
         9VBpp23D9Zcd3fWv9CN2A+F058KiVA166K8geEK3aUOCQXo5zavUkbUMO6k1MaJgFPDr
         j3I0K/wqedPyy1HBDY2Q7f+hyiANkUmhk6Q6Xdb0KKh82uxn0gjRhcMPJXxg4GIQxWqp
         UTAaC5rS6wbLY+9egH/8fDSCaSFZjTdPzgq8L0zAZbuF3ozcHFf9vFzO4uS2K4FiOYEa
         9mlw==
X-Forwarded-Encrypted: i=1; AJvYcCXjyRdBkDspwBSTqII7Y5X6D1om3IMT8ztW2MGI6qU0pIfBfJje8dhzsB8ZAiLIFq9IKIfFuaesRe/W@vger.kernel.org
X-Gm-Message-State: AOJu0YwH7TGWDJCA9vEof9BEYf9ZK5bYAOAIZlsYrqtqqdiedFXXCEgD
	RdZ7Cq5fNifIrMO2LlMxYAZnUVvp+80Dp4Pa43Fvm9mzB8FTmbtL/66LhTJ14PbYdiCSQucXNJO
	ALv2tiRpwH2jxWo8w7Crjf8tHaO7DE5raQcSGEc5CWOvHrOFg3PCKfVOrMAh4LY0i
X-Gm-Gg: AY/fxX4m5RUaFFdIkc/PNGHvXhlwdfTXD8p3dbyUQTmXOHLkzHza284KfItcW74nhDw
	0c1Q6nsp5OcPe59N/K+OCotN4Qw8vop2NVJfv/uE5oNBQOCSbnDnpp+20Heb+q9zkwYdk8D+PON
	GQ3Xk0pTi1za+eD2Vb591++Bs8kktHOMkVUF5PmaT//1Dr6XIsui7FPwxXk1h3R3NR9Ig3M8Jd0
	bc4Poz6dy0jpll8G9+Ih6mvhOlYLOddWkZ83YpUSWnwRByGBJnB4G2YyUOV5/3WGc+im2lQhhif
	XaZAz71JD4RY+Ix8M4Ecgxwf2Uubjlq35+7oHQ1GeloSU42Xbe5P9x/NXuMsMm/FeM7hdj32J6t
	+bj0tNUG5rkzTIhAVUnEwdJzlYP7pY0UNsg==
X-Received: by 2002:a05:620a:4708:b0:8b2:ea3f:2fa5 with SMTP id af79cd13be357-8c3893e0447mr1278315785a.69.1767977892308;
        Fri, 09 Jan 2026 08:58:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPgCL7OXhofKD63yu6CqXzLuabksUOQ8VJV1cad4gN38L8pgj/ln+3O094KFk9sDY/IZdfDQ==
X-Received: by 2002:a05:620a:4708:b0:8b2:ea3f:2fa5 with SMTP id af79cd13be357-8c3893e0447mr1278309385a.69.1767977891782;
        Fri, 09 Jan 2026 08:58:11 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm23231784f8f.31.2026.01.09.08.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 08:58:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 17:57:46 +0100
Subject: [PATCH v3 02/12] ARM: at91: Simplify with scoped for each OF child
 loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260109-of-for-each-compatible-scoped-v3-2-c22fa2c0749a@oss.qualcomm.com>
References: <20260109-of-for-each-compatible-scoped-v3-0-c22fa2c0749a@oss.qualcomm.com>
In-Reply-To: <20260109-of-for-each-compatible-scoped-v3-0-c22fa2c0749a@oss.qualcomm.com>
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
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1072;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=abI4vVKZ2V3r6fPoj3rMop+rIaKgyFQ7QmKPzSitsLY=;
 b=kA0DAAoBwTdm5oaLg9cByyZiAGlhM5KjFL+VmtviwKxvhVbScXQzaoAQG4FgEd7/qE93wpepQ
 YkCMwQAAQoAHRYhBN3SYig9ERsjO264qME3ZuaGi4PXBQJpYTOSAAoJEME3ZuaGi4PXbIYP/2FV
 PTcFQgtRjUNhHGjo0i1/wWxp6lecwR2vezt4z0Y7HtRiPAGB4smNbyWnxb6PhoufWzhQiKcUlox
 IyUXaDuNVhHVF0ciy+80/o7qJLkRbmaA9yML3inA7+ttUCdLtumN3GdgznjiWW58InRPVKKAMBr
 74TUOqUoWsPRCCmRFbsV8LarOKHQl43aPrSFKMO4BxOB98Ff7eNGUzxqStCv0HB8Fb4U67sEEB8
 vjH+FPXHfdrWWYClfg96cRQhIm8scSKz4EZiUJGXSy5efSia11pfzkKrAmuHa7W+nvW34l/CbLF
 RmvGPFB6A2wryDmNhLx4C4Y+oCn6X5jJkcFR5yhTHG00wt4LMlKK63a38ZQSGdxNMa08cR+ZA2i
 scypfUltDqxfv0UNGHlBcevq0vbhhwt8LrfS/O9jHzKud05bcUqwtwwRxGge7+RCPLffZkvAuE6
 4V69DEvZ7zJFMPiSc41CHlltPTLCOXE9otxpyh5fAteTLFUkszNovEJAt64t2rirWRemXfelR+V
 6OB8Iiw3vK0kpIuIuxF+cY2dvCUKoMLXA0hSUih2WqLERud1raVcvBW3p8kGiOELMVX21R13DoR
 3WPrQcn8FzQyttIpIj1d5xvibvNczCroHEvxiXjKK4WK1yJ0hBHnSaiBYb8oXHD8b73H+ZEz3b/
 Mbja+
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDEyOCBTYWx0ZWRfXwxD/gheCQCot
 E2B2KF/OGeLimxWw7mT1TwJ7dEMDp88nfQnjwaCguTmSPeN7pTYqwtWjFcXzkHxERz8nRSvVhTe
 d9aN4u1DtYbi7yNRUIok6ZSIX3nGlwtw5pZOKl5kc1xTRHRFyY8j7462USenR5ciPUGj5Xx4nZG
 4aODMVukOY2IgQN+Oe1EGHwpbmuYb9hFxOJXOU5WLkqxOn3elpMWBUvORQGXOY7u+kK2o0OcmRK
 wUFJuaaMYcPoVFzkVdQ6v95B1NinpF17M7lv5GzARSXwYpG16k24ARIzdgPP5XYzlBfrvmIe5wN
 FQqaGhUZR5Xy87GH4g9TVYcq0zPWwZhmChAQhW7UTVg9deeaObnjwTNgVK6NTH/Xs00/jh38XbZ
 3e6BZGCNzp1jsFafi0qkV7kWo18d/YcDTPKmxGsM2ONASIL1PcV9ti1E7QbuF/SxkwBhs1GAJGp
 +KC0XcuFQE7QOn3AnDg==
X-Proofpoint-GUID: nu2C-5w2YEvDt78_kjRNEX2Yl8snzVtl
X-Authority-Analysis: v=2.4 cv=IKUPywvG c=1 sm=1 tr=0 ts=696133a5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=XYAwZIGsAAAA:8 a=i0EeH86SAAAA:8 a=EUspDBNiAAAA:8
 a=HKzYjZOG_gvwJIbDKMwA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-ORIG-GUID: nu2C-5w2YEvDt78_kjRNEX2Yl8snzVtl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_05,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090128

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Depends on the first patch.
---
 arch/arm/mach-at91/pm.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
index 35058b99069c..68bb4a86cd94 100644
--- a/arch/arm/mach-at91/pm.c
+++ b/arch/arm/mach-at91/pm.c
@@ -982,15 +982,12 @@ static void __init at91_pm_sram_init(void)
 	struct gen_pool *sram_pool;
 	phys_addr_t sram_pbase;
 	unsigned long sram_base;
-	struct device_node *node;
 	struct platform_device *pdev = NULL;
 
-	for_each_compatible_node(node, NULL, "mmio-sram") {
+	for_each_compatible_node_scoped(node, NULL, "mmio-sram") {
 		pdev = of_find_device_by_node(node);
-		if (pdev) {
-			of_node_put(node);
+		if (pdev)
 			break;
-		}
 	}
 
 	if (!pdev) {

-- 
2.51.0


