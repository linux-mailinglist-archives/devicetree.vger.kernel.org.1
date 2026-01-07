Return-Path: <devicetree+bounces-252321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9E8CFD6F6
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E81E3013394
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8DE32862D;
	Wed,  7 Jan 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OZOLRGdb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d/EZpGTY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1DD328B43
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767785914; cv=none; b=unr096l6ZTMlyP5vDJQ5oq3xzVGHhDw5XSTOj6DZpKCuuc/l04lydJYpelTNyeyOdRpEvZ3IyEkwvfT0J6lnJKGdD1mqYXCI8TtvyC3chFR9r8FwBw704azcZDGxFPA3P+jzODcygk6KIu0UbH5GOde3BMZK+biIm26+aqqn8V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767785914; c=relaxed/simple;
	bh=4zB7b0UM3QAE303z2aGV2y+diJT3NVYpuvJUbKRl2Ng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mtc1sHKGIWUhul9ca59sfB6JX1hWgXb0FLReixG2mKPoXOQChwawtt/PKyRUTH6FVlYvaWFsPXcEEPt65Ceh7nMJkpS9cXzQQAtdneN1tbXUnBaRD7uY25781HA91Jid98fIt2y0WP2imNw/1M0I9UjD+/GSLPPxXjsf9dK+l9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OZOLRGdb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d/EZpGTY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6078oCZG1979780
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 11:38:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cTH/4ZeodwA/Q+RzWHaBeEgt
	NJJIoFwg96ta/DUybCQ=; b=OZOLRGdbF+iM/6nGiViEWp6GUVmJ1jbNqw8BDRKy
	GVRMBFHZbDKcdByXYp9f1Y2L25UOk6U1YXqXadHLdz/z6ORpu9vLR8zZhBkwKGv0
	4mf88z583y1k7VTLxclG4zVIwN5BUB7tSbEziwxi5nFlnVmX310ppbpU9wK2POSi
	FtahubmmKFvcRx9S1MBjShx+9W2JSed33cU1hsKMs47z3+lNhBE7GGcWrqGheKN4
	PKKtVkDbi3ovCo9yDiUukmkP1wbwDW4HA2wnDkfd5sm4jZXr7o+jUqbWSRs3zC07
	7cesJYcAew9cWh60c+O4JnZEsS7p/3MqLFuEyNNFXy3rDA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhdavhw70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:38:30 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee1b7293e7so73354271cf.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767785910; x=1768390710; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cTH/4ZeodwA/Q+RzWHaBeEgtNJJIoFwg96ta/DUybCQ=;
        b=d/EZpGTYQA1AXciiIDf0+Pt+VkUi0wpoXS9+RpPtC/rYW1lGQHELMMtAdRg3kv7Wqg
         IaaDFuR1Wndw9BwyyBcaFgcYAHuIO0Lo2KIIN9Z+Sv3oMuJTTYmGPwvQio/xncMsHdq/
         745arw+L6A1kGIKIr9+hwRvDarT7lX2qhWECsDTja1DCKERxVzn7YBbDiNmFlzbksFlG
         MYr+1ge5iU14LmcE7ri4rYhdoqti/Rh1KsUIyQFAEGj/1FPhbaGu7tRrH6rFfqKdwR9w
         hVhhB8XXd0Usn3BGliBU3qa/URKZEsHDtnJtQF6l1ElTNRNGzHeLUY9AGe2Y42004xSz
         /49A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767785910; x=1768390710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cTH/4ZeodwA/Q+RzWHaBeEgtNJJIoFwg96ta/DUybCQ=;
        b=L29jNGh94KZhbGHWTacoSB7jTU1SPU4xQiUbqS0jQPT4xV9S8RVo+hik6qaoMwEdzt
         Z2KTwLYyK9SB0DQAkDD2IYRI0z+d5T5sL4+zAtvKBFLa6+yGPgUddFwb4wnZvafrfBcQ
         F7q3v4jUT+v4snqKrr/CMxrVIJTNd5WiqSyJQk2O0k71uhALM/l5kqmRsYau0RDmdl4s
         a2vaNdG2escJtjz9L9fly3JlxSY0L/Wv8SWMGfKb7nNGTpUUUnyd1J0MYhLwMmynBnuP
         htLKBChA0dK4Ltqj0a2vFBKXc6WhXGSXndgIn/Ht1F1PWs5y3YOeAnAtUWQ0FlDyMXAY
         ra5w==
