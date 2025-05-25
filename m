Return-Path: <devicetree+bounces-180347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A95AC3542
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 16:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE5B33B415C
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 14:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B1271F5437;
	Sun, 25 May 2025 14:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zo0A7hPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596A21EF094
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 14:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748185159; cv=none; b=KbpAPrk+Rj1qdJzZ4q3YJjSYYGjXfbY8XxU1l6BKfbwtW5RSQWo1lB3S0foT49eCwoxFspePNrm3hYe+Qoe+3+e3keKq76FJzPInFhMaj5u5IibS6HZQhukW7O43HhYVnPMLbbT7d7XJw0M2FyzhkxTuWvidLOt+AoKKSpfAGe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748185159; c=relaxed/simple;
	bh=xE6fy/U/Xd1619RdwrGW1EtBH0i0QH5wRVLULZkRiRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UdI3EQlGlfHJyfZFNjmsfnu2nNbip0S8U8BqCW+g3QnEczpyeiFIkl8XLI8nmVa7edH/M+TbZJNNKTHAw5Yz+KkQwNoSy1xv8FjHqD9lqSDhra5x4ZrM63z+7oQAHpocBrG35UYehNXJSckZs2LEXEzD33eWlSEurmXSH+8gJUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zo0A7hPF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54PCxQum022362
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 14:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jdalSeioBM1G34Y2JK7jb6N363uwzkJxNYsn+lcRl2k=; b=Zo0A7hPFN2hNe4Gf
	3hQA7K4KlWUEe54SAU2RfJyfwrsSVoqSAMhYyQNGtllv58nhSuAmP9EpnIU5LIzW
	JJ0XLNkUWVBaWx4amj0RxzKRdmLoNOY/KqBZLGyX16LgnCdZ49VanYGk01EEfkf9
	Lc4SRjcqajEXo8nWgzhFl0wJfjLBQOcL24ia2Oy9BXu6iaGQcdRB61+H0lWCxv03
	s8dslNcYBze3Q1g4NiFkTwWjfl1dB1UgTCqUdRflhIZKLWSiRuyJxgM5N9R45UM2
	OYPtl28J7pR2c454kdY8CbYSHdwRpw7uZJJez3dvhuaAYJb37mIQlqHmbzidFoar
	UH9tUw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549a4wg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 14:59:16 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-af5310c1ac1so598863a12.2
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 07:59:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748185155; x=1748789955;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jdalSeioBM1G34Y2JK7jb6N363uwzkJxNYsn+lcRl2k=;
        b=SkxllFpHId3HpIImEELxmfExTTSzAVlNa4jMrE4Inl1jlqUYaBAFiHGaR3V59H5X7C
         y2qEPIJokj1YUEN8MLjYOSIFDNak/inQKq9lmrJLCdsOM1UmPX6E5xnmauRsiQSaHEbW
         qtMDEkzPTK8X6YMfiu9ZrNLuJ1LO33GL1p+cjudz/tXHG0RTm63WxJVNBru5tsq9N/3+
         OVyfIcoRLzzWY5tbGNE5iOB3zXrm0Y4iBbADOeynf/ilMIQILG/iJ+W36IeK7mTCVjxp
         SixOnB33MeAA3KtITVJg00PxJvcm7MnUKOcXgVAUxaP2/32IlHVlHDIKjeEA+QxxaGSn
         OJsw==
X-Forwarded-Encrypted: i=1; AJvYcCVyETMNhzwEhqwx+OOafP8aE266iArZYRcp2pMX+ZQ3pa1GGVzWA/78XnFwB/n/rna9C/vrrFsaATF1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8/3/bdeLt2aqHoJ5a7Y5jc3TqoDwBkxFOMllrqerIDcGQ979B
	k6g154hNhKQ/tTEwTDlCkAfq9IOF0ka6nRr9xFd0TX8o5RUdvRZOyuzKMXKKMjQwfHA1cGcO2RL
	ZY1BD2I8bKtBWt/evwAm+I/ZZhBMbftrP5FtZIvAryCbnUUCEUF/t65TFKtM7mkMq
X-Gm-Gg: ASbGncvypDN8aXTaEKzpzrxB+cARhbD6cjG/8DJGaakGrR6uBQmMvt131CFRKLSIH2I
	AhgxVAK+NMfBOgrxoApGjPYlBFDiMbi5B3V40BHZzyG2cpN49QhZQnttTQU2Ss/axPkxpuUlS7U
	XaiuHC1j+kpvgPMjtTsz4A72/xjesIisVW6tHo3ds5rTVjMrcwp3gvp3Xl/oog2SsHXh9c1UHtd
	mNB615Zl36J2nPYJ2mR/D2WNW5E4+n+E7FiSdcH0yb6cMsbIL5PdebfhQkmw7r9cgnPxKGRgBQs
	kvQHOeDQpXwF/M3qUJmmZTzqM3QWg1gFIoRQ13w=
