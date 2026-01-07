Return-Path: <devicetree+bounces-252260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA216CFCFB1
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 10:51:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2541C31293B8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 09:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C224421257A;
	Wed,  7 Jan 2026 09:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eWCp5y3Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mx1jWaGX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A087322C67
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 09:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767779019; cv=none; b=Yasu/IFLbh6LwYrUazfa5sVw61gILPkAvd0CaZcFxmYlqpjroD9ydCRFNAaZBLiWCNYfWRnlbhbmmrestAd9IyiIUZ3eovrFbYeW+mYVovsKYHw0LeUef8iypgXctMAh3ixDel6ph25gT2CDULg+M1XvfBxnoJgdS1x9yN1Nims=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767779019; c=relaxed/simple;
	bh=U8poa0KaqrK9BEIbeOyVf6u7T99mbdOjXclQQRLj7ng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f8aVYJMscoMRfmMeq5xVMc2OYe2w7JLN55aCSi0Sb3cJec8uw9EluzwKYlpHmjWKjN3yysMePV98D3S5DJIN9ifCRO90Jdbnu7VJUWkyr/Tp7JxWtNDG9fHgzx+FBs17w6gLQX7TosDPzix35mORuplKcYN6rkO8Vtu9r1aKUMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eWCp5y3Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mx1jWaGX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074mw0I1462508
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 09:43:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zs+wzUVsHrOACRE2ziRvoBtbc7mFezrDRI5e7QURVTc=; b=eWCp5y3QiYa/iNJs
	Xuco9jDBKf78KOPp57OjunFmWI2m2ZSuPAGlwDhEuqL8qo4k+zb4Z5TXkRUOllSa
	BigaLHXPvqnKwMmb2KrJMPT0wWSgsMBCVBCBk436eAuvRCmRNwn4bn40iEE1biE+
	sPyHVfFVTb70fq4LJi7MU9oZBeTVL+ekh+tqLUqRREqijoAgzhOfe345gBXPKMNe
	4j8ucnbwTSYW3GuQDSVi0yumCnICsOMl88TqSJKc26NeVNzmWVAKQy/QHZq64bPw
	FODULmhOgcxzSRwEyTGgxO0t72W7Kv1jkyhhnJJOIRh657hL5kRVTVVH+20iaCu9
	swI8Vg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm3t62-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 09:43:37 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7dd05696910so2038410b3a.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 01:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767779017; x=1768383817; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zs+wzUVsHrOACRE2ziRvoBtbc7mFezrDRI5e7QURVTc=;
        b=Mx1jWaGX1uQpBGPi9il81+s/gRekG8o9XURlng5DJWbU4MQyfC/9/N7HfU6BLaUNp/
         x5ise2AYcd0mhqkmNjGTsda73ULBmK6I+WBCAXAVwonWJbZmvuZ+ri11oCLWUCPuCH1j
         B1sPrgZ/ZKiybDAfyHgPBhATVdDPjHjhj5qXii7S2t2uwawIKYH6NsgagqQkMg9i8NhI
         fTPa628tGIPF5giYCWng+t9qHxmNwdfWHa9fmi+ODRtO9mTna/Qv+H+Ju7dqvvmAKB2T
         pZt7b237C8z7vS6tLu03mSKf0zPngT717zImiVE3FB1B9iIdmSq8OtubIAPF5l87gyfS
         eXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767779017; x=1768383817;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zs+wzUVsHrOACRE2ziRvoBtbc7mFezrDRI5e7QURVTc=;
        b=LmHliiAanTvcdxCcFOAXboMpcBlX/GXpSB5+jyLFA+h55Zz0lC+XPk0epS3/AAHPf1
         NFLNVeGPvIbMJriddhMB5Q5H6S8QIVzrpAsPjFgu1MYO0wx0qAhK2mhzAje3J84pB3tU
         EIBYWf9olyYBsadSQ6PZI7IVnTQtW6GsVrK6+xjyLMy01gEPvj1JhOcpgN4fibSIZEoI
         h4s4TAyLtbWE0BKPJ5vTV9AKsClkB3k7q+URhUOngKQJMUu+X1e3JQ1G0D3onNpjXGIF
         zvhuASU33ofaKEDD/q6VAjvgbXilNs4m4oBCM5eYHyYYfenR59p/3VpGmTjxI5fqeSCf
         iMtA==
