Return-Path: <devicetree+bounces-235382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D589C37A08
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:07:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3781F4E638D
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17EE2342C90;
	Wed,  5 Nov 2025 20:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cPAOTvzg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cPNaRd7U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6908D31D37A
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762373255; cv=none; b=g9Jj0k7bcwDO2gY7zDk74PRRunhGBIs9vfJcK7Acb6TLCTC0Qow7VKqjrHh7K5fXDSK7u+wWDY75XTAQb8hJafts3Ph+FYmTDWYy03l9L8fEzaAH89SCO2GgUQqz+qUL2/JzWbJPgTxcGey76ChEj2IgzVnRbPNWdAQV9DnOo80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762373255; c=relaxed/simple;
	bh=NMfZdwLuKCWDLotomeU5T4Jw2Q4y5hJM9LHYzZIYy4A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DBe16xXgbjoHby0S+MJvQKJhsG5ZjXu7F3Bf7Zgfu8SzJFElDIlnZ5c0P3N10SgDPvMmxuum1Ti1o+OytMWzELon5HGXgOWFvengu9K5tGrMnlqdEGnhXxQ6VWOd9rQu/JNltaDAKPyEHwDNL6Dg72kUxbwRgeqjJ/pXKAic6WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cPAOTvzg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cPNaRd7U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5DdC1L4056237
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 20:07:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UXte70UJlya0FT2yR3CqJtnYujIzRPJsXjE3Ppjs8Lw=; b=cPAOTvzg5lAEd2EF
	lYisfM2Hwy1tX1JH+vr6ceJLB9ASRM2pxNOsGGwt6jlHEPXGNgzM6gELB8YmzOvp
	vVlmnjqT7njvR3/M0WjDMgKrOMMN6U0LsQY1qRFjMkzRMKn08WHbF2aHYQizH3ow
	wOAVNZLeOX0Ntef5K8KV54tPvVoZlEBVCJa5Hra13Bf2vlGhQ1Rbg5ggafuYaq1w
	5EBGAFBTPtGfVZxlOoodMKSzfdNj0gzLUC+QeKCjFGM3eUoTfKCVKChP/FS1Z2y+
	Iu/95+KqTUHXZCsoHH8RKxSErcpYvo/B/YuXw4LnwJmJxX3GJMatuYgCGZjNi9oD
	rKlZvA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7yp62hk8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 20:07:32 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-340c07119bfso930595a91.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762373251; x=1762978051; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UXte70UJlya0FT2yR3CqJtnYujIzRPJsXjE3Ppjs8Lw=;
        b=cPNaRd7U8mMZhEtVQs1vaxZR6/I9b6blIGEHDJ64lH2xQqxJr0YF3dCjACt4ruTTQg
         zhZS1OoP62fWuFZy3AnMhryYHUKwEAALLXWj7Pjo7djuZQq1pUhLTbkrFWk8tRKTqJ6t
         IjkY2JhDHVSa0ny/rQmW0eMc7MxQ+gner/6HR+1aQqnZutSUEJMJRm6WwjDTnPhXl2qX
         yyg/L5f8mjtWM03v7IPFN4rL/xWJLicp8hGHSeG8olO2juhKbTnQHo9sEEWk96hQddnG
         KFPQDe0nQyvq8DitAn/4I6o6dNQvmPT/Bfv7CPI21vZ921H51JtN1kBmxI3yO5VPeMtM
         TJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762373251; x=1762978051;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UXte70UJlya0FT2yR3CqJtnYujIzRPJsXjE3Ppjs8Lw=;
        b=cCy64jrLh7jtcAijkIMMWsVRe5ZCKtZZsSZYw2GnneND/+lWdvUjJnzP56Gzo6f5lK
         /0c44Q52yuteHLaxs/FJ+gZb1RtAVOvOgb9egUSEcyn6naKBGLvZtlwEw+gj8qB63AI2
         FDOVn72K+CrWvHpmdeSOjlk0lb+GktUFBC5c6MzPs3rLHdJ3n6qcE/eur+4mEU0ttf+g
         xjiWkfP2QD3GTZrR98FXaoUyc9sT16YEVOOSn8Y7+quO82OlAPbdsHpYIAI23UrE/tvW
         0Up+kVaC+gZtuaaUSUXUlESeA4KQRadro0peBRgnBKfLDFUNzE4SQhkhbrr18ae4ViGu
         LRag==
