Return-Path: <devicetree+bounces-253378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6950AD0B7BB
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 18:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C2A7C303172E
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 16:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52E6836997B;
	Fri,  9 Jan 2026 16:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dQn7M62x";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KFsvLgYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B118B36656A
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 16:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767977926; cv=none; b=f1+LchWgrKMX47Ivkt5i98k/y0aMxV4qfuKYB3snYaInDSfZIMu17c+UEelqKwyfihkJadUHXTwl7+km/lUOaa3cz4Zum5RB8GNBnFkzedoz+/E7Gv197dafaPAfesxxwQrC2Fd07cGgCxafs1dHgzs7exFOSuzYQwmqPhjr0Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767977926; c=relaxed/simple;
	bh=ZI+U3HmKVnYXK5v86o6BF2VX3RPpNT6lnizYwOme37Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WXrWY8ZPDS4qQx58RWtsZlLee/SI1vHPLfg6Ix8pRREcLKWMe2Vkh+hfWJ0yKoPQ5AvnMBl5Hs8N/fQdX+0EudryHA5vYkBWUdC8caL6AE8bIznKcZt65jvrpPsgxJTDWd4hIc/eYjTaHFzV8S51RpkVfZPAqpoVqFZziYFyXyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dQn7M62x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KFsvLgYJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 609GUc193629109
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 16:58:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+I8jwqy4Opw465RbZcdpAwGMhKJVBMH0ODZ/RSDpWxw=; b=dQn7M62xwk8e+vNJ
	km3ZDzKgeMpElhOQ7VlCfu1EkC3EZlWesVsRt8YvavaRiK2Oh4uehTIytdz2xppJ
	Iyy+s9spONZ9DYOyEkoY66e7PiFmlpU1CXUnddzZGY1RjfELy/UHuRFMAEJgsPgP
	P/EdQsCM4nKf/S4jDfkO57/Vs7hVo8Ntry6c+wnUBoLLSMk3UZHWj7HLBE+6SuRR
	wFtL4KLvVB9g+QdPfjeZnqGlwG9KjbUqB7yLq/oUimvXre2cvxIdBg7YO/Sn4FYa
	DU305n0KJGTQ4/sI9gSI8Qrio2VOpXIj0RT8i3A4YmYEvOeoBnJh/2J8lH9SK/J7
	DKuwrA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjj8j3db0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 16:58:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b17194d321so667364685a.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767977917; x=1768582717; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+I8jwqy4Opw465RbZcdpAwGMhKJVBMH0ODZ/RSDpWxw=;
        b=KFsvLgYJxNDEng3z4htsacA16RBhD0othjez64c8VoAS3yKBiRV4sU0S8c+By5cV4C
         O9ReYa/2k/sUAe2vwrxqav+co7aHfFfVOmdX5pf/xalRb4oh5S+jx6cScQewabSm9iuD
         ZIScz5WwFZb2gHB9m8sk25R84auvOGpNdq6pXAlXp53GKUjWekhMs17g9Z6ziljAi0mi
         vhOK0h5HU4q1kTAM8srt0GXuyfZULYCKHsl1n+sTHKr2Xq5fK+RDBychn7apdnqG8F1d
         Hls5acUuRxvxK578CfgKznGqC1QlpUVuohWETKvi4cfjmzI6NV8gNQKP8KId9rHeu94J
         QqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767977917; x=1768582717;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+I8jwqy4Opw465RbZcdpAwGMhKJVBMH0ODZ/RSDpWxw=;
        b=lz3HRP7n2vGsjI5ZjQbp0h6ZmOaMqKAUaRNUsFcQnP90EqL8TEWGMRt85LflW8VF60
         X4cy2O+G9LauiC3b4QaouIz3kzUBQbH0+dggt1C+exYeiGifnTt7Gm4fLJcGZg1f5O8e
         oNhwxaK2YAu21tTRkut7wx5AVBA/f6WvkmsGRzASZQWiAuG1M2nCaYfF22DW8ao6nH3X
         5hXoB3nw4x4ulGj/YSuNyblbcm1Tk0GkQegHUWPC9G3nRjufx93AYrNaKzA4V6cvZXsA
         qHcEwj6Xi7u48hkRQZ08CRkxeFliRsk97FlHfiXXQsnW+USspfxUd04xmrlEQGOrtlOn
         IGpw==