X-Forwarded-Encrypted: i=1; AJvYcCWLbM9oaZWowg9zwGCs295tzgBh3yCPSb4RKUw0V1BnGcoMUMUUww7z1vKHbt+CRsNYqsIKTSy9GH+a@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2FSWN/WDkYa2SFWhKWof3ldSgiD55XjqBZED2sfZPmYYRQhrL
	AwmBzfPHSO8uy/j76NEyE9iyDoa0dm+bnbbUdUCoNlbNpOEjh//ZuqdAlUBj9LQap40fYBmpBfV
	Lj70D6AIfRk5f/QInsYsSZCHVPPCNOxDwfCd6NWg3/p3FGlnw8nbmbwdXW+CoaNvI
X-Gm-Gg: AY/fxX7UUBldBv1ifk89nGt1dCcJEUF1U39FNR3WDQqHV6gs5sVKoDGGrGkAk8H1sIv
	iaV5g9yZkD9mKZagpd49rIQyT5J3FYz3VLdUDIzty2TGVIMPhSmi15zvOeP4Sqjc/jg46ezUQja
	3AWdjDaLqK9xaqc/9ueeYZ864e/57PIPeUi0Osll1gMHNoMwqkOdFRkI92OMLk9vxiL6LHLzbIp
	mTpP7g6lwjYgwEvh7L/Toiql6Qn3jHwtZrtB15Uit4CtyYY4kneKPh+1TqpL0MnxmxOa3o5GNKH
	qhW+RjodmgIyTWXaKxYqRJhy5JAHWlnkuGN+7pvC4C77NSoFdbda0ZigC93q7B5yC7+LfrWPzWi
	nqbSiU+D0kwjBi+qJmni/vaF35aTTUo1QPQ==
X-Received: by 2002:a05:6a00:908b:b0:7e8:450c:61b9 with SMTP id d2e1a72fcca58-81b806c99f9mr1789465b3a.41.1767779016694;
        Wed, 07 Jan 2026 01:43:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFOWDHAkqPtCZbyeZOE5BJsu/fKSrpRyXFy9kFumozQWK84Dh8TlS6n/YwBzyrzffHXHc0jGQ==
X-Received: by 2002:a05:6a00:908b:b0:7e8:450c:61b9 with SMTP id d2e1a72fcca58-81b806c99f9mr1789452b3a.41.1767779016235;
        Wed, 07 Jan 2026 01:43:36 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9568sm4472944b3a.15.2026.01.07.01.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 01:43:35 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 07 Jan 2026 15:13:05 +0530
Subject: [PATCH v3 02/11] clk: qcom: clk-alpha-pll: Add support for
 controlling Pongo EKO_T PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-kaanapali-mmcc-v3-v3-2-8e10adc236a8@oss.qualcomm.com>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695e2ac9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rVs2PR1jS8wsPJa1_kIA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: lFGqEBmTXIbcmfYZ9M5rWtGmHZKcy3-i
X-Proofpoint-ORIG-GUID: lFGqEBmTXIbcmfYZ9M5rWtGmHZKcy3-i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA3OCBTYWx0ZWRfX8DppEhaNErEH
 zF3oO11+dxztOcW6fB0hAl+66n43KeS0Hz/xelJ+7jIXSb73dX7xkWrXBrVPdEglc0DVNsWHy8o
 HNYJraETPSDJZZGB3fdhTVhq7a0yCgQlzQ6fLDj+cBO/t2anYSCo4GileEWgsaKUEKSguiZ5xpB
 C7jRIt/9ghr4kKAsLnMFdiLkrKqyflYdpEZoPP6JXhFFmgy+OUsnf9ez5aKZasETB3z6p5Yq01t
 M7TjkH7O9JFbwK/yIpt/i5AoC57QZvY1Vrhxl452StdgBjvaVIQGmodTYWtx6Hrf97APklv8jb8
 yBoG4RJTFXoR+VywHqV7k9DNhxM7ACrba3IPgpBo782N35V/5qKxTOPSpNlCqu2b31dTkXOEuew
 xSJTJ0GkRRUghX5n2UqElskxGGIClkqKVY6hLMvek/gogeXQhHOPgjZ4NgsRn8zLjt+7l0g4Bfd
 Se87GdLldfRQDXqrBWA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070078

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


