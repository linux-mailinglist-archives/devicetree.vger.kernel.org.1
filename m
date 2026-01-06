Return-Path: <devicetree+bounces-251824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAB9CF7775
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3367C30F94E6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626A530DEA4;
	Tue,  6 Jan 2026 09:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JuDZ0sro";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qr+1X4XD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0222D97B5
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690935; cv=none; b=hEtzPVIioUY9Iw4YN+wAK0fbNseE3wn+GWiAk9xW5NuB0lNA80/jhnDRH5QwUnPz9hCVzIgs6BuxRDvhmJNkWU5lprZiZ1zUBx2YPfEhwGbN0wIA1hnd11RXOxhhH9ldpblLdGHaDrTNWdeo/KLtyBD9JFHBxEpupnsDu7iq/G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690935; c=relaxed/simple;
	bh=oqF2IaCk8/DIpqq3qRCWxnErPuWRL2cMFXqdcUOAGkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ntg778F4qAJz4JKDcCHZt3FYz2l28SF4Kv1VegnflpbWkQw7NzO1J9ApzpERDZbYFgLvy7C+fjzmmNXEVrRTsA7wxvYxPWmjTgXMdtAfQl/lqHamLSJGsBbYz1k0cDS9yo9GZo8rKol0RrLn7YbV01tcdgZqDoxNEualWPoxUFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JuDZ0sro; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qr+1X4XD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QSCP3443141
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:15:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kLVtP0znVY6PZy+iwEU179garS/faVZ3ElWkNffkw50=; b=JuDZ0sroPqI9l7rd
	Ba0jWnvV8P+FAhqShgypQEUYb0dNLA7vm9Qdbm+G/FwccP2oRreTP5E8bhL5nwuY
	pseX9SR0EqF3aCDxRiYxNkWx7R8c9qv8l+UL18eLuKuNPK5fVCtkkpshutYHauWR
	/BC1wISWWmSjPRxoSy0lJRBQzbaIhXrkdMaca2wY5GlyQj0w+O913mqHoWpq2Vug
	v1ZPK9K9DCm9H3GBEbS0AbqrwTBrlIja9uYBuXWftICLugoQEq/WOWQXhG+luRdh
	7CKKxgU7sdMLRn/VeLWdpJUOJ774eKOjEuh5Q4HOqKK7wLJzcHfWUj40RXuMwg38
	uX0Aaw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgmnh9uc8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:15:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b22d590227so102462085a.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690931; x=1768295731; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kLVtP0znVY6PZy+iwEU179garS/faVZ3ElWkNffkw50=;
        b=Qr+1X4XDk/lUhPuC3t4DKFEpIlS8Em+ZutCN+W44U2n9MLgB98T1gJjDxauM7MvWBm
         46RN5jfQ1yyUPsdLDyl2CrAy4MWWMrlPpD9TX1y3FdVtFI7nIHFUZFwjEki3BUQr+bux
         xLzR3FV73rcjOpwwqpGcCMX1RWjtESqCgi7hxv+J4FqWgHspfkGVkGuXJH8q1bbd60A5
         RPEhopuuia3zfE+e98rYGC+SSJpjGsoGB2u89R2N757z70Ncf4yXpzafq/a6AXjJWkoP
         vNWX6iYIp+YGTrDQzS9RUI3pAWn+Fs5OvVXdYtr1rNlBdms8CPw+LRoihfshCswGyc1l
         hUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690931; x=1768295731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kLVtP0znVY6PZy+iwEU179garS/faVZ3ElWkNffkw50=;
        b=ZD6dd1PoBBBVAmCnZN1ZtNdcH5zut7dyNPZMDijQ+hFoM8fD2DxuSkmTb3UPYCxDAs
         dM7B6i29aUFrSaFc3wUbSGefkj/UTvOSmtenxruCqMtV2VIRm6OuwW9CpFhzQm83gXSv
         cTWHbRTBu76Ju9IMF6oGNPJRg+dAkG5n2mExvsHJaIfpEOHOmSoHOF3DYaqQrYTMJKVr
         o3yuFzUICD+0NTwR7e6WCkWgGGwf/TLBEOIasIW2RfLq+Tm7c4gwJ/IwfvPgTblmgJ/N
         9KXvxDawhNNgyL5pkFaQKzNVHjFzbeUasVIkwpSqKmW4gzyLdWPiZJDqgiB1tzQAqVY8
         4NJw==
X-Forwarded-Encrypted: i=1; AJvYcCXYX6/nIc5TafagthGLy5Y3PqmOc5z8WULWWEyxTH3i7xP8BX3pc4eLwsQ1t+PFigUU4Xa9ttGaDQw2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv2axSK/hSoSTZAPanFb12c4L9LuioEOCpcaeo5YzecViO1OXH
	6Jm/e9nnuagHIPB4BIAfujrus8+UCywx8Fux8Qc47CbazIcsQo3LpgsaM4oUKe5dO0WBLcN66JL
	TP2fT11hGHkz7IOLbn9JnpYHFrGFXZVGGM8nEFuqdSheTgZsoT5qZSgqW2/P0rOx6
