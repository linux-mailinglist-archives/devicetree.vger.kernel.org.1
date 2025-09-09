Return-Path: <devicetree+bounces-214779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B98B6B4A594
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:39:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9ABB94E1484
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C00255240;
	Tue,  9 Sep 2025 08:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SamWdDe4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F00253356
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757407183; cv=none; b=rAeZHubmF7D/x2QHUJSAkhImEySZKWo1OYMpMSyJDmUpYJ2t/cNB2RnZ7l9Z8tYqRkUWsfsGfDXTbVqtlZxpwqi9byCpcaLxVdP4C7VZFKCZ8kkB9KlqqkyGLYPVBCkd+8ILUwnmJhpSSkhdVgOK9C10cpTSFGeD6ncWbOwkR7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757407183; c=relaxed/simple;
	bh=CEpRgykXgmcUp1jg8eyRMU+1agl/A+ACDsCB9TJ+jLg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kwf2HHcGnW0+78nRDnU4MM9A78F/mGerV3xcvpg85kCRamhXlzAiqHUl9qJNGFcsA5CAJDOsw1UNGlO/NuKPObdDejYrV9zqmJiPtZtej6cJk0Sg03gYA7qJDzvWz8Xtrwk6bESeuyjxLC7288dl8b+lxn4YNJQ4waGS3tl5Lp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SamWdDe4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896T8Uj021764
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 08:39:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TDpymrykwq2D9vEJfSPg+EEbvFuEeU+GWf9UCfxacp4=; b=SamWdDe4fTtbgA9R
	SvvGuYQtNjyLflZYkoug3yceJxrIesUeSQEEtWJrQJpvjQfSWzSIBlPsD5h6IQXx
	0IrbpslAYVraUSdlu828cic2BkGX0/LrZpbvFAFQ1tcaVYm1F4x9fGNo1xxcCOZy
	BCc5vCmrgUgOCn0uVBtO4YWExFS9Zist3V6gRtOnX8paRmBWFV1ToqtlAM3opInu
	eO4xORvJRD+ZsGS0bDSiWfSbwTzRI5zlNamN17RzZyD0D7CHI1tSq+UARJ7qVmqV
	M7L6upjLJifW3ToswczWfx+DxFTyrCZSaCzUozoELgOFR6xrKT+K/I5P5GNxCyQV
	IS2jfg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8ykwu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:39:41 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32bc6306d47so1189441a91.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:39:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407180; x=1758011980;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TDpymrykwq2D9vEJfSPg+EEbvFuEeU+GWf9UCfxacp4=;
        b=dxbXPGDd+e9p40b0zC6cPfc0XaMzhq022CbcXT7DRCvUK42XsRktJ4V+MRAwjjtWRm
         5ae/YScwokknNQPxoRvChuYbVp/LmgJI/+7/rmsQvFcFNqHiLWYF+jvwEDsFqHICvN9z
         mUdMghAlLkVP2hbPXRM7VdE6ruziwCvfiG6qGevPilEEwwtHjtokYTKyhQmEAZzornUb
         Hgk5W4dZldvNE6kg9Jxw42D6+GBUxhpox1tRRYZ7KBtJcgYTzHYKZzODAO0KJ4DNqfKS
         vEPQFE/FAjIHxTRNqOHNz5+ouEe6ch5WNG82endrHSOD3fEgllREBq/pHXkHjV0+UZUZ
         0r/w==
X-Forwarded-Encrypted: i=1; AJvYcCVFYOdTJP5YnZzk6VMW2GdXgLlwirXclQTeLsmElU3EWfTWWw0q6pMxs88l/5+zEB8+hbeIxYXdSMax@vger.kernel.org
X-Gm-Message-State: AOJu0YwYUQwpOxwvJU7Q5SW29nvScjBenjv7RMR1Fb7/tW/QFgirYb6B
	UjZir5dQq/WDezh8t5Qoek8GXzuDbUrrB/8pVBPGAxGACKVBejQgLhrdUr/0WkoPek6nXqP9sB+
	qHD0jJ+ROpIyd8jTdQXWsll15SrH91B3eI8pQiBHtan89Be4VCYmqBe44hiDz34oQ
