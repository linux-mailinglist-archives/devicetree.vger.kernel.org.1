Return-Path: <devicetree+bounces-221580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA4EBA12C8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:27:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DBB162416C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A943D31C591;
	Thu, 25 Sep 2025 19:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oamREFjB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C6B31B831
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758828430; cv=none; b=XDNAHiljpI40BMgZfILAO9ndeqlhE3nFh4PRXZJEC/EQFLHEClyCFGLwj9c6BQ4S4eLJPVFYmh3fAM+FZJrXPzFR28GkcP54qBd00sXWAVq+egu0LpchNV+RQFFmXKJ1St00qY1ZWpJs1kXKoWqpExqQ6webZs5dr461rp6EaQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758828430; c=relaxed/simple;
	bh=Mqlcs0XkCOfvSQoESxCxYhyIHsmY6fFwTw3IEUOGwhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pYsouQPn0x6zqgx5n77BdfKsjU/f2vNArQCgecaanZ523RBzJKgQAfJmHS1TcaiCcBNH4Bidul6Rw0DdcOwWknfOMjWghhSrKjdCUqHeMYVqvxsyRSh1k/iU00JcNAXwp1CwvZsyP/WwDOefvqK+NPU5o0bdRsPkIhD8n/E5gAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oamREFjB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQ5vv025161
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:27:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gSKcPFjG9aPsKgb4wf4U5eNuAXJv6M7J93dBweMw8L0=; b=oamREFjBK3cJ5tVV
	FPktCA1M5mED3N/nioTAeQ39/G+G7zLiD6XBw5iPkRrF8lBZQTFeDjBsXNUEcbvi
	Z9Yr1U9NNx/GGH4+xyh0zPdbGLrfs3j0AYts8TkJta+BjWgCelUY4zCRANgFkb/S
	efTRcYXlgZ2ykmdowUWjgIjXoRiww/ePyTzgkH5j9a6CIQLxUO2K3Y2ZVzNdWYBq
	fJsaV006a+oLvzDl6Tc9sRFnyajxQv0lkMzMYMQTz0B9t7qnLuRy0sDoUDtY1/9U
	rBTYcJ8dFpX2DewfC080B69GI1pB6h/JH4nTcQg4JzVbjH7S40XyHuvXRZ1+UCMG
	0K3L1A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qr4pf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:27:07 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f5e6a324fso2471669b3a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:27:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758828427; x=1759433227;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gSKcPFjG9aPsKgb4wf4U5eNuAXJv6M7J93dBweMw8L0=;
        b=GptPSX6mIGVaiCEj9eSeK3Me8zPD9h1uQXHuZ/213YJ7KWFUaaZUlP1w7eRgX89/az
         11hTrn5IsmTAXShmvxBiKeAIa3c/8NBKjKd9ZpBU6EHr58wLF5l96oUlkNP1pzaI6h/6
         O2HVmxdLYs6cu2MSz/ThleJNGPImi0o8vd2EW4Lp5cnZS/BbTMfejFFwkDG0qdTSBIqx
         B9XBCVwEE48hEDxkQJfwFM8YjXcvYjHUyqr0EkrNpAub2NLNDl5eFDJivl5tYbKSXNM3
         WF5SF6WeUMhKdGWKKhg2cONO8I7mQAPELNHoHDnHIq+LYnJUXxTAgxkZbAa2mOS+A+d0
         MZnA==
X-Forwarded-Encrypted: i=1; AJvYcCXqZah/WkrnDbAimMPG+fJwK9kM4rW7hW5kD3sY0GdEPjhuDKmQjfaKF7+Qe1uf5ibpXYZ/929j6YJI@vger.kernel.org
X-Gm-Message-State: AOJu0YymD2z9jlPk/6uKTy30VpLKcOM22YHYIV/wvDe4E5M1cfOjkJPi
	tQKtbYgg0p9LyKsXbUKFb9esbYgWyTW1xr0EXs6tJrYOZ7PLFiKbwSXN+k5DvZ4/2OBQt05wLSW
	SwsZ1WM6HaletGbCDn5MGfNpRm5Sdtscbw0rOLbwtywhaMkdEDoirI3ENhplHTE47
