Return-Path: <devicetree+bounces-233172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A67E7C1FBD6
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:13:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C1A51A26B5E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEC8A3557F3;
	Thu, 30 Oct 2025 11:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oetmv4SE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UOCl5t12"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287CD3557E2
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822585; cv=none; b=G4r0yxIpdjJ+FcIjy5GTLvkybVpG7SU0FWWiDDhLMpLpl5raB5uIksOaYcq0Wz4bwWfqsMtWELIEPKdUA7IEgSAiDsQkL2Rwy/elvP1fBCImZPC8fg2iEsOYWlgCbf8SxhcvU701QYwqI9UydntqMUGh9LlYx7E3YFRuH4b5Rfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822585; c=relaxed/simple;
	bh=sIVIbq8czOIkzw9bYkb2A3almPPM6iC51MfR+uV4wx8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D6VMP5sWNE+J9n0725hugaGKiFtNgK36b54kniJyDocjjWpq+d9O9hbMFZxpWr5swz9Cutxtl41BmBxbnxtBDgaCNs0QRo7/YgZLeuTuVXViMUAxvCC6v1u16u7D/kOvSFz2yCClC8GNIdGjLEJbV868h1T8w5buv8ws+b6gTlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oetmv4SE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UOCl5t12; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UB8aou3808761
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7mirFkPygeIN8JZufnUR1dGGhkj3iIudgxgtbmCSigM=; b=oetmv4SENmNFjea/
	cVo3s0bzVdgnWX44QDbImZe5+E5nDRW8Zx61uGrhxfGCSwWkBFViTgfyNsb8UE6m
	UbJZJ6MYiDlPxmmS/fD/gaIrWG73VgmbwiVKIChBKeN8DsGWmA1WQ/n5DZbTmkjx
	lU83dulX3GC4FwrDzGObqC1SNEMTS8Yw3Ueh3T3DLS1/yyAyVaSzVHvq84e31r/4
	CbMKpBQMHZyo6R5ez7/AtDBzgGMn5lO5CtHnbAQttweB6JaJAuduuqZQrlw4OZYy
	ca8zfGPxPJmzhx0zFPdXDl8+loLaUQiLVMTa0ffM+sjxyLInWwYJiDKq2ILT+HOu
	ndgmXw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a46vv803u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:43 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-290cd61855eso9262695ad.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822583; x=1762427383; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7mirFkPygeIN8JZufnUR1dGGhkj3iIudgxgtbmCSigM=;
        b=UOCl5t12tJhEzXPN//eBum8joYj4Ehkhb4txCb0CudmTig4ywl4h2AM/Rvpz2b9/Cw
         +3fPIlmqfZMli9gr9NotnrP4A2R7HijtakXCG1D7/FJtrdgDDvD8El9WaWw8jr202WJr
         iyOj6UrDhubSdpCHrSd5SOs7n2QuaO00zzlggd8b7VHzeARBA3MLo1W3kNz2ik54iAxo
         2xvRk7IuwxsNV5IB9PTjwZuhIqRKfpULcP1V6d0A3z/EYhiNYqee5kMOnnpnapBi/y1c
         xJz0B8O63n9WPb4WqdFxZWJEDtnH6eRcyKJmkgjYQij0+FoPOOparCPBH/guOJMsHcRz
         A/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822583; x=1762427383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7mirFkPygeIN8JZufnUR1dGGhkj3iIudgxgtbmCSigM=;
        b=ZO/+nV4PY3KX48YVOM7errqI7xOm1fNuyzGu2jIOvM5hlzJlg3syQp/fXW9f9AU3j7
         +6s68I37xtTYcYVtBQiELRZncnnVEtUIEFriJCn4+IkfbCss5f5Swi2gYjAt/FQOhA3i
         R5qVSRM9g2yPQDynHsf9VuvtHSY/H3mV5wM+2sh8juJ/YhsU/iS7/3aAe0uFRwoS4vrh
         9WhsfcijgCE+3xNyQ3KBiRh+gHtcC5QlTmveFdYRILhN/ai362A4/ohkNcden2gcKgH+
         TytHm1PjDfwF5abj+5dcf7UyaGSvZpL5cz18aF+u6gvlq5woLk0fvuCDp1a8NNpsjzqC
         3rIg==