X-Gm-Message-State: AOJu0Ywec31xI90WnS5fFSNmsuspAU1oWN0zKeYF3R/znb3JCK/OIo3q
	qd3YfPH7mUPcz7isyaUjj8zbkuk+7AubPGPiUxY1Kbm0Qlr5CysfStAHsZrroOJytynl8mwss3S
	QBixmj6CMqM406vDIAM6Nz3h8+Njw9NR+KvUzaKoMwVrkaMiw+6Fg8u+Hsm3nHzlz
X-Gm-Gg: ASbGnctAaiY430Z6yq9dVhJBmfMN1+bRAyHmQ8RdXPF6jh1Xx+aZXhUwBJxK90y1q7c
	tscFH+LJFhhLra6vqsJRFkL+jA7vqBYVkx3fbo00s19H3j/AZMUYtwegN1AvlSNzFkksg5ExCoD
	JdKZv47lossqUS/U/k6aEO394D4rK+WK3vIuz60dpClSOeyFWI7kmqyvS76qrfATj+gOTE6gdSs
	hudrqkqeobUZrCcaU7JLV9/ycoToIb70odEKWTig4oecNS2iHaAmy/Jd1T2rkUOJM5z+2U1TWqj
	cxmx9WqWUmFn4NWazLnNypkqp9ctwDNCvKzFCKekMIlA6WEO/9IZTHyXATD3h8HZVczGOO5TTT6
	jLSgAFrXHlBiiy2jE/e3sVA==
X-Received: by 2002:a17:90b:5288:b0:340:ec6f:5adb with SMTP id 98e67ed59e1d1-341a6c4188cmr5494445a91.3.1762373251271;
        Wed, 05 Nov 2025 12:07:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2oIiT5cT/KgSMsE2GwnvmyY4tzqt3RdX+bPD3MBkVZw1rSLCCavXhikt/7M6yGLPegG8zwQ==
X-Received: by 2002:a17:90b:5288:b0:340:ec6f:5adb with SMTP id 98e67ed59e1d1-341a6c4188cmr5494413a91.3.1762373250772;
        Wed, 05 Nov 2025 12:07:30 -0800 (PST)
Received: from [10.204.104.20] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3417d1fd921sm3792163a91.4.2025.11.05.12.07.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 12:07:30 -0800 (PST)
Message-ID: <2948af7b-799d-4754-9460-c50f3f49ba8f@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 01:37:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: thermal: tsens: Add QCS8300
 compatible
To: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <20250822042316.1762153-1-quic_gkohli@quicinc.com>
 <20250822042316.1762153-2-quic_gkohli@quicinc.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20250822042316.1762153-2-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gLqakVZq9QL4yYeIfULO9-kTW8fbKgFe
X-Proofpoint-ORIG-GUID: gLqakVZq9QL4yYeIfULO9-kTW8fbKgFe
X-Authority-Analysis: v=2.4 cv=TsrrRTXh c=1 sm=1 tr=0 ts=690bae84 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=8netTnWCcZyjVmEasa4A:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDE1NyBTYWx0ZWRfX2rLGJCS/ifYU
 9PSzdWubgSH63zH1XkNnBARZrjniujKndSUVwVmOpI+GXDUPNGEKSkMNVlJa7qbYHnU6WlhLVwC
 1tTyeYxlERPGc6BmHVb+g954CCvYfcQmQ+0NFoK4qPCu58WQVvLwdTGpQItGjyJeTkDsfiZnstd
 Jl7DVRK5h/OeKrZinVhuCifg2x3m+3QnyrwWZ+dkygcy6qhRYbAjLgetLtMK6GcCK8zcq2fE1uB
 +q0BL03WAuhvixxZLP83ikZ8EjqScYoFeIA7Y0c2QC4ivLvjLKUSVKorz4YdJHrQD7S3K7k7v/R
 5oWTJgdYT+JUnHhzHDtbFXZ+cYzvl+z/a52n/WMlk/lB5j5uVa8/iEZauBR6YKqUrRYlAbDxsgP
 HFleeGf67VHKmrq8gXvyxoc+8YdIRw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_07,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050157

On 8/22/2025 9:53 AM, Gaurav Kohli wrote:
> Add compatibility string for the thermal sensors on QCS8300 platform.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> ---
>  Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index 94311ebd7652..7c1f121fb417 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -54,6 +54,7 @@ properties:
>                - qcom,msm8996-tsens
>                - qcom,msm8998-tsens
>                - qcom,qcm2290-tsens
> +              - qcom,qcs8300-tsens
>                - qcom,sa8255p-tsens
>                - qcom,sa8775p-tsens
>                - qcom,sar2130p-tsens

Looks like this patch is still lying in the mailing list.

Reviewed-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>

-Akhil


