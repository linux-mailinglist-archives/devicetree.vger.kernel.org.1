Return-Path: <devicetree+bounces-251531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDF0CF3F57
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C50330D4D1E
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3E233345B;
	Mon,  5 Jan 2026 13:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cqq+Tvia";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TMllukJx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043E832D0E6
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767620055; cv=none; b=k7wFTYuvOF2sRSkX+wFY6W5cVi8sWh2NWtBRZ9LbSQHsDWntoPrHKc3ZZe4jetxEURsPK7sCGO5yqZRu3QMoxy9oAj1mnk4akV3dh3OQzsVAggfIgO0oBmLAlCKVPJaxyTY2xkaa4vpQQ+ylO6rB0Q1AGvisz++GDoUZ6lITrow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767620055; c=relaxed/simple;
	bh=LVLzy0PUtWV8BS2tmtolxGrxYJ3Rutx30xWjiFUNeE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i8NxKg83zPddi4Gx10yiAdFW0lbr4CGneBsZYt9LjxKu6/HoQdIGOaeundUECfBzuAWBD4N153ZK5k2u6cNMcPiOk1HKoOKWfdOOs9+h4UCeZKvMdyH48P2YXcAol+0jjsYNPV+3uvSd2r13xESd4rPtBkB7alR3HrYIjAN+iMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cqq+Tvia; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TMllukJx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058OC0j1213919
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:34:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oArkW0LARboCK7gb4mMn0LYpSg410D5nG+SDjMvZOYk=; b=Cqq+Tviamb8ohm1N
	qJMGiuQ6TRAQg/hGCAvjozssKyzNHDhBVl8EI4QxNSQ8oF+1U32/wJnNXW+n8gjD
	8wAjGWlGqIkS1vJqrOW16+rYlI/s5+9CesvEbKs7Pa+37mN0BRBuHJJVx9f3Uo4O
	RudXhY4JOe77hHwt3+KHZ4/qUagXde4wsVcUXpJevKRqoW2jl7Uum8aJy6uKdnR5
	0kl9mGnPu19TMVfo/ASTEeVNg2VPSm+LR1QDOHdHCaxgQT8bGI3XubV0xJv+Zgt4
	WNRsCjjUkx4qxjUlYQZ3VslIFReKQHYfsPCAaKxQ8L3d1nLGf9Kg7woYRHD2fGc9
	LE9frg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bev9hcj15-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:34:06 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1dea13d34so357695561cf.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767620045; x=1768224845; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oArkW0LARboCK7gb4mMn0LYpSg410D5nG+SDjMvZOYk=;
        b=TMllukJx1gXtib7rSP8160yVPowJ4XUjXWfbYXlVlNL2CpVL2cR9iyIW8/gcA8ZrjB
         xbdEH6zfnFE7ulCMHn6i8HzMJIzmXmHebsTqxereqkAoBUlVxISEHFm63RBcDQjO+u7T
         bLnRLyVWnxg8Vhmwc5p/aMbr2bJF+T0KPoZrklcj/4NlYGIpGXl9k64NZ1HYFAUCwFGH
         iE+wBBc67QAA57iOc2GJLFtpk/1L/uudB3y0KU45bUvcoPHjS+6+bjbGcV3nFeecAcQS
         87g41Cx62KnezK26Xpnia2EkZR8lXUvMP+Sak0O5gxA6yw1ZPtqR4hFPO8anpl2r1d/9
         3U2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767620045; x=1768224845;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oArkW0LARboCK7gb4mMn0LYpSg410D5nG+SDjMvZOYk=;
        b=rdlQYQwMZL6t+QK6Tnfb8B8Y75Vz0HB9d0VtEzrKBqeiVCm4KLCiZYMIyZOxZKAOMX
         lWqGTINI7spx83Bh5wklgG+Z/z+01kmD0F5O8JvG2jXf7xE5s9F/ABae0IlvoyaqQ0Ie
         RMjVyUHQ2C4X3SY5/hUVwSxcBG1a1C82DNt0gPwdMqsLfOakF0UmHnL2YRtNK+JgPp1Z
         GGlHAp96g8aCRb+g8vyGyPN+qwygCfSS4bGxe/D1MFUEtPeKWcCZOFRaTfoXgYE/G/TX
         jtWJdIkFLeq3/TUbOsDDX3VmtOYeg/85kPMv79agGawUyQxXGVcUNYYk+FyF7u7jr7O1
         Gsgw==
