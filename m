Return-Path: <devicetree+bounces-222940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B170BAF9F7
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38309168831
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4EEE281531;
	Wed,  1 Oct 2025 08:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lPY2n258"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690FE27B35B
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307385; cv=none; b=s8+ch8NN9m0ZH4ccltg0plcRLRECaW6fiaDn4ULQ/2WiZXl8k7EbhoNuuQDAtv8Jf21ztjiAxpw/d9U7QPJ3zsWIE965J6YuX+dGMTXwwwi0Nj/2hFrh52xC5x45pDGXozWQZBx1Wf8fNhoojFX2uJ+k1r0DSh+iRZDawD0I9fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307385; c=relaxed/simple;
	bh=iqZxrMmOCUso30RFZ6gTRXsEmOGLnP6HtbNYPwF1Wfk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HckTOO5alCpvU9H/4D/cRXlJQnw1EEcFFTV/fPU2TnC7KJLd73I0tV3FFDu35vDVSYSnp6KTYESJVQoTEcBUjAw1Hom0mu18sM/FnoEJQ7mIr4+v5t9w2f8K6iW2MjKewdUnHUJQNVXN4MwWthgK89xw6Lh6pD0VkG98jI/TLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lPY2n258; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ULaXUF030609
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:29:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A4bz1NnqQrT8sw5X8qWBPC30nWyB7EeMqsmSDdrK1ss=; b=lPY2n258l+FI9ZYs
	tQEPtA1Y7rKFvvhrDRtfR3xIn8CddVUsdPczxKYspN6l3bvWOFF0781+Gz6PW01C
	RRhoYGkpp+1p0aX82pS0nEh/4hBRYgGrhYLp8PBMh05/uAmf9PY9IHEkuiYkWmlg
	42IfkoT5d1lvWF+YGW3Q3ivi3MPORBtxePZ0AzB2j/cxJLt89/0XOuYjZ0yILENh
	RGHtVKvvi87G8CXUentc5KTtbmpIGiEGr5KrDe+V6u4S7qcADzKeS0st5tMQedqd
	xPz8ZIE72QYHnuPsB15cmqz4vd07TeUT/LTedkWXmu67dQmkxqlzC72RTgLdxLen
	oV+TNg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdkm6d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:29:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ddf2a2d95fso10317151cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759307382; x=1759912182;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A4bz1NnqQrT8sw5X8qWBPC30nWyB7EeMqsmSDdrK1ss=;
        b=edTJFDNnhyPKxjXj5m96oLkxQP/BygLUEv4pwWt7OdAjUWq6V+Dg5T1JLoLDW7xU9w
         zmYgvRuZv/bVEvTNY9aON8G0KXRvtjCwXo0inoFEkXUnW+WEbuMHLlkeIK7AEn8CYfHp
         mcRvxSZRMa+Jav9Nra5zUaDm7+Oc59h6boFXcfu8GgoD0ZOkN7K0Bxa31hfDDcaqsjOD
         3ulrcM9tIb+ybcc/ysc8SBPTqxgEd0eayjE8pUkrB8ERXVh497oU1eHqHEHb75kqYRw/
         fZEXETpDvYyCk0c/GI4KJVw68gX0l/z8BEeB2EmERav9F8VNTxCYmBoWwYCI/paAkN55
         4cHA==
X-Forwarded-Encrypted: i=1; AJvYcCXQN6Xh3eAhFQNkLuFMwc5ecnPjwBURjDjv6pwRadmRArEoBcdB971tKwbWssCIXyJsFbN60ABkl/ws@vger.kernel.org
X-Gm-Message-State: AOJu0YxZEZ4bDhcn+hqi6uXqVXSSD25u8Tu0dliVsOkhfKLSoJ7YlWZy
	0XMi39WmF1kAn+XNEzeLAVllZXJDRFIqAipNQekyiS5BSelhinVFsbK5fzuPEkPbaxCTugBAn6Y
	B43m1DrtwD5movvXjlZGW4ncPa2gv7HNHRBrvmqkR/uW40vDGyfUUekyfdD05T3iu+cUl6E4I
