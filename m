Return-Path: <devicetree+bounces-212544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40327B43281
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 090065679F6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 06:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7117275B0A;
	Thu,  4 Sep 2025 06:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UUBraTIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A29213E6A
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 06:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756967761; cv=none; b=E/zBS0LtCJSRisIm8WbkC9EW5la8nj8aB+8ge6NMUCSeNuQTvIjN8SiMXZojaaTqCoozxrnMrJPDUgCKEhwc+Rl9qIJ/Mp9nrjcbtvFScmZt80cM3PppSKTWHWFfbbtp4mSTSrl+2/YS5vujcpKcWV5IAlNGxTNTZpwo8S5QMJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756967761; c=relaxed/simple;
	bh=UJ0KZK1xnQRZT7iijdpjHkkIB/eIpt+SFyHW2s2cSnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HhlJNJab+3w2FRun4/KXVzmYZHMNDXPLo7PNFLF13zmZd22OIsKpStnnRWvH9ucYr4mywriU9fqDswL5uUPgYTXzNqKdx0qj9UbYznjfACh/fe9W4nC5EqN/wi0hcU157lXV3TXwPHVAKRI+IGbZYP4mGhuzwDl6v/Q3/EsLgjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UUBraTIi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841Tuwo029895
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 06:35:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kWQHe8aTqvkPbjKWyJC9RECFwkQ22fnfERhVPTlFZgY=; b=UUBraTIiFcKJ6O5N
	918tFPm4wsDxLklKZtmyxTos6whJ1M2uIltlFrYEOlQKn9p+tYRzNJ4Qy5LKIYUQ
	OOwaMHJIH2+ZEqTVRJtydZy8ifR/h+dRWXcIZ2bW8dshnckSC2gf6aAfvoRfpZnZ
	OLkVucATNaBNeSRfan/+aY8UUJSSWabrf6WOtHoxqAWYMSkzhobJ+E7lv+uXKih3
	Y6GGHc2l6bGbDwT7PhNO6ribX19Nq3teOnAhwWK/ilIdYiC0P8XeJqK9veAPeOcl
	eKfr6HcHe0DAGxARIgmhYFahTMTkiIGU8pDQtLoeHkQC2TizaCZNfHl4RM7TzKny
	9tjN5g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpekvx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:35:59 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3276af4de80so781329a91.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 23:35:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756967758; x=1757572558;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kWQHe8aTqvkPbjKWyJC9RECFwkQ22fnfERhVPTlFZgY=;
        b=E6FeytLF8rqmt93pkf+/2NUEhrT24PjEPTZ0jUrxR/qSyT+w+bPHjWgM2ag41hbxzH
         5pVbZ6NihXBUXpLsAsR30rZOu6Wy4zBvR1MUS4iaWsl96NZP6FzK8XOHSVHNczqRGQJf
         RlyMvF6+NHhNRgmDy5ksropaBcWplTYruZjsn3HKm9VWp+XPnFOG5yDncibkyFBDhLa4
         jTSd+i76nvv6vIydRvu+5BDIH5PTcMSZqzOqGm6fRENOeiV6/Z7LTD9AUR9/WHDSoPbL
         VvGUoUOH0JIUktwBp/TZvIIY24FSzJMkZlwozPKEt+8qOlVzLJi1QEv1RZGaBLM0cxSb
         Hvww==
X-Forwarded-Encrypted: i=1; AJvYcCWaxvGxaa81uRvd5A04EZqlwQunI6M98OVWP6/WVF08AhY5/FjwGvLaN+U82sYlZWPpEQXZtLOdLzJu@vger.kernel.org
X-Gm-Message-State: AOJu0YyWE8jh9C1jBhd+6/Rr3/vaOVKD1v3VD1IzH6a4jMbMA4d9fQqK
	EoCsR5q5gPPYrCF39Dj2f94+Ixd/mpW05RcQp5nn8aUVXrVYx8GSJl8fTumb0/FjgH+GI7ld06+
	kJRzvyIanLNda0q1h1BRM8N7/XpHKL3t3mbwPslvCpDUNrG/vwlpZG6GUsPUPCNbq
