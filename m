Return-Path: <devicetree+bounces-206256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 501B9B2BD43
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:27:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29F80189276C
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C5632039B;
	Tue, 19 Aug 2025 09:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dVq0ZZhM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B6631AF1B
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755595308; cv=none; b=LU3737JJz7HIuQxAE1hb8DSmLtkrzKCK4l+C+7S9DbCN1CiQOp0MAkR4xPYmaPO3hqE1KgYFtude90zHHbd8fcbPm5EuDDXBirKH1Lax6T1hQ8Li1ksENCP9Ae+f1/4VmBx+ozCAglt4zlwqTBquZpxMosnuy4ILFo/oFmircb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755595308; c=relaxed/simple;
	bh=MaJ5CtbzYcmSzaHub09dWgREZi9K9yHAnOoD4ZSx1/Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ilhv7e5Zj9Bckm/RZJifK1qv13JWfrWhuFrnSm5isPPIDaScKgPTLPhQqqg1bYpwvabY82p9lV2CQrkVp5K3lB7fXWG98hu2vTioMaPzl3UVHp+JEWVNm//QA1sLc9YsXefrY/YPNqGDinl08OQdajS/HFFqqucBnLA1ynkFq9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dVq0ZZhM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90XZB007201
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:21:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XeLoNElQRYDHRk++SgBPgdfN1LI9ODXyEKJtgngTUGA=; b=dVq0ZZhMETwhqEnt
	s9EfemQb6XzcugD0fg40sr83pH+2k2K+UZgvgtAqw3++2bTs7uSCmU71SU/ZjD0B
	AfsOk8hvc8Q7Kr81MndamSUWR2bF7md+pIjAgPxSGlFjYjbfFSsrlTJT7NXtddY+
	rnMEi8lGjgX8pt4zPAnjAZ1fTfPV29jlnqbA2zrbTwLMrtYmAQxQFTsTNV4fehh7
	nNOJVdCMl5T2Rcq6ZyCN407NxCXsuYu4QK37AVfeLuyZNIoxOvTb3xO98iOGtoLv
	DzynLzO1RjTNZMNMCSZhfThoyRcF0sJJh2RxMM0amncpykOcsHo0PJqKMTtdaD6H
	pJ5tAQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj748065-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:21:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24457f42254so123379735ad.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755595306; x=1756200106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XeLoNElQRYDHRk++SgBPgdfN1LI9ODXyEKJtgngTUGA=;
        b=m1xj3ZKF6b2vNFHxF7fzLU20bTXb8efKDoz+HTIM4blI/xExPl3l8mPG5b9k3eeSqN
         5Pmw5Xsa5nu0TZ7RgQSWruxa1JeuhiImgYD9mL/vmrTepKe5TZqYYs4FGg46vQJwd0ak
         T9U0e93jbZqyzf9X7Gt7TXNz7U1qWHl0n2hObjLIqJi9+7Fae9nJu1LDo9TrA2mHs0U6
         rAAZ4xeqeeXwj4CFb81cpl6kjOiSnMAU+AQoAEZSCUJzAUavCIQF5AeBWgYlT8q2nGdY
         rGX/TwAxOWgO4vjNjNsxqTnMs6g04Qtt5nZMDngOAFZs4F6VM5Y2dhPfD6eYwiGT+wcl
         zEdg==
X-Forwarded-Encrypted: i=1; AJvYcCVY7AiW2vPluZlSeAiOZFTTLQbjSxGZxUUteY6kjnXpulAcmwELzAue3JGHj9eljMR+nG2gpt6YySDJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzvLCF/wo4lxewVr5bdivgmMpsZEwMd5A5cuzb/9YqEAvBb9cdC
	GXyY/bXGf+8ekPD6Y0CPEqvO54wINx6MJD66ExPhmKlmNfRaNmWSfzzfRN6XPKxC9tJ/oA0pQUm
	9SeuD2IpiOvDDKl0CZtRZ3M9ps2M2Os1HjfCgXSbcgPjkspxqREM3lMV+/29OOGcK
X-Gm-Gg: ASbGncvTyYAiS3+vucliglSvSSnhyQzVPXgql3Bme6rUZLAl8tp3P32fMnl4J428BXR
	nURLrTGxWZdwCGeyP9EqXpUDbgfa4IdsWjmSHC/r77uPZM1b6Qzahshu3mHyipuST3NyxwCAOVL
	AL6Jjo6wCYUaiq4N15CUiZoOTZv+U454mFnoxiMIARHVP5/Bxk9EjOJy1K/Vnz5qub3cKWStT2y
	8kneFDPYJCkR9/4+dNdRQpkUr4lHkyZ6ZzZeWYM2cRx6GTu43zCuGx2zSKrWInb11ix9LM13Mix
	9HPHNdGbwYvUbQRQuksZyODs8YORejW6M1/cIrHhiq3mRgFQKAzHgjisvHGcdPnX7UG26i4Mr/9
	iSn5+ejQ+Ic8y/rJxPXogCstC0Wfw0Q==
