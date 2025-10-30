Return-Path: <devicetree+bounces-233167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0152BC1FB4B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B01741895299
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F5A2765EA;
	Thu, 30 Oct 2025 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bNFLjVJO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YhuPOhEz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B103595B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822263; cv=none; b=ur8MracgOgHbbKtUscua7jHQ+oo2bajX8BZVB9W138/EDPOguReH/vk7N3OVO03RaIunANFkC3vdtrc97D2GnF7koQ83s+7UHGibLCfsE1+RioCvFvjh1SehpgFXQqAI/9FfGB/+NLIAXDmqDgyij/Ayvi8BPqNlg8FZ0tV2HoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822263; c=relaxed/simple;
	bh=l9cMvC/Bdx7ApaAEaOCjkhJrDDxNmTaoeqW9V0WqPzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hww857b/m4Y0s1vaBNrhFtfTOxtd3lgk3JAQyhCgyrDBo1NMfRCNVWfuinBjjMa3mthHzdeKyBAl0pIudO/wxA3IERk5qmFTMckTtNRs2JrSkgDlu/jOMOiijLA2k7VIIXGsisUcyJKdcblnQd2F4HGaDT0KpqcQsUdGYCTA8TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bNFLjVJO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YhuPOhEz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U4xhbr2623035
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:04:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WkbO7JtA2l05+kuFfUn1jkZdLBXtFJAG0KtFxR+o3Qg=; b=bNFLjVJOsDweYezT
	bjzPcm/tCq+1FcJeNuJvpuJ83Os/hCddH98GpPsj8Fx03nCo8pvq7gUqgk55GRwx
	RZBeDTUyhT62ArZdtpSmBxBYeA32WdoZ3YAVeF+7VSP8p8aEwdwVvTYMXF5vTnJc
	X/jQ5ueorLmXK21HgZmqQGFlULjM5dLtdZ+7LCIpLagL/Yv9VQQMnHg0l9hWxFgH
	+Eoq+sgG73xl7oQ/AVDhkM+Mf1RySgYzHMVj5hj/ribSRNn5yFx489yclFjDPG1E
	9D72gSgd3fuDn0BWK4j6Olw5vzfIyDfDZEQ3WewlRpyLAttwqiewv4EBFTawKwBk
	drv5wg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a41fxh1m1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:04:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e887bef16aso1444891cf.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822260; x=1762427060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WkbO7JtA2l05+kuFfUn1jkZdLBXtFJAG0KtFxR+o3Qg=;
        b=YhuPOhEzCmEa7CoURdIuo1wisJi70wvdcOZOQDwt5udJa5PCqjRRX3BH2yq4yuVALM
         +BPIjSqusos5v651c3BY2LmDRo5mXXuadLGcBiLOdlrAMiSD4ZHdbwtN12YfH1CZhEkz
         82X+gSZATG/x6nhLg8iQMMByEwy6LQ9NFb45x/FF2pDZq9db90m76XHYkj7IOjYvIwAi
         8QGD248xYA8hSDfDTvW6IRo1Qv39ogt+yD0MODah8YAZrGZzx30OQ0+Y1PWL58Q3B6Nk
         aHBIoJrTXsk0FRB8r6+7RMtOTXSRiX4YBwohiP8orbLcg3jd6MIeGXuy6G/ev5gQOQr9
         aG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822260; x=1762427060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WkbO7JtA2l05+kuFfUn1jkZdLBXtFJAG0KtFxR+o3Qg=;
        b=gzp6h8vaoj9NtQ7Qh3ALgWKNs6QRqQN67ZOQkBRuLYP07wPQ2CuXIAQjR6CbCF9pAl
         DsBwgBJxlVRK/8uYq2O1wauMgwdCz1VSCNZ7yzBCC2RYMTj50tR+bBU4UggSJGngbDaa
         1UqCv3XnEwIgRx7XS+bzreS0iIH9nID7XSNNNBGkd1UuYRaTqAeFrPVcfft3JsMLRAdr
         K0yB0gPxUtekFpt+yCGxinXgu6h1I8KQZelbtFz4IfuIltQiH/S7jN2l8YfjWo90SFQr
         00N6JKLOFzLeX3aypGYjs9WBBca1ZStEwiQfyTSLf5WxWagkMLU88y4wdXHYkxUOUodT
         ZFkw==
