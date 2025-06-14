Return-Path: <devicetree+bounces-185964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC916AD9F6F
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:22:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83049176C27
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B56D2E62D3;
	Sat, 14 Jun 2025 19:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gvJABi6A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C11D1E8320
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749928959; cv=none; b=OSP021PXpraguIw8k815Oc/5sge1zIcSOEbBYolTt/IOKucILzS46cnrZ5Mlmc0gT9BV2DrE8qVRR5d8qMof4qF3P9viww6oQJwTZjtmXW14mdgJP6/sfFNWuuh7zubM6pfu1MIKvEAkJbAYryzEMXk4EH8FJ1XeoAy5jYa1OCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749928959; c=relaxed/simple;
	bh=74UE4OS2luQ7P5Vh+iRkt6MZQysIWQsh4S5igVUh824=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lIxa2HyT6y1peGn1m5je9x2k6Qu8alPQi43j1TonxJXL+4E13JCPDa/hnk92nNmmHn2bOG1PPBwRVlPg7rnl/+XcadZXy02TJt9rwSMUeTxemFm9zUXq3CkZLdULsriUUyl0vy7PQgMw2F0Z+H/W28BP6466HgbOfMh5ZmDYrtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gvJABi6A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EHHatb003626
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:22:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H7Xsy5pYt6HIDgczfhpBwwGtZlz4QBUYqyEAh/V/oek=; b=gvJABi6AWOfq9TO9
	HN0qC+g3ATQw3K0c6ePVTgeeHKabuWrmrJ758kyvZ2JquVhLIsqBLGUHXRDo/jIk
	qVWRKSI45vFuEbqQI7PZjifHGo2pTtNDprGhDbg8XCmXTq0t/Z8XeXtbnyDf7s1d
	ncl3ElxS2PoGfdtcj7h5tnDc2rO5mnKwZ+kCZzoMH0Jx0BnWhyaXNhnhg+k79vtA
	DvdeIeCu+jGmGhGN3/mvcGmKr2U0pXfsqMxYxxAxxNaUbenNnewYsPwyrQKFs7JL
	7dsbsOWcdGM5bPEFagSpxsSVyoku5TmipyzoODzbF+HrxFPS05IuSYOGJyyW6mFn
	IiZLfQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791en8xg2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:22:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d097083cc3so82870985a.3
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:22:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749928956; x=1750533756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H7Xsy5pYt6HIDgczfhpBwwGtZlz4QBUYqyEAh/V/oek=;
        b=caACdyBX7P6Ejx9faiWqDMjxDoR1sWpqdCmBWyHievH7CTxrQDDRuvuak+dpKfLoOY
         FNdPekiPS3o6uW1SSbBsoyT3220EgNclenx4ZS6PA/feYz7EoMNTzsx44Yg+YmrUCHEQ
         8ziFxYtZs2QWFXXPSkZ/00uWfVHTuixLmXLv7b4xCthNSzX4S9Us/PLHp2/sFYECYLF8
         qIef2F/ySUjmWCb1747i+ZnqWRWpXZLdeozBodggZnQfEI5OmXjxEdIxpXJ3hwcT1LM5
         37O2Ak/9NCAd8GVyJgdtz9pxxf6zbmOsSrDdxJ/xF5WcNLSbUE3tyClkZSlOd5ubc6HV
         5Iiw==
X-Forwarded-Encrypted: i=1; AJvYcCX78k/MxnDJWSbA1oykZlvKegm5Fjw/i0Qrsfj+KwQraaH3faKA5NnEwyQcVtriW+5mR8hS46VI7322@vger.kernel.org
X-Gm-Message-State: AOJu0YwUwdum7HQ/F23uaVDw7O5zkQbmNTrLd+lBiPlQZfeTFUrXyMTq
	SUjvCk6HZHFdozr3bEnqvvi59Yzl2RfFGevRt/Pk5eClTsVJM+j3HgXgAdx2nrzZKiH2bbbdAs/
	ePyER/+NLKwxdsoa0PtlGJ20f8LONHcm3LO0T58aZa8mhWm6P9MZXZ/s5NGnlN171
X-Gm-Gg: ASbGncuuZNWLUil5aRWNgfKaRcjTe/z2gjks+SX8GHYD7+UewXDol/Q43tTxm8+V4aI
	oZUDWQ4PyYCi25TzD1xOqIX6fCAtsu34IiwoQzpk/tPzXrYXlhIWiqkZcVb09pEtvPbQyHErpwg
	VSWqSzZ7e6+1h8uJ8U9yr37WBBP5FuIgzRnj+ly48m/nIKy6+gg3suZHc7Nyj0eygJDUI9553Za
	LVVQohIWIBj9xti4M8TXQgN8UjJX0HbOrqW+WRD5eYX3dLI3UyqddDF7u9Ql5FPywWE7NQyY5bU
	m6NBcyyvlWayzMw2YkabGlcqHse7m0lIT0Z4Dc/isjXmkyv6FXf9rQvISWwYg1wHxgHNiiAlonc
	ow3g=
