Return-Path: <devicetree+bounces-251537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 738EDCF3E84
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0298830BA7D7
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B518533A029;
	Mon,  5 Jan 2026 13:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z0Ye+6s6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gi2+QKzU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0733358C2
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767620070; cv=none; b=CPUlP5Jvm3WDyNgzt9f1kbuvECgOPI+oaOLL0Jlm+DcahGXEvvwazOzbKHyJEuXV6EMkHUzA/IMyMphg2ahnrA7yNc0k1/hGz7nbCTr7Pv6yi1Ut7S2punXpFLwOamq8tLj8E2CpmvK4eFpL5tDvYXIcaD8xtdOpCXzLblBv7fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767620070; c=relaxed/simple;
	bh=GS8OvkusvmgcdB0Bw7k1Y4Yk9s8voPKG1OqeEcLUEtQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QLjRwwwiwfnUSra1NPujf+7mygfk3U2H4B67hvKumLrLF6OjxHlneRuBUj2yb8kzXcALh8ON5emmHmWMoD/8rVcrroCqz9r2p9xpJblx8Y0ixVLdQ0sKQmU9fmbU8SH/Hj/NWHj0cbITQQH/GTbjloPqiUki0GIkMgOg9YTSw38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z0Ye+6s6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gi2+QKzU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6057suTX3747048
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:34:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Du52gVNSd6dUN+ox34XkpgmRisqcm6nMlHGah1IV5Rs=; b=Z0Ye+6s62/VTDHGd
	1G2Tca4dXxjio8BbLPvCE9P654VjAGl3cP1dTXZClo28KJtbz2iH5QCsPDNimUh6
	IzHTL5XqqkJB8JPVa2tKldM5WMaeEbNhEogSKeCIobffKGKKq5O2IBkBTEiRThkr
	S0iXna45ybILw8mq8Sh2r7uRQI489nf+rRFQiNQFVDiqKy318HHUV2VVbal6OsLw
	IwAa9y7CjWfdP81fsd1s21Fi8r4NcY0a5agJsdwnlDJdB1zEXR9WtARrIJp7fevB
	fPCAU0nshGwkVaR+o0nr70A1WqoGO+VX1P3RPOiYIUhwAQXRde+a+AZ4wlSfwfqh
	euFJdg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beuvd4kc9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:34:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b259f0da04so3411252885a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767620059; x=1768224859; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Du52gVNSd6dUN+ox34XkpgmRisqcm6nMlHGah1IV5Rs=;
        b=Gi2+QKzU0c479qr8p1/aynYk7UNqc3LyMLJgkjk9B8vOPcEapnqUHeAfroamReqIfG
         tfsWMepPg8RFHisZgHu9FIP7pJtKbkt6AMMbOXBzVCVSPJgDpN+9E8pO3psnDQTfR1Ta
         joJdpyX2eE+zgqdYbKy8oq5WVcUd0fBDTvc6TRcJSG6NFIJiASlkZwjkX5mYlO1iosx6
         Gh3zqTy4Ej6tnhfrm1puGM7quXwcSGYSYQCwHin30e4lnwJc94+/MEiQ1P48NREBv4CX
         Kt6NDwMTIcVZOIEMiMHWY/uthEQbGGGrTxNSowYCrjUnzrjKaIlB60DR/wNDF5bO2PnQ
         lI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767620059; x=1768224859;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Du52gVNSd6dUN+ox34XkpgmRisqcm6nMlHGah1IV5Rs=;
        b=wfgR3du2yDF1HHuVOObcug2j79CcaDYDJOaQ2uHZV6Zlr+FVoU5WX4l9qmQkHbEC80
         P9vNre9UW/jbh9hcdv3yzbOIsetdrCRMzIYl2XrbNLUNxayiIvqd88NDGGCTCa4muRAy
         ShXvlhloXT5aAKbBPeeHjMiMnofNRuF2WMdrB0bHPkd0qaLFwq1BmY0yQ6akIOVrj7Ki
         VwplJI7vdlBVw0IbhjzygIjJcCbNUa7K+FFQn2CfeHp8hPgyA5ggNiQ9oR5zEGvHAGza
         bJf61dFMLOFsTjfSPaFjfvdHjMAhh4m5pu88H0+D7CQvt4mUZ4MIgyQwmf+JFdFvY/Uk
         O5dw==