X-Received: by 2002:a17:903:37ce:b0:240:4b3b:334f with SMTP id d9443c01a7336-245e04926b5mr26682935ad.34.1755595305596;
        Tue, 19 Aug 2025 02:21:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpiiFaPA8kQRfNSDplxINgiGA8HlGb5Wu8T7SwEDTnoUTiI6Noo4c+zpUmfz128LX8UgJLAw==
X-Received: by 2002:a17:903:37ce:b0:240:4b3b:334f with SMTP id d9443c01a7336-245e04926b5mr26682375ad.34.1755595305122;
        Tue, 19 Aug 2025 02:21:45 -0700 (PDT)
Received: from [10.133.33.87] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446caa3806sm103046795ad.28.2025.08.19.02.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 02:21:44 -0700 (PDT)
Message-ID: <76ff9434-eeaf-4ee0-a8fa-aec566c46c2a@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 17:21:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
 <20250819-qcs8300_mdss-v7-2-49775ef134f4@oss.qualcomm.com>
 <20250819-ant-of-ultimate-genius-fbfa1a@kuoka>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <20250819-ant-of-ultimate-genius-fbfa1a@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PsbQa1kPg7tYHiiUZx_60rBaqumLnLWi
X-Proofpoint-ORIG-GUID: PsbQa1kPg7tYHiiUZx_60rBaqumLnLWi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMyBTYWx0ZWRfX1wEK6PAFWcGx
 z89cxNMobTcU5vUYerzoJIHv2I9O00dwNwtp8vELQtPj7C/vppNjM4GZ+bY1TP0LukYi4K3dzWJ
 uxWz9UHwO4EczPcQ3IeZvWsppa2+aZK7QhEgFIGwlzbPzBCPTnVWgPkIAf+vDWpQ7pnxiODvD06
 immcIoMfzUYwHBREDNjh5T++fDZKfSyUXucEp07Kjeq0DHZJWGG1yE/f7aFfJW/jH49/ghlnxPO
 /UrRYV/bRanEEtin8SXilsMSMM5J9syje+41YKb9GbZtFDumbn8g/f2pLRMwrdQtM/gUapXvEOg
 vNWru0sobPuwdlm4SGoS+lmuqAChVoE6M0KCHIPhsASVFxMllagdcFRanHMbEEwarRnmJo/ZCEg
 y0bxv4xn
X-Authority-Analysis: v=2.4 cv=MJtgmNZl c=1 sm=1 tr=0 ts=68a4422a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=b6vJvH-rrpbGiSTQa0AA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160033



On 2025/8/19 15:58, Krzysztof Kozlowski wrote:
> On Tue, Aug 19, 2025 at 11:33:29AM +0800, Yongxing Mou wrote:
>> Add compatible string for the DisplayPort controller found on the
>> Qualcomm QCS8300 SoC.
>>
>> The Qualcomm QCS8300 platform comes with one DisplayPort controller
>> with same base offset as SM8650. But it requires new compatible string
>> because QCS8300 controller supports 4 MST streams. 4 MST streams will
>> be enabled as part of MST feature support. Currently, using SM8650 as
>> fallback to enable SST on QCS8300.
> 
> I don't think last sentence is true. Where in current code SM8650 is
> used as fallback?
> 
Sorry, this more like a description error. As Dmitry pointed out, we are 
not using SM8650 as a fallback; we are only using SM8650's data 
structure in the driver. I will correct the commit message in the next 
version. Thanks.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> index 68a6fd27506fda004e53174db5bcc88a29e8d2a6..ac44abfdd2853393ae199387c9ae2c37e1c48f52 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> @@ -18,6 +18,7 @@ properties:
>>     compatible:
>>       oneOf:
>>         - enum:
>> +          - qcom,qcs8300-dp
> 
> ...here not.
> Emm, if we need new compatable, can we add qcom,qcs8300-dp here? 
>>             - qcom,sa8775p-dp
>>             - qcom,sc7180-dp
>>             - qcom,sc7280-dp
> 
> Best regards,
> Krzysztof
> 