X-Gm-Gg: ASbGncvQMdh0RJLVRnuh595dkrIDkoc4+KEYGGiOmlYhAvpJY1HfuNp1NApJlmh7Xxn
	26hbAqG8YXeqt904cHou9QbTlKRu6mfvXO1bd1SgYEw0zDSauUr/k2BGwyMru/UpCtZUkBZrm8L
	Ooo7FsMOGYqS7F9AlYNwQyd4Ntup+PU1uXTG3hgK641q1+rwDyWV+2i7dgx/5+NBL3RAOuJc3sy
	a/6yqTooKT+FXohdIqVuoRXlq0QoQGYoVqq0dLSAuin+CNsHvfqG5BAysTcY47tSDYhDy9CF027
	8O1jiwQtQXOQiWkYt6wBlJPPRNk6IffM4HFl0YrINEVPdX773nOK9SVeQ2peElM76zM3YJJNnDN
	X4ETKcDcHSFWF8qJGm2eOkGpqKZgcRA==
X-Received: by 2002:a17:90b:2245:b0:32b:90a5:ed2c with SMTP id 98e67ed59e1d1-32b90a5f1f2mr2536804a91.20.1756967757710;
        Wed, 03 Sep 2025 23:35:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0AZclcAiAIE/RLioDWTNitUCYKwiFoqEf+Fx+HDf/RA/CibTj/rrt4B/KuNcWo8T1gpG/rw==
X-Received: by 2002:a17:90b:2245:b0:32b:90a5:ed2c with SMTP id 98e67ed59e1d1-32b90a5f1f2mr2536773a91.20.1756967757183;
        Wed, 03 Sep 2025 23:35:57 -0700 (PDT)
Received: from [10.133.33.41] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4fa1f21415sm4007673a12.18.2025.09.03.23.35.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 23:35:56 -0700 (PDT)
Message-ID: <25379ac1-4559-4803-b03c-bd24355d3b4a@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 14:35:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
 <20250901-qcs8300_mdss-v10-2-87cab7e48479@oss.qualcomm.com>
 <j7whxaqfeyz6fqwg54h2mivobbvo3plvxxzor7whmwjkhavndw@ulqfidkwwn6j>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <j7whxaqfeyz6fqwg54h2mivobbvo3plvxxzor7whmwjkhavndw@ulqfidkwwn6j>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IbdZwkvYPJshhi_iC6LRx-3rurg6y8IK
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b9334f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Ik-895_utKsnK2WA_CQA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: IbdZwkvYPJshhi_iC6LRx-3rurg6y8IK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfXwOSFx0mjPGK6
 8GXfHtjlZSEwh7XXi0v7PXUAPU7LnmQxYK59EcPRGvbjWvTmwtCt5uNmiyjwJfYGoptywiBvd3Z
 LH2O4bLUnkyyqPAreDRmSDzg1uki7pXjC3R8Uasa3kcT2wkCOn/dHaUOQaMnZ6KCWe8RjPlJaln
 JNcuGkfyNC+qUpjtHVD6dA06MC1vwxM1zYflBmCd+WlRGa6fiNOUXsRX9qqjI/BPC6Hpn9ereg5
 keJS1jmB4MctCJJMNpXl0a/xQb0oPznXAgoWwVSX9/A9zmG22aEsOU6YsUg7nIxgkkFmWJzYBx1
 z/tXC/yac4EcxuRVR5JBvWFVI0um+5lOWdIiU6GLY7V9WG8w4FAvHQNhenCCb2lxIOQ2+E5fjha
 yIeKOJvK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001



On 9/4/2025 7:45 AM, Dmitry Baryshkov wrote:
> On Mon, Sep 01, 2025 at 05:57:30PM +0800, Yongxing Mou wrote:
>> Add compatible string for the DisplayPort controller found on the
>> Qualcomm QCS8300 SoC.
>>
>> The Qualcomm QCS8300 platform comes with one DisplayPort controller
>> that supports 4 MST streams.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>>   .../bindings/display/msm/dp-controller.yaml           | 19 +++++++++++++++++++
>>   1 file changed, 19 insertions(+)
> 
> I've picked up the last version of the DP MST patchset. Could you please
> rebase this patchset on top of it, hopefully making it finally
> mergeable.
> 
> 
Sure. will update it.


