Return-Path: <devicetree+bounces-142252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EE4A24A00
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC74B164838
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AFA81C3BEA;
	Sat,  1 Feb 2025 15:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VGZd1DJv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24811C3021
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 15:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738424490; cv=none; b=IbTJnKFeX5lHNPATPcInCMFeVRnQ4LnGgxnXfocylOJI+AqoClbfa2AvU32hYbHq9xXd23RvpsLNeP1sM4MF0SgHyq3i52lQLL23tMdnzLhPg34KhxFGzMxyhUj17J2dQSpkiq1FGtWUom2tZzW/aaAEeyRNxWJVpdV/dcox4+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738424490; c=relaxed/simple;
	bh=EAuWRFSzbZPoOpQmGlt+48A6Rn20tQZRvUQGrlXcIUQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SnyX1ut5Kj2Q5mN9lDc0q8zz2bxnbyLFKqHSkDFawQklBDZF4Yx+1LpZCs9otZuVhS5hgacHL2Z/ZQLmfUYc3eyMeJpJVA4DMibuLix+wfOD3Rov8cM341Rdp7+qdSztMCyFh8YZWAXgttp75wrIrVuvefLGAyYZdZB/r4TbOws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VGZd1DJv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 511EtuGK004902
	for <devicetree@vger.kernel.org>; Sat, 1 Feb 2025 15:41:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	umkiEAbpIImGcjGndXh17mm8/qWIyQJoDQy7OHBf4jc=; b=VGZd1DJvhNGRK4ca
	S7TiRRN57sYwgrt/Q4ihs/e+7II9DK7oNX+5qGWoDbgbB+MAXgHV4d2hwAYSBsNe
	L2gH1MgLk45l0tGzGmWOBsgU8gIlnT3WyyRXuN9pVESbtUMpyMkEiLiT+63L1WV/
	+Ri1kRm2rTkfgr4KvBgKpNsyXFQaUQlr8I1Im9CxVyUgdQQGzx9aPhlmZ/JbknE9
	KA7N4DeBh62tTtihcpGYtoyGYk4XNU6dRD+xgy04klnXJh1IA/Mu9iFKAcsoiNou
	AgrJ/K5JELyipEtBYJ7FCbHryv70cXuXd8vVfRVgtFeDRSGHBEl3ZxWtj8WpULcp
	YJz9dA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd5y13c1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 15:41:27 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e19bfc2025so9216026d6.1
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 07:41:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738424487; x=1739029287;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=umkiEAbpIImGcjGndXh17mm8/qWIyQJoDQy7OHBf4jc=;
        b=eR1LJxsYq4qVzQhlR4Bnsj7X37L0TkPMlQN/HtN28xagDOAmSP2z+GkoylopfYYper
         JhUMKXvLUEkQ9GFbiT9jWgDKx0NMblAKkA4ZXQ07e/SegVl1mBmZC1eEpue8SrPVTcg7
         3r6b+ChtgQjQ4ljvea7U8G8WdM7rgKFTM3b7gCmfFnbE2SFZ7rKkYrLuwiuh3Pjbd+sO
         nVj/eN1LfPG7SOwIRd+eG7lZ4ymHYne8Eykq1KgE2ZQTHPv5oOVqkDKCFvFba/hz5SkS
         X7nWbKptw38LALqpgpvnIzt85fSJVaSD1pyfhdts1JkohY67N+oh291BxjHMEv8UNUJS
         cJJA==
X-Forwarded-Encrypted: i=1; AJvYcCXdgoyluaN3598aTB4iZspaICJEcQZ2YzUASBtHuUEB9ovjOSdHA3rXyWOdBReIt2rYwYETdI8My7Z5@vger.kernel.org
X-Gm-Message-State: AOJu0YymEEVmoi2ZsZfRuMXYGwiFLXrhCrO/rjyq5AX3srAEPPfaGviP
	13MtbDNhsIxrDger88NvqKwco3/osdhzFKAOsr3e6r3huM9gs/QHPpolGUucs27BRXvHj0aSL3r
	ElnGNQTKz8oWp/1Mc0GsvTtWuSVG+GwUmv6m3Om26VQv1FZ46inlFx9s1I9tc