X-Forwarded-Encrypted: i=1; AJvYcCWoqM5uEG1zvxCa3kBdOuDf+34gUJH4qeXJe+/mvzcMwhwTHxtgrrf+MM5aA+lysPxW5AMfRH/KG7LD@vger.kernel.org
X-Gm-Message-State: AOJu0YyuWTZ/kRgrQRlbqmO4BueS3pnqJzhkR0Ui1Ai/AcfmbbaEr7p4
	FhUn7JWcECVqwrJ9VExJH7S2483kMpBZZA4fc2+d7qy75WcXA0tZetzb7xJMA3yohqwDIxQOVW/
	j2ga5I9E97BEN6YyN4j2RQ6VtD025F5H+D1kgobK1sRSKoIxqX5Lmm0QlAOUAV3Fo
X-Gm-Gg: AY/fxX51oo5oP2flxioGGR8BmuppobenI1jcioJwaVcsH4SmSxiwicuOwWu+BPcdiNH
	XU6dE9xeFSMvkjHFPo9FGZZtol2zO/TEd/NJ3/FIG/NhPSzdLZVZicMou0yRTkdzbuxa4z/P90P
	8OEnrYbB0T1fY0wRO31+8CRxeZUAVkmtllv0epbrL9Akwfy9LD2O2OFhuiQvziTGF0WnSeqI0w4
	7rQqGv2YLO56EDRMlzT7zlb+YrbIfQx3fmLghZlfzgWb6l8iaHa8jHMZaoft8mUP491HHjnaev2
	yg/dHr8F2suEeuPsRg26kxvYSkrl0mvWPZ8cMiQJacqBZKijz1PfuRmH6dfKZYR7H2L41Qj6Kr2
	CBGJtB4606BnUHEL3cAZFKUM/jV9LC4DNLc7oyd3up17haP5jnq/JkyMiinfu1Jr01wkdbxyexo
	iDevSH8TdyvMdvx1+dED1xBmQ=
X-Received: by 2002:a05:622a:20e:b0:4f4:e15e:528f with SMTP id d75a77b69052e-4ffb49c7d3emr28885851cf.62.1767785910439;
        Wed, 07 Jan 2026 03:38:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfaBxfXO0EARRWs+zjZ9c7H9zOXqTKVd04HB62R5Cos9qRCEQe2HmgxwEezgO5LrfADT4Gyg==
X-Received: by 2002:a05:622a:20e:b0:4f4:e15e:528f with SMTP id d75a77b69052e-4ffb49c7d3emr28885451cf.62.1767785910039;
        Wed, 07 Jan 2026 03:38:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65b89842sm1242653e87.0.2026.01.07.03.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 03:38:29 -0800 (PST)
Date: Wed, 7 Jan 2026 13:38:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 02/11] clk: qcom: clk-alpha-pll: Add support for
 controlling Pongo EKO_T PLL
Message-ID: <7lbw6rrrsxitcldgahf2wwqklzy3nvcmem7aylsw5yvbsbom2b@lgel7iicehrf>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
 <20260107-kaanapali-mmcc-v3-v3-2-8e10adc236a8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-2-8e10adc236a8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5MiBTYWx0ZWRfXyQzq2mVE85dq
 L6rAUQg5DGbZpbiNXkgNIDEpMcHHA4mnQpHT8S9ywTO2G7x2RXTx0WE+Gu3NhK0Z3weFHqwOGEV
 EiLMPDLgeuJENTAwbxxnKvn1sX4mvXTmZSBLisNKLZdAOyvmj5Np+37lVocYQ/xuiUPGKJnFLNx
 jyAiH9wb5PyPBQr5KiEJLypRBsR3EyaD2gZv5kvB4vJdcIzFRwJhsbGtwLiVI6stCS+1/cjDqKS
 8RyBITTI8ilvgzH4vPgSCyUmp1DOQJrmrw+08+pS6uuot6hZjcB7DZbTNX2ADGgS3KLwUpPgH0M
 eEMNLNF55wAJa2H9KXdZTbUvKluUMBo2ODBXMUK+fy3EIcKRgud2UaXIch94Ls1nyfYrViuL9R1
 z+m/7Lqfr95UAxkF5NuKUoZ+r1njPv+iwpA9itKxiuiRTNy1JK/2EBaraw6GomqTSAsH2Te3iNl
 tJRZUWOXIAvt4UHJMwA==
X-Proofpoint-ORIG-GUID: l2DOYQ_Adw8PqoAJjJ1oSwgqoZdZP_C5
X-Authority-Analysis: v=2.4 cv=comWUl4i c=1 sm=1 tr=0 ts=695e45b6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Rar_LHnIVK7gKg-YXgkA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: l2DOYQ_Adw8PqoAJjJ1oSwgqoZdZP_C5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070092

On Wed, Jan 07, 2026 at 03:13:05PM +0530, Taniya Das wrote:
> Add clock ops for Pongo EKO_T PLL, add the pll ops for supporting

Nit: PLL

> the PLL.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