X-Gm-Gg: ASbGncu65rpbLCRmjBEkmoFGCW1WgQ8e39KvclHYRD0V09tr/0QejpPqp/s6h3v5DzN
	xqno2FJ9sxL17+wCer4nLeA8ssd3pLMl5gz/vgtw5m5bzEaYUQCLFMA/tHuGdelMKxJWDC9Xwo4
	tIsex5Pwgzrgc1rkaGLujxyMeTBPnbic3tEciKNEKV+wfpU3LMqcdzFlvqPvlL2IRHsgp4dqO5r
	q+duoor4E+/6qTJZQklgZaePomEXggzBrH3V4gPOOm9RaHqT0tPzngtwPyPrO3ai93QCptbBki/
	kh1iotQCQIiZOFrbcJwsW/q4U2SPtzhnc7N39nL+sabsBGRtl1vdt2JuO+pP9mU0mZ84dD87rbg
	iSt80dx+s1mGaaV940iBcf7v5TS0=
X-Received: by 2002:a05:622a:1444:b0:4d9:5ce:3744 with SMTP id d75a77b69052e-4e41db86a41mr22416261cf.9.1759307381829;
        Wed, 01 Oct 2025 01:29:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSUqL1RsW5QiQi/riKCanq1p3YM18OkyHpHFi5otusy0fPMrF9AasNPUvKABfOrGjygx+Caw==
X-Received: by 2002:a05:622a:1444:b0:4d9:5ce:3744 with SMTP id d75a77b69052e-4e41db86a41mr22416031cf.9.1759307381329;
        Wed, 01 Oct 2025 01:29:41 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353f87511dsm1323076766b.43.2025.10.01.01.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:29:39 -0700 (PDT)
Message-ID: <dfd4a03b-22ee-4ea0-af4c-9184a464cad5@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:29:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcm6490-shift-otter: Enable venus
 node
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
 <20250930-otter-further-bringup-v1-6-7fe66f653900@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-otter-further-bringup-v1-6-7fe66f653900@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8_9EVKI-W0nUDCpdT02cHz8Uqze1allO
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dce677 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=Q9X1YL7jsAXwpJAzmCoA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TQZWkJv5rNK5-PaLMsrg:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 8_9EVKI-W0nUDCpdT02cHz8Uqze1allO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX1hchq6TUXXJ3
 l1bfL+n24+cqSHTr8Duf37EqDI9jw6TmNnf81a1C65kdGUGj52f0srw0n/fFn1LoeDEmI415h7g
 Vsr+QlTuojXr0M3k4Q1uBpyOg1y48vLneTrLEzN/0jQSFgtkg8CuND/ZeIJyaFv9rfPBz+VIkKG
 VQz91j/j+pnvk1rG6veQDsL884pJPP+gTsuMuO7KfRrPvIZ/9WdPAnIqSjutLGbLyZThHfV7owG
 BnTZ5CT92yUk8t7bIT/TNs/tMBLBaKenRezAXzzKlTlnwXYyIRQqKdejiUwVlzQdiZEnqr5jP2L
 jAqC2rKkoBLqAheNqo0ponLbmanARSymJCF6iTYdouTcb433uV4CUhSz0Ukm8eOKabqnFDyt+Yr
 3fH6czpchQ3bKIpaw8COTH17RENO9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On 9/30/25 4:32 PM, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> Enable the venus node so that the video encoder/decoder will start
> working.
> 
> Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> index b4c69dc50ed0f0b3cb45341a01c89210bd261993..98c1ad4c21118831f079c83f4fe66ea30c141fac 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> @@ -995,6 +995,12 @@ &usb_dp_qmpphy_out {
>  	remote-endpoint = <&pmic_glink_ss_in>;
>  };
>  
> +&venus {
> +	firmware-name = "qcom/qcm6490/SHIFT/otter/venus.mbn";
> +
> +	status = "okay";
> +};

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

