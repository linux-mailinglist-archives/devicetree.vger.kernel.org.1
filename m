Return-Path: <devicetree+bounces-209966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF18B39AFB
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:05:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98D803BCE7A
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 11:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB8730E0DF;
	Thu, 28 Aug 2025 11:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dkzNktIe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7D730E0C8
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 11:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756379124; cv=none; b=nYHK5CRT9HS6aYvLHt4RiNwZpUVsg6byeeQ3t33gvwXoKinZTePW25Te/UPkbeH5pXdmM7eYtxgwmDOlKoDRpcjwya/nw2hQThd75baS7Buf5atZp+1Ya4nQR07rGZal0wl942CwCzndWH3mRsUOhnFWNxOTC5i5WYGUlDzCYPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756379124; c=relaxed/simple;
	bh=e03dVCkvTvpanWPDwCJj9vnAVCkN3SPLyZbfuEJYznY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UeZlv51ReIGFkjLewRxWnczn1txPHVDGySigvMh9+rG7XtN6xcKcNzceOmrsQVBBMhaJOwK0VDw7WSU8DFgYyGmjKGL+H0VdDo+/L06RRh0XDzhXwI1L6RCXH98puP+4hK7jTm0Gvoen7tR5un4hD1sVETgRsd9wkna77eLL5no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dkzNktIe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S6DMOb027503
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 11:05:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GWz4EmxyWXf7dXG5o/SW5rNMyyXGmYaGBN9NZMKjXjw=; b=dkzNktIes08QLczO
	hlxo3ShN3hIS6b4EPWNK7XpY0ycS08KtG+q8doSF83aKpqd8BIjg9xWQfREPwSgH
	MQNIkYh6KYv64gvNZgoCoJKybu/BjmFW3o+p7V0K78upoKCyHZ2Bw2f6Ak14MLdK
	HGUgeeSx5sYiI6+kuCH31IWr/5fNHnVVi4iPifl//6dCEHs2spk8IfxR3r96dODv
	jfXHjwiWOdPTWCYQT7zTp+2bCJqHQQ8Xs1ZProWWlP3TLDlGCvVlz7COfXqLDPhD
	2gtdzc08CYCrgXLmuh8p25hghTl8KsKLuHAfPfMY1dahPyKzPoDYFu7Jqxb5PZrK
	EVWzdw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16y080-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 11:05:17 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70dd6d25609so23482576d6.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:05:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756379114; x=1756983914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GWz4EmxyWXf7dXG5o/SW5rNMyyXGmYaGBN9NZMKjXjw=;
        b=pGBu6A19Zh4G2iUJvVnAhRFYVoIIul9KDLv/j20PEOszJN6JPhI5O+EU0UyiEPEpby
         ApOOaT/SHmyNNAF0OHQ2M/BpoQV6QKRn4y9x25SH9Pz8Q4J7H5oY3ygTY3wEomcvX4x4
         JFdYvZGB4DvxocUOgNt1GfqfJmp+cYIKRPOlZqJCb5cnSeKwCWK89Yu7lCF47M7fLRQ+
         Dg28LKkt9fb3Rh41q29Los+ZwUA+DlIVx4Oay9sx5kRE68Ko1jBiphVH1viOuShr1eGM
         /AxpY0NMZShPC42i9XLMFQGaYJJ9bURn30RxiALMHzhHpF9VGJkFPJPNHdIVcjZH/CB9
         Mg/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWCDjtfaDcQemRQy+qW6hZ5E6JWUDpE9PynZmTgOnyndVmf5LhGG5WljEq+RJqf4nFkLJ5RFmAIr910@vger.kernel.org
X-Gm-Message-State: AOJu0Yznq5D1UEq70v74q0EZD6FT/qce61dLWPRlKr325+teLUwGXyMa
	NucT5rmyUr21hwENPQwnZY41TuF/1/wUfZI0li55gtYUKR66MyqZ2WbwgR1ctRAIrYSVVJI4ztF
	WAB04nl1Bf99w3Ukchn632uZ2W061QknY/FDbjhYfx65P2+GH5RUqw+k9n6Az8fou
