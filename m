Return-Path: <devicetree+bounces-232633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B684C198F2
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D70884E4F8D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F2C326D69;
	Wed, 29 Oct 2025 09:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lPcOsO4r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PKl165IF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208BD2F6596
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731996; cv=none; b=AzLamDL5YI6hGPtLDDhy9Xb/P5D7eb5kj3JTaXKO3QOr3sILVhna2EnhCTxAcqo2UQCiTMi8500/O55qPXz2PfEpd0Vwy+Vq8WD/ivyfbR0A7HxbfM+GSZamwqyyBnczafHyzmflEgH1vncISHAZyvvpsCvMxB6wx7p0sVGCOps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731996; c=relaxed/simple;
	bh=uRU+W5tm9ZeihGOSXH5XGdcCxMKq9ZF5PCIreGS/pso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cvacYLskXxSCo6vQbc8yBmCK3kwKm4bzroE0hb8xtLTH0OCVGz+A3Uh9BHWvc5vPDqmcgA22x4HEyiMXXopSTtvD+1R6q3xu4rFWIIVCPeUfWO7vgrIc5ykBhhf8NVAZsSuBF88ayBXbWGp/qBWMzF4U51KJ+yQ6qX3VzqJNhBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lPcOsO4r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PKl165IF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v6wv3755067
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:59:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Piz8rod4lz0FtmBYgSwSVPwpSZnz6NSh0sr50I+nrGU=; b=lPcOsO4r3SX6Ym/V
	XyPlofVFzvTrGI2l0UP5NsYv4j28pOhXcDNyo+1K9h4pcDMI8F/eaA0IrYvwiyyH
	ju/qnQ9MAPGJnMTXHV+I/tFOs7/EDWeklEj5SQqnvCn75dAmpeNCchuAdibM9iMJ
	kntrb2Ym0p+c3KKy1TDAqcNw4C5FUNycUxeN0/Th55oUEGSrcM8QjRLNz/io8uJ5
	AF9LsxT1iG2g7SAD1DGviacyfguXDCzx2vIMqLO4Kf3oG3JKehZA7QPJB8H3Wf8Y
	L3Q2ufs7iQDOsjrsnJnunM1jhwXVerjc6Zzba09+Src16zAcPIUKa/0d4eSQ6nmM
	Nm3+kw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a023t0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:59:54 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-267f099ca68so14524655ad.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761731993; x=1762336793; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Piz8rod4lz0FtmBYgSwSVPwpSZnz6NSh0sr50I+nrGU=;
        b=PKl165IFrg4LguY4+hrZ15KloaX8xaxw7Uv4yrU85B9zjkKBtMJlOTm+yCBsk5YFMr
         SvKG70Zv/dzU8+4cvpg4drt0bdRgQf8r3vwR5khu7vai8HgmbmRM2qZjHPQF/asPdDZ6
         cQlBWlRrntmU7q+VeTzgadSx+XsSL3lAPOg2SVBI6Ma6t7OIfRp0T0SC0MYkEoSWWwVB
         QTqst1vayuDqfQIOHA57lGhjs9U0Mku9wxgkPq5mida1jLNS5j1c3St9CQVegKgOM2+x
         Y3Ldu0o0oZV41C0SwskBYTnBH6FGD55sbar4A5PkoAADaRCeSQAsMqgnSHg4ohJy4yR5
         bD+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731993; x=1762336793;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Piz8rod4lz0FtmBYgSwSVPwpSZnz6NSh0sr50I+nrGU=;
        b=P+SmLNhX7iCGuT22bqcY333wlADZsUbOM4UWno5kYbS/7t97korUkRusMrym47pUVW
         gKAZxMmlEnDrqJQy4wBkH+lDgdiOzLEXLN7uGW4Yyz/d9fY7fCvBXeMt+TzgtjAhUewC
         oCkiEmQG/TNFSQ2tLPRCHq2bZtFaNLQHmTl3afgPr1qjlVs/oUSTM7/UYOQMhTetU9wm
         jsUmoxPQrz8YWlWzx6svWrXxHcRyFxFNg5VxGhETRmjzKgT+79J2J5L9fbs4jkV+mFal
         8Sqn11zKYnaXkK2j4sg+l5zHfILV3v4tQGJkJZHtDYCKsVoXA70ZMUwEc3dKpzVft2GA
         Cgvg==
