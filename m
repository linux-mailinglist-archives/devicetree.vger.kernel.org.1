Return-Path: <devicetree+bounces-257266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C4364D3C51F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:26:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2476E5A0017
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D07DB3E8C79;
	Tue, 20 Jan 2026 10:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FFT2sVAv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fX33iLbW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C7F3D666F
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904058; cv=none; b=ThztkbW3E2NRMSUUSGKPNj8AOQ7mj47LlGhGhsNX5V25RAr8Qgr1VVrjXaZw+QiYE3PC38LttaZ1I+abZpnveyVn6JXBFa3le/YiqoFsTnIUzh80pnmC+5Ffa25bzEEK7b4hYMO+0Dd7b87D+TQhZP2ZrwjMXgHLPxNTQWCe6OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904058; c=relaxed/simple;
	bh=yvV9BKBTFU+SzQHddpvkdC3X7RWMH6MRebClb44e8Ow=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q+8KRg1elON3Kym5BZ0vSSC4Y31RRWHFW7xuoIfSiyM8+ZRR8HIrYjnn64X4NqanaogqtjtqoXmS5weU4Lw2coGQ8g3RavTBn5AwTFDTcOg8NMl1nRC8b4/u3oyXSQSXiDmchhxUje0+0eME80W6PlFlzlCzKYpf34l52Vs8m/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FFT2sVAv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fX33iLbW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K3sWdb3252648
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:14:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EaWPdVr+b2e9gfdq5d/5PK4M49RkUofERIcJv8MQN+U=; b=FFT2sVAvkaYWldn/
	xPU8/oIloQD6uPj13zqcA3nacl/bNgDcM78Bl5WkBcYfmCNMEeB7w1eANgVDCxZ5
	wSN73wXEtT7MRIy3uI/HUjen0Ecq0mVvZMBxRcGJK3JdFjZcgnDIISDY59DU/m1n
	0V5/SkDvuRG0r/6ZkDD6QgyAMp+mcZITwpjwFMUeqmnmjVuF71dfVdtCcIH41136
	H2HH1zQckTavodm+V83JHfRQ1cz05xuADuxqWxv5GaHrtTZEgKY8idiD33xpp6wD
	IG4DbxTNtWtiowjGMpK5JJcZw/4z/acfgiR3cZj6IADkO3l9MO/P9dhEbYJQ8bdr
	hAH9ww==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt27ah38q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:14:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-502aca58e75so9139861cf.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768904055; x=1769508855; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EaWPdVr+b2e9gfdq5d/5PK4M49RkUofERIcJv8MQN+U=;
        b=fX33iLbW+3XEQ1JsDNjcszyhvPsvaqgDwkKiEucNVAwzadPNJSipbqbQ+n+f/tIKD2
         w8W2lTAhPI0jTcjjFmQ504MM95FL3iHcsssdhGddZpOl1ycxa4Du99ghT/oNEADaxmQ5
         93s2Z+7MZ1GTbckl7ZCcJNEgg2oFmgR1WOevn+QfK7+9gVguTASL9OvYJA/QMXa3fVDq
         mRGBU9F1SKlqLY/1CWfy518iwauMuWIIGFxFJvAT2RJ4+D2s0KM9zWck6tElJS8iNwj4
         OUeOmZGHFEv4iz3kjpOTgV7ra8pyMozzBStfF6tS92zSGRpzYuf4ZJ7SHYAO4XTYt3Ak
         /vpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768904055; x=1769508855;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EaWPdVr+b2e9gfdq5d/5PK4M49RkUofERIcJv8MQN+U=;
        b=EwiTyaoxvcjOuLMaQkJSHQF8wE3s/rlHEa6SuRaEwZeEnBZewn8+QI73m1tG1hhH/o
         eafonil9avpcVTKe8Xsj+X//FB1A4R5bPj5DOrspSFFFHfs0+FasKc8ovw6VGV+LPIYH
         h8S8SW4ZNBzlQqzMSlPO4NyuPdfimWe/oY2f1WKGOSVWlf+1Y6iA/RtgXRhakg0bLHhp
         c+eNbIOaJZd4eVGW5bitiLMm+r7rxyHdBCZ92WVrfz+FMwg7xt/oPs1Z7bY6VLf8QS4r
         yNnPb7pQoVkSb+9xxZJupvhaLnHi8m3SvSgWaf9sY1FsWp9pASM5XwMJrfDWnhI0xROp
         38bA==
