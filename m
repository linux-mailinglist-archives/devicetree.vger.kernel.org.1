Return-Path: <devicetree+bounces-242100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D73AC864A4
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 18:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ED73C34B1CD
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B817A32ABC8;
	Tue, 25 Nov 2025 17:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OmejZUaH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WKbuYAIr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F126F32C301
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764092746; cv=none; b=m5OMAKSZ5Yxbx0rCvF92zNgOo6syqNbwRgONCCamtqHuTk5fk6zeqcEa5/yN3pYiGc1iqlm/45aJotTX1a5MvJyTHJ8IXAHa2bxK1VHQAx5zwQbbqdvRwo+hwdz1U8mIrzhm+UDXA3tMCn9M6PJEwFOht5X9eyd3GgOGj3QzCNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764092746; c=relaxed/simple;
	bh=U8poa0KaqrK9BEIbeOyVf6u7T99mbdOjXclQQRLj7ng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gJM1v61O1JOGl0ALr1TZ5FONlzRTa1qXtSbDkbsQdsJj7hvtHlzWVmtoA4iaBs1DyioxZS3kzdDYs86vUTcNrsXLMBveTJWisdw7tt2I9lGsEkUOAjSnR4MQQXNVUhMnvRnHStPWHlfahT0+zNS2QB9S3r5r7PudSaS8RDS7HyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OmejZUaH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WKbuYAIr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP9xI1E2650825
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:45:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zs+wzUVsHrOACRE2ziRvoBtbc7mFezrDRI5e7QURVTc=; b=OmejZUaHSIegwbWP
	nYdDKnAN04CA26fyMpoDRm7bJr173/6TLRyaxlqh/LnBBE5MyYruowlXN2Cr8NXx
	6osWJAYb/UO7W7AHKOnEQrqjW+q5KYH2Gtyr05JqHckHhKxgnL+0CDpzgfGIOTID
	4WmrMrpECw5a0cIlDI8l7zNdqjzhmpWdfzDulpr3oju1OFw8agWBfSXxTUO1k/vt
	ADCd+b6OVehes1/cAPd7pFPT24iBtXn+HBLeEL3GisM/4Uth3Vb5buc+VeURhikg
	8CC50KF6SNHKW5yvE42yPoMqW906F7VvDgbvzT9RmQWjM3MaI45e9P6Sm0vecoHV
	oGSvgQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anaabscb9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:45:43 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297df52c960so147718505ad.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764092742; x=1764697542; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zs+wzUVsHrOACRE2ziRvoBtbc7mFezrDRI5e7QURVTc=;
        b=WKbuYAIrUialgHm4Oa2xoWQQCLq6yqdaQNvZ9bMTGUWG0xzWfm4EMRLplTPsvCtjXs
         pOeR9t2bKey6zR/c2z3oA6wuuvYJ64ehiW43hBscH+i8W620DZTssNQEuTkxoG9g1vOb
         zeIhuR1ah/ua88j/6QkiP1bdhfTPMB3+AKhtZSaZ5FYfwY3pwjxCxbFdH/XLKUuGPzd9
         RRwerpT2KadzUcRDQydgXajesFOszURbOgctLj7TFzwr5a9fVg8lLNJlhqnCORSgQKBe
         fhEaaDva0rbYlq94RvCsaJS/3twbli3gkM3YzneHwX4/DnZU17oyLnARmyE4MhjxyXj2
         fgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764092742; x=1764697542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zs+wzUVsHrOACRE2ziRvoBtbc7mFezrDRI5e7QURVTc=;
        b=QmLEyYCuruqPF5LwItSp5EfW7C3RcXKkjgZdFnZB2mp5mXjKOMlYyPknjNdIP63lQ9
         1Z0tVuo6YiFRGFS2xj4gcqwfdWzhjPF3odtAM7kDfdiPBjPhxuFYm33sNWhUamDqXqKm
         9UDY/LqYxGUpHtRqdxABwbrAQTfLG7Z7hsADmLrEKAHquarHUqjd3T3DlwMqIY5ZE/Fz
         8n70mV6jFj7Pc3Eo3TTOqNlJGLgWll7KF5Awk2gg3cHn+fgLq5uLkUkz9jrmkvpFWFhy
         UaRK0X5iPXXB0/YqYBoCovB3Ehuy4xJjpQ4odw/48dd9puzkVRVScy323W8H6YiOMFJN
         ZlcA==
X-Forwarded-Encrypted: i=1; AJvYcCXqkiYS8mIMY/Q3eWDj6iAT8tq8UWJRH2VFfa1W7ghCL44Nckkc1irYbftuodFJ9pGNZrw5yaLJUyDX@vger.kernel.org
X-Gm-Message-State: AOJu0YzwSuaA6Ylfx3sdIhnj3bJu4w/iBOoXPGvq8CikO36TFGoURw7H
	VRe6obL4LJdPS8maSVGETVgD/08fzwD2p5wSlon6mtsAQTlcImIqKZgbiHnARUCQ1yIa0Czpmaq
	eVo4CtjqhjHxQBA6f5eDK8DKNPvIc9kkfeLidjnUfQ+J4cFdb+h9/dYMxd9x7fYUD
