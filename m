Return-Path: <devicetree+bounces-221403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFDEB9F4E6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:41:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC2431BC23CB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B4226136D;
	Thu, 25 Sep 2025 12:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U3fPaKv+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283032580E2
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758804061; cv=none; b=t2HpcuuC7NMGCajtfv+YMiO7xZSuDHe2IfauH9Tk3w1VrQMi1kXUZKZdTpXLcnomCItxyEEQogFv4v3dSXzpHfOVp1rDK+Q+fQjRu2LBB72cOenfwTJj+Omd6Ij5wtvsgTArisY/znjsNN2Kf1iln7v0M2musSqiPrpNqDKz/MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758804061; c=relaxed/simple;
	bh=/OW6lUzbxwLTin4WGTyiZmS+jyErbQBXnuGUK9x0WhA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GYgrUin+KbwTjU9DmwGHh+iHMuzslSOh4yZbjTg10Qzzkm0u+jJMnofohaxx8G9U3bSi1tg0XKqPvOJeWK0V5I3sKq5qBwoBDaSrcGytqxGbuguLTFpA5RzkUxiMhDKswe9/4bBSmIfz5KzhuhtSit61qaHoRyuhvVu2d2e6Pzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U3fPaKv+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9xt5o002802
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:40:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dX+D1iEBGYVg/0mxMRj6tDbZ+sqLumaACcaW1rJwVnE=; b=U3fPaKv+C8fOIdnw
	t5i1BryuxendNApb3lk/owoc6A5CE4t0vAa3NI8mDAAC3qHAVtaBhSFTLGqNz3EB
	tP5g8V2xNQetfm3aA3RrP9O8h3w0TkDYST0iHxwNh9AXOGN6FDgv0BI9KAF4OvMp
	TGTdXl//VhIgrh4BNBU8JjdVMq5s80ErxArZOVk6paM2Ds+3JSbCQTWTEHQWR0oI
	0M++lemmEHjGYwkgjbKZuB6E8HyGadPzrIM3kJ4RKFY7E6NxkIsdzOc0lrEPdxO1
	DweyXwInQwxYE6A80i99eY93gkQFMz9ioplLTHPapeY3OJd6mpR3N0K3+zEOtyqa
	W5jaKg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf2mq6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:40:58 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7f4bca2f925so2118736d6.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:40:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758804057; x=1759408857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dX+D1iEBGYVg/0mxMRj6tDbZ+sqLumaACcaW1rJwVnE=;
        b=tVRFUah8mwTBF58MPK5aYDJ4B84V7TecUGdlRz0YPrq53xVNLhfVu6OlXkhpgLxt7D
         58ZpbPG9ddN4DKkYjdeGXGh4JIK1yfGIgvIkYu1/qqWAKnsicIO7FXHyi1yqT1UwRf3C
         r48sW4JrMaM4/9UKQk48Kd2L5rMPJgNjfWDfZj+G0hM2FioSR7B/zp5wcc0RizHb4JM8
         IFXWV7FPADVEO2ntQkT2FZ1aits5RQ0sTO2cYCmKVgBuE7dCVco+Cqqo5RKOJy/N9wiY
         k9HrosjZBc2ITb1szRpGyo9QPkWIw4AwKFmebQklkhKpCCiD2DAWwVfwlwqxTkeZpy+Z
         yZVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtaviVmQRFv+6PxxnYuC41JuvIO6/7NOnUOgzSroJaYaujTwXfnWYZj6hlQTm/BGkf4KgZ7WABe0Mm@vger.kernel.org
X-Gm-Message-State: AOJu0YyOQ4SOCphGkZavdrMfLRfMiBvAI5x9RUcczul/Dw036inbbuha
	+LHu56eoVEchSw/4uRg4qEqND8UkG0spGowIBZxu0lv0szUMYdL/KS1Q0+IJQxBb9wZvzMzNlDU
	nS7QXz9mbzEQ2Kmq470vL0fCUObNjcZLrI/AW6tZgZ37gxCVa5YeWRxMNp0tvofok
