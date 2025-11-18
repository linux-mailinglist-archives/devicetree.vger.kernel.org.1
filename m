Return-Path: <devicetree+bounces-239635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C830AC67E0C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 12C432A46A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:18:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39E22FFF83;
	Tue, 18 Nov 2025 07:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GNbxMaRo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O9Edgyt8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B04E2FC890
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450250; cv=none; b=FxqBR//8UVy6dI1vkPzwxZw//sTEkihF39RkGEZWyTmM+hz+0id5yJs8G+wtgglSc3EjhCaC89RZJt7CNWFRFWy4u25aIxgdmcpmTfJmNR5aaIg5wwAcdBFsJPBeVLpnUgBEIo4nVpr1Hm3QeVE4SK3f1QQI3kZKJldIsPy79HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450250; c=relaxed/simple;
	bh=eT7xHlsM9wuGcfi+H1zM3Mtip3i/71EBzEOCLv7v6ow=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N3fuUt7nNlsQUYNzQIDh/git9EeroPh9lxxfz4RftbET8gaWGQaLRng5NlMJtvO+HCSnru2QTDQck27qm0t6sn05oiVzyC37hKcogQ7gZ/3lUl+xjv8FUKRU5P2ZN3H0bQ6e+om6zfJr0sq6qghGpht0hLjaiYhjnDQQRdmSsk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GNbxMaRo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O9Edgyt8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI5eUxV3671224
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e4uXf27pC+4LLf5eBc3TJTYwCnSfAyOM85/RxuPTdDs=; b=GNbxMaRoCEx63HMU
	9GOTCC/v+xVSnWO4BERud4MoHXwZfpcvb17yjHAkTVBlpvZ3JvSn7DVdvKsZbVUq
	NS/b+diyJK+Hz7bsdIk5QK15+73cWYeSeMD6C4WNedscSFAVLCd3luAZFYr+uVBe
	Sa93VBSGgViKJvOXmerKsUrNinX+g6xB53kSKoINz1wM0c8hrFHHTKro4JiHWBEZ
	C31/SRQd6EB4CJ4Fd7GovggNLjcI279PcqiqP8mmwH13ME8J+zanYXljM1lTSG0+
	3DHTF1MfgBMSLLR+Ty+Cmiw9gjUAztxhskhr8yURTSkqVyam6w18W8HbHlkILfJh
	p2oUZQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2g5b495-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:28 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29557f43d56so64982965ad.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763450248; x=1764055048; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e4uXf27pC+4LLf5eBc3TJTYwCnSfAyOM85/RxuPTdDs=;
        b=O9Edgyt8CZ3IUyEBtcU/QQp4ovIbchvuPWo9CGz2NhO5qWj72/7vrlk2kj7ulZB+ui
         TS1QCEvAXfVZkAWv7heVCqcwtWLdFW0BAO95mONFsH3e+OxYl+C2zefVJClgWvmFsYLj
         UyN7OhxGU/UijZciU3zCTbE32iQSKKze1rpgdiHQediwkVNngWGT8+WzqC9yCYeO1U9n
         KCDgXbEGC59/qOHqA1BM3SuG2tKmbxEFjqsW69IY8tMxDct5bePi51Tpu5GZcqTXJPcD
         z4CQTmnZjsEO9CMNPyT9hrCE6UxMJ4tMH54cqKxYOxXExTL/m7mlOhiTpT4Yfy+uM2oQ
         kOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450248; x=1764055048;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e4uXf27pC+4LLf5eBc3TJTYwCnSfAyOM85/RxuPTdDs=;
        b=B4vVHa1HUO9w3lIFCex+OVJa1D0MUbUfOrs2nhKrIwUOD1avCQTaB4/aCzj0G8oea+
         7RePlfZCiXw0+tQcOaHNY+qX92ghs2MdPd+rRF7sJmJdWPgHknCHrGAXgFsGgKYrgyNS
         jTUc46qedqZrQ6Qx7QVBeA9V8PKgL0aKqAAn18NlUPRkiiZan7Ic33kkBVmteIelk9i9
         BmOsxolFhx7iIrW/R8hxBKN/Nn8mvc+0Fo174kqGOrqLLP3mBe+QDOrmJ6bJeu8rCCBA
         QFkODbK48TUyhqXZcIxIpGqHD3cOBKEoSwvFkTm/y9FkKiBu2A1nz18jWn9eKopc7kYb
         lRow==
X-Forwarded-Encrypted: i=1; AJvYcCUZNqvHd7AEAFt+c271XIgaOUB4pathyy2jb7WbbbdlPzEIQGsHMZUC8GJrj0XljlxVre3ucH5npTVu@vger.kernel.org
X-Gm-Message-State: AOJu0YwdZJSA44uyTCeTXv3/3Yx+OwhDCKLbbY9bC0jscsuT2QZNGas5
	QRueaJSEKbJPx3ib9JP40SigMcrkRQTSH1AA6Zpqd5RJ/550ZgRiWcn2M8Yr4s3ZrI5l6s8kSPm
	XO5aLYhquuaHO4NxFZ2VBjrB4oS8F85pkgEx3Ysp5kojjnQemASi1e4PtFACoGXl/