X-Forwarded-Encrypted: i=1; AJvYcCVEV3v/0snIlJLabwuwvwyutUadBu6Os4lTr3K3UWeHNMu/t1KzLdZ1kOzRSli6ogd8ciG5VgTxJPgw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8mGTD7U5kGkDRAzqiqcct2rZIDsReg6c5HVBsJA6Y1llpLyTd
	OElBbCDfYU4yArC8OUpCLG6+YVaTeVc3c57lciwHUKwTnpuCkCMVVAGWqOfU4iVbVRMd4ACphBf
	5XzoqtkNiqACmFFUGpqVqcKAETHT38fssq2H/gOFJtAOB27GZg+LtZl2/0RKkT6Yj
X-Gm-Gg: AY/fxX6ZIKSYzW1jGq4ohatDtmwHToqgb8jSp+HhmbDtzobl0KhpqFFsg/jG79mLKMO
	3z3wQuMhKzZ1vGoGRIOybipYwMBVIV55ewcypxUkusLEzyEl6tWTPrnh0S6bDHnI+alz0Fhvi09
	GQPzXcRAb/GKL+EevO7dPXHDLW+coEGPzc+NcxkICGRl8KYXuIP6l7fKOFAt7Ipd7Ymt3hjIQt5
	aFY4Yp1vTWSUe1UM00CYCoE5OvCmzEzb1JsDIFXDfX4+af3twpf6aYXRr9BrKF2vCRArz8HLkhA
	/MZGVRVC9A3gxDBm5Nw/QkfT1kZ/6ONL5B72OtXGcwgLHhoCAnRoGycrdT6Hy8oRF69LgPXJDWz
	WLmnRRmDBZ+r8/04+Jjqc1P+nixYBaSTf3A==
X-Received: by 2002:a05:622a:4ccc:b0:4e2:e58a:57e1 with SMTP id d75a77b69052e-4f4abd1fd20mr854416231cf.37.1767620045491;
        Mon, 05 Jan 2026 05:34:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEaegexSj096K3fUiheKT2eEZCKoRyRaf9tDTO6HJyvQ3dPuQF/hQFiRxGLj+JZN3lJsktzbQ==
X-Received: by 2002:a05:622a:4ccc:b0:4e2:e58a:57e1 with SMTP id d75a77b69052e-4f4abd1fd20mr854415341cf.37.1767620044848;
        Mon, 05 Jan 2026 05:34:04 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6d143f75sm147211015e9.5.2026.01.05.05.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:34:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 14:33:42 +0100