X-Gm-Gg: ASbGncvOM/rEJz1DUrccPGzMHDlkC0yVusHhGKBkbZZT8DRCvagA6WunAk9LzCWiQLM
	gRkg+gtPLw87o0QNEigMj9g7X3XZgS6zV8n8sP1Ctii/DzMzf8fWQ65Ey/49ZvYN1nYYt36oOwu
	PJJAfwELVE0xLOSQzZDG/pybajMtrLoP7HCHocWWQ8KIX3a2TUM7W5fdxZZtu1VwD1J/vXrUSXG
	/cAuW/XNJlPuTTxEjxxyOdFubXRuK79TcdPKdYjIHHgz2n64drwQ4As0yC75B3c0GbyCkCF63jg
	R3yD2vM8hcU+ZOMz6B7FYFyLB4TAUjruOHdj8o+0/qIUwq9Xw2lmSzyAgriqgL0i6ginT5RgozJ
	55Npdb/zeiL3lyKCDoUBM5w9TUwW8m4810A==
X-Received: by 2002:a17:902:ef0f:b0:295:745a:8016 with SMTP id d9443c01a7336-29b6be8c765mr182969095ad.11.1764092742600;
        Tue, 25 Nov 2025 09:45:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWkvU7FtwVCjG3746418hQFphvRV7z9bBpLk0ElI56NuQn8FoZbZcci0AL6j/gHuF7bZXtmQ==
X-Received: by 2002:a17:902:ef0f:b0:295:745a:8016 with SMTP id d9443c01a7336-29b6be8c765mr182968755ad.11.1764092742112;
        Tue, 25 Nov 2025 09:45:42 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13964dsm174500785ad.38.2025.11.25.09.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 09:45:41 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 23:15:11 +0530
Subject: [PATCH v2 02/11] clk: qcom: clk-alpha-pll: Add support for
 controlling Pongo EKO_T PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-kaanapali-mmcc-v2-v2-2-fb44e78f300b@oss.qualcomm.com>
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
In-Reply-To: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=Vd36/Vp9 c=1 sm=1 tr=0 ts=6925eb47 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rVs2PR1jS8wsPJa1_kIA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: Gh3uoh67MpsTPDKv13nrrxI7AyhnMtho
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDE0OCBTYWx0ZWRfX8EP8e5r1olFH
 t1pfUQXXDhX2yll752Ed6ayR+Z88UVyqvEXX3y3SJ5YKkJTbR9bxIngjhD7MoeCodJGVGfHWEiQ
 sVQrsEo7PLsBfi5AvaJ//yr8pRvrzcHUMb4tEkiPjSqGkFOtNPAbPt9i1UB9FcRXNJfTF34zaC3
 cORxEuHoYr9TFM3z7CPH7o1l8Sn59N7Jo+9iXrJyiBMImSWSi102wRCOVc/nSsonmujmeWZJSda
 z4jSgUbhGadv9BSrw4IajGb9H+HVMhFyh+XIEi1bZ9AeyyjWJrDOKI3r1DFUfFa8xzUqtS49BC8
 vszwu16s+F0N+XyeTo1jvEA93h7P4ykJLNaf0mqy0WP0NaEk7xu9T9xSz5nzc28Q13QaI53ws7f
 EPdrq8UsxR1KdMklSSHLFWFpiHtWOQ==
X-Proofpoint-GUID: Gh3uoh67MpsTPDKv13nrrxI7AyhnMtho
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 suspectscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250148

Add clock ops for Pongo EKO_T PLL, add the pll ops for supporting
the PLL.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-alpha-pll.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index ec5b4e4810300fa787420356bb073c24bb05da62..fc55a42fac2ffe589ba270010eb47c0816832ca7 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -28,6 +28,7 @@ enum {
 	CLK_ALPHA_PLL_TYPE_LUCID_EVO,
 	CLK_ALPHA_PLL_TYPE_LUCID_OLE,
 	CLK_ALPHA_PLL_TYPE_PONGO_ELU,
+	CLK_ALPHA_PLL_TYPE_PONGO_EKO_T = CLK_ALPHA_PLL_TYPE_PONGO_ELU,
 	CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
 	CLK_ALPHA_PLL_TYPE_TAYCAN_EKO_T = CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
 	CLK_ALPHA_PLL_TYPE_RIVIAN_EVO,
@@ -207,6 +208,7 @@ extern const struct clk_ops clk_alpha_pll_postdiv_lucid_evo_ops;
 #define clk_alpha_pll_postdiv_taycan_eko_t_ops clk_alpha_pll_postdiv_lucid_evo_ops
 
 extern const struct clk_ops clk_alpha_pll_pongo_elu_ops;
+#define clk_alpha_pll_pongo_eko_t_ops clk_alpha_pll_pongo_elu_ops
 extern const struct clk_ops clk_alpha_pll_rivian_evo_ops;
 #define clk_alpha_pll_postdiv_rivian_evo_ops clk_alpha_pll_postdiv_fabia_ops
 

-- 
2.34.1