X-Gm-Gg: ASbGnctNirfCF2YY9qP656XVnxJRJTy6NUFDnWFDgBtDpDIVJeypAzXIDM33WGhpYNS
	12+wF4hBv3gIciPl8ulmioUbRRgEqxVrEwSRjH85bZ1SGqg4O00dxR/HaO8z5CECwUkiCBwlh8d
	w/x7Id5FkqnJLF+vynphZ55+ctEzBG9qsW/ppd2nplht6nJXQynHILclRtMJ2Ny6ER1EApo17Ws
	tRNtZFOFlwyHLfr14vUzCIfQV53MX5tYrTWJ4dujBj1HUOb42hnow1CI+9LfjqqjFurAScJIk3K
	g8ujj2uvlRh3xoZlSPz5u+pQB0C3D8Fx+WAPDuwHzckdQC8kGVyiu9jhGcrwcWFfvKr6dkyFDSk
	DHpHJPOts67y95xH3O/D386fK/m6bUg==
X-Received: by 2002:a17:90b:4a92:b0:32b:87ef:5faa with SMTP id 98e67ed59e1d1-32d43f91aadmr7805314a91.4.1757407178404;
        Tue, 09 Sep 2025 01:39:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7QbVcmVO7aZqm/k5QXoWRXC9zn0nVpx+dXw+04HHeABOWQ0WWeFhtm+A8ZDuAd6zzUqgtWw==
X-Received: by 2002:a17:90b:4a92:b0:32b:87ef:5faa with SMTP id 98e67ed59e1d1-32d43f91aadmr7805263a91.4.1757407177787;
        Tue, 09 Sep 2025 01:39:37 -0700 (PDT)
Received: from [10.133.33.137] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3276f57b227sm39403466a91.6.2025.09.09.01.39.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:39:37 -0700 (PDT)
Message-ID: <c4eeb8a8-2819-4ac5-8dc1-cce209d7cbc4@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 16:39:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <xurpc3mk5kksx7lfpsdqgasov5gc4dpsmz6iv2hjhsp5tewbue@dvrupbjzgxle>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <xurpc3mk5kksx7lfpsdqgasov5gc4dpsmz6iv2hjhsp5tewbue@dvrupbjzgxle>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bfe7cd cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tCOpKogST-nIjDDcSvwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: QWdDxPlRK7ThSEUdbtiQa_YlZineKvtc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX8bWjypSCupn9
 zjeTma3j/Ms9JzL+fNGt7wGl1QrO893W/uR4l4b53L8ue319o6RcIq3ydk16rgRKfTJoGV7adHe
 vG1wfz8Ri91LAQZlrS0FLNFxjxeENWhP4U4OTelQIH3uRJMKq8UVBQaBWVP401mhZIF4ZCr+WzQ
 sTDyz08qZWU0bno83A8t3yEN1hMPsDibRstTsGY8rqkXFTMqgJSYxVlTkkvjDHAiWUL7+9lazQo
 AdOiIm7PONefdoU1lezx4YoeCQNSWPWO1AFA6xn/87+IyB7ext84Pb4pEwHgnSAQn8wtQAfLwgq
 3SQT6vULGRIWiA4Ajpw3dvMvM7gxb6Oe86MR8sgTOCpTpnZ0nuHfZtl53Z/bI0ocTgcfrYvakWE
 VwtFZ0HG
X-Proofpoint-ORIG-GUID: QWdDxPlRK7ThSEUdbtiQa_YlZineKvtc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018


On 9/4/2025 8:34 AM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
>> Add DisplayPort controller for Qualcomm SM6150 SoC.
>> While SM6150 currently shares the same configuration as SC7180,
>> its hardware capabilities differ. Explicitly listing it ensures clarity
>> and avoids potential issues if SC7180 support evolves in the future.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> @@ -27,6 +27,7 @@ properties:
>>            - qcom,sc8280xp-dp
>>            - qcom,sc8280xp-edp
>>            - qcom,sdm845-dp
>> +          - qcom,sm6150-dp
> The DP MST bindings were A-b'ed and R-b'ed by Rob, so I picked them up
> into msm-next-lumag. Please rebase your patchset on top of it and
> resend. At this point I'm interested in DP bindings and DP driver
> patches, the PHY part can come up separately.
>
> As for the compatibilities, I think DP on SM6150 should be compatible
> with either DP on SDM845 or DP on SM8350. Please choose one which suits
> better.


Sure, I’ll split out the DP binding and controller compatible parts into a 
separate patch series.

SDM845 seems not support wide_bus, while SM8350 looks closer to SM6150.
But I noticed SM8350 is still configured as SC7180 under dp_display in
msm-next-lumag’s top, so this change will mainly about the binding, right?


>>            - qcom,sm8350-dp
>>            - qcom,sm8650-dp
>>        - items:
>>
>> -- 
>> 2.34.1
>>