Subject: [PATCH 04/11] powerpc/fsp2: Simplify with scoped for each OF child
 loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-of-for-each-compatible-scoped-v1-4-24e99c177164@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1293;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=LVLzy0PUtWV8BS2tmtolxGrxYJ3Rutx30xWjiFUNeE4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpW725Sthfa38INoq+BFrKBCIQ9LENj28mNcejT
 zH4La1FBV2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVu9uQAKCRDBN2bmhouD
 1+Y3EACFb/c5RPWrsm9EJCGgElk5vs16RKVssUJeI8OeCDe7qdbUwCuVZxqQKA9r/qGQOvjvryT
 hX1qwbs//UAEeuNPZV2XNaE3dmO+F3Hly+GEsYAz7c0N+h2s56k/uDY5eXRpmlEmFTIySUAHDbR
 GEq8fQjte6VxHDXwURB9tn1H/t/djxNMYWHo6p1BGJkA70pTZyp6+Cdpzj+6JguPl9xOcg0Rm1k
 PuJe7XLwfWmdFYdjjoWNAmL1U9f2lO744KzgnVSiuIFbhiQEm9MR9x54yUAcuGgvHmpwh/nXVSO
 svb+ji0Nrkp12dBF2Tx37D3xIgYqw4CdAkNc4TsN8FA7xzGfdjnp0p1917/yozTqg3uw9poYf0s
 L6wG2dEzDp9TOu5hT3wPQSyZJUg6/H8J52lQKd4pZXvRK7LrOw3WH99h5BAp40dXR4NuaQPe+fd
 sFEuD9e7N4KLOUYa4VACZbhVGPSIPmdEsrvjkoEiotFcGCRNWcfNA5I4Q2JXlBwPhzQtmBDhBPa
 tp0G+hWwzQahW0uFa+KcCd0sPoUz48CQP62nynSjLl7rsA2XvCYLPo8HEzevq0q2pmJnNYznbAq
 vhbVRAcFTXI7l5F/Ph7YDmX7evKLAzxjmpU3wjr/16y3Id3dr/lcqHb4vmmZBPry3EU8sU4akYy
 NGGA0x15ltZqDCA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExOCBTYWx0ZWRfXzKqqBJ2st+WM
 CN1qCRECwiLiRxFrmrshqR4wrjQ152zP9bGQ4BvhN+MOZCoIE+VRmiDGSFnDIuBi4ye25SvABxh
 sSYMsJk7UuLnQBhoaPoP9ZgM6oM6BbWYKJ+4z9kk9nugqY6pmtgYFasN0h7t9MscuXjTu47dJU5
 yvZ2Jqv6bZTT13PyWHLfH/ZAaI+WGpVAraVLg+Q8V/e3OIcgmvD9r+t0Sg89Ua6qfA77o8DT8tY
 VlSYSkdwrTpw0pkSAdloycGdcIlY39qws90v4o2t4xneaf23XvxNZ4W9mOye8v0AgNpvOQvnDF+
 eW40He4d1MeBKuPWEM9EvTw2sIdV8cacxcxDq6lOBX5L3zIVUgKVnEnnvhVSImTEpYi2H+nKDrs
 Ypd2alrafDauDI3H+EwsUka5E2Mib7bDFY7FtqJAYT2ljGF21buQX25uURNcQbKf2H+ufSii7SE
 H7cx4L4s6A7LCbmruAQ==
X-Proofpoint-GUID: IAImtduK70Sr9hBfD0KH37sZI4PkUuaQ
X-Authority-Analysis: v=2.4 cv=RrbI7SmK c=1 sm=1 tr=0 ts=695bbdce cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bRA1xQHzFO3ZoMUYUbgA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: IAImtduK70Sr9hBfD0KH37sZI4PkUuaQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0
 suspectscore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050118

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Depends on the first patch.
---
 arch/powerpc/platforms/44x/fsp2.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/powerpc/platforms/44x/fsp2.c b/arch/powerpc/platforms/44x/fsp2.c
index f6b8d02e08b0..b06d9220844c 100644
--- a/arch/powerpc/platforms/44x/fsp2.c
+++ b/arch/powerpc/platforms/44x/fsp2.c
@@ -199,16 +199,14 @@ static irqreturn_t rst_wrn_handler(int irq, void *data) {
 
 static void __init node_irq_request(const char *compat, irq_handler_t errirq_handler)
 {
-	struct device_node *np;
 	unsigned int irq;
 	int32_t rc;
 
-	for_each_compatible_node(np, NULL, compat) {
+	for_each_compatible_node_scoped(np, NULL, compat) {
 		irq = irq_of_parse_and_map(np, 0);
 		if (!irq) {
 			pr_err("device tree node %pOFn is missing a interrupt",
 			      np);
-			of_node_put(np);
 			return;
 		}
 
@@ -216,7 +214,6 @@ static void __init node_irq_request(const char *compat, irq_handler_t errirq_han
 		if (rc) {
 			pr_err("fsp_of_probe: request_irq failed: np=%pOF rc=%d",
 			      np, rc);
-			of_node_put(np);
 			return;
 		}
 	}

-- 
2.51.0