X-Forwarded-Encrypted: i=1; AJvYcCVolm6l9k1xgOwSuHRt/fVnGaZ1euvE4eAxAppDMREvopMn9kYitTy7pZHYzaJrEappb3qwfqaLhviX@vger.kernel.org
X-Gm-Message-State: AOJu0YwNGiKUXZ7OM3VdH0L8v9JU54z6k2kMQAl6/RKRzxwPFPpnFBuH
	3jF1FKQkq5CiUDv9KJoeWHVtlHSGKog6tKB9UWmGux4iJHrn7ZIltCanTzFqjnKHnH+zLxyY5WU
	hwlEuEbxvyYBPF2lCyKZpgjjCPUp/WlwwMHByiG+5nNjGTMb9UbNEBFrGoVlf/NaZ
X-Gm-Gg: AY/fxX7rL8fOMiQWpL339AvHtnfnIda3JDI6bYGFBUpE8MiPZlCt0TuyFmN5LLbHKqG
	85VnfrfCpcuSeyQ7McrAtWq4jfMJ4K/3rq++yrv+hJWv9oR/Ur8Dzj0T7iwvcyfbvc/bIDG1tE9
	BgHpGId7oTOt2KOA0aLnsO3GFHZnWUtQWDuk3fMDNec22c/lDYvvTrARLQhSU+YwxGOQ4Uu6aJq
	lPaCb9draWnvFM2UAdoAleBgwfinceFlJcZGLzsNONiN19vEyMbPnyzq6HXfqFkT7vxm1VUdWLs
	JI+sFYRKH6drfzYQYrCFuqHNfFm9cTmWO7fs2gi1USgc1lFTb81aM0f/oqL38Yj97fxmDu+8XYi
	WpiZiGf3a1ezgvVaIRBHYzgC78lPBq7afiGm2K448w6X5Bgpnj1R5gJsrcPvKwxHZbn4=
X-Received: by 2002:ac8:5753:0:b0:501:4767:a72 with SMTP id d75a77b69052e-502d36d506cmr23350021cf.1.1768904054936;
        Tue, 20 Jan 2026 02:14:14 -0800 (PST)
X-Received: by 2002:ac8:5753:0:b0:501:4767:a72 with SMTP id d75a77b69052e-502d36d506cmr23349811cf.1.1768904054571;
        Tue, 20 Jan 2026 02:14:14 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdb0e4sm12671499a12.13.2026.01.20.02.14.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:14:13 -0800 (PST)
Message-ID: <908b64f1-f6ac-4c5e-9c72-1174cba62017@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:14:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
 <d8c24f26-3ee7-4966-a11b-1e2afcad93cd@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d8c24f26-3ee7-4966-a11b-1e2afcad93cd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KztCLXd4EVmQc3BM8OMcjbotNYPnWx2c
X-Proofpoint-GUID: KztCLXd4EVmQc3BM8OMcjbotNYPnWx2c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NCBTYWx0ZWRfX0gGsbMcpsXxp
 4xzgIDYvGqRZCOL/0w0H0dYy9yZazGYM8TcugW3S/cICe9/oEtNz8XtYCVypbSCAj14R9qpM/rC
 rUvn66qbDzTHjtNYaAeWULOQELAxpaBVugd9/3e9cp3Zst0Y2ZyCVPnP710+0Q/G9ckje2q9Sg9
 oxZBizz2m8AMQmwCz7kfry43G5U1RPh7gh9x2mGAWHn+yzJkkcvC4lPEhceqAr0/fGDqERcmOQ5
 2JoRxXh7fkC0giCeYyL3TDE2gjfgJkFMHGWIitEtE43TrGOWMaLT8z+ti6LGS0cSzWc6KVKaJur
 8yNxONpg235OWzIftNxqZcgGL/fzuWlMzqlUvQZ15JX4/pcWlLUjKF7LBWmSMOzvZUgvNrBH5xJ
 CCRedvM2HqCJKVr0s/t+iCLATtalGaznpRFAQvj360Lbdnw3SK0NvkVzfDpN+qqp7BRfDYoKQLX
 oa4N+b6Lk/nF2kC8JjA==
X-Authority-Analysis: v=2.4 cv=P6U3RyAu c=1 sm=1 tr=0 ts=696f5577 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cN4hHV1jaF_82kWHaMQA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200084

On 1/19/26 8:00 PM, Akhil P Oommen wrote:
> On 12/11/2025 12:32 AM, Jagadeesh Kona wrote:
>> Add the cpucp mailbox, sram and SCMI nodes required to enable
>> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
>>
>> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> 
> Just curious, does this patch enable thermal mitigation for CPU clusters
> too?

If nothing changed, we have lets-not-explode type mitigations via LMH,
but lets-not-burn-the-user would require a skin temp sensor to be
wired up, which then could be used to enable some cooling action

Konrad

