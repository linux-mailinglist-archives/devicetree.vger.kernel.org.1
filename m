Return-Path: <devicetree+bounces-148980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4754EA3DE25
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:19:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35AB516E016
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71C41FBEB0;
	Thu, 20 Feb 2025 15:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q9vjG56F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233011FA851
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740064639; cv=none; b=NDdZ6oAjCg0tymP7CUpVJIMzKuvXNlhXvO3ad7JZZ+n0WeTlxBxdyMit3wRXTjrxBemi8+8YbtFrSPLArIAVAe23pD2/DFzvDQi7oCnkbYkakzUCv7rYO2MyTzm3ONiW3qMlr9BxpO4CzH6vfPx09FOc65anx/kNSGM+Cf6NRfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740064639; c=relaxed/simple;
	bh=cXyjw3U+o9sNonpoIUsGd91UQ2ZT2Fd333nrixD99I4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q70p92XuZ3b5Pn8SPSy2Ccd2bW0K3pZ2facciiSB2jONIT4RG5lc2x63EpBSyPThoR0VeZrndb2FQGOpO+FYoYyHVWxRSibrztsH/eWhSsfpIjU2zXot0dD57KK/6oeSD0n9d/sXCIVz+cTQ/fZGAqTfcoIjJIYwroVLGQFvYFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q9vjG56F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K7FhYd012167
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:17:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kyqX/wPqcVrrLtvA/RqDwo6FUcM/5iLCU4temwHdiYM=; b=Q9vjG56FFKu9Fupk
	rTl/jzXxjNSgMUPblmVVtcXl0TzBsAj10QUIUXlm1XSfoY2wRKxMPMR4DfhhukUk
	1rsG4o8aUPmFn0iAX5086dXNzp6NhYW3vqc62A0GP/3mIl3f1pRI2a75Qw4ohjOJ
	rQf7fnU8yoC2E7SYWL4Gh7Q9A1+NMS14euQu1o6w2TKEopasiQtG3o574ErnhsbP
	u8dYgEkLcChJ1XkvpKQtVk9BleU/QLtsn72aEZIoQ3vPtmWHWs4IW0nxP8s6FgXq
	VUKYpF+QJh7idSfJc6thV4qVeX6VS7Dv74eUtzk2LGKAqH8BVU8vGn1JsJEHM2o5
	3Ov7JQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy1phv4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:17:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e66c7e5348so763346d6.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:17:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740064636; x=1740669436;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kyqX/wPqcVrrLtvA/RqDwo6FUcM/5iLCU4temwHdiYM=;
        b=YKgRnEsnRfYmSw3Q0pwgv6V91TT63B+SGl5H/k3bCuz7/ujlnexGpwO1gGJr0Ck9Fr
         FcPwQR4dDgci8zTCWWTKMiOU+/VtRIol5UAdJrg/Xrfie/52zn97LbBkBmiqVDBEOPqB
         v5tiiygEbQSWCe1FY5Vxm/HlFYvdBG8ibjToKKvdyzAZPGC3p8Cn+uJF0hgmhrKJpUty
         fha46tlZLXrHp5LcBzEo9U/sfrRJooY8ZwGK3/EYjRX8hxTH+BNTyrF72Kx2Tgs5r5W+
         OPtDbrz8gZY9O74aPgdW4WEO4cw/XUzfW2lz6Vyhh4dM0/5FjVnuYOXWX5V6FxJn44F9
         aGpw==
X-Forwarded-Encrypted: i=1; AJvYcCXTJyZ+D3ASG7fPih91MNnQCCwj4YBnaZYwd5kp27umSAGJmOwyw6ji8nUqZg+vpiG4yejmAJR6tJrs@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0AsezKQQzX61MkGTyOy5KiW7IIz4OkTZLMbyyN19dWyUMC+0q
	XMM/PzLQ5j8Y4fyqAR0r8kXF6+JjAsaYZCkT/7gRKMuh/ZkMPy0vBJ+ROdWgB0fb/Vp1QVLpgLo
	j8diFoFQ8wGJVac3iX/UKByngXD38Wbbgb2Ay1DCW1H6v97o/oXMYlIft7DSQ
X-Gm-Gg: ASbGnctfonI33ZsreLYK6m56IJn80HwPmkp3W/eQQP+/3vcL/OQbMeAyXNBZjXLRh88
	Ea4mhSXQq4f9EvJO22WM6By3RCnHaYLLByN9KRME9cvLaSuAu2FEX1gGWntQFd/OUZK2s5QBHIk
	GtOjQEO10KNzY4/MTnOdr9EDyShMLoxW2WJdkDDi/OlNasOfQl18ntXCv8BjkDFUAQ5nEljO0d3
	CUuED3h6xI0HZqOdHvaPCBUcAEeOT29+0N5yJmZL1e01Chz/xRv4+nLEx5c2qi6HFG8g6NS0cBv
	4KNM4yU3PMIeDyBCQxhQ0ptGskDKaYoLwfvwLzgOs1mLlrJMEpkx62CeOdM=
X-Received: by 2002:a05:6214:d6f:b0:6e4:501d:4129 with SMTP id 6a1803df08f44-6e66cd0f7e5mr109551136d6.11.1740064635966;
        Thu, 20 Feb 2025 07:17:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFtyET8snLYOZ5UG6zsxyvaebgAOp1Lqtaa+U4eVMQcS6k6ousx/ewVzRncsaB9ipBkNQttnA==
X-Received: by 2002:a05:6214:d6f:b0:6e4:501d:4129 with SMTP id 6a1803df08f44-6e66cd0f7e5mr109550916d6.11.1740064635495;
        Thu, 20 Feb 2025 07:17:15 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbbefd080asm517329366b.179.2025.02.20.07.17.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 07:17:15 -0800 (PST)
Message-ID: <b3b20d5f-6281-41c3-9769-6545c6782eea@oss.qualcomm.com>
Date: Thu, 20 Feb 2025 16:17:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/7] arm: dts: qcom: apq8064: link LVDS clocks
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
 <20250220-fd-mdp4-lvds-v2-7-15afe5578a31@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-7-15afe5578a31@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AZ_KB0Q-SCXckPPrh5h4kzsDc9q3Sp5x
X-Proofpoint-ORIG-GUID: AZ_KB0Q-SCXckPPrh5h4kzsDc9q3Sp5x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_06,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 adultscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=660 suspectscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200109

On 20.02.2025 12:14 PM, Dmitry Baryshkov wrote:
> Link LVDS clocks to the from MDP4 to the MMCC and back from the MMCC
> to the MDP4 display controller.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