X-Forwarded-Encrypted: i=1; AJvYcCU72FGE1HDw7joGGq/CfzMRTVSpTJjx0xGafCDdXQqnTyeVHzn/CKYEgzWLkPyJdw+0FKUvgM7ovIWD@vger.kernel.org
X-Gm-Message-State: AOJu0YyFpJZ1orB1RFAv9Cp0L7yNuB3T9WQiyg/up5fX50D+MZ0LX2s9
	CUay6HmbHX40UOPq7+5idoX5pdbWkb5dajccovIKyupVBHKP68K4gJjqA29HBhhUHQ/jSB+Pzms
	YiTjOzB5uzh9Ei8hIYUnCpbr0gQZTGFM7fEjYJEXyUcHW35TsOVP88g5Qi0EwAzz1
X-Gm-Gg: AY/fxX6GIj7GINxwDdta0QslHjRRFIEWWweNkm9RcueHN0w/2DJjbYlbR9Nr17ygJxF
	PmcAPdgC5lwLTnKwTdoZKmgSfpMWIn+UuNL4/7z8siTtsG5sHIDnuhhlbTyRaUt6MtG2UZ5cWCf
	UQ/vxDU+iAoZ2H3iG71BDf8IARwbxy/+8afCnCnXKjWydXWTt6BiKML/d8y4LRvwcZIbBv+ONg9
	qelmZ2SDV1AN4K6QEvmo33OOgwOr/NJAM6BB7eHlIOv2O8LthrI3lU1KkPGyUdvobn56kRgQ9k4
	KG4KyuUToXtmzst2XEyfYyt9V+RdEb9VQa32Z5xthD2vFPeWolG1X5AYwihOWVl4GtAgIZrnaL7
	7qQSz7v1PY5WzPVif0tYM/I4ECkA9xd8e3w==
X-Received: by 2002:a05:622a:4243:b0:4ef:bed6:5358 with SMTP id d75a77b69052e-4f4abd1c647mr721834921cf.21.1767620058389;
        Mon, 05 Jan 2026 05:34:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESw6Lz1B78B4ULuxi3VJYQUxXjiiRMNi4bRGaq2JIYI77z61n6T7SSooev3CjMW7TdHKjxOg==
X-Received: by 2002:a05:622a:4243:b0:4ef:bed6:5358 with SMTP id d75a77b69052e-4f4abd1c647mr721834241cf.21.1767620057780;
        Mon, 05 Jan 2026 05:34:17 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6d143f75sm147211015e9.5.2026.01.05.05.34.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:34:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 14:33:47 +0100
Subject: [PATCH 09/11] dmaengine: fsl_raid: Simplify with scoped for each
 OF child loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-of-for-each-compatible-scoped-v1-9-24e99c177164@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1294;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=GS8OvkusvmgcdB0Bw7k1Y4Yk9s8voPKG1OqeEcLUEtQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpW7292bX6sV2klT8k73Gc27WnZClqHRYukVQ3s
 g0dt4LCeumJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVu9vQAKCRDBN2bmhouD
 11gKEACUJG62p3bBedXNXFAHMBRvdHh5SRxmskzIZSZ7YDiKWZ1xMuPSZ2UpCgiXYu+jzjQ3pSX
 J/tk4zTo9qz76qTrMt/5FIq6qSzht1As3D0B1eSZuwID8n/AFteLawtMhfHZAK7HNjpXJ5H9EBq
 62LoqS7xAsC0xCiZkpZvcZ9rfMTld2TxZl6XNo3RD0Htu0zWS1yAxP8K18X6I26IvXXjscdtexE
 iBVsA5MbEHfRq5ZKrC29z9sZb3tH62HK6tnmrwjs1SVWC+9e79+2kOb8gyuYuehYkOzBv629c1V
 tbLNukjURdIanxovvvQ0QNp8D409dDRHMp+XHeEcAAqq0XpNdixShlzGnTNVhHq0vF1gK2s6kqt
 VB4FxGFFb02+5YZBjeUN1h5/FR7WfVBSu+fR+LR0oeO49MWlmmCch4ELcHp7i8e9c1H1Mck5N9k
 dc20+3HAxiVbWgSi1z0IvynOLTkyQE2AkIcAjJXxMzpJ08ew0r02sNeagYcwLb1142buVZffbbh
 kwn19rttS0m5FcR0q8cRaTiTdaHPQhE5Vmf6NQvoghBrifIdxgzLmNDGMcmCXH39Lfgtr+qsayx
 noTsLExWWnq3y82IinF0+6fHFsfkb1/B4YQVykBXNubNjrxKqGilh7ZemeG2VmrX1owHSxo2BgD
 F96W9pTZJ8z6+kg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: z6FO1LY5ekZru_NPwS4iwJqtViwjNB_B