X-Gm-Gg: ASbGncv6k/zLwpiyl1KhnSVKOmJmRZg4neXznqJbvSvS7x8FnpTQt6BQdfeYqlcIIfO
	eeCI9HHADssCgJAzdJvZgZn1VxKE25/VuXTM+ZUf/0fRgHlA1qzNLZnCLpFY2CW5oV+Leh9CiLa
	oF14MXmF+CLTXYHF/N/WimV6D2bXl+ASUO9nlfiFZ3tcOpkhoGaRbIhWAbatqwwBoewbrtMUsBi
	8z1ewCuRq/DZPRoGr0CR7yEZvA/ZtXPsnSk+PNxfmNvyNYjBTuNov+WdFvFkY7OeMcyJtDvpgM1
	02UvLdeLkXx8sLwiHTxfXh2+yc+8z1jZLVpmVWnS92imGBPyu+dXp48K8b4np2wgP3dXhWcyA10
	=
X-Received: by 2002:a05:6a00:1acf:b0:77e:81fb:709d with SMTP id d2e1a72fcca58-780fce9ed1emr4640134b3a.16.1758828426876;
        Thu, 25 Sep 2025 12:27:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMy6eOxzY8ypIS9vHQ/FKu9NN99OQ7DEYuKzsYPJuPA6rk37cVeqMdF6/e7OryjKzhbyy9Zg==
X-Received: by 2002:a05:6a00:1acf:b0:77e:81fb:709d with SMTP id d2e1a72fcca58-780fce9ed1emr4640112b3a.16.1758828426419;
        Thu, 25 Sep 2025 12:27:06 -0700 (PDT)
Received: from [192.168.0.166] ([49.205.248.165])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c06ff4sm2500386b3a.86.2025.09.25.12.27.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 12:27:05 -0700 (PDT)
Message-ID: <94f6754f-cc56-09c5-3730-3f36c22e4786@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 00:57:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/8] media: iris: Add support for multiple TZ CP configs
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-3-e323c0b3c0cd@oss.qualcomm.com>
 <050b2cc8-ddbd-4a79-879e-4a2c9e7d95f0@oss.qualcomm.com>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <050b2cc8-ddbd-4a79-879e-4a2c9e7d95f0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rNJTzZl1mhXP86S-3OO_MhuQdxRZVmdO
X-Authority-Analysis: v=2.4 cv=bJ0b4f+Z c=1 sm=1 tr=0 ts=68d5978b cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=AkZwv1uTgJSVxlfcUQlFCg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=i9OEk1DdV-OKGsAmNacA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX/KJKt3GKKu+2
 yHkfBkLdtiiTR2oBJtcok5yfEdWViAP80l9Y8BisAaHuTPBFfoIiThdfPiTh/Ri7dkWJGzvDR+x
 Vw93DfWE7QhD4qn8q20HnzTRq3GaW4Ll/sxOQe/gFtC+woeKLdoL4r4S7PeizZfom4nK/woqvrJ
 4B9qAyHlxnbtSHcqpYaR89UZM1e1mGYuVh1/chC/t6JMMDf/4dcpwynPPVPSXwQNJQd1rGCod2E
 /anTzwcuwHqVxWje1qIGsuj/PBYO85cwD4RMfaAVKUGO/rnToLqqHfLiJxQLn8xS1vURpkIcoV+
 E2w6LfmXKyIvcYrJKCtbYWx3BqCzn4TF834jP4tYrTpj9oVMyna63sjHio46PJDEiuvGdkTLq6V
 N9rpCeNkMnFcFeFjf9a5AVNgIc2uvw==
X-Proofpoint-GUID: rNJTzZl1mhXP86S-3OO_MhuQdxRZVmdO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171


On 9/25/2025 2:31 PM, Konrad Dybcio wrote:
> On 9/25/25 1:14 AM, Vikash Garodia wrote:
>> vpu4 needs an additional configuration w.r.t CP regions. Make the CP
>> configuration as array such that the multiple configuration can be
>> managed per platform.
>>
>> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> -	ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
>> -					     cp_config->cp_size,
>> -					     cp_config->cp_nonpixel_start,
>> -					     cp_config->cp_nonpixel_size);
>> -	if (ret) {
>> -		dev_err(core->dev, "protect memory failed\n");
>> -		qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
>> -		return ret;
>> +	for (i = 0; i < core->iris_platform_data->tz_cp_config_data_size; i++) {
>> +		cp_config = &core->iris_platform_data->tz_cp_config_data[i];
>> +		ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
>> +						     cp_config->cp_size,
>> +						     cp_config->cp_nonpixel_start,
>> +						     cp_config->cp_nonpixel_size);
>> +		if (ret) {
>> +			dev_err(core->dev, "protect memory failed\n");
>> +			qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
>> +			return ret;
>> +		}
>>  	}
> 
> Do we need to do any "un-protecting" when unrolling from an error?

Not needed for unwinding part.

Regards,
Vikash

