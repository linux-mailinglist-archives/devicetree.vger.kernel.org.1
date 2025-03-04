Return-Path: <devicetree+bounces-154021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9189A4E821
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4013189D0ED
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F244A2777F4;
	Tue,  4 Mar 2025 16:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jubrd4tS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4E5277816
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741106928; cv=none; b=Aya+uiaSOABUjSd+Ko1vCIK9PmD1FPAyKCk3u7HDDg0zEuMJdjPQBNNguYOyiOBAcumiIX/2BlJ2Evs1BizHFHFx8qJHe8Bc8tHUL0BfEMJGxnXpZ2hTAOldpQuacWWv6D3Pu38L/YNMPRVzD8vw4YmYaN8gHnmOtYMI8L2UDSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741106928; c=relaxed/simple;
	bh=sd3DB5QAo14h5zLM+vWzziyxgeu9gXug/Wqkl/V836M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UqwjWATzf9g+xIVrT2Yk66ihB1rzohw/mQ4AQbGc8QhI5ybu/gWE01fqiE1k2953/KO+bVLDIMFKaKUwcctcf+3cAxubKp9y7O1GrmF2PM5z4RPp/ZooGWqm+pTNVUe9E3mMQlY8v2pTgvJKMjvn7wy325or9yYu1ne3WKiK7pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jubrd4tS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5249g7uQ010345
	for <devicetree@vger.kernel.org>; Tue, 4 Mar 2025 16:48:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gg8kGpZ3MAusVn1q3n6ecqBdb3hu6mGJUnWrCE8von4=; b=jubrd4tSj4b+OvuB
	4ALyGT4PlRgXWsHH3zIyTkDb0nwIQ0FuYEK4sqXErixAInEsqm45ln4HbWYyVX7E
	rRaEEwQ2GIAFPnpVMWpgnx6rrRgIHXENQnH5C3/9Fc1nTcj3d/Gq5aFMj/5pdcG5
	wWc4ZU20DaePo/yBPC3lg/aIPSvEkJ+hZ6G/MKjb8MO+rZWm+e1yZv0p6PlXPkvL
	vMzDNBHsGi/dcKiejlRwZoGRWoBQbC18AUst82ZJN7DGL2qGLS5WjqnBGWZzOtZy
	/E2ifAqV+XpycXaCYaYURXmwP1HFVXvKz9IckqXtvg4fh2xp4PEAn+OoXi2OSBtf
	o9KOxg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6wjfvn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 16:48:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c3b4278634so56703985a.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 08:48:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741106925; x=1741711725;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gg8kGpZ3MAusVn1q3n6ecqBdb3hu6mGJUnWrCE8von4=;
        b=G6URXzE0lpxQFe0ITPvhNJiF6FZwrD9Vmwvmbme6p3ROrUdDZai2WKtuKKP1CiAsz4
         9RyAX+FvKd2xl4FyfooWl4FqjyYuok4YUKDF4ibYZVlbMGnQVWxPSfZOGquNoUNmOpcq
         7Q/mueqK3a9V43nYZAsMZComwSPVzu5JzT5+QGwMDwdOxrRNEbFyuXgFmnh3EE4NzHgi
         8Qo4lbTsYdAbtaG8GCHwiVQ7wTXrzpNeFCKBSdGdW6OFYPIWOo6VRPcq0ttA4CM92yNy
         4exE4Meds7DgjjF3sUf9lIquagXH4+ldGqOy+19750CXSdLVEnHD49a1i1myc9BV8Ei1
         7l/A==
X-Forwarded-Encrypted: i=1; AJvYcCWGx8t4tO9be9JqIyZyWZu9lqn0Hp+cOokwzyeMfZM4zfo12HKeGzkf12L8x+Qb3Y9SD7ftPnC8MDN7@vger.kernel.org
X-Gm-Message-State: AOJu0YwY8moRi6uN3cieeflzzbvhOQ2YCe0nHeaOZcJFyRh/Lsp8mECR
	AzSEAO28lNsZB2pnHh0v9GIR0B92+kX1WkLRVWqMQ7f5MBZD5QV8rUfZAuqIvcktAQiV6pfBSkE
	A386b8MNYsHNCuC7zggMRuZNJPC0em/vAxqqAAgzAARMH/3q1t/qw2BnvXFFr
X-Gm-Gg: ASbGncvoYgWb87XivAlKI3809pU8ZXuRC6sGutxN9w7fNEz8fhZB7DgiAwF3KqtlPxu
	D4g2c7pDJTThk1J97euRc5TErK/N8XQaoiF2Q+ArsflyjPAyj7TDlqVRGkh4OZz1+riEUSy/wzV
	l54RJ045KzMn4PrO0t+IrmenAT1mOETIzqi5qRsDME0icMw8MG9jtJ95mRfcWzmyn3FcF2ZFdQw
	Ko1nwh4AsvDh4YRjVmq3vCwxNHRENAs2+CJGdaHwU5BW+90plr+r+7rnCTRtasFv62EXS2hwbzq
	saFbXWF4sShieZliJyDTDEVjC/Ad4Dd4TTL2AVw2y8s2tL+itwQ5VIJwBuPchNj30IMtDw==
X-Received: by 2002:a05:620a:1a18:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7c3cd61c237mr169167285a.7.1741106925396;
        Tue, 04 Mar 2025 08:48:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQvuQvClwiwFMie4FZTFPdTyWvzcou0+abmlXxIUtcYhhNTelNl/VTqgUaWtUDHiiQfW/r8g==
X-Received: by 2002:a05:620a:1a18:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7c3cd61c237mr169165385a.7.1741106925089;
        Tue, 04 Mar 2025 08:48:45 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac1e152fdd4sm256004166b.176.2025.03.04.08.48.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 08:48:44 -0800 (PST)
Message-ID: <9cb0c042-759c-48bd-9776-0b2dbae928ea@oss.qualcomm.com>
Date: Tue, 4 Mar 2025 17:48:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: qcm2290: add apr and its services
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
 <20250302-rb1_hdmi_sound_first-v1-3-81a87ae1503c@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-3-81a87ae1503c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EZcyQOmC c=1 sm=1 tr=0 ts=67c72eee cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=4ckOxxuvsnspfostOZcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: eRhzpyEAI7yz3-1qjY_S0BTdCYh92YMd
X-Proofpoint-ORIG-GUID: eRhzpyEAI7yz3-1qjY_S0BTdCYh92YMd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-04_07,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 mlxlogscore=491 suspectscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 impostorscore=0
 malwarescore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503040135

On 2.03.2025 3:49 AM, Alexey Klimov wrote:
> Add apr (asynchronous packet router) node and its associated services
> required to enable audio on QRB2210 RB1 board.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