X-Forwarded-Encrypted: i=1; AJvYcCU2YnP9MqCsmlLTnLax8RJNPitfCXBIv1gFdT632d2ZBtPn0xrFqk6FP9vyKzHwiqcp8c9BjssylLF8@vger.kernel.org
X-Gm-Message-State: AOJu0YwWCMVcS9plTg1uzXR0KvhH4POhq9J7gxTSlk8swrD3wHyxvBC7
	mVgv3EgeJg+EAZEFp4pqvcdwiFLbCqPa2xE11jjw+oKOEXCSNrq/WMJ1kIq68g0UjbUsU9AEG6g
	fObWmF4QepuuhA+eHEnDSLrWS1RdbFWzI89neL+NHrj/Dm7gjLgQq43tkDi4BJ0um
X-Gm-Gg: ASbGncviJ9Y6y2wzKjsuoCFr+bl7t1+iQvDpiyDf8bpg8J5WwXyM13cFtKg4cahuJNd
	vWrhZ1ji8CJZtv6YljSzBu70XiKIWgIMJOQ0ylEhuLZh6ChxYzWFxhJWKpz+voy+Q7jzfuYJhUm
	5xRVwBv8zx/HkcWBr70gQ3UCzAy8ZHidsIaxCbezji/ahRt8KKPOSWjRHQy8+0Z0xpKhQM+pe/X
	oJ2OW6jP297J/OYPOSb+u8bcYDTId8eo8PjM4cEF//I40x914EGQaYxkYchf3vtcaLMDKuLOIWi
	btgYIEmT/zRXY6mz5Bhrp9oMueXm/U7Mby0Td+sBI/j+xr9/+cGhsvaYIM+rqHiAgTQbJRHDLab
	6FF6Y9t8MPCs1yTs5iPtW5oVdH3ejQdkAe8iiqnbDO+BxkNuvWcsXlMPU
X-Received: by 2002:a05:622a:155:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4ed15c06266mr56987761cf.9.1761822260030;
        Thu, 30 Oct 2025 04:04:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHDBCBzdYODWamLmkDbBUuXY29vrJ8tqPdGT2NUt4Gx1O3hoobdrBluCz/hkhrbJVlKxHHiw==
X-Received: by 2002:a05:622a:155:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4ed15c06266mr56987301cf.9.1761822259508;
        Thu, 30 Oct 2025 04:04:19 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6dad195456sm1178555666b.72.2025.10.30.04.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 04:04:19 -0700 (PDT)
Message-ID: <d94cbbf7-9720-4d5d-aaf3-fbb79a47c7d9@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 12:04:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: add gpu_zap_shader label
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <20251028-dt-zap-shader-v1-7-7eccb823b986@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-7-7eccb823b986@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Zj0Ql0nu9Fibvui2LBrIBLcIs5HROZaT
X-Authority-Analysis: v=2.4 cv=UJrQ3Sfy c=1 sm=1 tr=0 ts=69034634 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=S6OGlrJxYZSBbBCeTXAA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: Zj0Ql0nu9Fibvui2LBrIBLcIs5HROZaT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX5GILHuEE+qFm
 3/S5y9mLHmvQYODXWyqU2zqW9VuNbJ6mw1V8GyYKinlUKeQWzGaVgxV1Q+N4KfWVO0FQ/dB5Dcz
 KuixJo/pR7xyAbPwcOsLi238ipZBDjAzQy2EQ2cQMbYIij95dC28PADzdlio1Ya6sfjH4gMQIAP
 TkmpjX3h0NgYNYz/ELue+dTmT/6ckp7ehlo2G2fOmZrjAW0XF+AxviHRjRt7DTR6wfo73P6VN6C
 JhYUwZtJwxDDFrV/5/AErIBE4K8n+FDJDbw8QFUy7Nphk2wd6fCAyx7lg4VYEMpZP/hHeU+CBsW
 nJmuFzrb7TurYVXEorYtBc72uDaUdk4geZmRC0uP5IYereu3Qn1bLLxRjVe6JLdNuZYnSnFc9z1
 mPoAyMghQabICSDCiw2Q4N3ISlw1NQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300090

On 10/28/25 10:00 PM, Dmitry Baryshkov wrote:
> Patching existing DT nodes based on full path is error prone and
> generally not recommended. Follow the pattern introduced in the last
> platforms, add gpu_zap_shader label to the ZAP node and use it in the
> board files.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Let's pray this gets merged in an order that doesn't wreck havoc
or require resolving conflicts across 64 files..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