X-Forwarded-Encrypted: i=1; AJvYcCUEEDn8rI4gfiUquWUGBlTCs4VgIUgbFpCnWdtao15YlL6yXQr6ujBPWWqy45VVSs01QQ5JeD0EOXrp@vger.kernel.org
X-Gm-Message-State: AOJu0YypbfIUCMUotSonJI6j9cxs6tPVwUCZURrTz2xx/3cym37Wm9a8
	fHgWiewNDEv3VbFA+xhS6Zep5UQDAKkhFuSrWYPfnXl/GpzJ71zzsXG67WEG+DiA7PjRKfSZPve
	6PXYdqRdwqGuIW3ATjC/J+2pxkH9EYAlzooifEKKFRjmgSEL1Y8/i+7A1y7aUomgv
X-Gm-Gg: ASbGnctQ2fGITRXUQOfiGEzbIEQ91kJZqSEoflM5qP7Tp6SgCb73EKdUBNZTePep+Sx
	db4udMzqYLSdia64fwlXlT35vcFt1pzKUcVkQfinLDvnEb8M985MLBCu8DNJw8pv4dwkyDLrQVn
	mzNttrJ2iZgduwicfUOlDv0/4OniMrN1F394RidIuLqfAHD67Jc/eTlmOsgagdrg3tHaa29gGKj
	3cKNh1ijKZi6TI86oAmHpVieNqKBeLNZ7sNfT+JMUHTr+gQt7/gAL10BEeX353t4Iz7h4mE8O64
	/xEa94v13ujaa4McxIJH5nBpbYPu1Wgl8HPVcFLGd1Goz+PaLm93EFYDpzh52uOSsFC8IRNeIUb
	4BnT2XWIVwkOcKnkZdg+58gxWYJ8u95KI3URBa9sK66/gEAMxYqxm1ubpJGuO1tMPPU3HsA==
X-Received: by 2002:a17:903:2f8d:b0:269:80e2:c5a8 with SMTP id d9443c01a7336-294deeedda7mr15828875ad.7.1761731993546;
        Wed, 29 Oct 2025 02:59:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4z4olbHvLZYuxygnDrTvnj3GVSCIDXrQfTkLlCd2lWeeIOL0S3gFqI+0DsjMVOy8PFkbqAA==
X-Received: by 2002:a17:903:2f8d:b0:269:80e2:c5a8 with SMTP id d9443c01a7336-294deeedda7mr15828705ad.7.1761731992999;
        Wed, 29 Oct 2025 02:59:52 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d2789bsm144130825ad.62.2025.10.29.02.59.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:59:52 -0700 (PDT)
Message-ID: <7fcbb624-7c92-4043-b5aa-0fbfd3dd125c@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 17:59:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] dt-bindings: display: msm: sm6150-mdss: Fix
 example indentation and OPP values
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20251024-add-displayport-support-to-qcs615-devicetree-v6-0-c4316975dd0e@oss.qualcomm.com>
 <20251024-add-displayport-support-to-qcs615-devicetree-v6-2-c4316975dd0e@oss.qualcomm.com>
 <ggrtehmzg5bajbglcjhlf5jynhwqq6vztc2fqwxxgip2q3vmip@t72qcggza2or>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ggrtehmzg5bajbglcjhlf5jynhwqq6vztc2fqwxxgip2q3vmip@t72qcggza2or>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3NCBTYWx0ZWRfX4NNyiuDn8eJY
 +bw97m5an4VlZMSqXqCjmiivnlZMZKUFm5eH9Y+a46OJY/WQG9IfF/LRMw06XjQBb2naOGGzkOL
 aRLZE6dDCQvTHWn2gz3NXeChbpbXfYS2Mpf0JbmV4rKFa4OOAW7Dq5q/TmhVzxjAGoQBhQxVxiy
 k3E/HQTLHguwYH/4udhkEbrync0PYY4uF+qAMeGE2bNbaLK+COxjAH7J2XsaWxNwJkEkjFsmqLL
 WHShtIjTeRQ4dM60JgUHb1Uu14PvQnOCkhHn9xCIEApdt1HTA9D+pYY/IasnLLLQPLcH/oixRUt
 r8YWpl9ebpWYbMZv5oEwnHhPs08vC8bD5ju4zNVGHL0yarg50mcZFIxhKoGlVC+4RiBgML3nVeO
 cMASTUpqTbrt2rn2BLODpFXzsZrXzg==
