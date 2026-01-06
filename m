Return-Path: <devicetree+bounces-251828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36282CF7702
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 598E330434B6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13704314D2A;
	Tue,  6 Jan 2026 09:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eyH1dS+O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rq4Yt+tc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B266313E15
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690945; cv=none; b=dSJUkgAxRv/OwqQmt3epjlt55hZHy4SoLjpi+Z92C5lNjL5AI2mDPHVAADKuqn9GxiaZ7oOO/tQYoBeEEchCBeW45d+RT5zUJvftFu1qTYTOoVwVIbuMH4UkMH6Ym9VHKvDucpiSwbzbAFkh3bS6OJ6xktJHcQhWZywMTozL8hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690945; c=relaxed/simple;
	bh=etPrXIm2DbWPr0yBMZ1LGq97W5bne6RQqRx/65G5X9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ed+G2v5soTuEvlTsVtvRtoKq8XqiC2XCaS+ITws9xWo1rV9zD5S9kvw31fkMJ0WvzY3GqvgxEDpCgiotgMf1nRFReyMHLQa5gk5iRntv7J0e5N/JWb8il7Jz7BmqOY0LpxIHo+lul3bg1z6PNqoxtYaYteBY0a41OCXnLTehCDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eyH1dS+O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rq4Yt+tc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063RRcO2432438
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:15:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TVJbv/lv1mJxKEXbFe7HFa6qKPqOIW0YhqRLM00SXEM=; b=eyH1dS+OWuLPBbeG
	s6hOZ3gPsINaPKOrfyjBZOYXLnvlD7li5rlELpB7ldxLd9kQ2KYk2Z+zYUHfK5gW
	e5GPW6fTyqXI0escRoH94iGB1zGtMjBZnbRnFOMMvZi47Qd9wlpf0yJWAitw5Eyn
	ylirZ737//9kxEzncgjqxzmIvOcACfLle6eg1DiI+Nuvnp/abfn2Cp+7VMtqibYw
	T+a1EWqQjq5TSHQfZw6x4HRDjrYUVxeJHF9wb8M+Uzwo0TnANx7YEcDmYoDxmk8N
	6w58V4ZY2xDwbsa4QYVIkMT+IWa86zpFI99Q4K2JShlug2NVO3Ww04Shpg4Z64WB
	eJOHuw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr7399ut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:15:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed782d4c7dso12546231cf.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690940; x=1768295740; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TVJbv/lv1mJxKEXbFe7HFa6qKPqOIW0YhqRLM00SXEM=;
        b=Rq4Yt+tc2zZu/AlhJpBYCujwM1+tG1cO+Zi+TJPotr0Awjvn75+Jv4iKTJ62TsTRVh
         ixdVyOn9HvfPWVPhpu7BC6CvYaM4Lssasl6V3Ujyx6KaV7eBVGnZvM3D9T5VhWZoYtr6
         zaC9Ci0mu3iqsKuQUxPOf21eUPoIxPiBAX13Ot8iblhsOH0kg62DH+d1yzb7CcpkRuUI
         6HQg52za2aIbBTO25dX8+gGv14bxJe8uk7hluKcwV22NKCnHp8cwozY5rJvChLVPI442
         X9sWaUaemcgwCbFoczuJKXpam03CrRoGNk2lgQ7xdmLRyIKUoT2FW7V5kQgK39a9fLtm
         /o4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690940; x=1768295740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TVJbv/lv1mJxKEXbFe7HFa6qKPqOIW0YhqRLM00SXEM=;
        b=LAYHxX9gXhToRt3nNPsEf4KPqIhnt4FLOYb3zKGSOOmg4ifwapf+1oJ/Ak4dgtz4W1
         QVrqcyLzaCbjIn2IryRfptwN+biWS6VcXq54UcZZlgMKpDaEzKhugd+4XaMaN+jwhZOs
         v0ML9xwrmE4P6wccCooBTLF2tyPCG3rj/E53NrHtdsGsXlRpctI0BsY63dr1ORkDSDLv
         PkFbsF8Mg+myg0c/ZMArhPg2hlQPv01sPmCsr+Fh/p3BLoVbgwWNMwvyyS43WdEejWrO
         9UgfFzt6MlcCOKPqc1Ka+AAdFiaQ9H9Odj2k1jpzDw+s4O8Gi/X6r0uP0dbJc1So5wy5
         KmGA==