X-Gm-Gg: ASbGncvU66q1Il0C78rBBTJ40/ViTUSc2cQ1asyGLGv72KarK0KcwjDH51lWtYeq6v1
	aKGoqf4XxyjBh2p09Jumu88zfk3DUhhdTkR+uiLJLTOU5xDwT5KHYaDSnlK1dN+p03W0eSY3Kup
	1uATXRtHuiIVqG5ej0vNlNeB95Hx8MF8QsOAps0eNI9S4E8rJWVNS3EKtxcfe3tVMjWSqi3l0Qk
	3M//YkHp945RsJkZgLuYf6YuMwaeswpbLUbIE+FBzS0BTtuXQ69K1R76ePPLmGAuGSF6GPnv6XS
	Y0GbJPHq5xezP9Hg8BY+Lebevlscqs+4Wai58JoW82Pk8/G9+8D40EawjuhGt2Qj8ufnu6FEnlA
	2zk9r5KM7XkS3Q1WwgW4mTDSBmnT8YfXD9zMhZiDJFic=
X-Received: by 2002:a05:6214:1312:b0:70d:9291:bdd8 with SMTP id 6a1803df08f44-70d97109866mr271525966d6.30.1756379113414;
        Thu, 28 Aug 2025 04:05:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLnBHAxYeOFUCjvzXXjJoPfriPl5kZ9soekFn2bdbrOltVRygzUC2PVtjW1wYnOgDWaHGQnQ==
X-Received: by 2002:a05:6214:1312:b0:70d:9291:bdd8 with SMTP id 6a1803df08f44-70d97109866mr271524786d6.30.1756379112368;
        Thu, 28 Aug 2025 04:05:12 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5da244sm30163331fa.58.2025.08.28.04.05.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 04:05:10 -0700 (PDT)
Message-ID: <28b33851-24eb-428f-b046-b145342fd982@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 14:05:09 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
 <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XFec00aJEZq9LDO9BxKaXV73RT5_tVQu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX9AdSS/QCR4k1
 0yydj5LkQOPT0LBUbz3nLJQtF++5ZpfX7vC78c3wwLVmY08W4Ufi9WdtKaIsau7X3PjSNDx5oG4
 X8PaovFxd5GXshC1/X7f7JiCDiWlkeCOfCTiq8QRso1lGsAHDU4kbgVwGcVEjS/QDSHZI6Lt92V
 b0Sv7gAaV3LI+JdhjJAo9QcgJiDaySbPQfz/xlaROiZNZECIG5TyHv778pQeWA26inPhNmPwQWS
 xg9ByzG1fQ1GtttAU5bpxvlnf8JaG9i9MUf1ZNPvij572yL1yuAAlqOmu5uhx/BAx0jZDAOvA6R
 7lYbHmcQumuvfPYAJ4cUh+CrBQ6KEJRiSZ3H5caUdDtQtKGHLjoH3/HiyMKprf22GWfgsHAFhqO
 CHf4GJ6m
X-Proofpoint-ORIG-GUID: XFec00aJEZq9LDO9BxKaXV73RT5_tVQu
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68b037f0 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KSO3TaR41uafEWVwNF4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120

On 28/08/2025 07:51, Xiangxu Yin wrote:
> 
> On 8/20/2025 6:18 PM, Dmitry Baryshkov wrote:
>> On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
>>> Add DisplayPort controller for Qualcomm SM6150 SoC.
>>> While SM6150 currently shares the same configuration as SC7180,
>>> its hardware capabilities differ. Explicitly listing it ensures clarity
>>> and avoids potential issues if SC7180 support evolves in the future.
>> I assume, it has no MST support. Am I right?
> 
> 
>  From sm6150 ipcat, I found MST-related registers and pixel1 clk definition.

Then please describe MST as the main difference between SM6150 and 
SC7180 (which doesn't have MST).

Also this needs to be rebased on top of the MST bindings. I've picked up 
the latest posted revision, but basing on the on-list discussion I might 
need to drop it and post another iteration.

> 
> According to the hardware spec, MST is supported, but due to limitations in clock and pipe resources,
> 
> the maximum concurrency capability is restricted to 1920x1200@60 + 1280x720@60.
> 
> 
>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>> ---
>>>   Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
>>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>> @@ -27,6 +27,7 @@ properties:
>>>             - qcom,sc8280xp-dp
>>>             - qcom,sc8280xp-edp
>>>             - qcom,sdm845-dp
>>> +          - qcom,sm6150-dp
>>>             - qcom,sm8350-dp
>>>             - qcom,sm8650-dp
>>>         - items:
>>>
>>> -- 
>>> 2.34.1
>>>


-- 
With best wishes
Dmitry

