Return-Path: <devicetree+bounces-197774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71999B0A94A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 19:21:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAEAB5A1574
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BBBD2DC32D;
	Fri, 18 Jul 2025 17:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FJ8MecaE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6C11C7017
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752859295; cv=none; b=BmsHSWLkmOY6lUJLkXm0vRHjDR7RDCaC8NabLo/LjnfxvgaOQtVY9C2ca0vU3fwfz6eHvKQ282e3GgpKpA2M0PdTSXOW6cQVe5MSfDti7ifsgZicJMr5CCGEm0IRkGkcpSLWlB0bkWydhoSlwXqFyqAAG6mKSkeiyjbBQyz3RLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752859295; c=relaxed/simple;
	bh=Iw5grXdfExOBq5dniqWhDt/znX4b7nSrmolECaBxpeM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u7e/koRbWQ5sIi6B/+FsMvMGxVWewo1h4F04f8CzPCqp1JG7gFnGa1vAo+98hjdgrNYu1i26BEzkGmHmh6DpHAiXbUJapdRgKZhpYKg3ZmLRLfjbOxzMOtrjHOZwxIMF6KGrSqVRTTdlfRmQ0k4zMkPLSc0JxE+WRPqqJAEaMg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FJ8MecaE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8aDxg021792
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:21:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	06hO/weMed7fQm79ThGdUddmr6lCUcgv7otkkBDExXA=; b=FJ8MecaE0Y5zWt8X
	iuI0TJRtb8i9imFz5W0YZSMuxetvadmBH4VL/oXt4Y1Wv7NIZP/mIlkJhAGx+qe6
	JZxkyy2KuvYiBmSFLiefJKXxBsYskfZ4yiIiGM3zn6StR+A0JQGlwwSRVs94vZf6
	S0gSmemesLXJnYbcKRl9Lk61yoWts3fLlk1uX9hyHjFbY2nRxiFAs03YRih+nfth
	ZFA0vC4c5gSbPPS2vHu7pkN40VEV3GyTYwXevPZ23BMm3KKXg+CgsuzyxcSNFm8Q
	hmQk2DzOwYsgvs+aVl+80s+1TCWvvPSjzKtuw4hK9+PKpcIsZAP2if7sd+OgyEw4
	kql3AQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8m7ua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:21:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab716c33cdso9115571cf.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:21:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752859292; x=1753464092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=06hO/weMed7fQm79ThGdUddmr6lCUcgv7otkkBDExXA=;
        b=P2WDfU0mC8PKGfdKwEhu3EMicGiNJ0VTVVZoGyL/ePFXuGtmO4ULZDoDrh9xxbcY+D
         gW2a9Y9vu49tDn9XpwAIhqAC+389BoNepEHoNQmfbgsEm4wV76QCJvHFSc4VGaIn2dyG
         CCbPzUXYhtJTJSxeaTNMXnJ5R+tTlfWPfOO9IaaFhmTLeQIXAjAJ/q2xHZ0PQXXiUc3Q
         F68tD00lLAQgPUVDkYcK6v1AKSBbykZWxegxHvBruiXIQJvFeWCqKW6Jop4NQlGuvtus
         HlPxsoiAr5WpDZWKlrt3UMaGPRTfUFqcx0iVYx195VagfmHAZYqz0nxIscUxNRrTGxk1
         Qi7g==
X-Forwarded-Encrypted: i=1; AJvYcCXKJGmHISSOhJAm4kumAbz3/CSicNTtLWTVs9olCxYwoaEHhRgONcAVTM03iV2F4WRblyeJaWu/pP+q@vger.kernel.org
X-Gm-Message-State: AOJu0YyOyzTBLEukTOddYk8lXbwOzOcVT23/LFVDXm5roHBGXF1/wMCS
	2G/6PwiFmcgpZckQRoma6YBUSNpOJCFiHR+MDAHeb3s+pCEMFyfw7deTEK2736wWsSv1daRH0mJ
	K0ly9Zj5Nq6ngWPzaig79YB2pc3/I6/mfPANN8aZKIwdkOZDEjliivYXwTwGAtKG3
