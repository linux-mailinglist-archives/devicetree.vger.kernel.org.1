Return-Path: <devicetree+bounces-250799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A86CEBE34
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9CBCE300F609
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909203203B2;
	Wed, 31 Dec 2025 11:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fn6OLCFo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LuXIhlVl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257F172634
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182375; cv=none; b=dnGGkeV7kq/0ruUDkEhL2aM7gXEo/St6Dcz28sdgVIzNXB3gq4FrK7E1ssXBIrftPZRyd7P74zaJU95IsBdqm7i+ARHf2O5g3G6Zo9nZaihvCmT0GdXv8bybQBRyLiItb7C2K5/dkfwe0QWsUAN03tTUW+ygjCI58NLzZm7E/Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182375; c=relaxed/simple;
	bh=uyffDGfn05peAWo3sgXumgnt3wMR4eHeF4ZsEVRMf14=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VWDfrDuk0CdbhjAiUJ4wLVTKLOBvtLaw48vaz1+qCyk03GwUIZ+9CsdhudQcoZOnLixYm6vmN1Tqznzx+e/vCQF5GInchPeqex7Ir3SSlA1k5pwQeBouLEYw+K6er6bL3uy0DBqWeCVdOX2u7B8mydBDNP/eLRy98aNcxWsFh8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fn6OLCFo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LuXIhlVl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV1njjN3971203
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:59:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TNjhPMri5egMZGfHF7ADhCRlV/hFxO0EU6L/JwwocvM=; b=Fn6OLCFoIX1LUTLM
	rbZDaBB9VeH4f2s0MIkvO2AaLbov8KhpkFInAn9K0FPyEfXY1Lsyx9kMxM7ct88F
	KLP4llSpe+85LH16mYf3UhsIWI0MSsQebIrdjV8TokJkAXc5Q/dNkyNkVYpt824O
	T+CRFPHT6MUm1u1SSE2rRuAOgHY8OY/EJXc1D8UIsWOgOCRpvrUW6LY31knwHIDp
	jbkDzNa4Ruw+9/XejK49O9rqvqViROG6EDU+ZmlCrr77O4ZwIZbWUGHFFQYjQLnP
	f3QAsPYK90G5mwod/00+OtCGRkIKTWWMLxaTXDaS0AwmdOJ+ZMDE+6NVURIsZ8KM
	OKwCZw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcdky2krf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:59:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee07f794fcso42544651cf.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182372; x=1767787172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TNjhPMri5egMZGfHF7ADhCRlV/hFxO0EU6L/JwwocvM=;
        b=LuXIhlVl+0x7i+H4OB89/fud8e0wGToxt0HKbr3r1i/cF3zv8BTsO9B3lvAI4BnCj9
         n/jxIHIcC0bRaGtoOCkw4Ez9sG3vYIBolYKUahj8B9gYajIoO3Ceb3PxpWiRUfXVHKk9
         KxJZH8PhGWmEzFjxvyvr1+1sFggSIVIoaz654zeUWjk4La8tSG5TCfpykSngrFnoA+Ep
         7CrraQXc6k+bD34BAB1LZJLWfA2kqJ3jtThmoqpGbJ9QvoEJ9dSjfkL3pn3NNXH+Wdd9
         96pC82awoQ7a7w0TRdX8EdApJKsBET/9q6bS/MDQ772VjfeRiVMMwCd6ZywSEXNd2Wz7
         mmHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182372; x=1767787172;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TNjhPMri5egMZGfHF7ADhCRlV/hFxO0EU6L/JwwocvM=;
        b=GXYoDjzy9gmRRg55zlPZsIhCkhUkds2Hi9mhlFAWDPtYxcUfqSJSKyIBztcodGL/fU
         pDyeUBV2TliyiSITD4Idka7SdUc/6HJXrtgWL/WrhOn5LAeIwC25jiyQw02QcvPfFeRR
         ScbhhOmomnU10nnJyhbKEitsg/mJUXrZAlzAj7t0Bf4Op5Hz85yjbH6xWpwp8rNVe3DX
         rHDRGUUToyOV04ICEVOKE/yR1c0ED3prR2sUllGLyo2l940bNMl27Mz3lREYCUUnHkRW
         VD6UYr3ICpWwS3g+FKt4t/ZUOSZfy+zKWB9UdW2lP6Dn/ejyh2/xATXUYa0gkCdqbcCZ
         TP3A==
