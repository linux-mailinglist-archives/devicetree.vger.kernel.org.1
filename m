Return-Path: <devicetree+bounces-249324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E29CDAE14
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 01:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B64943008549
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 00:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8CA2BAF7;
	Wed, 24 Dec 2025 00:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RP6Egrwh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FFfz7/yo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D787327470
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766535171; cv=none; b=kDJXOPLGAM9ef4xCpBIaO7oK43JS3E7DLNv9IOExfZ52SyYX535rpW0Vc2sy8dXI1gjVqkYOLrSIB+NaKpDD5Dspdtj+fz2BWonft5Lf0FLqQY/hQ06BEgTdGzFLtlaM+ZbSkSIjgQsLIFPx2m6pfVNlvQLe1feSNBVuIP9FnZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766535171; c=relaxed/simple;
	bh=EBmZmCdIjhmTwNIGsddrXweg27XCEIU28L5u4v1hj3Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ggy+E9SiyhGjXlCA9q+16ocssFibFiF3bVZTXVqMulmXKCTNIN5efQeVM2Ma8ED4t1tJ3oTxMgjYjBa806aaPBJNe8sygvgxKK45/Kaz3pEsP94ZGr8dPq6MiM5wAkzUJ6Fwm9QKIZplrRfl7QXKHQmNnLv7YHxHHqysV1GX5tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RP6Egrwh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FFfz7/yo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNKXfb31206448
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:12:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EBmZmCdIjhmTwNIGsddrXweg27XCEIU28L5u4v1hj3Y=; b=RP6EgrwhfQBdzJOz
	euPLu5eCb8Q5riTXdLigsdZ+Tn666b6ymhcdyW1SCFNYIUZ4YE72RPS13lxToprg
	eKA+3v8QGitCkdXayqWXyscuwhHfScmm2PT0LS2KRMuV+NsQHrfCoPn9kXdUW70l
	mUUxnFjOKuQUSMsJOHUz/yeMRcZlWsnTGQeySs+x+IdyzqTciXtLxZv0fFsFJ2M6
	LtYmjMK/x28zblEX+AIqwM2FaD/+RQPoM1yf2RgKRLzjcqTYGWZSQ5Pm57eatcyA
	dt5LUQNhrCP9i4bNEnAiN8bYvF76V5VLuEqt3JKhMnM/VHjhBpPeijty9cB6hxgu
	Xhdg5A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r0drm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:12:48 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7ae3e3e0d06so4755579b3a.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766535167; x=1767139967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EBmZmCdIjhmTwNIGsddrXweg27XCEIU28L5u4v1hj3Y=;
        b=FFfz7/yoVMKh/5fOSs6bwLmnV1tuA9ofw6pzb72BSrK2wc8WdL2FxMH6m8oKB0a/Ds
         NHTIaZTGfXigHIHSpUK4vXGU48Htj99krAD1YjVr49zxXQxmtFRTyN5XtjQ0PUMVdNpn
         MN/hBEiO9/95zq3cCo3mzerHvpeeOGHoVReWRSV97THwFy2onjbCYn5ZhNUG06F6CXJA
         Sg/cBw8cYVwlo7IoYDeedVvYL2zgVWAMOA+iHaFDqu4yEBMTSXl+n7qP4ZPlaKaq7hNB
         8+aZbJxc413s6MaPg6Hy77LOOXpUxJWiZN5lFPdik2hIPtTeN1JOs3F/6a+fALnkSb1j
         jVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766535167; x=1767139967;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EBmZmCdIjhmTwNIGsddrXweg27XCEIU28L5u4v1hj3Y=;
        b=RXvboipECeonADEaHSMqyjOuj0bPTl7un2g2dP2oUc8s4LF40iYJzEi3EVfoPnG/L8
         C0/soZQDHDi7RBIqqovJeYpxGMfhV8gdiOWCjjOnRUIyemKf1/UkX/kPh5dw9umb9mD5
         U9JY73rxDZcwQi/bsUBmEH36CgP3lcZczU63bnZ50cjO4qdmN5TNPvr3miN9/tMJrU6Y
         jjFvGDCjf1jbk7Yj+s94M9X20ok8CTEK+6HSt1WWzlAMKeg8Z4dHH7z3DVsJlDyENMVX
         7T5ClaA7K5YkA4z0EWVBgDzo9Dk8UmqrMN/SrpUqw1O8CEtCZ9HUpJkdIcAC8cCT2tj/
         8Wmw==
X-Forwarded-Encrypted: i=1; AJvYcCVLHgWqvpuYaAoMCBdgfwYROwPhXOuVi+H2rk4XzREKs8o7YzYAbL19nQbwLMVFlz3eNibhbL/gX4Ps@vger.kernel.org
X-Gm-Message-State: AOJu0YwN42BdgNMulGqcgn18TflSDKs06y82bYfyqzaGEpMm53tq7rwd
	cDSlfOOs+qdWYFhT8IEAZhi+UolpBY9XeflQAomAbS8uQY4FIa6iJPhWEd4QlpE5rZxHqUSuJBv
	gsPloOLxtrIi5a+nlqgfnX+eU+ax3lFmDlCbMOb2wv2vnHwnN3eAqZtMSOVd/yxT/