X-Received: by 2002:a05:6a20:4320:b0:216:5f66:e0ac with SMTP id adf61e73a8af0-2188c37f114mr11557830637.34.1748185154789;
        Sun, 25 May 2025 07:59:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLU3aT24fVKyftQI2U1zjvuWMrdqq3KuDLzkuv5c2nU1cnAm+B55PnJU37yWVODzRE2GDVnQ==
X-Received: by 2002:a05:6a20:4320:b0:216:5f66:e0ac with SMTP id adf61e73a8af0-2188c37f114mr11557804637.34.1748185154333;
        Sun, 25 May 2025 07:59:14 -0700 (PDT)
Received: from [192.168.29.179] ([49.43.200.253])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a970b7bcsm16027466b3a.52.2025.05.25.07.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 May 2025 07:59:14 -0700 (PDT)
Message-ID: <bb87014d-cdbb-4dba-8e80-7e9d3a1dd66c@oss.qualcomm.com>
Date: Sun, 25 May 2025 20:29:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] soc: qcom: qcom_stats: Add QMP support for syncing
 ddr stats
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250525-ddr_stats_-v3-0-49a3c1e42db7@oss.qualcomm.com>
 <20250525-ddr_stats_-v3-2-49a3c1e42db7@oss.qualcomm.com>
 <lt3p3hqh657rx7knpvoxl5il7uohrcllmi5lk432st6nap3vqa@jkgpj2rb6daa>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <lt3p3hqh657rx7knpvoxl5il7uohrcllmi5lk432st6nap3vqa@jkgpj2rb6daa>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lkHlnUrRiZBX-65_3ty-UrtJw5Efv8WY
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=68333044 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=5lH1I92KOXiYj6Rk8d+84Q==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=ARcffcqOct04O5k4gLUA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDEzOSBTYWx0ZWRfX0EIj2v8NtEg1
 37p0gykBN2pFfB+IrR2AvuzFwlNsAjpsavUlUCPK0NGTy/3tIn2KyQbuc7hBxRhktYMggWiLhtn
 t3mXS5fOEHOkdmbTME5n3Wt7315tagE6CR5MwXwv6RKGPjT6RlMXzTy22Bavtqc5PDU0TfBXRfX
 eo9/uacjr92iVpevzlHMXkHuNmvb+Y7wF0gqGqM4TaqMCgzZBiaUCNEPr3FhybjeEQG/n36T50k
 3VQdyWHyiEa7FcA4Db/Han1tCRFpo28U6m9h/77GoFMhilCC7fPxP45t4zleJpVvYXBnAaQWnER
 iiBuaeJRHSR2PFjPR8L3bCZZcfPW8+sGrsbhGH58BeR1yshXTRjJ/6ya2GTbgjCREWHRz5S2fGT
 Imkq4XBHg8baqTB3rCrfRWl51ehLRX+QzW/YvYOX2KDMt54bzUKPHszM+9jQWm0EP/EokPL/
X-Proofpoint-ORIG-GUID: lkHlnUrRiZBX-65_3ty-UrtJw5Efv8WY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250139



On 5/25/2025 6:57 PM, Dmitry Baryshkov wrote:
> On Sun, May 25, 2025 at 02:25:58PM +0530, Maulik Shah wrote:
>> Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
>> ddr stats. The duration field of ddr stats will get populated only if QMP
>> command is sent.
>>
>> Add support to send ddr stats freqsync QMP command.
>>
>> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
>> ---
>>  drivers/soc/qcom/qcom_stats.c | 34 +++++++++++++++++++++++++++++++++-
>>  1 file changed, 33 insertions(+), 1 deletion(-)
>>
>> @@ -310,6 +329,19 @@ static int qcom_stats_probe(struct platform_device *pdev)
>>  	qcom_create_subsystem_stat_files(root, config);
>>  	qcom_create_soc_sleep_stat_files(root, reg, d, config);
>>  	qcom_create_ddr_stat_files(root, reg, config);
>> +	/*
>> +	 * QMP is used for DDR stats syncing to MSG RAM for recent SoCs (SM8450 onwards).
>> +	 * The prior SoCs do not need QMP handle as the required stats are already present
>> +	 * in MSG RAM, provided the DDR_STATS_MAGIC_KEY matches.
>> +	 */
>> +	qcom_stats_qmp = qmp_get(&pdev->dev);
>> +	if (IS_ERR(qcom_stats_qmp)) {
>> +		if (PTR_ERR(qcom_stats_qmp) == -EPROBE_DEFER)
>> +			return -EPROBE_DEFER;
>> +
>> +		/* We assume any other error means it's not defined/needed */
>> +		qcom_stats_qmp = NULL;
> 
> If you return here, who will cleanup your actions? At least you've
> registered debugfs files...

I will keep this part ahead in probe in v4 before creating debugfs files to make sure
no clean up in driver is needed in case of probe defer.

Thanks,
Maulik

> 
>> +	}
>>  
>>  	platform_set_drvdata(pdev, root);
>>  
>>
>> -- 
>> 2.34.1
>>
> 