X-Proofpoint-GUID: svYxaBGZ0jVsZbSbaeDsHy3NnqXbxIuu
X-Proofpoint-ORIG-GUID: svYxaBGZ0jVsZbSbaeDsHy3NnqXbxIuu
X-Authority-Analysis: v=2.4 cv=epXSD4pX c=1 sm=1 tr=0 ts=6901e59a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=v3LxePKqoqSeXojOrL0A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290074


On 10/29/2025 4:00 AM, Dmitry Baryshkov wrote:
> On Fri, Oct 24, 2025 at 01:21:02PM +0800, Xiangxu Yin via B4 Relay wrote:
>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>
>> - Adjusted indentation and added missing blank lines in the example.
>> - Corrected OPP clock values to match actual DTS configuration.
> See Documentation/process/submitting-patches.rst to check how to write
> proper commit messages.


Ok, will refer guide to update commit msg.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  .../bindings/display/msm/qcom,sm6150-mdss.yaml     | 32 ++++++++++++----------
>>  1 file changed, 17 insertions(+), 15 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> index ba0dea2edea98cee0826cf38b3f33361666e004a..80183df71cd9288f652dc42afeae101e8edcbe65 100644
>> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> @@ -140,35 +140,37 @@ examples:
>>                  #size-cells = <0>;
>>  
>>                  port@0 {
>> -                  reg = <0>;
>> -                  dpu_intf0_out: endpoint {
>> -                  };
>> +                    reg = <0>;
>> +
>> +                    dpu_intf0_out: endpoint {
>> +                    };
>>                  };
>>  
>>                  port@1 {
>> -                  reg = <1>;
>> -                  dpu_intf1_out: endpoint {
>> -                      remote-endpoint = <&mdss_dsi0_in>;
>> -                  };
>> +                    reg = <1>;
>> +
>> +                    dpu_intf1_out: endpoint {
>> +                        remote-endpoint = <&mdss_dsi0_in>;
>> +                    };
>>                  };
>>              };
>>  
>>              mdp_opp_table: opp-table {
>>                  compatible = "operating-points-v2";
>>  
>> -                opp-19200000 {
>> -                  opp-hz = /bits/ 64 <19200000>;
>> -                  required-opps = <&rpmhpd_opp_low_svs>;
>> +                opp-192000000 {
> This is not necessary. This is just an example, so it doesn't matter,
> which values are actually written here.


Yes, but I think correct value is better?


>> +                    opp-hz = /bits/ 64 <192000000>;
>> +                    required-opps = <&rpmhpd_opp_low_svs>;
>>                  };
>>  
>> -                opp-25600000 {
>> -                  opp-hz = /bits/ 64 <25600000>;
>> -                  required-opps = <&rpmhpd_opp_svs>;
>> +                opp-256000000 {
>> +                    opp-hz = /bits/ 64 <256000000>;
>> +                    required-opps = <&rpmhpd_opp_svs>;
>>                  };
>>  
>>                  opp-307200000 {
>> -                  opp-hz = /bits/ 64 <307200000>;
>> -                  required-opps = <&rpmhpd_opp_nom>;
>> +                    opp-hz = /bits/ 64 <307200000>;
>> +                    required-opps = <&rpmhpd_opp_nom>;
>>                  };
>>              };
>>          };
>>
>> -- 
>> 2.34.1
>>
>>