X-Forwarded-Encrypted: i=1; AJvYcCVM2o4IWzZ+CX35yJ/c/eLuvR1FlxMskaGrbMJ3JRJFFFVYlw+kgf2cQXLcJNCaTlw/ASOS+ZOrYMQj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe8JXZtqFjr9QcS/4KIySEH09zxtuhnDPDgVgEVF8nH58Gs4l8
	Fi6ksLExDYamsNtGAlkkCtIjdiKAZmo099l1xo7YZ2EygBWQ4D7eNioQ0SKitAKM4z7SXrgAfFF
	WIwiQmxIbW7Ijk4z9ZSNB1cO0IasdS4lMiMl6ZQnJd1vl4vDzDkF/O20/X+EC1H5e
X-Gm-Gg: AY/fxX57xqZYnPsZnIY8GLP72itSTDOGKDz3nit3lY+Qxjgbe1QvEqkDXXJkRTOJWFz
	qp1YvnFdeSZds134Ny3F/phQQ/YqTnKoQdAnrprHt2wUaqXXuUXitHv98JnjqAuJ0mAbm9Xf2Bo
	LXm1ASlbsvSVuWCT/dtp3acCb7F9NopSWkDaHZy4OBNAj/WCDw5oF69ZTsI2fF/G4Dmo5La93v8
	27Abs08pGbfS2DIc0aMt3jZROUHOxmF/VGVwjBBg9tpE9W+L0lzbecImeyK7cHAeZet61hZWefy
	WmHZFF4m6IXn5YLS/GfG31nOoZs6FYX0599/LzNMb0dSpKJlx9vBxaWI0XOmQqft7zBO3hKH+hu
	8ZRpGaCP2f8aFopXTVqoZ8P49nvXt44lsPw==
X-Received: by 2002:a05:620a:31a5:b0:8b2:dd7b:cc9a with SMTP id af79cd13be357-8c389356fa4mr1505593485a.15.1767977916537;
        Fri, 09 Jan 2026 08:58:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEd4P+5i2nj0W/9D5U3nva30jkEMvCOqGEW0JV4KjhLClEVL20MybHymtF7r1Ior1sMlVhTjg==
X-Received: by 2002:a05:620a:31a5:b0:8b2:dd7b:cc9a with SMTP id af79cd13be357-8c389356fa4mr1505586785a.15.1767977915936;
        Fri, 09 Jan 2026 08:58:35 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm23231784f8f.31.2026.01.09.08.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 08:58:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 17:57:55 +0100