X-Gm-Gg: ASbGnctlNt65JPY6z5hNajW76RagRQNNm1d56L/9x+ozSMsyIPiczThLxlnNbxF/ZJV
	DhGsvVOQ0Z1WyFc3W2tfcDRA/pj2sI53hRRn3FZBHFnLTOJb+l/nBMEEiHsn2rCyTnAyzYkwS2V
	6E9taTxI/4fcRjQ2So16rOru6zrodWOKuXNNM9h7Zhv9G7x8V2kzC2+mAPdIRY4K6ZAypMldY+y
	R1yPPER56z7XqEQE8ieTn8iqeuydsA2eYn+jTE6fyHxWLsboJllM7PYUvGb8V98cWwWFWOUdrn4
	XsbPgmB9dJklsDR1MBZFq37cx2I9z3sDVL1RmGpvD1zGWxz2Dvxl7qcznNaCxvZGeL1s7nBEj6G
	4/hrgNJwbEAHcc3qJnH1kwQ==
X-Received: by 2002:a05:6214:ccd:b0:78d:5496:9c37 with SMTP id 6a1803df08f44-7fc4517a623mr30484426d6.3.1758804057014;
        Thu, 25 Sep 2025 05:40:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXVJM0xECADX1ZAwjsmy3/RHWCnfUiY4Eb/4L8Ww/2YsN/Z1WGetVGzxOOKsKP6XRMousjmw==
X-Received: by 2002:a05:6214:ccd:b0:78d:5496:9c37 with SMTP id 6a1803df08f44-7fc4517a623mr30483966d6.3.1758804056184;
        Thu, 25 Sep 2025 05:40:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3af4cccsm1148079a12.37.2025.09.25.05.40.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:40:55 -0700 (PDT)
Message-ID: <f4e7a388-54fd-42a7-8960-be6a3de7ec6a@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:40:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Kaanapali SoC
To: Eugen Hristev <eugen.hristev@linaro.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Georgi Djakov
 <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-interconnect-v1-0-4c822a72141c@oss.qualcomm.com>
 <20250924-knp-interconnect-v1-1-4c822a72141c@oss.qualcomm.com>
 <ea291acc-bfdc-4a04-ba60-fc59a55ada28@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ea291acc-bfdc-4a04-ba60-fc59a55ada28@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: G9RjQzge-3kMOFaxQkXYv_Y0v_jkwOz4
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d5385a cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=o1Okg1vRPMB1M1hlrKAA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4cUGAFf29rtv
 pR9kh7X0BLiwxfzG/Jsjg2ym0vqAQzE15WQv1LkXpx1RHTWjfEhyw8KkrQKKqW4LqSzYlV2jXCP
 172LP/ZgDPBwSE92w5Lha83LQb67NZot6uKk9yQY/Xdds2TvisImZ5wT019LGDAb5/V2cr354QR
 2jwZj1/Fffb0G3Jxx16MzSpCcM9FxpaverokGrtZ7+jooPzxsJeUkS8bmhYUIuBWrBc1T6wV8zg
 92MOiZi0YflE2SynYdI15hbxTzXAB+tqRRjLcJBvsw0f8G6NmMtQm7Fq8MbXGuqM4CDJEFUKwWw
 +DP6EC8n4/x5DWy8q+kpLZIt7B7rulenug1cEGCBCzm18c7isUEph/SMaHRblBkg6QG2MFq46CH
 puM8ypLv
X-Proofpoint-ORIG-GUID: G9RjQzge-3kMOFaxQkXYv_Y0v_jkwOz4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

On 9/25/25 10:57 AM, Eugen Hristev wrote:
> 
> 
> On 9/25/25 02:02, Jingyi Wang wrote:
>> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>
>> Document the RPMh Network-On-Chip Interconnect of the Kaanapali platform.
>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---

[...]

>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,kaanapali-aggre-noc
> 
> Hi,
> 
> Does Kaanapali have a single aggre node, or there are several ?
> On previous SoC, I see there are two (aggre1 and aggre2).
> Also in your driver (second patch), I notice aggre1_noc and aggre2_noc .
> It would make sense to accurately describe here the hardware.

They're physically separate

Konrad