X-Gm-Gg: AY/fxX617RvaLWvt8cqVgKopN2fk4ksGo0ad4rDDCK6d7Mg3r0UXbSmbQIrVPJSREjP
	fGF/R3JmltHApnSlqKD4WwrAboFr5KWApxI5ribIcttXIk4UNYZ6dILtLa9omOXWYEACzIqZrLt
	Pi7i+3B+7XnldKU5esBny0BsNiG68RiBCIMQx9t6iul8NIti+lSX4k/8MGbKXpT1h+TILnFt/dG
	IvteuxAsi7Lg5jN3xvXhcygp4V7GlN+dSFXjq23rG4p0qXpc6ihjBJPbYW3J7aSLJBWyGsFlSdB
	VXdC2AbIq6MwGM15bkEfQveelyAxGghyrtxD8x9o1KAHAHRU3KDh6xeIckf6IazI7xTqMZbxZ+z
	utapEFjJSKA7nv1naSF/v9sX79ZYNtaN9Xw==
X-Received: by 2002:ac8:690d:0:b0:4f1:acb9:a929 with SMTP id d75a77b69052e-4ffa781b9a5mr26338261cf.83.1767690930773;
        Tue, 06 Jan 2026 01:15:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGg4OWE22L/p1/XvBGl1nJqnLjKHLzvm3+SkvN0ogaxYpRilKzOfbx1IfTBfwIK3NoH1EXUlg==
X-Received: by 2002:ac8:690d:0:b0:4f1:acb9:a929 with SMTP id d75a77b69052e-4ffa781b9a5mr26337681cf.83.1767690930280;
        Tue, 06 Jan 2026 01:15:30 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff319sm3271370f8f.43.2026.01.06.01.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:15:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 10:15:12 +0100
Subject: [PATCH v2 02/11] ARM: at91: Simplify with scoped for each OF child
 loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-of-for-each-compatible-scoped-v2-2-05eb948d91f2@oss.qualcomm.com>
References: <20260106-of-for-each-compatible-scoped-v2-0-05eb948d91f2@oss.qualcomm.com>
In-Reply-To: <20260106-of-for-each-compatible-scoped-v2-0-05eb948d91f2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1011;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=oqF2IaCk8/DIpqq3qRCWxnErPuWRL2cMFXqdcUOAGkw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXNKih0+eXMcylP/gbvVOhdImQsQItFRSegy0G
 pHh0g0vCpKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVzSogAKCRDBN2bmhouD
 13RmD/9yu46d1PZmOsUNbM+bFCAZttIbuf1AQe0A+jcJbyNEOTGx5GJHZdJ/Wpr5Bp/BW0BZoU/
 R4ScVgC6WKih5Sdkbc0GkFvEoA7M2reTrhkCtOYSJHri9iRE6EejlNFGVn6wWSsU4cx0IYcZ/fe
 IeLK+FnLzC/elo57C3wc69KTz4Kz4kgYqwS+mObAY3y0SMPBGAS3neGdpJJv9n1cMJYrWr1xiD+
 udCtzLDkYanbzCTFl+mMPJS1Y2hzFD7xwLWQRsSPAw8nYLrL96L7x34ew06SpAXhO/xAsP+P5+o
 DZN+odYBbjpE8WtO5FdiMIIRuAYJW0ydrwh6hyaauQeCLWWorXnMBA7st7pDJJRALHgv7ZNVc+6
 WwaS0N36aXZtZ6Ucu/Ci04X3T/G5KttoGuUV2xHt/uKwG8ToaXOMNEzIKm52CkJwCfkpPg4V94l
 HgOSJikLpaNAPdwpMPXADf1Im+9Mn1Pn2qtXRUCIgnaMcfieZsV64RmHjRhmR+vzU93s9aoQclo
 Y7/yLgjK1b+2sLqYjh22nt7wQLG96DA9MupSeBJJzhs3VaSQh8hOzdajuADyEVbBFQlvY9wwDJ1
 NkPiW06PhEVCLKqSQnd+uk/1DWVGImBTrHHYrYWP2Fwwy3UKl04PcC8ph/NALHX2amtvLpjFf4N
 SaOSGPsG4nreAQw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: s8lmN0QWB-Q0D00vum4QDxRaxM6Iwg-8
X-Proofpoint-ORIG-GUID: s8lmN0QWB-Q0D00vum4QDxRaxM6Iwg-8
X-Authority-Analysis: v=2.4 cv=Vscuwu2n c=1 sm=1 tr=0 ts=695cd2b3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=XYAwZIGsAAAA:8 a=EUspDBNiAAAA:8
 a=TtkSn9LXl2vsqZFf_0EA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NyBTYWx0ZWRfX7M1v4/xnMADp
 0LWU5Fn+YBUkIk9/DyLPoEvrN03uf+3+PRobGyA2lq94o+MzIKVOuHBI0AGmzSaMt9T/sxyZUSV
 CNvKVrl3sKOO8f0ethbX71EYSL9XcUOK1m2EyvuXFUCYQ2JHTBMEloonMeu0dg+PMQVSx0C7hAu
 31pExGNlVXDclr8WZjhT1hjmA3YB1SEzcRgJdoG+xedvjn764btBm9wnP2jiLnpfruStn8a/c/z
 LYunByn523zz/p0pgNP5e5764RATK51FYga6AexzI+S/VzzEykZYaFPcorAUsLfsWTy6yY8jtoI
 ipM/BGr0nu/qVsAAVAtNU8xpC3X8iAbLXJGQWILfP+jZcJL2zqh+/fnGgDKDsFpkr0mElmmU3U0
 SVzmbbpNyweO4tgA5hzEuLaEDIY1W/nAAaxZDOomMpmJAksqR7w09uL1GCghs42UHoctwGjm5eh
 ko6Wm+mR1IHEXOXDlkg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060077

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
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