Subject: [PATCH v3 11/12] cpufreq: s5pv210: Simplify with scoped for each
 OF child loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260109-of-for-each-compatible-scoped-v3-11-c22fa2c0749a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1550;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZI+U3HmKVnYXK5v86o6BF2VX3RPpNT6lnizYwOme37Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpYTOaHPCFJwqx8kUNMe9/c9hODDZ118FgBLWzN
 4NPPXItbLKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWEzmgAKCRDBN2bmhouD
 1x5UD/wIUofhuCPuz6KtYqBTpPHzfpb3k9H0kKP02mFOxVsmacf2tW4ugehZIzMEOAFrRCg69/T
 bpBYb5nzmtE4qoUsuEWplgSxGZTDB4Gdn95AMnaweOKPn1iS5Jxq2nTOllLZgk2GBhZMfLBaN6A
 UP6JIiWtRHck6Z0zeI+y0dYY85j8pPkIe1eGxLXOkEt1OH+w2XfpLcyND7AS3ebn5EKQkhRDuuM
 UNbnryClXYpJvCWN14v7GeJWGOEIoiYuPA/IHFDR1QXJktpvcrarhz/RV7XX7vQRn6bpMcoz7Ns
 oUmEU8RZxVnKJgQnbFVSo3O19t66Gat5ptNkHsCHSlgctdvYmdbbA8089qF0bUcJt1fhSfH/nrg
 PFf0GrMkkU9gKyQkya+XtRumPmR5ILU4hlSzr08U7zvVsXbXDFzrQQD/wYiNCsqboDFYRd1yMCN
 nI2rfHPDynmX9I5crfgivb5TocSSs/z3DOfFipO2C0BKy677q/yqv32s/HMLZsQ+pQ0kiQbXDPQ
 i0WZFOEyvAtB5Omv0zwdgjtz/+91q+VEPF/stD3F/vxR+WlKR6Qik32yBohmUgP49IXOIckAC6I
 Kck558AnhkygKMsybi2gIqSFH+tTfYSY0MLZZeTK8SiqwkkLj/jWtG0+kInNZiIbvNyDmPpOUIl
 Hv88Jx2/oaTAUSQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDEyOCBTYWx0ZWRfX0CnG1mdzuvKv
 c2NeGdu1nq7DwIXrpW9gflJGjcbdzN3/RWe3iO6rbHmR2vwXtybvus0dPjmar6kghxS4Ips9IjQ
 ODDLpXf1y19I7BSwIymUUzSCu7U31MY6bt+ZL1EM33AolL/kfxUX6yqhQcA9Yu7z8EteozlOgOQ
 ldNI6RNfRc8oaOGPvWRvoaTrw48OAGClsnYLQKt/gasm2yQKDxsIj0XRc0Z6BXk1lQuX1bIZesc
 XTybE/CpZzXzzlsW1g3zI/tNqO0aJav8RH17GL7W8jT4zKCGpu2KU3JNVxK8xNPybkjg11fKffi
 bcVnw4cHx9eIvieip3o9VMpTn7lyTwTNZr2mS2nBb1qlMYpEPIqU0kgQgqNGJfDirkrEBCuQyrI
 X4lPdak1s0JNS2nHI6gF+aippLGeOBvfxspvU8u4QzdIm0fKXQObiVDX0OM1eYjoKTQ0P6qKk7T
 DIVbSVL11LqJf4luNIw==
X-Authority-Analysis: v=2.4 cv=JIs2csKb c=1 sm=1 tr=0 ts=696133bd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=i0EeH86SAAAA:8 a=EUspDBNiAAAA:8
 a=8YWg2ve-cigzn2S1SOoA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: b4dnKpv1YdugtstaynxOIDRpISlNC5u0
X-Proofpoint-ORIG-GUID: b4dnKpv1YdugtstaynxOIDRpISlNC5u0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_05,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090128

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.  Note that there is another part of code using "np"
variable, so scoped loop should not shadow it.

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Depends on the first patch.
---
 drivers/cpufreq/s5pv210-cpufreq.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
index ba8a1c96427a..e64e84e1ee79 100644
--- a/drivers/cpufreq/s5pv210-cpufreq.c
+++ b/drivers/cpufreq/s5pv210-cpufreq.c
@@ -629,19 +629,17 @@ static int s5pv210_cpufreq_probe(struct platform_device *pdev)
 		goto err_clock;
 	}
 
-	for_each_compatible_node(np, NULL, "samsung,s5pv210-dmc") {
-		id = of_alias_get_id(np, "dmc");
+	for_each_compatible_node_scoped(dmc, NULL, "samsung,s5pv210-dmc") {
+		id = of_alias_get_id(dmc, "dmc");
 		if (id < 0 || id >= ARRAY_SIZE(dmc_base)) {
-			dev_err(dev, "failed to get alias of dmc node '%pOFn'\n", np);
-			of_node_put(np);
+			dev_err(dev, "failed to get alias of dmc node '%pOFn'\n", dmc);
 			result = id;
 			goto err_clk_base;
 		}
 
-		dmc_base[id] = of_iomap(np, 0);
+		dmc_base[id] = of_iomap(dmc, 0);
 		if (!dmc_base[id]) {
 			dev_err(dev, "failed to map dmc%d registers\n", id);
-			of_node_put(np);
 			result = -EFAULT;
 			goto err_dmc;
 		}

-- 
2.51.0