X-Gm-Gg: ASbGncvKnlA7ivOklMWyUzJrt9NyZE9TxF68maa7xe1gyGKxpSSkoow9dsskt7b5ot8
	gzLnX9MZsXYK9ZDWjU8Gpsqap892xsALeQRtXRIqXgxz9YCQkXVyyA/CsetQffOIqK5zQvShFKu
	0amZ3b8a9+CKcBdvvLnn2/mih1gCgMkF/yRzSLLl7wQCKHesGczKrbxYGTFjbU2ItXPiN71gr1q
	5gA3YodFfkhrIyxAk+Wz+e24Ck4kCUKZiSwj2XXRqx5CxFhTpPeRnWeUwWDXgyC3NUXQueYqPG+
	MLgdruOOu97+LAs8TMdB/BqW89KD4+TyAK+k8ZsogCD2pvj6ImYGVW+yF5Y=
X-Received: by 2002:a05:620a:27cf:b0:7b6:dc5c:de2 with SMTP id af79cd13be357-7c009b91905mr601833985a.13.1738424486434;
        Sat, 01 Feb 2025 07:41:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnUksznpySe3iXS6aTkOqcqTJDL3C7UtJvJBqhbC+hblm/2idTj1UbgWT0n0clixn0WjRITw==
X-Received: by 2002:a05:620a:27cf:b0:7b6:dc5c:de2 with SMTP id af79cd13be357-7c009b91905mr601832685a.13.1738424486005;
        Sat, 01 Feb 2025 07:41:26 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc8eaafa38sm1592278a12.76.2025.02.01.07.41.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 07:41:25 -0800 (PST)
Message-ID: <80948a6f-1cd4-47b3-9218-f5ab0c25eb3b@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 16:41:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sm8650: drop cpu thermal passive
 trip points
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
 <20250129-topic-sm8650-thermal-cpu-idle-v3-1-62ab1a64098d@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250129-topic-sm8650-thermal-cpu-idle-v3-1-62ab1a64098d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 39lUJATHfRccUbLthuqOjodrTYLHpEpg
X-Proofpoint-ORIG-GUID: 39lUJATHfRccUbLthuqOjodrTYLHpEpg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_07,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxscore=0 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502010136

On 29.01.2025 10:43 AM, Neil Armstrong wrote:
> On the SM8650, the dynamic clock and voltage scaling (DCVS) is done in an
> hardware controlled loop using the LMH and EPSS blocks with constraints and
> OPPs programmed in the board firmware.
> 
> Since the Hardware does a better job at maintaining the CPUs temperature
> in an acceptable range by taking in account more parameters like the die
> characteristics or other factory fused values, it makes no sense to try
> and reproduce a similar set of constraints with the Linux cpufreq thermal
> core.
> 
> In addition, the tsens IP is responsible for monitoring the temperature
> across the SoC and the current settings will heavily trigger the tsens
> UP/LOW interrupts if the CPU temperatures reaches the hardware thermal
> constraints which are currently defined in the DT. And since the CPUs
> are not hooked in the thermal trip points, the potential interrupts and
> calculations are a waste of system resources.
> 
> Drop the current passive trip points and only leave the critical trip
> point that will trigger a software system reboot before an hardware
> thermal shutdown in the allmost impossible case the hardware DCVS cannot
> handle the temperature surge.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 180 -----------------------------------
>  1 file changed, 180 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 25e47505adcb790d09f1d2726386438487255824..95509ce2713d4fcc3dbe0c5cd5827312d5681af4 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5751,18 +5751,6 @@ cpu2-top-thermal {
>  			thermal-sensors = <&tsens0 5>;
>  
>  			trips {
> -				trip-point0 {
> -					temperature = <90000>;
> -					hysteresis = <2000>;
> -					type = "passive";
> -				};

Feel free to drop polling-delay-passive from these nodes too

Konrad