X-Gm-Gg: AY/fxX5C0uNz0DkdHZqUQZyjFYv17kz16B9nd0uYL/n3AwpCSwjhhhzq0nemBS2GKIt
	k1qzDOpffSYUzF9kGmkg57ExEpuPpjjyD90GBfZ9u6f/gmSsyNIvR5MUy79rbhGE4vu3uREhvuE
	YpbaF4b3RtPhmKTFcOBc5Pj9ONspDyVBYO6IdNa34/VAlx+kCs2Q6A+zssAcajcUvRbPTl+ltiR
	Cd+4Gt2r/2cErG4ot+orwHhJikcVRaFq880NhW6hbbcOliPDWbJL5NZyG6WL2QhbgWWAdaeIq8g
	cNUkuVxYCmal6a9gUSZESaJqRxEOQjYKA7cCvWNlX32JnOqWygI+KGs0bUIwJPcmGPZTzua7AW6
	mcqFoL3AqrN00Cbw0a1WDDPVrxXJqtQ3utX9M1LNYNMnp4XSZlOlj/HVebNI5dSis8g1Kqqlvyz
	mXWQaNaw==
X-Received: by 2002:a05:6a20:748e:b0:366:1a00:2dab with SMTP id adf61e73a8af0-376a77f10bcmr13573283637.3.1766535167521;
        Tue, 23 Dec 2025 16:12:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLEksbODQp1xcBoYDTeUyro4Zzh9VJ6vvaGe6Cc544hEo4hwwF8bceDPDrRRVskRp9kcFHrA==
X-Received: by 2002:a05:6a20:748e:b0:366:1a00:2dab with SMTP id adf61e73a8af0-376a77f10bcmr13573269637.3.1766535167046;
        Tue, 23 Dec 2025 16:12:47 -0800 (PST)
Received: from [10.133.33.219] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e79620bd3sm12752588a12.4.2025.12.23.16.12.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 16:12:46 -0800 (PST)
Message-ID: <8bcf058f-5bf9-46ce-a188-e94954101f2f@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 08:12:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
To: Krzysztof Kozlowski <krzk@kernel.org>,
        YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
 <b8f0e8d9-449e-4f32-832e-f1d5597ff496@oss.qualcomm.com>
 <6421f044-2b07-4518-9edc-b9b2ef49f4fb@kernel.org>
Content-Language: en-US
From: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
In-Reply-To: <6421f044-2b07-4518-9edc-b9b2ef49f4fb@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: pMxlDsouQHcS-GIUNF-4BZZ607pDT4qH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDIwNSBTYWx0ZWRfX4X1pYBOVJzea
 Tm9Dx+RgQ8aeKuqb4+F5dfLDx5vOL3yVIxHAaugFcvjYfqpVj3+6ZKtejG6FUGKAmaiKca/ze2f
 38AqZHiy/W/F28hDIsAWB0QvvoAEqC8oYdSzl5Xm4sYLYEpxJ//TjkNNbXTHi+tqz7YUZi4TDgl
 lw7/ghLncXivWMn682NJEhsdhjia3DRBob1HCrLdmCnOE1NAlUyUzZLFqFVZr2uOt5pQFmFe6PV
 wtwf4t12hKH5mbLTBP+rWht5AuYvCPdNAwAjSeV7TyLO+RnbWZ51u9CIHq/A/d0EqDrt2/9XJPM
 S/Ga/vf5AMoQepJllVUvDEJaVNf/q9I/EEyX/W9WHsT12XFuOwMj5NLS+aJ4sEAqrZHsNk/BKy4
 ozvRl3OmRn+KGRlCQa+ogplmqjQCAK9PFBFbRkfpn2tU2NZcRNhDkeQoqiQEWGV+VbE9F4cer7g
 qiIm9WFATYc9m99uOkw==
X-Proofpoint-GUID: pMxlDsouQHcS-GIUNF-4BZZ607pDT4qH
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694b3000 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6y73sl-2QnXYpYKhnwwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230205



On 12/23/2025 9:41 PM, Krzysztof Kozlowski wrote:
> On 23/12/2025 04:38, Tingwei Zhang wrote:
>>
>> On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
>>> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
>>>> the common components into separate files for better maintainability.
>>> SoMs do not share actual hardware. DTSI does not represent what looks
>>> similar to you, but actually common parts.
>> Purwa SOM board and Hamoa SOM board share same design. They share same PCB.
>> The difference is only on chip. Purwa SOM board has Purwa and Hamoa SOM board
>> has Hamoa on it. 
> I do not speak about boards. Read carefully feedback and respond to the
> actual feedback, not some other arguments.
>
> NAK
In this change, the SoM hardware except SoC is described by iq-x-iot-som.dtsi since it's common between Hamoa and Purwa. Hamoa and Purwa SoC hardware is described in hamoa.dtsi and purwa.dtsi. Hamoa-iot-som.dtsi includes iq-x-iot-som.dtsi and hamoa.dtsi. This change could reduce the duplicate code and review effort on a totally new purwa-iot-som.dtsi. If we found any bug, it can be fixed in one common file instead of two separate files. Same idea is used in x1-crd.dtsi. X1e80100-crd.dts include x1-crd.dtsi and hamoa.dtsi.
> Best regards,
> Krzysztof