X-Forwarded-Encrypted: i=1; AJvYcCWnfCveCKuJIGlqOvmrbk9EDpQbpctSzLldd2ayHH3G59ckHFyQXpxy/8MdL7sW2XxVkErro4pSqkET@vger.kernel.org
X-Gm-Message-State: AOJu0YydbzvYxDt1I8Nxj0LAJzCpAxXPVE/r87oqTvA0cbdm4B4mKpXa
	HACesf5q1T4ZISzl+frcDHJY32xqrLQ8Vfz3I2RTQxMsjVPsNOEUZcYiMUiWf9Yg3X4OWJAI6Ou
	V843NbLDvw/ANVhgrITRODq6I8FPtqioezelEaq0WaGu07dECpI86F0lh/8A3te+2
X-Gm-Gg: AY/fxX542VdFJ7DT6YnHM/z5bnst7Kx6WW3Zji7mxOwEWxCWw0o42dpXaYN8lyOUcbu
	T135RqpXHzC4vndU6sXqj2gMXMYEQMp87ZQqxs88/axHo6PIQzQX0Sj8ZD6K6vTLLlnN58ZLXHR
	1xQxzDWFHkR4DelMN8Gx/YwJroWZMKlOxVwL2YTjuVOz8NYgNT1pqSbfA6QgiJVHdEB4ULJr4VE
	l4xu/bcPCV7UmmP14ogiGmU2/uwo2+zyGJQurseXXPNv2gK10cHDb+wQzWLzY/ZSdb+iDNn6uyx
	qYbBXqvWMuuRymthC+lKopLZ65Zt7PNVIkrP7/sVjYNSM4wihb+OpnbeXFrdsXHTE2nszA00fs5
	XHymF1DuZznjyV7RH010aO04SvI48xWT8AA==
X-Received: by 2002:a05:622a:5808:b0:4f1:b5ec:dab3 with SMTP id d75a77b69052e-4ffa76be5acmr30003551cf.18.1767690940491;
        Tue, 06 Jan 2026 01:15:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEn9FxKXGa2KHpYz+ZQQB4vTjxpZoVrkeL0JR870oJdg4LQQUiHW7/3aZHLy6E81IxKYYFXcA==
X-Received: by 2002:a05:622a:5808:b0:4f1:b5ec:dab3 with SMTP id d75a77b69052e-4ffa76be5acmr30003321cf.18.1767690940057;
        Tue, 06 Jan 2026 01:15:40 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff319sm3271370f8f.43.2026.01.06.01.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:15:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 10:15:16 +0100
