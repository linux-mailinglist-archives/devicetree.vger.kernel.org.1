Return-Path: <devicetree+bounces-251105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 84237CEEB99
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F302F3001BEB
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E792F310651;
	Fri,  2 Jan 2026 14:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WetzUzC5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="grl0A5jo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECB930EF95
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767362620; cv=none; b=CGMDfDsc2HZsCVedhMgnqZp/4cHbUY4lzKoAGj3p7I7ezu/Z/tFm+/BjhSFrkT8GI//QdRT4gRAeBMOBwNuUxXZ0R6Gk74NY+X1+9OLGrCHOVx7UyhASMpFHQ+qQP05SpPPa6KCMcDDIU+qxUHGw6/o1M7kragLB5IprmSjiXQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767362620; c=relaxed/simple;
	bh=kblJXqj0op6oKE5m5rMIchGutJ6dMpm8ylqprBBkXRU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eYgdBS/yXlAI4iRp0VGgg3A+7Dga4xQ+6Vt4Oem3oKXBFYo9MDE7Y9AvRsfGV156Vd3CeCSzbp0TNRiFylnIurr8lh5UkBZKJQNya8xGM/pAwef7VNUJ/LMVbq8rATXhc3sBxCQzLtMAmQMWMW8XkKMJb2BaD7K5VZY0pm5vb80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WetzUzC5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=grl0A5jo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029WD1F504781
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 14:03:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QLSpurV53aCYl7zCbTN3/EL3fFQhgyYTGB5+YvXf8cU=; b=WetzUzC5FleQrVrb
	N8Gzb+YkUGZuvEg1xOLEubmdWLeXlEyvau+cib7O1rnqBnVi8grXifq2+ddNdIQ7
	Ak/Joix3HayE7SbPuDQZ4+swpydG9cR90lvCntruc7+hWrazFd1h3HaQfbYj+sHq
	pXAsyQtx+/irPQmEjmCJEYOuKwmgxlFXYBnct0iUEBdXxJ/lJRii42cGAGysDXe4
	aaWQl1vUYaTuTNj8KhLoEsox/Iz28YZJ6uqfy/WaoQU/vEkjc8G0EJQUHQkkBKle
	sQtEWw3PnMKHza7R2+ouPqPJ6D2+4QlnCUydC8mLzynalPIkiSVQUVuojXZRl2s3
	xiHWSQ==
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com [74.125.224.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4be8bk8uv9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 14:03:38 +0000 (GMT)
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-640cc3f5e75so4359066d50.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 06:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767362618; x=1767967418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QLSpurV53aCYl7zCbTN3/EL3fFQhgyYTGB5+YvXf8cU=;
        b=grl0A5joZVWPJL4PzDic6w+7Gj9XQdcRiIjEFe1/E5EZRRPpI/4/HcpE81lcAdpAsu
         7SIzQN5CKyzITzYM50duTIvZlWGsuk5mtVmPjsEntFACnrIPF1qqE/pHlKnhVxUf6XX7
         XQaS3gfOz7idO5YoUME6FVdUnifcWFsy1oFV7UEUBzhPSZ4WYkoC+31chJucouaaCnwy
         qlQVRgxk/r3QQAP7N6dpJpS6LzWjTYpKwAdaLg8gQ2MN2tqX4CZmD4JrmrT2U9Ur3mYs
         N/wyLLC0sFp60TQl1h2DMdoO9e6fm1iP8CjVpBe0m6zozHs3QGf2e2gL+euMhrgTVyBX
         gYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767362618; x=1767967418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QLSpurV53aCYl7zCbTN3/EL3fFQhgyYTGB5+YvXf8cU=;
        b=amovOk4LipMRm63Tf9/potG/4G1Dj2XeoIojOjfrNhEfaADozx+UdUr9SBxHAbMWHP
         wUn1aQA5MnoCyv+67dKby/VoeJNEpQVWg4qQEe9D3tjZ4pjIvh5/YdM/M4uBPm139GPz
         m3/pTlIqO1RcJZd2+mw/QxqGYaF1195ikYQdS6ALc3ItNR2mtiuzVNVTv35ZyDAeb1Pv
         pNUIJIKzEjlmGa5gL24XLdgTEpYpj+neKF2hORYN9INVgY1C8u1/urLW+XGSc7Kh9nsD
         v/+g9CblH7Wk2OV5+/gxQhX45UfWcHgTQmtcQ1cdoYdWuBpI0X4ENaqfCn75ZgNQVOqE
         kbgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpU0DCdS2+rgdA33hO1ahIJiXPIkUk5sGNmThB7zc/laG8LIO/y6tV/+7+gvvednIpNskJgbS8h0EX@vger.kernel.org
X-Gm-Message-State: AOJu0YyyjfdY7qP2UmvmU7u47koiBlja6aYrMmp3Jb6E/Qn8LQY4zTnm
	a1vC5yi8ztpK68O93IJYx8496Ses9e+kEFTt6VGLoTvckjnHoH7dsOU66qHS46fHAJQ60b74XE0
	rkYwAdpC4p3AAF1hT1H+YoMbrBq8aVneu+gA/o2iZTE+AhleqMc8hjhUKIzIqYlOn
X-Gm-Gg: AY/fxX6R06n0ZrVg06mAaL4w6MC8I3wePXMu8jJ6hoCwZaZWoOiM/PXa9zcjj7lOb7F
	lerSzcfPjhfsk69NZ125VxjVjQX5wXPvkexkubFJzBuZKiCLKxEMP0ZC8xPPnB1bnM/0+kF9yMV
	JEIDWqnR7hcp8olFq5Eau1I7GNrV+Sc952z3ZpaI4wrJtaQT7niQqjgIe+u3AaDtnTEehx0W6tx
	dTKUZLofnrq+LDIF/3CukJ/XTWEz3+birw5QCNKTgP6tKj3CoKSqUa2t/00weEhoVsi8D5hsQhW
	kROe+rajZLTiADU0o68qoyykHg5+aGcofzD09Anxg+5qSF5u8BJzI45YkjiZzKrLMYg7gA8/lnJ
	TPePmUruo2tNRnVKp7v0vgawP9OfdlMfTH1MF/5zlUla7suFfmXupSEdSGYQwsFQj7Q==
X-Received: by 2002:a05:690c:dc7:b0:78f:d300:1ba7 with SMTP id 00721157ae682-78fd3002314mr265111247b3.3.1767362617659;
        Fri, 02 Jan 2026 06:03:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE9BjDhRbMi3C8AU7G58zdIuxvPCd0K2QOgpFirkhphX+xf2DldvvDNkCAYxmN1uzn70oVumw==
X-Received: by 2002:a05:690c:dc7:b0:78f:d300:1ba7 with SMTP id 00721157ae682-78fd3002314mr265110707b3.3.1767362616706;
        Fri, 02 Jan 2026 06:03:36 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8056ff4925sm4072504666b.31.2026.01.02.06.03.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 06:03:36 -0800 (PST)
Message-ID: <415ac5c3-c2a6-4ee4-bd88-45805976aaa4@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 15:03:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/9] remoteproc: qcom_q6v5_mss: Add MDM9607
To: Bryan O'Donoghue <bod@kernel.org>, barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251231-mss-v3-0-f80e8fade9ec@mainlining.org>
 <NLGulU4z-1Wrf5120YfX8CYJ_8DSP-9-DhaJ3KAIQCvqF9Qf184udOzFoEQH1qgJDZUl9cxEpsdyztfhcz8G-w==@protonmail.internalid>
 <20251231-mss-v3-3-f80e8fade9ec@mainlining.org>
 <6bfc790d-b0da-4c5b-bd2d-ceed9a75bb24@kernel.org>
 <DEGDp05xNKls7EO30mtT70wJFIkDT0-248vPaBikWJGkFf--YvzpyJ_h5sc7RSH1y9hkCKdFRBIJwQUNE9Rlzw==@protonmail.internalid>
 <a627abcaa38c0ba11c76c1f0c42b0c6b@mainlining.org>
 <d3bcaf7d-06ae-4410-8d7c-970fdb196c47@kernel.org>
 <3i9J-ztSj5n83TPS7yQ3ngZYVpv2MnqVgpnkfywumw-hk2fPN3mty8T-vI2c-1Oh8V_ArprPioyoPxso6k2W0Q==@protonmail.internalid>
 <1440e47e-2d7b-4d49-97c4-a717fadd3fb6@oss.qualcomm.com>
 <c8a7fc0d-a402-40b8-b313-6b89d1f5a306@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c8a7fc0d-a402-40b8-b313-6b89d1f5a306@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDEyNSBTYWx0ZWRfXz1Q17o4nGc8I
 m+1/aUQqS2bDfvHJjp7DZnoucmHcIr7ubTewKJRvTjKzT69Y06cvtBhqEmOgMuR+1x2FjYCtrRs
 ohMh8reh/GCOA1xCgfafM2U4+GegoAiHw6bFkGDIzz9x5IOj1jeO3xtGFoOVW3yoAR1T/8bmdNo
 jZl44q9pAgapjIPJpJZdh3XmiAESNL1Zfxd31H7N4zWao6wqkAoMW/8cY/ZhN1I98/U/COkeXew
 NeldVrQcwcBa8iRwB2+46TSRt+8xdc43rHZDSkIWcdUUAJkA/2orWZaGysvMRgJGOtO8fwvPqno
 n+x9eEVz3S8FYI5DT/S/JUC0Y18JkVuvu8fmcT05psbJop/uvBVO0JRG+Gtm1swX2bYnckagq24
 RtTE/q5Np3rqWvZNtVm79xOeCpOOxS+ZdgRIo5zlzJ9s00IIxTvkXulNGOSVukinTftqxVBI3iY
 /Yqzm7DS9jLeBMjy2gg==
X-Proofpoint-ORIG-GUID: E_x_0gYvAc5EyfJ6nAONNVb3N0BHEGZx
X-Authority-Analysis: v=2.4 cv=d5/4CBjE c=1 sm=1 tr=0 ts=6957d03a cx=c_pps
 a=S/uc88zpIJVNbziUnJ6G4Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=dxggmTjb584dvWX6jHkA:9 a=QEXdDO2ut3YA:10
 a=nd2WpGr1bMy9NW-iytEl:22
X-Proofpoint-GUID: E_x_0gYvAc5EyfJ6nAONNVb3N0BHEGZx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020125

On 1/2/26 2:00 PM, Bryan O'Donoghue wrote:
> On 02/01/2026 12:00, Konrad Dybcio wrote:
>> Now I don't like that this driver is going
>>
>> val |= BIT(i);
>> writel(val, foo);
>> // val is "altered" but not really
>> val |= readl(foo);
>>
>> I didn't notice we were just doing a readback for the sake of a readback
>> in the last revision. MDM9607 should most definitely have it too..
>> Perhaps I should have just read the comment
> 
> Yeah this just looks dodgy and inconsistent in this code.
> 
> And anyway, why OR those bits in...

Changing |= to just = would make it easier to follow indeed

Konrad