X-Gm-Gg: ASbGncs5OQFyhSvuOEGuVVh37L+O9Ycx3XRUMtY9FnI7Dhyy5HpVukh+DfWgtEZRntU
	YZLQNF8PASarphBrJBJeBJn+TE8ClDoKEZrpxGTJ1ytrayTu85gCTJrYa9LOYVITRWLGWI9qckp
	ge2c4Ur5SDGSu+uw0RbOGx1BRsu4VoNW1ACqc3RhmqrWyEu0lqvaWkl5qrj7pyJtKw22ohqVTKl
	2UTiM24vUibwPOGXVN/nnD00YSHeGISKLJ78Tm0xeSX7Icw1srm/goZ9FIP12c0HIQSFEeMA7Yf
	tvKH1XV3F5M1lngNyI8GKG0h7zIkZrrzAPfTB1//vq32UdgNngtflCcrI6SfAyHm/48vQiURxlO
	nzoWkQ4iIHflrBUXSdP0W
X-Received: by 2002:a05:622a:1b1f:b0:4ab:609f:d7d2 with SMTP id d75a77b69052e-4ab90c8cf06mr71803121cf.12.1752859291258;
        Fri, 18 Jul 2025 10:21:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPssClCCUe/Z8bo8MgUBvYHGyuUUl0g0+QJt9SpC2YT2VaORgZHpAgbDhXA+B6Btw9D6W3ZA==
X-Received: by 2002:a05:622a:1b1f:b0:4ab:609f:d7d2 with SMTP id d75a77b69052e-4ab90c8cf06mr71802891cf.12.1752859290758;
        Fri, 18 Jul 2025 10:21:30 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c90a9098sm1287395a12.65.2025.07.18.10.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 10:21:30 -0700 (PDT)
Message-ID: <eaab7061-a02c-43fd-9a02-6ff9625401a8@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 19:21:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: power: qcom-rpmpd: split RPMh domains
 definitions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
 <20250718-rework-rpmhpd-rpmpd-v1-1-eedca108e540@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250718-rework-rpmhpd-rpmpd-v1-1-eedca108e540@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzNyBTYWx0ZWRfX9OoQnfJF5Qkm
 9XrRSO9dnLysp1fD3wXtW/vZOnTVywc07WU2ggLqm+c0hLiQP25iQBycqZyoGKzTA6mHugBnKk6
 yi3DhIfA1wU5BlJivz2mnBKoDa4AEIatE4GLhgowOE+0Vdmhnfe5FYZkxJelZSXzcv+gOoEBHkf
 wpdARhHDKd1ZAQWV856Op36+GdZKcRTg6VaMgAhGm/1B4I+tp/C7y/lT0/K0VpH4QDzLxU84yuL
 y3Rp2G9bCDU97o1zC4S7O1JLRWZM1oz0PxKwv+ywGwVjm4cTX+QKoM8wrTrVNFTwlS04VfdCcoN
 qhAmne3H2Le1FZp7fGrqE2x1hUt8/Dw3FkVkbXmKq53/POlzdKXgF513vW1eShrLzwnCS1AB/v/
 zBThwStMACVsQ+tcKcipIdz2MQY9M9iXDailt3Ep0iLVTB7lVyg3n5uCNeLYkCRQfhFhW1cu
X-Proofpoint-ORIG-GUID: ljsCGkP7eKjYGu7PT4xgBI1NrCQ9mDe7
X-Proofpoint-GUID: ljsCGkP7eKjYGu7PT4xgBI1NrCQ9mDe7
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=687a829c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=0q-T4vpNF8mo4nd_0X4A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=616 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180137

On 7/18/25 6:13 PM, Dmitry Baryshkov wrote:
> Historically both RPM and RPMh domain definitions were a part of the
> same, qcom-rpmpd.h header. Now as we have a separate header for RPMh
> definitions, qcom,rpmhpd.h, move all RPMh power domain definitions to
> that header.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> -/* SC8280XP Power Domain Indexes */
> -#define SC8280XP_CX		0
> -#define SC8280XP_CX_AO		1
> -#define SC8280XP_DDR		2
> -#define SC8280XP_EBI		3
> -#define SC8280XP_GFX		4
> -#define SC8280XP_LCX		5
> -#define SC8280XP_LMX		6
> -#define SC8280XP_MMCX		7
> -#define SC8280XP_MMCX_AO	8
> -#define SC8280XP_MSS		9
> -#define SC8280XP_MX		10
> -#define SC8280XP_MXC		12
> -#define SC8280XP_MX_AO		11
> -#define SC8280XP_NSP		13
> -#define SC8280XP_QPHY		14
> -#define SC8280XP_XO		15
> -
> -/* SDM845 Power Domain performance levels */

I was never a fan of these comments but whatever, it's an include

if the dt folks don't object, this is good

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

