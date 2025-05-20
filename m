Return-Path: <devicetree+bounces-178796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2442DABD3F9
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 11:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C9803B2F39
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 09:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B987D268C62;
	Tue, 20 May 2025 09:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gd53YKcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1730121C9F5
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747734968; cv=none; b=ozwva1oZZigaNj9c4frMJ40G5GZI3/7VvUapPJfCdatHYKD+eS136cfDc/GvnnUZiMlngKHDoFZ5NAzmpYw+4AKrujuLEA57SktMxhSF2MoN5Na63fGGAizIIy3HMdG298FDCAt/w5lyAy9nrcWVmAKOHqaJagT24Z6vS9CXLSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747734968; c=relaxed/simple;
	bh=lydJCPfDF+Y8xYT9SxfHUAuxF9fHAKVBJJJryGlb13s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EIFNEZFgMmN3Y40Oa5XPMcDD3Esk+WZv9kDnEh8E4q3471qxc4n0PWrx0Wnx/Sh36AqoPBhqJX2aFhv9IqD5YFi4A80DKcxoUDLCwDRNSZjfWOK06fGHiM2wMMBLVpiSoVu2xCyHnArMNC5MdDW4+rP+wGBzlpc9ceoxuuBrY48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gd53YKcX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K71DOx005958
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:56:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjX5/V+ctXqdOjMw8zTg4Nlq+ms4eh9Km8lSRzO0p5s=; b=gd53YKcXimle9d3G
	TLt+k8OPw5A8nqqG91P8ZQbIa+RAAvm/UdMenyJ7XpVTm21PUhqKpWKb8A4kHNnY
	J7GOxNSiryLJBLdMutPkGPqEYz1J3r96HRGl1h8QsK6etyv/iXRZaaplJ3nq78xt
	e00rgLFfrx+am7GZnZHjgqFWnJpwy2W9kmki3vt01n9JadlB9t6OpOjaiutDxTwn
	srg/KBg6mwTSWzSjBC1FYDL7FNApO5vRZfefu1tqJU+nyTnPGxl/vMWh1Qv88BNl
	uPK+Dio5ZdvLqXOuY6CSfeI5th8ZjzavH6WUStYqlr6dRlMB/oV8IfLk7Eae1Qxy
	ic/pSQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pju7faav-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:56:05 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2323bd7f873so19950855ad.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 02:56:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747734964; x=1748339764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjX5/V+ctXqdOjMw8zTg4Nlq+ms4eh9Km8lSRzO0p5s=;
        b=Fk6BC6wRGiXRlYyBcTwAMswy6WmtvxrStY6LUUTJxc/S1Ns7Zh9l2RzN6MbGtHoxun
         aJQJ5DQFQHPY8x+MT1tsdfLi6Qt3uJ/rkgv48rmglfFYU1Fduv6HFJKPyViG0Y8gYg68
         KWTg6ioMyPi/4UGXpgSqnTr/gaZVFqIkeruOCkOfB2o54/qOwkw03abxDuqtYcQh5Dcp
         Jh6VuNj65xVp3piHpRXRXHvpJ425g+Mgcb/+Gcj415wEvDaLF1j+DaeyEFy6u84x35Hc
         hBIBgth0rgISfESLydqfOvo6ta9Mbguw2NOFwt94fj928I/3sp2UvK03ZmV2ytFxM22E
         rKaw==
X-Forwarded-Encrypted: i=1; AJvYcCUu7hCw+wtPKXqz0V50vnd5M5UIVakPs+SQA3lMvGvgew/DPIMr6IKaQ01dNTxo/8MMjtGY5mFVpx0V@vger.kernel.org
X-Gm-Message-State: AOJu0YyQG9X9bWzLbug5/96s0e0XAnet7O2Rw9N2qHywEsgK6szZ2NWI
	m+aMO3Klwzgex8RgKfUIM4y6baB+R5imf8YNZqBgpamD/+Grr+AQAuRkmjENhNI3whYmpNRqFci
	3Mvay1fauDpbBraXWCR1/5ph2p15+Qt+Dd3vr8+hOGYqX9pZMGCGUemESw2s55RaR
X-Gm-Gg: ASbGncuB8fgvm3FRCoXznIoGag6DjjOgCg60usNsKWWs3I3a09+QtgdqL3neZWseoGR
	7Z7ZxmIS+M0nvkCzZs9VsIjyVaWCgLC+GTXk5LO9lyUETG1N3B6hgF3VCbtUgMkp1KrQ/4PW3GD
	5HvYmHg8GvASkRBDg4YEm0Ok/OVq2S5u6ScM4v77AH5BkUG8hmiYS9/guY36wtmKNziXS7zJ2ZE
	aepOjROUtqPDo0qWlv8/hWHbegTSkwBhZ8UyfsZyV/048GeTDefGymv8ZX84s6UndW2dND5Ia9i
	EhnosYG0yTBQcEAmXxlJi6Yop/3En8xXUX9A