X-Proofpoint-GUID: z6FO1LY5ekZru_NPwS4iwJqtViwjNB_B
X-Authority-Analysis: v=2.4 cv=OuhCCi/t c=1 sm=1 tr=0 ts=695bbddb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kVq6N5mEIK0mURhpU1kA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExOCBTYWx0ZWRfX0TuEYwDm0A6D
 hgG6lVTDDm4C8ScmsVYYKvLpwyr/xxBfq2rpicO4FBdVIyTZexc3vjmAnLjDFAWjb+7gPj4qBeP
 bLseSA3xtLitgCuw1U27gf2YAtxrP3VIK6Wsuc/3OdVVCVfp3Vu24qZIJMNUzX5hULO7vC0Vzy+
 d8/jxVQ1i4cb4DVfu8hODdkwRD1UhKrdrJtuJWT7CQCXxrZKne/e3QJ6O6k2YfqW7jSbv/qEHAF
 1Yd0VivtugoYr/naKzELFGNs8nOQPU1u7s3lPI8NOuDPNUwCjEryS7on2F9xaB06eF7gU8qBKz6
 Dth3NtUztUqy+kmhhbSQ3y2gx44tfRwicat/ak8fem36LmV1oQ+LXCyn9cjg7c/r+aGnc2uX3g6
 W7VRRmD9qoYpOmwKrmHNEEVtE+PKUfD1hTOUv7GbxJLw4dFUbL5sJZSr3mR6BOVuxmtuamAODwj
 40SQFLLeNKDX6qfJBBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050118

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Depends on the first patch.
---
 drivers/dma/fsl_raid.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/dma/fsl_raid.c b/drivers/dma/fsl_raid.c
index 6aa97e258a55..6e6d7e0e475e 100644
--- a/drivers/dma/fsl_raid.c
+++ b/drivers/dma/fsl_raid.c
@@ -746,7 +746,6 @@ static int fsl_re_chan_probe(struct platform_device *ofdev,
 static int fsl_re_probe(struct platform_device *ofdev)
 {
 	struct fsl_re_drv_private *re_priv;
-	struct device_node *np;
 	struct device_node *child;
 	u32 off;
 	u8 ridx = 0;
@@ -823,11 +822,10 @@ static int fsl_re_probe(struct platform_device *ofdev)
 	dev_set_drvdata(dev, re_priv);
 
 	/* Parse Device tree to find out the total number of JQs present */
-	for_each_compatible_node(np, NULL, "fsl,raideng-v1.0-job-queue") {
+	for_each_compatible_node_scoped(np, NULL, "fsl,raideng-v1.0-job-queue") {
 		rc = of_property_read_u32(np, "reg", &off);
 		if (rc) {
 			dev_err(dev, "Reg property not found in JQ node\n");
-			of_node_put(np);
 			return -ENODEV;
 		}
 		/* Find out the Job Rings present under each JQ */

-- 
2.51.0


