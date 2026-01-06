Return-Path: <devicetree+bounces-251833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 95395CF7844
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B891E3041AE8
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD35C30F546;
	Tue,  6 Jan 2026 09:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TBigHb7H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QsqCFxYi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC3F30C60E
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690958; cv=none; b=p9224ACn1gJA2tZtcXApL+Q5fC6/eTbLeYdrpS9r2Ou6R6z4dSAnXam41jEWjQ1M+Q7wWoZoayCqz/mKQY6fBG+CbJNgebBIA78yNyx2Fck3NXzpXHBtxU3/msV/9CuvPTsaS90nmSnNmZkA2+WYfvN+uSbRf9/+H+UYbvQEYic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690958; c=relaxed/simple;
	bh=RWbJ5gkWN0OLPo1CmXSTtNWlFLnR+bKkf7s5Nqxc6fE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b+0DOJxFVobtzffLaPWU6QxvSZx5bkZ2CG+5SA+OGkMVJBqSwkbsXZWziaIFgHxWlwWV85zNVLF0O+Tl90wzpEPkyOMgXCJO2xV7golhbFaQsJUrjjonhEvMBLzjhZD6OwL/yhpyk1gsWWKB5rq9Xfc4kyJB2fmuMj1P0W93aT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TBigHb7H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QsqCFxYi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063RRcS2432438
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:15:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A5WPI40gVqR0fdkwizIfzBG4ci5WY3UJA42a8INrrfw=; b=TBigHb7HA0b+swLJ
	OxUCdr7MQEGhSL/eiW+KHB2Gwxt6Z7XFfaMKxdRs4m6fILI39Pe2EfmyxUj8SvzC
	mn0JWowm85b3wmMiYsEL/A73S5/npoav2ydHWAjDAUuLwF95xgEnRv32uu9K6HH1
	dYxhcMXcY/IH66LJV48tVrAtvQXecbSxEBM6GfOOWnF680HECm6ugyEeKbzo0k8u
	KKH9L5bTETMgZg9gQZQyF8kiftS7ktBPqiw/3Ckdz3994DuSscuvX15EAd0QMb+1
	gy1DnIBANUZdVQFMWsRje80AeGASDTNcB2IznoRH8/FbwP/m9+KRoqPaxc+oQBP+
	mfH31Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr7399w3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:15:54 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee16731ceaso16825531cf.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690954; x=1768295754; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A5WPI40gVqR0fdkwizIfzBG4ci5WY3UJA42a8INrrfw=;
        b=QsqCFxYi3Z1wkrHouhFvg/EZT+z5ngwpHh5m1WVRTBSD5bl5XovrlOx/1d/8WqVMMZ
         qanGHBTDbUa3h0z1WIDIHZIKJQ+y3H3Mr19iwQtszGobKwihLJgabUI/kJfnhF1vRrxn
         ba77wu0sZMAoujUkwBTV98e+z0CXQeUdoPUqiGj/YUrhDDflboJzK06HjlggPK6wlQnc
         0Pt/e3PwyFRbQXmKaupIcnpF8AsKnFbAuWnv6BPp/rY+6hEQEDXupj9Hqtuev0zenUja
         W574YjPWC0j4YD6/aRlCKASvKBdS03nP4Xq00xFmOapQ2wwFXoJ14io9tydS096BlWoK
         FUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690954; x=1768295754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A5WPI40gVqR0fdkwizIfzBG4ci5WY3UJA42a8INrrfw=;
        b=w34JkUO/OdRHdeq9MKYh3WsBDUSS0gcSxx0aoQwNRDHjNudVstD6bBm8Uy6R9E7wUB
         odAw69vHyee139mjmtuf/vPbZToZS67ewdcJDbW1NtsxTV16vpVy8DNtBcLhCt6h57pq
         oy1GwUHmaB4EpQi41Koxo5i7Y925pg4vwX4m7oMix0bBFPG2L/hDq5Ls5ILv7uk06Fm6
         LrRgQ7Uf2Hn98yOuWvJ5RKXjN5k0m2bMScMY3a+m6M2a88h3hvM/adagc95GV8ji49xG
         wzOwTBWkgKLx6Sl5wZgT/cgoWR4LIQ1Yy6YMW6w6ZNezqP97Im3gANopbeirwLuQmCJq
         JUrg==
X-Forwarded-Encrypted: i=1; AJvYcCWf3jLe3cGoT7hOFL4+SH1BwGMDG1RaphDWiTDQ+3ryJxIkI6TIBprMhIJ52xwqM0hBumuHMmKptCWT@vger.kernel.org
X-Gm-Message-State: AOJu0YzKaVbucVV2xF/jeqptTUBydnSYCGHdibJ4+59Qhw5H1Ln9pC8g
	8cCMxc6FQQOLqf68JzKepm1SXAdh3Gy1gWtcwOO0VrvMqvb/tZrRSmdszImWL+UHIdowCQsrpt0
	JFmFndd/+AGo7UJa/WQXxRLfrLrQ4ZQs0dUALWhLiSG9a/BDVoyRSSpNv5FLHMUL0
