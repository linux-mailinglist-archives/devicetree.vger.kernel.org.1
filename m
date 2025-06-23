Return-Path: <devicetree+bounces-188483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BEBAE3DD2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:23:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D91751891491
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9AF23E331;
	Mon, 23 Jun 2025 11:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ANNbLeOp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE58823315E
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750677809; cv=none; b=Ac7+KRXKsohCabdnkq9eO4/UJfX39yEusJalHzvy5t6dE6KLGOHMsHUBe24joGN5vd4VsrVI7Eo2oophPlQcimXmPPUHcjSdtVOOM9h+gb2jlyrzfuGToChpZ7KkOZ8Zk19xPNhfWdrCeXzrg4o3COCxkxV6iTNUrGLEBldLV9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750677809; c=relaxed/simple;
	bh=za3jzPzxjRKrGPWrbVkFmVAdacWDo5Ii0cqWZ2Fo6gI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HSqwWNbDSxGZI71+wlUarAY0jOumzHUm6mjtSMnxgGwKS81qniBuvwkdem9zN4FMUxi+Y3ue4xmhjClT2mi46ek6PLB3xjNENk0uN6F65H8gGONrs48pTfkBGGAFFwfvB1GCXVnZHHQbPX5uldm+cE1Ne3+2ZwwDtCu1YQDMDHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ANNbLeOp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N7fRlZ021631
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:23:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UH9uuyUXsNQsiJs5r+UXcRRobA53OwqGqf+ZGt8Cb88=; b=ANNbLeOp/lN1DG7z
	ewPOV4RIwpwnh2qgJugpOWgn9hG7ZcnJhNqKxKk6yQQDZI5ATFASG47iX20M9yUW
	xJsOT5W2HKm2qVLCd0ChgDCarqGqraIxwtWX7UIVDprz1xH7HaXD7CFIdx/JWQw7
	oL9qVim5UxKaNub47x4Pm/tEuJ+fwN0wKEm5DliM+nsOeBW1CtzZm2OPjh0nsoJA
	tUxUKgeovmOKKPjT5qs4EpLXkQbM9fVb3WLFzJDQTxroDKye5JhTNXQxIBREx0kJ
	QtVERZfXTKSIeVEMbRlrjxyMEG9kIxaup9DpVAaA6XIxTwMFRFGkyXunjz7w/um8
	bsfqTQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rprkqy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:23:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09a3b806aso104387185a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 04:23:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750677805; x=1751282605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UH9uuyUXsNQsiJs5r+UXcRRobA53OwqGqf+ZGt8Cb88=;
        b=X5Rl70E549k5tVw3BBHR9NdbTTkwbYVsEKlri5a4qLlGXxTudkFvxqvFpAjn0LItP+
         UNtuhIzpeLCeOouWYoQ+qOlFi2hNtVkeNTG9uwVo95LdVbf2/RrzuLfD7U83nK8Kz0pm
         M6/jvC6vP3lZRlLJzWXvYexoMFQdai+JFyZWWRMakBGqtPuvxAdn5NQ284bqYpqzK/cr
         kPgj0IIfw30geQRP14bPyUX9Rh5XkDqlO3KsfmFwtwVSzAIBgZAcTbjdks4A1qsGjHkz
         RnwywGoW5CilIGBd23znbn3X/l3cU6D0OH1RqtZaLYYHGoNPVLWbW82xlxVRgxDcEG/C
         qvzw==
X-Forwarded-Encrypted: i=1; AJvYcCVbiyjtu8XBFaaNrn8/JkLdzXs3jQ5CU2eNx31kCzAZw3xLTpXmoX11tb2PnZ0khk9wNPrT72B5cBdM@vger.kernel.org
X-Gm-Message-State: AOJu0YyfOBtfwu9oqjxwIl8MYxyd+OuLfw07AKWSMe/wW+NXGI4uzpvC
	rcPPVuCyBFXVCJc9dyqrAuaEUbPZhXxI530Wknr2efg3nxi751ifH0S31synJlFb0n6otZLk/m0
	lKFR1UYde8bjUFpwyZtzBjM7koNo/y6OpQBJiVIN+Y8WX+U/0u9nMe3Rj3fV9YM5a
X-Gm-Gg: ASbGnctsivcLfQsLod0iyE/o8VSm/mktPs9xtSQEzaUwk/GmF7N/IaGSA3/ecFv6T1J
	59qMaKua+G7rWPxDv117Yx2DCtzx/MLMltWY4JiV1ziXo6zpDMDk47g9tQo9OgRth4u7Y71Pzd7
	oCwB/KBJHVGnCYCtr65ygDMmZre5C8ROvIV+JbmgepD+c5kGYF6Uw2YaiozGJrfA3AgoQSDxElj
	verCLGLyY6eEURMwEUq48L4UKQ/jPz2UgHp2+pfNzl9bxxyyslJDZxPqd5SsNIpZ5freNLKXw2u
	aErDE/+fqVLbmKLn5GXjSscirjSEg/yMyNQEt1ruDzBX7lzXA7d/nTtmrKkGinU+FuSWwIbkrf/
	DaCM=
