Return-Path: <devicetree+bounces-200367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE885B14797
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 07:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 720047A7BE9
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 05:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33012236431;
	Tue, 29 Jul 2025 05:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e+aJXax7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98221149C6F
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753767157; cv=none; b=cEhh7ZoHabw/Fr+VM+qD339Hx0e1oYSHayM+hQdgTlfURddatgebimQtTKzDaDK2/6NIRlck7zBqL/RA5qwjnSVLE7hPGvMvFaZyli4GKZnQKz9+StXdI7HZyRpp1SEe3QmzZ5fMDttOfa73vUChO7RwWe/UhyJpqoooDyx8luM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753767157; c=relaxed/simple;
	bh=nuMlNotkWbwaJdkiNuDkwLG9m0fVeiM/6XTgBomor9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NFCnZwnGWcVT+pUs2TbQG8wldecvayfWeg0eOQmg3xh5R6dCs+a69Z9sobFOUu/pPMZW0d37jOrW4hhvGF4VoyJBu+GtvaXw3n+/6dUbALKSyuYgzT3GramA9GlBA2di4y4mNgFgNgwItWDvV/H+sWMoXpD0+vIw6G6F69/m73w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e+aJXax7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T02IHV032102
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:32:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8TQM0bLQT4y+lcUbM3B1dK2Ki/fMYU8F5ddDAixVjsc=; b=e+aJXax7rLwgWRzN
	zHvKL3inCRbYsevrhnI43gASHlW96+kGozu0ne3vPnWuEmgwXxe7PwZWD5CPw/t/
	HzLyttRlHe3F4SFE3CdDiaJChjX5bqXRisduB5fH7XrJgZmidFIZDJ43zh6IppBa
	L0IxdIQXCBp0Oxn4HbTsvvSQDN2b/l4nnoQElvIYdr191JwDUumQODqIK017I6hy
	+gbTG1VMH1iTobPFlClnxS53ZVqDFPoXCYY6K1II+EQIk9UoiE6jzTi7SeoTudyG
	99LrbIA8O5cCvIMQNlQVnRy6ZsWq4cCVudZFlv4T2h3pborD1uLU7OqzHqvNbKnn
	RHqLhg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1aevqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:32:34 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b31c38d4063so3925541a12.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 22:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753767153; x=1754371953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8TQM0bLQT4y+lcUbM3B1dK2Ki/fMYU8F5ddDAixVjsc=;
        b=KhOXjkZ64uWLDlVpc1q6RkwjMlKoM9kSZVwXrPNNBIzWLkrSh1zMYC8nmeCEIN3QXu
         iHauKkYEab6DeHFmoOJLY9/6twD+V1jKPT7um68Sx8aAcvHoE8379FkAGPoeCJ79oX7T
         76PVhfKhJFXfnWaCO8DKVEtM9Bs/mtbn0AVU8/qW5PHZuOUMU8pcG9FV23Pfx38EASaA
         WXeVknQF7W2wz4wNVmup8D1fS0ZasFSLGIpbD0bCoEF2FkOfgIikbEwl+WPTXQkP8kPs
         PUbgUZGkvS78jmfhmnazcQAF28pgzzLlzvn3P+vJunt1rwd40JKwbFFeJBCXk2ClS36O
         9sBg==
X-Forwarded-Encrypted: i=1; AJvYcCXR/QLqIRtWDRs0W5W1JEP4DY8e9xmqEFeYpFbWUGQzxIjDIDc+X/y0M/gEupsV+Ywlt0YtawD9Vt88@vger.kernel.org
X-Gm-Message-State: AOJu0YzKYu6L9s/W519giU0yWIfGbwHFFl4LD09S/81MVay0GPmFyl5F
	TMKW0VwqZUq8sEyDxjtE7fJhvCfAVQ9zmbXPnAutPLyOdUJR4H38DfRb4FeLzOWt9D7PjR14u7v
	1LQkG6/dOSdnIcSk7PmwvpuSFMh8XyAhZGWwFRZP7bpVQ9CYPlSCekhz3LUf0EdnZ