X-Gm-Gg: ASbGncuXNgRpgJSFMnMpzhEUsQSVBBTX7Y8iVVr7raaSGWJbLIDgA5bKcIKEECZLjEM
	Hl38hCvD5ORdmr9ZXFj6pxqU+rVcW8QPY3OfXkV9/JXtg7hg2d/fHaWH4MDUeJyXbGLxWkPSwSD
	IOAGGzZ9nZKXfrU9aB24MRf+EMnU5M+sptoMiZVogz8XT6NceTku8tCAFI+BPFluvyhUC6Gq0ce
	XbF2SQfUXPKZI12sp5bIpMGxiTGcqq73mmJ50b0PgFNsgwzWI91NAmdKjnxs1AyitActoptkN4s
	TfCibUPLvnCHc8qE9cdbsSMSMeNulKsA5TWCx4jkKcoXJIhamhjenXePNaGK6pKh98jDo5jXNbh
	9U2Apu79yqM6bwY3O/25cUXH7MlqIHjmwaA==
X-Received: by 2002:a17:903:1aed:b0:297:d764:9874 with SMTP id d9443c01a7336-2986a6cbe5cmr182018315ad.21.1763450247931;
        Mon, 17 Nov 2025 23:17:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGaOtZnE2/hTYAHZo2o8wpuSAmpDDoFcmssIY2qY5SUjHvOIzGerd35k+ZRtwkElWXoyxN65w==
X-Received: by 2002:a17:903:1aed:b0:297:d764:9874 with SMTP id d9443c01a7336-2986a6cbe5cmr182017985ad.21.1763450247417;
        Mon, 17 Nov 2025 23:17:27 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986a60b116sm129955285ad.79.2025.11.17.23.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:17:27 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 12:47:07 +0530
Subject: [PATCH v4 3/5] clk: qcom: branch: Extend invert logic for branch2
 mem clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-sm8750-videocc-v2-v4-3-049882a70c9f@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=F7Vat6hN c=1 sm=1 tr=0 ts=691c1d88 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=LN2Fm2LJRdSXdv45HSkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: TlCrlL7lM0bN4qXc2yLFMYRNQ-H6fO14
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1NiBTYWx0ZWRfXwP5upaSCzpGM
 8D4QYVDqFjcDb5i1vHA1uuwlQ2Y1i+5xPclwP46soFSIjQ2AGUNfXy14Xj7KBOOBkX3QJyvQe0v
 8BFO6a5Aso3kn6fU6FZPjokfJPOzbKm+KbRp9E3duy60A1NTVeG6U5IpBGY/tsk1nosjYaVL3E5
 0nVDQe8z78EExxdK3MpjoHzr8DxLh/2YExJ2ZTtl5KCto7ipT07EO0tzMAyCPVBTC7fmfPGZWqc
 8kLpbAbO8JqJmvBoilPa/NJD5++rkpVCOOETItzz5jdfPuiIrQL/jg64xef9OcrHx6xUqei8hRa
 pXP3cNByEZr1OWoplf7PXFFMu71X0agH6QyodBG4QkMph5ykpCqtugbGlII6+dDI/qtXk9Sr+9E
 PQtkSmdjZliYL221PLdHHT79vYz5/A==
X-Proofpoint-ORIG-GUID: TlCrlL7lM0bN4qXc2yLFMYRNQ-H6fO14
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180056

Some clock branches require inverted logic for memory gating, where
disabling the memory involves setting a bit and enabling it involves
clearing the same bit. This behavior differs from the standard approach
memory branch clocks ops where enabling typically sets the bit.

The mem_enable_invert to allow conditional handling of these sequences
of the inverted control logic for memory operations required on those
memory clock branches.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-branch.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
index 0f10090d4ae681babbdbbb1b6c68ffe77af7a784..16d85b2fe1d39be2b0c14ea1bfc305c42c685f58 100644
--- a/drivers/clk/qcom/clk-branch.c
+++ b/drivers/clk/qcom/clk-branch.c
@@ -142,8 +142,8 @@ static int clk_branch2_mem_enable(struct clk_hw *hw)
 	u32 val;
 	int ret;
 
-	regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
-			   mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
+	regmap_assign_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
+			mem_br->mem_enable_mask, !mem_br->mem_enable_invert);
 
 	ret = regmap_read_poll_timeout(branch.clkr.regmap, mem_br->mem_ack_reg,
 				       val, val & mem_br->mem_enable_ack_mask, 0, 200);
@@ -159,8 +159,8 @@ static void clk_branch2_mem_disable(struct clk_hw *hw)
 {
 	struct clk_mem_branch *mem_br = to_clk_mem_branch(hw);
 
-	regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable_reg,
-			   mem_br->mem_enable_ack_mask, 0);
+	regmap_assign_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable_reg,
+			mem_br->mem_enable_mask, mem_br->mem_enable_invert);
 
 	return clk_branch2_disable(hw);
 }

-- 
2.34.1


