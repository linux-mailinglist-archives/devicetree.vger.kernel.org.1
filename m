Return-Path: <devicetree+bounces-224139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AE9BC0FED
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 12:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2B51A34D9A4
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 10:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E14C82D7DEB;
	Tue,  7 Oct 2025 10:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O+ycNSwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6672C2AD2F
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 10:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759832469; cv=none; b=FLyIqxlDgV5KVgfojDojZHSCRrd7Q6YsPniSgyUUoZu6smBh8K/fTTLpL/LdAXzre/JmVPkcvqDenOaiyN3tGMaBGzPfOHmIu3OKl2gYp4aNGuVLLms9C+vB4LYx2IUCveowOO9RVhvoRhxIw9zpEQaoegANl8ayvZA/HA6KygY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759832469; c=relaxed/simple;
	bh=KlWcesGR1Y3SWb2Pf+LplrfVxqm952BRg+WXsE+1NQs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EXse7JKWI6arx2liHNxrYcbTBodDysfjLGkqxgL3YyR6af/v37QI+ypsAdRXugyNqp/NDzR06+r8L2tHtRZh/m8X5D/yBV2pduSYju5jI8Tt8xHs22ucjZoUWT0tvyjTl0RHxGqH19MR7WmiiGUCsOQp+Zs3wE+OAqKEgpoitcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O+ycNSwX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5972qH5i001346
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 10:21:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tIo3KVM+K+vyiDHJB/HcD4sh2FPBitsVu91g7TQ4ScY=; b=O+ycNSwX3MX0aqxl
	Dkk4gPB5u1MUP0WEYGqTFzZZJtfONNuB46zqc84Q06K4BJW5Act4A3HfY6cyXuFf
	P+GbZ9/TWBJmuIj9IEAAODyXSyswR78fcRhMo2Q5idReHwFP7eUXsL9IFBe9+UL5
	Hq4KZhMkyLmfNbyBPbj9WsU+pLUXzAod/DtugcNqm4Ik8s3bWtr12n+Iin2w8vXI
	fLWD3sKuqmrLGDxXyskJvMbDcNyb31USMMwkk3imLOaWxowwfNpqJqiuGnxhH5VW
	fLe02yE7ffaTyfLNCi9LfPKLuh0MzVZTTxXX6ufpIX8Xbas3a0uyMlFrHzPU3Yh4
	SmPbBQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1pu5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 10:21:07 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-826b30ed087so16036536d6.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 03:21:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759832466; x=1760437266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tIo3KVM+K+vyiDHJB/HcD4sh2FPBitsVu91g7TQ4ScY=;
        b=JNBD2kDVyqRGHEtRba/wKtQXbBW8Rinb2ZmUwBn9BUZyA/EY3VmKHqf1oSc7u/o4/t
         BOjM6FnVm3PFRm7VfKLmejCLWwu6cM0eX+buUL4OGN3rvF4JzkuZ2SfsZBI7nBksSVSE
         GKeFvxVFM5zVdBezOkGyapKFYIfvfQAajhI6l4P29ZLkQ0aAsGYc0IRdT9ckeOhd0rbR
         ppl+WeNwuzBloz0SEr7w2LHnZ7Tml+UmtI10qogJyrZJdj1WNppvEeoJ2YVIG84rTEbd
         hGW/hKNM4qY0jmTFOH/oY3CbTfX7WeDJ0IIFt13FojBl2UgjyKkuXUrSL3GKS4WFiF+s
         SloQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQpXmd6ULWD+IKs789oKexBWaiOQKSdzmjKqAqsCko2qxgpxLkPFFI9bHL7biyULcixmLOCYgOJfr2@vger.kernel.org
X-Gm-Message-State: AOJu0Yyow5PL0mmR7AJYSUpa6gd3m1YJgSY5GfGUIcXwOo1kLIORQtaz
	CdGdH+EE9/NkSAxCB7T6pZO9hFVcS/8hAllDSol4KfhTrKypq8czeOxnOtXJuleDKsYxx7Y1Yzh
	XeYqKQ4NeCezik3pMGE2774rnePH6Jt4ofIJ/VoTvC7CrDuXmWahqZs+DF5TJ/GnYtnin3gom
