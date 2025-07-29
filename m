Return-Path: <devicetree+bounces-200450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB90B14BDA
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 12:02:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBF6D3AEE61
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B97288CB2;
	Tue, 29 Jul 2025 10:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EYMp/aMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEEB288C9C
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753783308; cv=none; b=BJ48rU4089ptRlbbyawXZzqpcK91zPwo4d/LWhDJmeFzmAh1rWvWDGK0J4aESOplO5jU8ujYYzWCs4ZFFGFaXySZ9N/YZUhcfYegSJbVkq7j7DFNoluMj9EzQbTvxwqjd+5WkzpOtdyJ+QHfJVzH4m+BMcwZnUOH/wQbeGCfWEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753783308; c=relaxed/simple;
	bh=b5/AbWh4VGYvJYGMYEoAI1yd9P67N1DcHHSd8SASrxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=adLqTcugxGL360so3Mj3RYdhvhfaBPjSTfUgYHIjpEVrcaM8Ho9izgyftch7mGBTm/HTxBxSmuVX4K6Y2RgjPj9qsciW+orlxF327HC7DLFQBEHsASl6iaWtS6Dh2e5ecXr69ndDXJzK7PzuyErPyt1ZQ+TF3lZf5cAtaspw5TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EYMp/aMg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T9lCq1032102
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:01:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i2L4H4k8qNpD35pJiHRB3w3KqGWKmWWZOUOqEsCI49U=; b=EYMp/aMg0TzTTDne
	dpd18urBhEYRJPpeB2NpnSWxOT9ZqYwOolDOaioOPBqUqXpDK8gkO8YH+UUoC9Oc
	boxbDvutROmAIo5KZwst8IopwV4c/zDw32G7flXz0svyjA58ujXdnuujZGVQ01FJ
	o+VU44pTGP+i8LbNJUvFrda1xIicD11+SgcJUA5VzVZc/A8uVfmbDYlq7p8wAN7A
	MdMBiqpCvREE6UevLbG0yKmIk/NWyIcIivMuaW0ZEepd+klZJXuOU1OYhn8BgKk+
	5QYpSqeowCDUO03zAuCIc6kx8vodxC36CkHwTY6wyNLn8yUMnc0bbjgnO2YkWFdl
	yFFysQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1afnfm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:01:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e34ba64a9fso25213085a.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 03:01:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753783305; x=1754388105;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i2L4H4k8qNpD35pJiHRB3w3KqGWKmWWZOUOqEsCI49U=;
        b=Bc39lqKOsVdLl0/EHra6lekb/zqRCBaYq89fSQ1gQ5eM8CjPX6It4ADTv7ljncezL0
         gANhDZ89k5fc9iYQ5aYyqjOCrsK6Fm288MdLLpNxnidlinu96s6e3oMVtSN/bEZKkEzo
         YPhatrj5gykyu03HT6AJx9Qu82CNI+86mYlMGBfR/5fCyefvh3ei6Lp84U2ex2OrCp53
         3ou6nqv4yz+MZZmbPf0uXz9eEIpy+QrP67fjwD3DJmQ5QXWNnQzhxz/fcnQjN/MmvaXA
         uNcrJPAou32hEEU8j5zWv7UYgSxAn3mQWv57JMgrUMCSaoKX047QI7dc12c4y+Rv36wS
         wBHg==
X-Forwarded-Encrypted: i=1; AJvYcCXS2W+Ej7n1bDCdkDWAz0rmrkZ7m+wgNmIfOOMS8BD0VUEw+0Nji5wpc7kYksbJV1q3R4EtVvPaaJE9@vger.kernel.org
X-Gm-Message-State: AOJu0YwZxHas/jwkb3zSxjBp4FPkmdqeRztuNCyR3QEFT7YP+HxoqOU5
	bBEW2qI8Yy2+O4/qOBgQ34zdA4mncGftjKfB+tjeey+eqdG0eedqo9et08D7DoPnR14N7KhmSWJ
	1ZNWxvPJ0m8l4mwq4vkFRN2LqgMTlCoK1gCpJ0XnaGRckK+t1hFRlkzt7C8h5N0Sd