X-Gm-Gg: AY/fxX5A+h+LucTKEtWCUTVYflR4HD/0/NrVwgxD1s5BPTllzn6Sbv5TbSGsOkG8UNi
	DxhFJVMZ2r81zaRLffW6VoOqrlDkq/elZq+wafw+2eMLHNcS25Rh4wExiAMw5LKg1Fx3bqJ02dx
	qbuGvivGYUuN2AbmvLZFbn5USnPaqJc1mx12mS0+p4p6GXHZU2sdr5/IWX1HFTnDAOpq1873iUc
	0V9kGg+U0YIDaNhw9PgWyNltnosKuAk/N4Yf6n60XdIIQNngMENY4h4XlLyzq8fwEt8FBofOAzd
	WzU/GU0XiLF/UXNTgX/Ayc772sVI0zzKHhYP69Oaenq1p2dDKrmrPk5aDh6S0SUhRUxfxjir7fI
	cVJ/ZgPIxCdAoeCUWcvHLkFkvrHT/3r4yFQ==
X-Received: by 2002:a05:622a:19a9:b0:4f1:ccdd:ffde with SMTP id d75a77b69052e-4ffa76d781emr30075511cf.21.1767690950787;
        Tue, 06 Jan 2026 01:15:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IED0yXdejrInhQWfg8U8+hux1ngnPj2hziLJwfqueQbki/e7O1IcaCCccjXHoHtCmrGoHBH/Q==
X-Received: by 2002:a05:622a:19a9:b0:4f1:ccdd:ffde with SMTP id d75a77b69052e-4ffa76d781emr30075331cf.21.1767690950323;
        Tue, 06 Jan 2026 01:15:50 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff319sm3271370f8f.43.2026.01.06.01.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:15:49 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 10:15:20 +0100
Subject: [PATCH v2 10/11] cpufreq: s5pv210: Simplify with scoped for each
 OF child loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-of-for-each-compatible-scoped-v2-10-05eb948d91f2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1489;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=RWbJ5gkWN0OLPo1CmXSTtNWlFLnR+bKkf7s5Nqxc6fE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXNKp+sqAl0I7tpPvQ0QoODdWoHdFuCs4P/o2c
 XwCiIfJHRWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVzSqQAKCRDBN2bmhouD
 19ItD/oCirgHS49BrQVuTANSy+USONC7WjMfttsLhr/qpAi+dABPoAbX7tiDE9BWLrCMNJWtXhr
 WUgR6AnMlgzm9F2/gkTT27iFuoZZEyMvLZO3NX2xVTVIomZOyv7t1GnS5lzdSDOXL32kzcCfLM7
 K0xRYFbcUCLfqU85D+h0b+hio3mdH5KlqTMMNmHS8mUiJ+GiJOllMUYGWnLoHvFU9XtsWZ/5yCw
 PI/k7qaWs0RYtNNNBV4TfwZo0lBw8EHhjjcxVCW53Xs2rlMDqnSVvMKsooBHf1y/LuVkkHeQEPv
 ihnLx2yuDDaESOfUHTIgMN6aSbfGYityfEi/Lcj9yDg/m4rZfmoJbDh/qOH6vPIXa2Nl7HOSENi
 TCylIT/IZ9uCFy56zMxiu9aJe0m9B5B/a3TW0WOCIIb1sKCjLEKkch2r4IElHv0lk64eu5DsQXq
 qmLiPtOPcaebkfdI5Vg20bIx5CJY6jNt/xz38MgQ1x7sCR33Nd4/6nDWRzWSuk3LT/MFQwoyDb7
 +MBy/+Dvpe6yy2VkApOWSgIm/l87ifREXwWQFJcBQLUBe04JTa3GKajCijaOdi5zBuIztTWUTs8
 n1wWmO5JmCNDvVxnwaaIuZCuYhskPTYuhPn3gUBUn0kzh8fkj88SW6etdR2OophLLX7k5AnTDiK
 +LN5YHgFW2T5bAQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695cd2ca cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=8YWg2ve-cigzn2S1SOoA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 5ZQdcx_uDa_j3aLHbhLMmiwao2Pu2ihf
X-Proofpoint-GUID: 5ZQdcx_uDa_j3aLHbhLMmiwao2Pu2ihf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NyBTYWx0ZWRfX1RT2OK88JDqp
 A/W2ZMKHnASFDZLFtODGt3O5+FWAAbgQWN50Zw2UjTe+w7HzeQN2d+TEnhnpGcWZUoX4WPlk/+1
 xPRDZMyPQ0gTkDbtZlqkYQyekCB62pfXmEiSWufNdLPchKO6hPUcjmbicBjWLnbaNMmFlbIsgqa
 egRNYWpgF7AKLef9SyrFbx1DAjqCSUMFsdZQT7rBEtEqcyfi1TxB+cSuD/GW95DtZtFf19/Jx8i
 FXxD0/d85qfMeoNzH+vN1jIqM/OKVC1J7SjYycWgbrOuRSEt9JRXYFr5oX1GkFWJcPE8OXNmB5x
 vIA41DP9uANHvF3hBD0a+K1fqCMQL+Ko1dbyInOD1uwEn2p2c/WbdsMa5PN7n1ePjiOpsjrlV6b
 tlkTgoaxUp9Sd7keGDySoPmCIGRlHvrt8L7ZGUQ+nFb0AwXZSq10FYAXhvgY8Cl+HNUrAaEeSsz
 Ge8xBKF1OHoOXpxMEWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060077

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.  Note that there is another part of code using "np"
variable, so scoped loop should not shadow it.

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
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