X-Received: by 2002:a05:620a:26aa:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7d3f98e252fmr566910085a.6.1750677804677;
        Mon, 23 Jun 2025 04:23:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIeTIVZmLAQYrPGSdghytyNjTMxnVjrXHgHo2iWPUvYkxGCZEFn6pW3QQTQQmBw26psY+Vwg==
X-Received: by 2002:a05:620a:26aa:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7d3f98e252fmr566907985a.6.1750677804000;
        Mon, 23 Jun 2025 04:23:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18543642sm5902920a12.26.2025.06.23.04.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 04:23:23 -0700 (PDT)
Message-ID: <aabcf5d1-7380-40c8-896f-6ce37944e97d@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 13:23:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: Correct the min/max voltages
 for vreg_l6n_3p3
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250620-sm8550-correct-vreg_l6n_3p3-vol-v2-1-b397f3e91d7b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250620-sm8550-correct-vreg_l6n_3p3-vol-v2-1-b397f3e91d7b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=6859392e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=cfxGQl2wVvWQvt-4oC0A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2OCBTYWx0ZWRfX8poTHlmAuRkd
 BQKX08Nv38KJ5ZsmLmX2I65v5FgD3SKaNISZ9R6k/d5JRicTXlpq48qRyfOjZqGWxZ09fBxnGMp
 H4IRhc7J5P/jtcT9CFHeMDNvLHQkG92YzAXkKh5/pmjBpoudyUCPWHGo3zCgHzDhsyvY3YnTGGY
 64ywnbXbUUTo+Dhzlxn4pzWgQx0yquQi8svSnn8rTWF0Qx8bIj8kpZasLqD4Fn3NkSa139GC4QJ
 fw1mcVFGDQFnkfglEL2ko67zbsQOl1v7zVvQi0H6yXdXaVRN2CqGuzpOC0BDATQfux+hPwJInhy
 w574X9mYwHpT0QmykzEIEvje6zFj6+XYngPwgaRpl2tWyMIAxr4lE6ZVOrdUbtPIgOaXeWQGgUj
 HGWaVRRDqVflLnKHmwLRqIKdaYXn1OLisKzjzrEEwjYaEFit8b75wcwmojwnYj2lZmcONZyH
X-Proofpoint-ORIG-GUID: CkhMSAkBB85QPuauzF32yG9b3R73YEV4
X-Proofpoint-GUID: CkhMSAkBB85QPuauzF32yG9b3R73YEV4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230068

On 6/20/25 5:29 PM, Kamal Wadhwa wrote:
> Voltage regulator 'vreg_l6n_3p3' max-microvolt prop is currently
> configured at 3304000uV in different sm8550 board files. However this
> is not a valid voltage value for 'pmic5_pldo502ln' type voltage
> regulators.
> 
> Check below the max value(3200mV) in the regulator summary for min/max
> used as 2800mV/3304mV in DT:-
> 
> logs:
> 
> [    0.294781] vreg_l6n_3p3: Setting 2800000-3304000uV
> 
> regulator summary:
> 
> regulator     use open bypass  opmode   voltage current  min     max
> ---------------------------------------------------------------------
> ..
> vreg_l6n_3p3   0    0    0     normal   2800mV   0mA  2800mV  3200mV
> ..
> 
> Correct the min/max value to 3200000uV, as that is the closest valid
> value to 3.3V and Hardware team has also confirmed that its good to
> support the consumers(camera sensors) of this regulator.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> ---

FWIW it seems like 3.312v (which is slightly above the previous
value) is also supported:

static const struct rpmh_vreg_hw_data pmic5_pldo502ln = {
        .regulator_type = VRM,
        .ops = &rpmh_regulator_vrm_ops,
        .voltage_ranges = (struct linear_range[]) {
                REGULATOR_LINEAR_RANGE(1800000, 0,  2,  200000),
                REGULATOR_LINEAR_RANGE(2608000, 3,  28, 16000),
                REGULATOR_LINEAR_RANGE(3104000, 29, 30, 96000),
                REGULATOR_LINEAR_RANGE(3312000, 31, 31, 0),
        },
        .n_linear_ranges = 4,
        .n_voltages = 32,
        .pmic_mode_map = pmic_mode_map_pmic5_ldo_hpm,
        .of_map_mode = rpmh_regulator_pmic4_ldo_of_map_mode,
};

but if the hw folks say we can do with the lower value, it's probably
even better

Konrad