X-Received: by 2002:a05:6214:f2b:b0:6fb:1fc:7889 with SMTP id 6a1803df08f44-6fb47834635mr21887636d6.11.1749928956067;
        Sat, 14 Jun 2025 12:22:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9m0yqwjFjkxOlIpQA/8WuGepGH4pwHKnBlLHgfFDPcHqIZwsozxQ0flip+50/6sEjKMVZMQ==
X-Received: by 2002:a05:6214:f2b:b0:6fb:1fc:7889 with SMTP id 6a1803df08f44-6fb47834635mr21887436d6.11.1749928955637;
        Sat, 14 Jun 2025 12:22:35 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec892ce00sm349525966b.143.2025.06.14.12.22.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:22:35 -0700 (PDT)
Message-ID: <9f12148b-6462-4ffa-b665-325571db78f0@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:22:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8976-longcheer-l9360: Add
 initial device tree
To: git@apitzsch.eu, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250613-bqx5plus-v1-0-2bc2d43707a6@apitzsch.eu>
 <20250613-bqx5plus-v1-3-2bc2d43707a6@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250613-bqx5plus-v1-3-2bc2d43707a6@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: kaX30r7zjxYvi6hRxXVOgM5wqp2oJHDi
X-Authority-Analysis: v=2.4 cv=D6RHKuRj c=1 sm=1 tr=0 ts=684dcbfc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=HDjIzE35AAAA:8 a=FqsyDp_bju1yIiuMhToA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=y3C0EFpLlIT0voqNzzLR:22
X-Proofpoint-GUID: kaX30r7zjxYvi6hRxXVOgM5wqp2oJHDi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2MiBTYWx0ZWRfX50c5YXeT/dWF
 1mJkN6mdmY+J8/ULh9tY9FUb1z79NPjjl9RDcWsJs60Px7HT6DTpUvWhXaSQ8fY+RtBVRp5/SXe
 bFmnrnbN20xV9zHS7ZJhoWD6LoXXjwAWUvIVMghFWC7NNDkS7vmSROWJl+BlZBQMyhI/JbUNWA+
 QAwAC/HILO0xlOyaMbDi8QKJ4kvEQT65/vLBpupjsuKOVIk+D/+Csy+r0gRDG9Zn0MFL1hV+jXT
 Gp0xmcsxdI7NCcHypzmmIIY/GQvPhhXi3bbuY6rGeABK4feHqmfZm8Qq+zDfiv1rMRlBBMAClCz
 uhVVR49+WuU0YlIOgvAYCzvraIeD1e69IdO3DOPAxrandXScpoUVoZWA3rQBR2XX9Jo5CKw1hQz
 Zzfp2kQpBZYipZw09UpUy7Ywcem8Drhi0IVX/3qK2RpV3GydyyNVFTcesDlXE5odA0y5Oyd7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506140162

On 6/13/25 12:37 AM, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> This dts adds support for BQ Aquaris X5 Plus (Longcheer L9360) released
> in 2016.
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - NFC
> - SDHCI
> - Status LED
> - Touchscreen
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---

[...]

> +		/delete-node/ tz-apps@8dd00000;

please remove nodes through a &label reference only 

in this specific case, the address matches, so you may want
to simply override reg with the bigger size instead

[...]

> +
> +		rmi4-f01@1 {
> +			reg = <0x1>;
> +			syna,nosleep-mode = <1>; /* Allow sleeping */
> +		};
> +
> +		rmi4-f12@12 {
> +			reg = <0x12>;
> +			syna,sensor-type = <1>; /* Touchscreen */

Please remove these commends

[...]

> +		};
> +	};
> +};
> +
> +&blsp2_uart2 {
> +	status = "okay";
> +};
> +
> +&gcc {
> +	vdd_gfx-supply = <&pm8004_s5>;
> +};
> +
> +&pm8004_spmi_regulators {
> +	vdd_s2-supply = <&vph_pwr>;
> +	vdd_s5-supply = <&vph_pwr>;
> +
> +	/* Cluster 1 supply */
> +	pm8004_s2: s2 {
> +		/* regulator-min-microvolt = <500000>; */
> +		/* Set .95V to prevent unstabilities until CPR for this SoC is done */

That may take a while.. ;)

[...]

> +
> +	sdc2_default: sdc2-default-state {
> +		clk-pins {
> +			pins = "sdc2_clk";
> +			bias-disable;
> +			drive-strength = <16>;
> +		};
> +		cmd-pins {
> +			pins = "sdc2_cmd";
> +			bias-pull-up;
> +			drive-strength = <10>;
> +		};
> +		data-pins {
> +			pins = "sdc2_data";
> +			bias-pull-up;
> +			drive-strength = <10>;
> +		};
> +	};
> +
> +	sdc2_sleep: sdc2-sleep-state {
> +		clk-pins {
> +			pins = "sdc2_clk";
> +			bias-disable;
> +			drive-strength = <2>;
> +		};
> +		cmd-pins {
> +			pins = "sdc2_cmd";
> +			bias-pull-up;
> +			drive-strength = <2>;
> +		};
> +		data-pins {
> +			pins = "sdc2_data";
> +			bias-pull-up;
> +			drive-strength = <2>;
> +		};
> +	};

Please move these definitions into msm8976.dtsi

Konrad

