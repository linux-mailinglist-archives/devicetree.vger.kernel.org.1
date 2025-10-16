Return-Path: <devicetree+bounces-227738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AF9BE4221
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBB2B5E32B8
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BBA3451C4;
	Thu, 16 Oct 2025 15:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CA8PzSRj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7443054C4
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760627301; cv=none; b=W5rt75M3Fork4BzsG/M0W+AnVzwG6KXWkD5fRP63j1z1R1dmFpI8nteex29XlyxxJV0/0TMMIgrmZ4xIqXlH7B2iOY/kpj47DJEZC49ufwMDfhV+xHe5r+ozvQzk1XbEPBLFniB1RbFRFZEict2lesO2ezrOb1KALwjkiDi15p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760627301; c=relaxed/simple;
	bh=G99ZPbE0qrXEWxpI9cnRms8DfqdX68C4eTHKs/UcMD0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aG3gQ8qDD4mLH1bzMivjiL3Pbv+Sdr1ZsF4V0/os1FAqU+N5OkrVWADckOUsz6NmkOFvyVaw8PoPO6r77xHoX1mVg3RZvQFwJFYYheAnjiPb5KHAIYv6UyJwaEDjzMcYCzunn4c/VJ6riHChJIXphaPGT9L3cx3/wXnUunp0eKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CA8PzSRj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G7t2RG002717
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FXyMiKp6Pe+UsoaL5xjvf5aBb6HRAlCgHcOZD/wdeOM=; b=CA8PzSRj4MsKetOp
	iFUrF9KVRsp8LxbZKGn3ZZL5VBCWuTNtrZV5mlGAkOMeQcYDnQXpJew3FjH+fQF8
	FYMKGerxmrMflb9ZnKj7k8gO+basMKX5D04Z/JFXEWJkTKgxrk5kXI3P9U6fktiz
	BMoOqgYkgiKcDIzU3E1tbeCrc8O6+jYCQ5ko4fz2rdQGnt+im4UkTDfIjAjWd7n/
	ybC1e2jaRRbhFitr2xA3vsOc12f3gXRObrkGuBK9IeHiFBuPboM6+6anVyOBwPwd
	CEMkeyVHfYHB+sjfO+nz6DoD7tQY2f7lhRqhNQ1zdZj8QIhNhG2sFN0F3N+Uagmv
	1CMR8w==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd98tyn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:08:18 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-54aa2c8926bso512334e0c.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760627297; x=1761232097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FXyMiKp6Pe+UsoaL5xjvf5aBb6HRAlCgHcOZD/wdeOM=;
        b=ZJvwmtWP4k3UU0cAbTaXPw09Rzkjn4xd7uEhLGPxA1zV7GR0J76Qo835TgRH6Dgq3b
         hS1OBVf4sqcm3eTOzw11q0vXW0JiPWqHntGvKtpwK6ZrnEEUh6eRozvFjQq4JdisL9Fe
         Fgn/EIunCAEUyyRVTPq7XNvuL6zWRRUmtQFFuiK57rHr1WRT4UuVoJwCwWxkAOQlZ17r
         prJlhFBgy3aVQR76SV0Nd6agfkkV2BFOD8UyK9YUTwS67ItG023Be1obbmrr91hUyt4Z
         7CmDJnThlu4SEfPmN+Evqm7nNqsv1I828Y721WRQu6Nosh7yyHyDm/HIkpidU12IHhO2
         ylVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGqYMZWqNLKvsjlxAdZgeKQcaP+H9ZovEvxfCVH9llQaUdNhUYYzYjHGXV2QlIJ9j3vuex5136pAfg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx45GO5AMp5HbO/S/Qobwsv8HEEt1noa91CMAszYjSnTC9WeyLL
	hqLX08Ylxrd+vQXgQMzMcLglf0sOC6swCTSNb3//VSqp9fBcTn7iEY3E7Oa1FwF7VUNI1FDWxUX
	DUn1j4TkCcFwDiO+tTAPprCT4cYwjjrwX0FIoPDoXqXPFGP97seq+2ez9TdheppYL
