Return-Path: <devicetree+bounces-242026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FBFC85778
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 908183477DC
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F1F326928;
	Tue, 25 Nov 2025 14:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qkqsvkam";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZUfq/hya"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3482432571B
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 14:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764081741; cv=none; b=XETO2pS4qkfIdUMv//52W3hrGLKIQ9Y1ALvtkYMYH/OVg8wRfnFALPvuURGKZzbENsMNQdoX61WLL+1BeDEIe+ow8F8C+v7wT3W9CL+q+3ADXXki7FzJSFP5uVAWXOC4sGO/arq1N39+CujMxkNZvE7bALTA7Rnh3wTxbZPeloY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764081741; c=relaxed/simple;
	bh=Uq5ookugmQ72g8IgWzLDpg171fUGYgm6eIg3r3MJ5UY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YWKwboW/qseXRYoVDbe4Vm05uPySs0jAvlPnAofwK0Z7So1OLyTQ3pdI+7LI08X4mJFEhPdLOFXwNgpmlyDF5vJCKJOv3GuhFpC+CBqkrlNPWXSwbfYv5JkM57WdP/AYPxavJB16d1So/5/y+Mxb8HLMDUPeR3vKEndBXqnkKFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qkqsvkam; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZUfq/hya; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APD7vvd3317496
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 14:42:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QGiwTpNXLbFpjJZpDWsxtZ5m
	7PWHYuQFZ45Lny0LXjc=; b=QkqsvkamoioRLoTPiH+BFPO+NFd4MlTFdH04DBZ0
	ieXoLFG/nmpwbjBLU13avleDcVdB68GGXqqBQDODFySbYIwrXvSwVfNEkYonJxoB
	vY4mdD4QW8r1FlSdZjH74sFAtKeCPQikEVdcqVdkP8s91HTo5XDtkK97BSwWVzb7
	7avs30zshdPDW7aXrBQCXeKv9eVONYgvv2w1SkoqPY1F8qKznEYuAFxGbsdDzIqh
	l+vn/2Lfu33eQ3jSI9mN3MrJQjgNkTfZpTiU1RCVXQ4vDOx4n+6Jwbhug2+Az7Qi
	oBTGUwsxqJCtmtgRA2Xy9xpYazB4c5Yq/SwB0pVQLeLn3g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4and2qg82q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 14:42:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2217a9c60so2108059385a.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 06:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764081738; x=1764686538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QGiwTpNXLbFpjJZpDWsxtZ5m7PWHYuQFZ45Lny0LXjc=;
        b=ZUfq/hya6e4597CGq7GRGxWJDDtP4zuHRA3um35IqXCEnJvFb1tmtxuqGv0QbqaSzT
         O4UoDDOuwMzeEOD2R/E+BNVBgjGa7g2aRi8EFygY2gPwsyj9cPwK+W9gQdvZFYkA0yfY
         NtPRAZ666MRdy5D9+GGp7NOhSGvx2Fuxv1jMLJTfRHFZecGZbY669KdmJ636ixHg1GxO
         MJfNY715HYdioieKzXTubYtAplcR2rbZKIaRI7qxwDcFEC0bQOTd2FBYlE81MjVCxzVf
         zaK6yuypGnDZqt9kpmL4Ghw+0lUS1KRO2zIg+GAfammn3SN9Vcla8PJmqw9uc4M0QvxR
         heyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764081738; x=1764686538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QGiwTpNXLbFpjJZpDWsxtZ5m7PWHYuQFZ45Lny0LXjc=;
        b=v8jQzj2prqkzYy4yYFwST/X9QwKXPgsGdn/3Rap6Ryaqymw1tSbblWeWPd2us8F0jV
         Dj3WefT5m2PeQHCmbLw3a18c1R21cA1Jc7yRJ4Ki/aZWDDV4ZWVUpxwBP9J3mHNkQR+Q
         n8D0h6GiBdI3cs009u9HPHZl7SM5Rt+Y3qjG5ICyeKj6AzkZQZW4+J1rkYTru0ROlfee
         4+U5eP6R9NlG7fi/Sc1pF73kwaIxnlacQfMCjFdSEHQhQ/mkOdf9inkxWiheM099H1Kp
         fO3bN/1FeMFqZOwVuez+T1E5HY5j2M1xdKoDcOODgSEjEguVx4j7dipVxku/4Pbpx5kt
         ZPVw==
X-Forwarded-Encrypted: i=1; AJvYcCWpVY9kJFz67R06hnU+pXPlGhF8vUVK17Q/WSojMCIZiyGZ34UxnwxDKKk6v6+nHjwloGcyluI4abbh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuo1YkQVD/s75UgajSYWcNtyBxgxOLhNIh833sg1bAZnXQ463S
	GNIpQJmE5oy6fiJF3F4VhMKlcohyItuQY/DqmcNxpFKYYh72HDt4qTEGIUEdY/uBaGdO0MuPnG9
	LS3p51I4BlVgo9g0snpSA+kVHwUg3LExARb5G5Ncy/WeemS2CNpv2Q297o6A+phdV
