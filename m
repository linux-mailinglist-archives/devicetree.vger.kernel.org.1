Return-Path: <devicetree+bounces-125723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6449DF06A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 13:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4AABEB2181E
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 12:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4487018A6C0;
	Sat, 30 Nov 2024 12:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JMM0VVtT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AC3148838
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732971119; cv=none; b=EfiqOyQFpkEd/CgzM7qW6xHLNTRwX2cQPvVcemWjuU0b8ZjUzxeo/odtuTH6y3DZogOVBoJlCO+xre8OkBUSZ92RIn6wy3im1i8e3Pkh45ps9KB/g1cHIeGl1/nSFgPo9kctiBZ/wJzPIbCueXhFjcYBCZRT8h1GQDbiI7AllME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732971119; c=relaxed/simple;
	bh=gi5mmuk/mJHVFDVAV31LndXqKMPAMGLKJLsHigMMh7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y/bGTnfxWO2xJD+XsmkUTL6jKMVHv6L9t0R53zPrdKST1HcM4rvOahSlDLrIauZg5cySsUNOfkouWwOqnjxHermMZbTHcJn4YPNfs0VruX4rhID/UrhCKQvB7egSfKrdoOeVnrj9Irf9WpDNKiVhu5jVtLmVh4HGKieer7nq524=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JMM0VVtT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUBudlL012412
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 12:51:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	StwTPo2hRaKrn+J62/SCn5SxTaqI0vjjh/U5AM1hyx0=; b=JMM0VVtTfvkBUu/W
	z891qlkP4HKF4uPLE1Sa/y/TGAkbNEsOWB8pqWuRgnvdLJ3tsCbOcuAkhed5HnY7
	UKJ8huHH1upYIn3WuSFlztRQ5wIJt1+qZ1kcmkLvpza5ebsUTh33QmGUE9fHT3CG
	vlDtPP5tzd6q9LmeIW8qFYrwFh0tsha5063XlefnyLBrdi4og2VS4DqpIIGnKmDx
	wOW3pt6Fy8F/0wAzRvy7bVO5YAfRui5RE544B8Aznt5AkBPm9bQROkschQzB0y/z
	QEPIpUhenSHNozUZLLcwgI4yTYE4qqbg5eD2tLSLOtK5xv7qx7x+wm9z1doQq45n
	+OfYRw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437uvjrmd2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 12:51:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4667cab5e1bso4865001cf.3
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 04:51:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732971109; x=1733575909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=StwTPo2hRaKrn+J62/SCn5SxTaqI0vjjh/U5AM1hyx0=;
        b=Ru9b83r/xZLF/FJa/gH3TK3X9Jw9fD/fzrhHHKB2fL9DT711DZkw+E4rlAA5AckAki
         fGB4C3Jj45759Kp89b7uWKeZIZMiiijPTcVvJsACFVH2xD3ywGbz1AeMkjxIBgsRmKie
         GD6h+JQfCyE7dvdfYAtA7/yd7B7i51xk9ntlKRhTYqav7EmmTK/tWacMZ6aDswRmTRr0
         PJmeVQ2xzrnNvqOj/ZlAKbe0CJIdVxs2eY51lL+uXI3c/La2UXhx+LYgZhxVy4++Ovje
         xHn1r66QVWZ5Ku7nIN9d1LiumKLRxjOiJT2YGI5sTSZBz1t1Br+yCOYDqF/cSlZhgdZK
         ycCg==
X-Forwarded-Encrypted: i=1; AJvYcCU44TCFEWjNkSOLE6XrDm5vP+NL9XUupbZ1twUegOimEVsNMOH4jLvXjQ7co0YE4m5Lv0Z+qXu8v2Kq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf+WM6nnDYgBDCSs2b51mTIjytGFQU9H55+3UbYMVMY0B9cEc5
	CQycWriEgKpekTpSfOmNB7x2rG1LJtWEQA1HZbobY/ZqV2AD5YyEcrW0/xdO2D11JPR6hYYQwoD
	rzxT/1MlfT0HoA4wCqGzw6/4ER424JzcTbwYyH5SnpCxiSHJrCioEwQ6rRXeJ