X-Forwarded-Encrypted: i=1; AJvYcCXJYP+cP9XLTlXepRjMR6mdXbxOMb/17rcTwIkB7qVnLdB/CONYud+4hA1Qe3OGGb9L9tOtBBbigYGl@vger.kernel.org
X-Gm-Message-State: AOJu0YwPzkh8Fkele+i1ylgyekLv093Rb8mpFJ6VGYxMET3E383dKxS4
	7qljXubG336xi8QUe+uuU9jeRtYAN/lg5Ut0NAETopbgNkihozaA1ANy8U3rw6jAGGPmhYhEmzQ
	WRlxjl9IEqXHh+IzDn2CNnpDGsHkPx/Xm7HfZiFq+LVDC9wfXSvwNkb1HK7RnHE5O
X-Gm-Gg: AY/fxX6e4mOIsGID15GYAGUVTU58PFWC3OJVqrf02cLsZaCYX1cOe60ZQkxKOJs6xfr
	+89JrhpF97Wk9pIq7hZs7A2dhXEyN9t6hsTa897aROT+RwDBPUPlmjU5QQzzNPRTMt5cKCWYJls
	D+L3Tzu7v6XgQUaGHCO6Ab5tlfuynJSxyzKA9vJGXwRjr447VTUGKazBrkUICDySOu+BK/guDFs
	1yD4lOe/xpNu96VFORCfYEy0GmjXLvxrEQFu/x8rFnJnwzzvJFpHOF6J69UuGhQRhMgEm5+tYOa
	0E7dLSNWOsFw0gLO5xUJbL12pQRuq715et/IwvasPUYXfAzUcWkGT4R2CGffLIT2oq8yMwHSAcE
	KCL5p6CaxFdQkwlZfAkNgy0lkm2WeuqjocTrzPoTliz6IeOX65RHfMEsw52gaAvQxvQ==
X-Received: by 2002:ac8:5a46:0:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f4abcd86f6mr410376941cf.3.1767182372587;
        Wed, 31 Dec 2025 03:59:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFn/5ejBuCR7T6usDlrDmTh8+/iYla+IL6/jHjwTNavUKl5hdjO3p1G8/XEudpBh9M+sUWJuA==
X-Received: by 2002:ac8:5a46:0:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f4abcd86f6mr410376771cf.3.1767182372182;
        Wed, 31 Dec 2025 03:59:32 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de10dfsm3835467966b.36.2025.12.31.03.59.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 03:59:31 -0800 (PST)
Message-ID: <d6396ed0-8529-44af-9d2b-cf0bf03f17f6@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:59:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org, casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-4-gaurav.kohli@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251223123227.1317244-4-gaurav.kohli@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNSBTYWx0ZWRfX9A2P4Q0beoAk
 jkb4VHDl5s+E7BJSY/bB7lqPwtdgMeZo8EjceO7UE/YAvWz1jMfx+7541Ofeh/oKdpMDwbzFEA8
 dylw9jTYRYGlTsarplAHPRSbTzOA5nb8uyDqw200Fo58j/mZUgsNQBJcMQVqaPQ2U4U3iAwPQSe
 bmcL9YD059NsbfS2fwukYThZwO2FtRHpRc+ECAtP6kfEoG5y/9RRORbiPC/P4KfWiq7nnO8+DO6
 YPWk68/wstiXntGo0em6KwY5UFBl3STemXRSd9wQ9tJP+YRQPf3/jTkY+9HLLTpvoBERVySllPU
 fGtJol3Iv+iccrmihn/dyzaEA6LEf4UXEgC7VO7T6yB0qzwcVWLdgDmU92pTi/bMWxfrrkMuTP9
 KeD89AQNgpt/T7jq+1tXxN/dc+Sz5pfaV8s3QPqMmWbYPRiksXZTqLLYfAmOFb8zeyFN1yES0hb
 XRlyHNDOAzZecFRuMYQ==
X-Authority-Analysis: v=2.4 cv=Wskm8Nfv c=1 sm=1 tr=0 ts=69551025 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=82mGn9uJx0ILj01WsxUA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Eq2AtasHBsBns24vtApKdMe_2yN1oROk
X-Proofpoint-ORIG-GUID: Eq2AtasHBsBns24vtApKdMe_2yN1oROk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512310105

On 12/23/25 1:32 PM, Gaurav Kohli wrote:
> The cooling subnode of a remoteproc represents a client of the Thermal
> Mitigation Device QMI service running on it. Each subnode of the cooling
> node represents a single control exposed by the service.
> 
> Add maintainer name also and update this binding for cdsp substem.
> 
> Co-developed-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---

[...]

> +    remoteproc-cdsp {
> +        cooling {
> +            compatible = "qcom,qmi-cooling-cdsp";
> +
> +            cdsp_sw0: cdsp_sw {

I'm curious about the meaning of the name - does "sw" here stand
for "software"?

If so, does this essentially mean "a software toggle for throttling the
CDSP"?

Would all such occurrences essentially always have a "sw" suffix?

Konrad