X-Gm-Gg: ASbGnctxdZfpuOGF5u76FOMB8Uq3X/0SJsZeLrVR8wcJ5Lm7xlljV5d88amA+Zrk0Qs
	hbaWHPoy3T41JWaXst1It9LP2zXzpb4k/RASuND0W6RgSSkE5moTP3qAWk9AGTWE9x7PY9fnjHw
	ZS7PUkJPXY/TRUnG7SWluu6YhWrLmHLIp1IwPDvEoTcdzx93YsqnY8WhzNQpp6PhBKiVgpMKT8h
	GNrHXtUJmd51wzhZ9L3fNbqeF27EwuHp9/b+9Itn7WWu7yGfW+x/4ZX9gjhHKJspSFxFAIagR2T
	8phPoSS+R9kj5P1z4Q2xz3syW8/TZjeYi948GXRBRM6aBE4Rv/F/ESbvmCBAvoOUCMWhgxqxetB
	2DQg0x1lN+ILD5lA9MZpXoeO9PUC7IScLF5jv9XVOijDe8UQ3pMIoppWY81l5GLHuei2yO0vrt0
	kVMFrq/UUHiVT/DyZ6wHIyocc=
X-Received: by 2002:a05:620a:3728:b0:85c:bb2:ad9c with SMTP id af79cd13be357-8b33d4773f4mr1898796685a.53.1764081738336;
        Tue, 25 Nov 2025 06:42:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmlMTG7Ip2VPXHNDOOA0wwV0LI0Qd7VntPvkheaXH/P/uFMCXTQC2rYLbRyXf/+XgeIt2wlw==
X-Received: by 2002:a05:620a:3728:b0:85c:bb2:ad9c with SMTP id af79cd13be357-8b33d4773f4mr1898792185a.53.1764081737894;
        Tue, 25 Nov 2025 06:42:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969db756e2sm5214752e87.10.2025.11.25.06.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 06:42:17 -0800 (PST)
Date: Tue, 25 Nov 2025 16:42:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, ath10k@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org, Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH v2 0/3] ath10k: Introduce a devicetree quirk to skip host
 cap QMI requests
Message-ID: <b7gibtoind5srjk6ncybnen3ikdvwnktg4epyzbltg7alipmex@k5zzpbnmzlso>
References: <20251110-skip-host-cam-qmi-req-v2-0-0daf485a987a@ixit.cz>
 <2b34ceae-5e31-4dba-93e5-3fa35754fab6@oss.qualcomm.com>
 <ttka4uevai7tzf4c3r7rgozzpd3hsdhjzf5uyysfzj24ex2o2v@r64z6pvxb6sv>
 <6a3448cf-dd18-4b3d-a8fa-fe282ee779de@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a3448cf-dd18-4b3d-a8fa-fe282ee779de@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDEyMiBTYWx0ZWRfXx89HgcZZ/p1k
 EkmxBVoLM69QxfczfLCM5JfTDTW+dpVZVqrQDydkeeHfdNRKMFcujQOGit7HAuOlVAj8yml791C
 gDSrsM+TtIU/S/DB48R6CkPE2zCaR1qcwFePSURaPNXLBfyUJihUvRgEz5yD0xdp8MD9aWVwdb6
 9v/EAN1G7/urWciNJydWyfZQ81uRKNLOdMqmsGkOiP2W3KrXheFRpg1QKHydL/rlllLGe3oGoBY
 XwcZRBQ0z6gyX5OkIdP+XdgMHrkW+MyLRohpWZoUJ4HNkIfdV3K7AmG7OHfa41fUinwWaWLcmfd
 JIMKoeL2PZ55zzmPRInCabH8V3S2cgHFYpjCgWKIgS2dmU4plZXS7Ok+hjtScFmZzRSmCVIx9Xe
 8apCPiOKdek3an0CMKF5LXjFx9gWFQ==
X-Authority-Analysis: v=2.4 cv=dZyNHHXe c=1 sm=1 tr=0 ts=6925c04b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8 a=pvefKgMU93j4ZQig1qcA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: twMz1KgD2q77_DLBJwfjMiu0pYcBROLS
X-Proofpoint-GUID: twMz1KgD2q77_DLBJwfjMiu0pYcBROLS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250122

On Tue, Nov 25, 2025 at 10:29:23AM +0100, David Heidelberg wrote:
> On 10/11/2025 21:41, Dmitry Baryshkov wrote:
> 
> [...]
> 
> > I think this should go to the firmware-N file. SNOC platforms now allow
> > per-platform firmware description files, so it's possible to describe
> > quirks for the particular firmware file.
> 
> Since the approach to put it into the firmware failed due to early
> initialization, see
> https://lore.kernel.org/linux-wireless/20251111-xiaomi-beryllium-firmware-v1-0-836b9c51ad86@ixit.cz/

Is it required before we load the firmware? If so, it must be clearly
explained in the commit messages. In the end, if it happens before
firmware load, there is little you can do. That was the reason why
qcom,no-msa-ready-indicator was implemented as a DT property.

> 
> I wondering if I should get back on this series?
> 
> Also, meanwhile Paul found another device [1] in need of this quirk.
> 
> David
> 
> [1] https://lore.kernel.org/all/20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org/T/#m90e8087d4388e588b71a0eff01b88f1721f73b73
> 
> > 
> > > 
> > > So I'm personally OK with this suggested approach.
> > > 
> > > /jeff
> > 
> 
> -- 
> David Heidelberg
> 

-- 
With best wishes
Dmitry