X-Gm-Gg: ASbGncuerxT8mzmqnUEhIe19hs2m4B8RzuL40R/UbDMbrGQYD8s57K9Pm2JjAd7hBkm
	WDeCkNQ7veY/K9+WP4K/JlXMTyIYRVScK9jjNqKIC9S/93298sn/gRWU2PI2Cp13jrrswHbJBVM
	76WhATisDKLIBS3UxMkV6sWhHxq8jYe/n6k2IY9yhUqMnKZSabERmpSFm0m3+TR0GpLWvHCiHBX
	CHaIiNgGixuL2I57QHWi5tczONF6Bk9xa0QsCujHlb4y7OyGI3MIM5NEjRQiXJcckk5/3AfeRLM
	WZhbbvHy3Tk6byd/hVf9/jRvUCzvkcYpX2vSti8elhpxqdfnKYdghvyGX3V0ydjFxRlga2ZMweF
	7L+miiTPRxfGZq9j2LBYW+8Zy0A==
X-Received: by 2002:a05:6123:2e6:b0:554:b927:dd96 with SMTP id 71dfb90a1353d-5564eca468fmr356743e0c.0.1760627297052;
        Thu, 16 Oct 2025 08:08:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPWieiWFaaKyulx2rok1ilSzb8mCz8kPrQASfSURizbtH1xNaE0Q4mMvEcDFXidP9X2/I5HQ==
X-Received: by 2002:a05:6123:2e6:b0:554:b927:dd96 with SMTP id 71dfb90a1353d-5564eca468fmr356696e0c.0.1760627296637;
        Thu, 16 Oct 2025 08:08:16 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42704141cc3sm1877857f8f.9.2025.10.16.08.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 08:08:16 -0700 (PDT)
Message-ID: <b0d9cec5-1162-476b-8438-8239e1458927@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 16:08:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: sound: qcom,sm8250: add QRB2210 and RB1
 soundcards
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251007-qrb2210-qcm2290-sndcard-v1-0-8222141bca79@linaro.org>
 <20251007-qrb2210-qcm2290-sndcard-v1-1-8222141bca79@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20251007-qrb2210-qcm2290-sndcard-v1-1-8222141bca79@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CG5F1Dg4N9dfTT3Z0sLDDKpTZMA5pFie
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXzwlOymqqbLCx
 kAc6vchPJrT9poQTjRTH/ZmeZyEyGkJoYiAIq//B/OrZtKBww9urkqRVPRkuxYv04x16J1Qd01f
 H2sXZ7WwtxE1hvIv6wy5915/hkkNVUxrjCzlTIKfmOC0SCSjyyb0yRMNLpsOXd67ioy5jXmOfei
 k019HTr8vWe/Y8t0NWRxx6bIbgtOFSEAeF4wavQe7oZ4KRACFqAaVejNHXSQCshNrb5Kbp/IHex
 XjkwX/Tu2s3I9UfC/aYnpxPKxrBwMBlUH8zmtQmqOzDG6YqEsNPwAMCK0lRx0Spdj70FJ4pA6rv
 FSD+yT+BX62KAAp0s5LPycUegg/QwxcfXbhjpidhyZF6snHXxgfyKGR12jd5XmSQco08nuc0HFd
 TNiOYvEH3hU/Myve2c3ly7f0aqO3+w==
X-Proofpoint-GUID: CG5F1Dg4N9dfTT3Z0sLDDKpTZMA5pFie
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68f10a62 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=7YHmJdMxG_e0k3IJONEA:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/7/25 2:26 AM, Alexey Klimov wrote:
> Add soundcard compatible for QRB2210 (QCM2290) platforms.
> While at this, also add QRB2210 RB1 entry which is set to be
> compatible with QRB2210 soundcard.
> 
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> index 8ac91625dce5ccba5c5f31748c36296b12fac1a6..c29e59d0e8043fe2617b969be216525b493458c4 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> @@ -21,6 +21,10 @@ properties:
>                - lenovo,yoga-c630-sndcard
>                - qcom,db845c-sndcard
>            - const: qcom,sdm845-sndcard
> +      - items:
> +          - enum:
> +              - qcom,qrb2210-rb1-sndcard
I don't think you need rb1 specific compatible here, unless there this
is totally different to what the base compatible can provide.

--srini> +          - const: qcom,qrb2210-sndcard
>        - items:
>            - enum:
>                - qcom,sm8550-sndcard
> @@ -37,6 +41,7 @@ properties:
>            - qcom,qcs8275-sndcard
>            - qcom,qcs9075-sndcard
>            - qcom,qcs9100-sndcard
> +          - qcom,qrb2210-sndcard
>            - qcom,qrb4210-rb2-sndcard
>            - qcom,qrb5165-rb5-sndcard
>            - qcom,sc7180-qdsp6-sndcard
> 