X-Gm-Gg: ASbGncuLwyghBFGlCgWZ4rMiiT0UvUCLr3SpbtgSvIBilaL1ZZdKaULdYKpmXu8/bow
	bGxDr5A2VV1rcZY/JfpkwNYw0JTxfRfVaoHNGNj9AgPMKFqy1lvZXsQD8YbCm/egQjnsgDEay3e
	q1qStsTSxiPJOPA9SZRBBi9t/wdyuAAjd7MZKJ8Wm+Oz31vJPfliXlU+xb3etd10LKJROt+UOVX
	PUseq4B3IQEphEn3KU/QHmgxmJyc5MtwHDt9hJ0JaGBBtTRwYZoR/qbJb8hdH3F79c65u5AySsU
	H332/io4no5hkZn/L3NHSLbSYXG+NlYwUVn9fRQb6vakw8YMPfFFwTff2F7vLk1H8Z9pnyDbcYk
	P6A==
X-Received: by 2002:a17:903:1105:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23fb307acd2mr217929545ad.10.1753767152684;
        Mon, 28 Jul 2025 22:32:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzMEYvT4QnWI434D6bbEM0kf3Z29Y5c75ODQRyFfOAHIRi23LKLWWLZmICAFHxXw4XEgMbSg==
X-Received: by 2002:a17:903:1105:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23fb307acd2mr217929175ad.10.1753767152226;
        Mon, 28 Jul 2025 22:32:32 -0700 (PDT)
Received: from [10.218.21.68] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-240765051e6sm3120425ad.82.2025.07.28.22.32.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 22:32:31 -0700 (PDT)
Message-ID: <cd4f5dfc-095c-495f-ae4f-782646d6c601@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 11:02:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250724155632.236675-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250724155632.236675-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <452c6a6a-3d65-4712-a105-386d8540f2ff@oss.qualcomm.com>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <452c6a6a-3d65-4712-a105-386d8540f2ff@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: mqxFPD7ERMTYLrdNiWlFBI2PVqbfOVz4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDAzOSBTYWx0ZWRfX7Hx8hIz71vYQ
 PwHXNkxu2ProUbR0Q+UA6C/a19VFRyyo4FpLc5b4L2wMLsl7ajPyFNzL7pNB1em85InRHca6qjd
 cCZRC5puLv/wTIe7C2aCaP4lWlpMEH674fqrCSu6AqM5ffKcgD4RjRxAVMyhwgm3hnPOZWuynOA
 PB1IajhxQNhMSWCJfD3akquj35XqnCK9eEKNgN8ZIaEcT9hJsiRRMjoH7CfOKr3k0MtLuUbWZNZ
 iPgLcpu/WwFTbhwZDDyiI59vX80D/YwBsowq26B7hK1VjYkfPWy3qv8Yb58+uNNW2lBrdmUGYAK
 oMj/ayZsg6U6x2qGhtdS/lH0It6jaiRe/Z8ZFQoO7yGHFlXFwKn2lZQDWe54m5yrQriYh49ED4f
 w0EoSrnzW3u0bctqvrBQiDFxK6XhxBJvvro6vmxWsUa+CY38h+ftygoO1s91fP7k+AEn3955
X-Proofpoint-GUID: mqxFPD7ERMTYLrdNiWlFBI2PVqbfOVz4
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=68885cf2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=NuTrWsM2-O6NPpDJVOsA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_01,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=991 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290039



On 7/25/2025 2:47 PM, Konrad Dybcio wrote:
> On 7/24/25 5:56 PM, Mohammad Rafi Shaik wrote:
>> Add the sound card node with tested playback over max98357a
>> I2S speakers amplifier and I2S mic.
>>
>> Introduce HS (High-Speed) MI2S pin control support.
>> The I2S max98357a speaker amplifier is connected via HS0 and I2S
>> microphones utilize the HS2 interface.
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> ---
>>   .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
>>   2 files changed, 66 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> index ba8a359d8fee..a2d9aaa641a1 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> @@ -5,6 +5,7 @@
>>   /dts-v1/;
>>   
>>   #include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/sound/qcom,q6afe.h>
>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>   
>>   #include "qcs9075-som.dtsi"
>> @@ -20,6 +21,57 @@ aliases {
>>   	chosen {
>>   		stdout-path = "serial0:115200n8";
>>   	};
>> +
>> +	dmic: audio-codec-1 {
>> +		compatible = "dmic-codec";
>> +		#sound-dai-cells = <0>;
>> +		num-channels = <1>;
>> +	};
>> +
>> +	max98357a: audio-codec-0 {
> 
> It would make more sense if audio-codec-0 came before audio-codec-1
> 
Ack,

will update in next version.

Thanks & Regards,
Rafi.
> Konrad