X-Received: by 2002:a17:903:2ed0:b0:22e:7e00:4288 with SMTP id d9443c01a7336-231d459516bmr261366445ad.53.1747734964501;
        Tue, 20 May 2025 02:56:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh33sx6xak778kAhEweurUJhyiCBBd6ZzkgJMIBW8tS6ffISJATJB/IBlfQ5+JHy4btgFKOg==
X-Received: by 2002:a17:903:2ed0:b0:22e:7e00:4288 with SMTP id d9443c01a7336-231d459516bmr261366165ad.53.1747734964109;
        Tue, 20 May 2025 02:56:04 -0700 (PDT)
Received: from [10.218.34.181] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ed576esm73392485ad.242.2025.05.20.02.56.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 02:56:03 -0700 (PDT)
Message-ID: <a14f58ed-fbc7-4074-ada7-3b9e50eb3047@oss.qualcomm.com>
Date: Tue, 20 May 2025 15:25:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: qcom: qcom_stats: Add QMP support for syncing
 ddr stats
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250429-ddr_stats_-v1-0-4fc818aab7bb@oss.qualcomm.com>
 <20250429-ddr_stats_-v1-2-4fc818aab7bb@oss.qualcomm.com>
 <c876ae55-a84a-436e-8c11-c0df236c1ea5@oss.qualcomm.com>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <c876ae55-a84a-436e-8c11-c0df236c1ea5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XKEwSRhE c=1 sm=1 tr=0 ts=682c51b5 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=cm27Pg_UAAAA:8
 a=Em_3BBobWHkwEKcIpuwA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: lrg6rs679OLUPTQsxB97dsugbwV0maFF
X-Proofpoint-GUID: lrg6rs679OLUPTQsxB97dsugbwV0maFF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDA4MSBTYWx0ZWRfX+L91RmioMQ7I
 1kEaNJcJc/wntvn4+ohFwxkcZgfGoA4HQqJO1D4fls0D8tvE6Yt0prDIuesfzJgIXFMXEI9v1lL
 CTui8uO6OVFKRZwWmfSVUh46KwXJ8lgi8Dz+DEanycyW6yp6EoWGWC0ePPuQFCHydRK7ZqOjzw7
 VgShlAIwJ1kTbEbk9CbJqdwJLAXi/Hayt8gtPGRrkp4bZAoKx7ewCXYEynxGGEmyXM5W2kOK3HR
 abXVelSEW/qbe38ufNz0FnzvQa8KScVWaWhsvdOhRcn6+pw4UlZ8aJqmqtPNQ74qgJVjlxChKRU
 gSdxIy5FzQ6vKIZPXRxNj8sknfjIcAM8YGvfMEIpJ8xSzPiIWWMAL6Zr3KLL0DdgFnPspLylHG4
 iwLACr5YttWRxGzH2eIIIGjFtdo0vELJH7L16aeExfZRXK0WbVxwPvDzIQbsM4QQvdWa4fJo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0
 mlxlogscore=999 phishscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505200081

 

On 4/29/2025 4:09 PM, Konrad Dybcio wrote:
> On 4/29/25 5:52 AM, Maulik Shah wrote:
>> +	if (qcom_stats_qmp) {
>> +		/*
>> +		 * Recent SoCs (SM8450 onwards) do not have duration field
>> +		 * populated from boot up onwards for both DDR LPM Stats
>> +		 * and DDR Frequency Stats.
>> +		 *
>> +		 * Send QMP message to Always on processor which will
>> +		 * populate duration field into MSG RAM area.
>> +		 *
>> +		 * Sent everytime to read latest data.
>> +		 */
>> +		ret = qmp_send(qcom_stats_qmp, "{class: ddr, action: freqsync}");
>> +		if (ret)
>> +			seq_printf(s, "Error updating duration field %d\n", ret);
> 
> let's just return some error, instead of printing "error" successfully

Should i drop the print and also error, From details given in commit message of [1] 
which made the qcom_subsystem_sleep_stats_show() function return 0
in order to run command like below to collect the stats without interspersed errors
grep ^ /sys/kernel/debug/qcom_stats/*

The same may break if return error from ddr stats too.

[1] https://lore.kernel.org/r/20230119032329.2909383-1-swboyd@chromium.org 

> 
>> +	}
>> +
>>  	reg += DDR_STATS_ENTRY_START_ADDR;
>>  	memcpy_fromio(data, reg, sizeof(struct ddr_stats_entry) * entry_count);
>>  
>> @@ -310,6 +329,15 @@ static int qcom_stats_probe(struct platform_device *pdev)
>>  	qcom_create_subsystem_stat_files(root, config);
>>  	qcom_create_soc_sleep_stat_files(root, reg, d, config);
>>  	qcom_create_ddr_stat_files(root, reg, config);
>> +	/*
>> +	 * QMP is used for DDR stats syncing to MSG RAM for certain SoCs having
> 
> having what? (you could drop that word and the sentence would still make sense)

I will update the sentence  in v2.

Thanks,
Maulik
> 
>> +	 * (SM8450 onwards). The prior SoCs do not need QMP handle as the required
>> +	 * stats are already present in MSG RAM, provided the DDR_STATS_MAGIC_KEY
>> +	 * matches.
>> +	 */
> 
> Konrad