X-Gm-Gg: ASbGncs4qchJQChs9g2LHzkKSw7pAn9CB5MTe3lSiWFplPCcCfpx/4uf6/PMn0DZjtx
	Rz60ebcKZHd7Mu+raGcjSRs2vidwBZyjqEUwwdeZN+zHm6tI5JBWfeZ9PhXKm+HxGNjMvnOg2fO
	cumB6tOfAknAltkAPMEF6eSaDe8jmo7K6pqUV8t2qfRg4IrUtTQQn7BNu7rlnLZsYYIBLJDkl+X
	CJPm1noW8F5vwtDBOgHueAs06iEcEBo3ZK5fM4M0ywgganU4Vw/EewJPIm4UAYJTwFhqPYMW9Qr
	hZ5WL3Wr5HHpBEczIg2XbQ0tX62MMNqGPxU6ctJidWUfE+kbXwBRFLUt9thpefnh2Yjb1M+rjPY
	3/xQlld9ieVAYDQmu9nTFhKs3pVA=
X-Received: by 2002:a05:6214:486:b0:815:2731:3f4c with SMTP id 6a1803df08f44-879dc869283mr128952196d6.3.1759832466054;
        Tue, 07 Oct 2025 03:21:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHY3578mf169SfhBSI1JAa+gLNy0tM6jidBQPfZwdM2VQXBIOCyg9olplyRBFv973g54ofICw==
X-Received: by 2002:a05:6214:486:b0:815:2731:3f4c with SMTP id 6a1803df08f44-879dc869283mr128951866d6.3.1759832465465;
        Tue, 07 Oct 2025 03:21:05 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6394bec298csm9271021a12.44.2025.10.07.03.21.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 03:21:04 -0700 (PDT)
Message-ID: <6d9af57f-9174-405b-9131-145fd6d63a5f@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 12:21:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/6] ASoC: dt-bindings: qcom,sm8250: Add clocks
 properties for I2S
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org>
 <20251006-topic-sm8x50-next-hdk-i2s-v1-2-184b15a87e0a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251006-topic-sm8x50-next-hdk-i2s-v1-2-184b15a87e0a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KBRxYFknvfnZnweTCw9Y_tm-S6ew798A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfX+tcwWSetIepC
 KGsK1PjvIrnQNc/hN242TpSlhFzhxw/eBm/tUgPkqd9LRc4Rql4prZNwfPChwcvs2zq6bObtmTR
 pqaioP5GLdg2BErGqCOcUQZUMtimQBzST5Z6hl8IBT3RUkYY0fkl3r0nNpiOSRwQP7IZewXvXTu
 o/8yoBX2Lr2ykvHswpJk01v40DAbvly+2GAxNscJCS1sKDp9+Lwf+Htn09O50IXajgOxmLUlNuO
 xu5kcS1DTRzrhuTrFpRt46v+0PsuCY6fn3B0l3lOHfropMyitx/jC3qfvQDj1chMrK2bTW1YYeH
 28V1tv3LA+K7Q8wGZuf0Gg1MbKb7LfTtjcPXXRVRDM71JWEtegs9wBiy+dUt4vKw3F1GkrkDWoP
 PDOImaNYGtgPS8RY+C4V5nIyrAl8Ag==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e4e993 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=MuNeFZabic1NT7NxDHkA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: KBRxYFknvfnZnweTCw9Y_tm-S6ew798A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

On 10/6/25 8:37 PM, Neil Armstrong wrote:
> In order to describe the block and master clock of each I2S bus, add
> the first 5 I2S busses clock entries.
> 
> The names (primary, secondary, tertiarty, quaternary, quinary) uses
> the LPASS clock naming which were used for a long time on Qualcomm
> LPASS firmware interfaces.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

There's also a senary (6th) I2S bus instance, which there is no reason
not to describe

>  .../devicetree/bindings/sound/qcom,sm8250.yaml         | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> index 8ac91625dce5ccba5c5f31748c36296b12fac1a6..fd0d7a7ddc7b363a66e1e7bd72c7290666efb511 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> @@ -64,6 +64,24 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/string
>      description: User visible long sound card name
>  
> +  clocks:
> +    minItems: 2
> +    maxItems: 10
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: primary-mi2s    # Primary I2S Bit Clock
> +      - const: primary-mclk    # Primary I2S Master Clock
> +      - const: secondary-mi2s  # Secondary I2S Bit Clock
> +      - const: secondary-mclk  # Secondary I2S Master Clock
> +      - const: tertiary-mi2s   # Tertiary I2S Bit Clock
> +      - const: tertiary-mclk   # Tertiary I2S Master Clock
> +      - const: quaternary-mi2s # Quaternary I2S Bit Clock
> +      - const: quaternary-mclk # Quaternary I2S Master Clock
> +      - const: quinary-mi2s    # Quinary I2S Bit Clock
> +      - const: quinary-mclk    # Quinary I2S Master Clock

I think a single top-level comment saying "mclk" is the master
clock and the other one is a bit clock would suffice

Konrad