X-Forwarded-Encrypted: i=1; AJvYcCXQ17Qqvq3uSlz3zzu24w6UQLjzfqQ32KR6mDv5flOO1MOz4NBBj0wE4oqc3X0ITBuJw2yM1wCvZckw@vger.kernel.org
X-Gm-Message-State: AOJu0YyDUOSB3JsYaFi1Agdsik2uGi6Ywn4Su/XqyKDnYX9fzN/66PFS
	pVqBxRnAed33MoBRSTON+2uBOBIKkSD8QGNexFpgNMMIKX8OE/oAM1WfVDfHvGOEtLRHEQ1Wrgg
	1W5LrxRN7oqyTMP8fuXva6uko2NkF7qBzwGqPxUdH+DK5jCKUDuJo5aQX3iEMr37T
X-Gm-Gg: ASbGncuT0HqGH/34jOLgfvXGo32384B3FOISJSuim4GvMk3lszI61TukSA5Wuqul1Ht
	N1FBu4P2OP1+vJIVlcekUj955EL1H+IkdyZFniXuurzSq0NDF5Gll7Nh5WVEuWqRJyvprbl3afN
	fEGuV3M3eEIbOpDlv4+o4J05NVv22R/sOlrhTDVGidSNZ/pO86Wpy6V1qoODkyhgyPX2f07/XbF
	pUl/0efUGXhMpMGOB1h/dkbpFBUVp3FW1e8JqcMI6uhmIo/NKemB6QksuaenY6vQdKG7VKip9OF
	jhGFhO0rp4hbfH+ZL6r2rAn7sEnsGPXZmZ44aK2VoCkA2R97/nnvQdYkYkNvAoEWluPaFjBsyBD
	5sZdl4SwNpIbvQUW2zPhbczE=
X-Received: by 2002:a17:903:22ce:b0:290:a3b9:d4c6 with SMTP id d9443c01a7336-294deebbd15mr97770395ad.36.1761822582499;
        Thu, 30 Oct 2025 04:09:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG99iD9Ufkeeex/L2YaDr5szoHa3EyDBbap0FH1uhJqjPSY1iaP8jBt/oVhhNU8p2p9da5Jw==
X-Received: by 2002:a17:903:22ce:b0:290:a3b9:d4c6 with SMTP id d9443c01a7336-294deebbd15mr97769875ad.36.1761822581969;
        Thu, 30 Oct 2025 04:09:41 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-340509727fesm2262839a91.4.2025.10.30.04.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 04:09:41 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 16:39:04 +0530
Subject: [PATCH v2 1/6] dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for
 Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-gcc_kaanapali-v2-v2-1-a774a587af6f@oss.qualcomm.com>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
In-Reply-To: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com
Cc: aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: jGcQFpHGhQVZnp6UGFu0MsvlLWblTeRc
X-Authority-Analysis: v=2.4 cv=dK6rWeZb c=1 sm=1 tr=0 ts=69034777 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=1qsiTTBwNum--65e5p0A:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: jGcQFpHGhQVZnp6UGFu0MsvlLWblTeRc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX9G6y09LtkuRw
 E55F0Tl+od2noWJd+AZFwZqbizkmzhiK7kGwZKVyaVsYvT3naEJkM3R/8FUJbOL59dZnxy0PvFa
 klhe7f9C1u4u8ZZd3brT4Z9VvJqEbSZGaUoW+1huBelgag273aJE475dZEYDsaVlnr6q9MFyHKR
 w1OlfQOuuEuVj5LWwJR85naa3uRniK00sr0tGPU5tZVWrAeQHkRywFPkYAlp381QnE0gt6lcQH9
 EU91Vzk5g/YkjFWml2MnEY3tKWtl6yuXQjHmVQMLpjACuNQdCi4aXsCc5uqoHV9ZYPSjEgMPcA6
 87/06htJ5YMXHgNMFtqPJKtEUdBDhyiusa6VKK02CbnbUYMfTyHCO1mo4iIOklt77X0fEEfp9Le
 XYgbqb3TMC7WhcJTiyWqxCnAzG6wbw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300090

Update the documentation for RPMH clock controller for Kaanapali SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 78fa0572668578c17474e84250fed18b48b93b68..3f5f1336262ee60bb29c2fcea4a9212ccf7920f4 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,glymur-rpmh-clk
+      - qcom,kaanapali-rpmh-clk
       - qcom,milos-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk

-- 
2.34.1