X-Gm-Gg: ASbGnct83tPfJYxQliaGHNXNI+vbgaPZ3MoPZUmr0FnXo4B4xGllB6dx3YAujmVsEiH
	bMYZ2IsvwlWXWipEEUIwlAr3x0T7QkH7ZhkLBxEpBuADwEYCBhXiCFcu8KXZVZxQV6/s9BR6saw
	nD8IXzbxui/ITLxFHj6VwWVqeacC1LVR13tkbVGDlfR4LdCIolIRKfKKjSfKbxYdoGZ5j79FFjJ
	mggIFAS0hTh4sUoqD6ipxrRO/epbhd2cTJyXCRtGqBeumI3vxbUYUcYAR7mZmmJL2gQOkOZg4K2
	2CqsWOrYl2Zjtqjfwt7xRPmeeQd019i/YjP13fxTMQa9Fr36Dvd8ZPueqFvwJe8oQ/UjVCr+D/q
	9UTWwRE1RNU/hXn+7Tg==
X-Received: by 2002:a05:620a:d87:b0:7e6:23df:a465 with SMTP id af79cd13be357-7e63be3ddecmr914838285a.2.1753783305115;
        Tue, 29 Jul 2025 03:01:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiy7mRTlkTSBHHGFfxJGJ7ZmooAMdpG8CLF6Bxy/LBKUaWbfUoweJXi6ZBpw/4Kvy3dj7t0w==
X-Received: by 2002:a05:620a:d87:b0:7e6:23df:a465 with SMTP id af79cd13be357-7e63be3ddecmr914834885a.2.1753783304592;
        Tue, 29 Jul 2025 03:01:44 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61500ad0451sm4462352a12.33.2025.07.29.03.01.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 03:01:43 -0700 (PDT)
Message-ID: <23f37207-fed9-4584-b92f-7142558473b3@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 12:01:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
To: Taniya Das <taniya.das@oss.qualcomm.com>, kernel@oss.qualcomm.com,
        Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-7-227cfe5c8ef4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-7-227cfe5c8ef4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: q3wJ48PFnJnlIt68ZghSLidt6afsCYgK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA3NyBTYWx0ZWRfX71DJGHHnDSi0
 LMYaZ5xJvXdMT5ZKMVBNICKLV3UtLVuOzBV6hIsgMH0/V8WrIHPBpiC4r4+cbQyGO0mdU2wjClZ
 rD9zVMeQPojcxH1XE6g8/ko6AcTS5QZZdwFKGPaIz9DZb6zMXA/SXz1NWBO/LdeluVVlaYm1nJ4
 JQqF3w6jowxmHrIrLkWHoehxJT3SzSErvjyPIoZ+nCgP5G7mGMh/zcLIbpdFCeTdbpcF8oBEAxO
 8RMHoHCQ5IqeFpgU9DIZkSNch7enx/5Buc/OFX/2LALF5cIwZarHbd0JP5fMs0ftUR/ZqckOaiM
 XGx/smDy0eQ6qiJLWyn8USOyj91tYk2HphxIWEGz5Msg241EauDi3/jo03PLuo746kW4yAhsQiG
 SyWw2gap69Qj/zV59H3eTnnj/VjUEPCqua0W/4VxeoBCcpPL+3ZwtUwfVyhsMbfIIukbA+Ew
X-Proofpoint-GUID: q3wJ48PFnJnlIt68ZghSLidt6afsCYgK
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=68889c0a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=sQv67BsiESNKl3dOTAkA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=927 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290077

On 7/29/25 7:42 AM, Taniya Das wrote:
> Add support for Global clock controller for Glymur platform.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

I don't see anything obviously wrong

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