X-Gm-Gg: ASbGncu0qt0PboERbBySwiSyQmqSa52PXcpFvhiRubklHqRZK9oRhDe7bYkrwnmSS1z
	A+9egkERrWZ/QviD8Bv//07CaIQbZFlfZ/l0IfpZelVEzNvDFr9mAaP4qP015wz2ROapTomtmsi
	UBlDUSzWscOhGH/5OmZXPVC2rbgoTZcFAG0mbryXODVMHPPthqxmhJUd3AFuSgG21PuMn9XPAgY
	9G5qlDVQXmfkj+a1HMpyVnO4USr8h+GXqdq/zi8nXb+7rnENc1DPN0uEZ/dnG0xZrgse1zGgAG5
	/bM4g7v2GEYvaBri3ZYgbVyz2CMq5wI=
X-Received: by 2002:a05:620a:3953:b0:7b6:6f16:6a7 with SMTP id af79cd13be357-7b67c2eb7d5mr848048585a.7.1732971109575;
        Sat, 30 Nov 2024 04:51:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGcwtpdHRWjG1k5koeTggKw/EQDeudOBLvFo6jwqdy6D3oOdqJ+p7TfYNaPlQumUj2tNdSydg==
X-Received: by 2002:a05:620a:3953:b0:7b6:6f16:6a7 with SMTP id af79cd13be357-7b67c2eb7d5mr848046585a.7.1732971109213;
        Sat, 30 Nov 2024 04:51:49 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996de7f2sm276477266b.53.2024.11.30.04.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 04:51:48 -0800 (PST)
Message-ID: <095ad153-db49-4e95-98ac-f896f1826e21@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 13:51:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 4/4] arm64: dts: qcom: sa8775p: add EPSS l3
 interconnect provider
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Sibi Sankar
 <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241125174511.45-1-quic_rlaggysh@quicinc.com>
 <20241125174511.45-5-quic_rlaggysh@quicinc.com>
 <67c9a6d8-90ea-41f4-baac-1d67c9e5576e@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <67c9a6d8-90ea-41f4-baac-1d67c9e5576e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Kw_k-cm9H-HLI-EQCWCjF6J8SWUEtm1n
X-Proofpoint-ORIG-GUID: Kw_k-cm9H-HLI-EQCWCjF6J8SWUEtm1n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 impostorscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300106

On 27.11.2024 8:21 PM, Krzysztof Kozlowski wrote:
> On 25/11/2024 18:45, Raviteja Laggyshetty wrote:
>> Add Epoch Subsystem (EPSS) L3 interconnect provider node on SA8775P
>> SoCs.
>> Update the generic compatible for SM8250 and SC7280 SoCs to
>> "qcom,epss-l3-perf" as they use PERF_STATE register for L3 scaling.
>>
>> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 19 +++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/sc7280.dtsi  |  2 +-
>>  arch/arm64/boot/dts/qcom/sm8250.dtsi  |  2 +-
>>  3 files changed, 21 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> index 9f315a51a7c1..0c2bd15f9ef0 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> @@ -10,6 +10,7 @@
>>  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
>>  #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
>>  #include <dt-bindings/dma/qcom-gpi.h>
>> +#include <dt-bindings/interconnect/qcom,osm-l3.h>
>>  #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
>>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>>  #include <dt-bindings/firmware/qcom,scm.h>
>> @@ -4282,6 +4283,15 @@ rpmhpd_opp_turbo_l1: opp-9 {
>>  			};
>>  		};
>>  
>> +		epss_l3_cl0: interconnect@18590000 {
>> +			compatible = "qcom,sm8250-epss-l3",
>> +				     "qcom,epss-l3-perf";
> This is sa8775p, not sm8250. Wrong compatible.

The bigger issue here is that a treewide binding adjustment is
coupled with a feature addition in a single patch.

They should be separate.

Konrad