Subject: [PATCH v2 06/11] cdx: Simplify with scoped for each OF child loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-of-for-each-compatible-scoped-v2-6-05eb948d91f2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1064;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=etPrXIm2DbWPr0yBMZ1LGq97W5bne6RQqRx/65G5X9g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXNKlGprAVyAJUtewyF+XMt0Npi5Nw3QQowqDq
 LDolXwelDiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVzSpQAKCRDBN2bmhouD
 1x2bD/9ffIJpL4ZbW/U/j7/3q3tt0Sx4jOdt9UJON5xtLy+81KBOaJWv9oTsWblixcG54IEdSDb
 ky7CLtrOVRm2nsU+I+NZsivbLdkjDaUUYYJ81APzHmE8NPDhiTh1Zl6G+lqyRBDAciyuQmWRs7E
 ba/15aAWk7sWBXMnoydUPhZ15VDFbuKdoCVhGGh89+SlpzqvH93ZbAfMKTExQ6AJ0Bayl24XUcL
 FbEJPOpqJtUYHuZHEkGiAX4yAD53c/uHVRFnAWjHNNeZ64IowWM1AFsZRN2iOWJdR7k7DJ3ds+6
 2Qb+bTqYFQHlnXnreN+NqCM3//8G1U3N70mQbcHVtFHdky/nIN7AbCjrIOupaGoxj7F1vYXeiVJ
 kM2BSyYeiztbDN5XccMSa7lqvsMOIhrgV/6k1j2cxdn3adot66K95rAS0SFrBfPlg/fIrbtTeFK
 rT+cX64PbBE3jYVR5Flq8Q2Dj0SdVyluiX9dsS55YjBMOEGp6nsElIsWQulojsCkVMAlpuW/Y8F
 E1A7pherppgI/uQw8ZNgElbPB3AlJ/xlc9SXmU2OcQwTKB+UoVOn6RBNt9D+MpE5bWw8IhXUt/t
 cgiUVpMoOd1sWskTwc5hQT4lNJafHtAoK7gy8E/OPOx5MlQXiuNUnDTrRv0EZK79EeHYlEtXJBj
 iUssT4/AzCEIFfQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695cd2bd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lBFd75AfmJVjEZM8J80A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: JdRJ1hezdEnzqZxIy0gM6L-Ux9WJnsi8
X-Proofpoint-GUID: JdRJ1hezdEnzqZxIy0gM6L-Ux9WJnsi8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NyBTYWx0ZWRfXyQVqSlc1a1Jq
 kPBkevephzybsuKiYbvmHGyXoONG6IwqoVpxZfq7Oe2Ma9peZ9Omk2KIqYp+UwF9UKMyQavCG6B
 jnt463ZYj1398YPJetwQ7ZCn/ym7Dk0Q47RcGYOJB6ZGvOlXVBHcG0w9HW6i9E5jwB7hhZwr0vX
 aW0ZwFL4xM4w+/TYIFXcHWX5t61sp8/+1OAjT+2w/4N8FMELVigC+RNAG1TJqvwXEemdBOgOpZl
 Ks0xuqy+DBgIj+HdVRq58a7j3LDbsJ88RRBKSKgxxeqOHi2jNda7SU/UXBXIPxEjsSUgsFtnYCP
 uSsjFEJzV5g3V6ZEl0u+2i6orvuyCbIiPXRUXidEYQ4nClty5fQ0dG2D3LtLkTVvRrbye7KNdoS
 0GCrUZBtyJLI/EKcdJaYEeBPkLX67GZ3HZSy3578FrXdfIm9jiMOkdOvNFCDT2cEZw/g1p84pl5
 kOP+omZ+tN+d8TI2pIA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060077

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Depends on the first patch.
---
 drivers/cdx/cdx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/cdx/cdx.c b/drivers/cdx/cdx.c
index b39af2f1937f..bbde529aaa93 100644
--- a/drivers/cdx/cdx.c
+++ b/drivers/cdx/cdx.c
@@ -608,7 +608,6 @@ static ssize_t rescan_store(const struct bus_type *bus,
 {
 	struct cdx_controller *cdx;
 	struct platform_device *pd;
-	struct device_node *np;
 	bool val;
 
 	if (kstrtobool(buf, &val) < 0)
@@ -623,10 +622,9 @@ static ssize_t rescan_store(const struct bus_type *bus,
 	cdx_unregister_devices(&cdx_bus_type);
 
 	/* Rescan all the devices */
-	for_each_compatible_node(np, NULL, compat_node_name) {
+	for_each_compatible_node_scoped(np, NULL, compat_node_name) {
 		pd = of_find_device_by_node(np);
 		if (!pd) {
-			of_node_put(np);
 			count = -EINVAL;
 			goto unlock;
 		}

-- 
2.51.0


