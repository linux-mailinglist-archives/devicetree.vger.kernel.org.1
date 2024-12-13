Return-Path: <devicetree+bounces-130843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0959F1016
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BDB2281F50
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2691E764A;
	Fri, 13 Dec 2024 14:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YMyBstRg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680D11E5713
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101864; cv=none; b=fKf2IRSl7t6ifHpeUFxIsGKOeG58BmQfDD1ROLAgL9TSX8TAtXRGrJRpQ1kw1SdNiVDZILNk4exYC2+KCWU2JxXYWNMZHecyasJwBBOSTDmV135ViCrE/MbQCfweLUaudtiCDNToPYNcpoFO1ZjTnpq0H2OsiiwkglVGCtUvvI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101864; c=relaxed/simple;
	bh=2wbusRXsQuSNC7B/G7v9dU51tNviFif89ZayEn5EW14=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bDYkh4ugdx51RLz8SjuTdzHV2iTbvH84cNUo9X4rtVXMHjvk7ExNOi8DgmSf8bUxqBM3c9fXmYKCxSwT8Dhuvt0OwGonwl1gg4ZBQpxKhLqfEfU3wqb9TPg32S6A+zZfGRIMTzXGLBgtwTfrb91ouYKtJFs+zj0NZZRTyRleZD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YMyBstRg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9Djoc032199
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:57:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yy+BqQEvdcyQQobfQdkXsHodirxNgq3Fxt9gXerLzbw=; b=YMyBstRgGmznZRrM
	4IartXijBTa7hGTO93F0KYAQqrWq7mN/KcjCo5DF1Stg0H59a21C6sJ2soWL+jhR
	jH4DOyLZM3wZuaCC996nwZzEcR8+VDBV69J7oTJEYOuWOcdJIJj/sDfBapEPpkiS
	IEplGxZyulKFXgk34H20bXE9eYlniqGXp2d/EjeLLIzhGR6TGTfLc6/Yjop9YkRO
	tXgS+uo3Wx8MWR1WY6jXn5IH/sZvpIoR75eVLwT+mYUiQu7L5IZZ5QQxt+puEcm+
	wLdFyIaM5BSyAGFE0ir8hIhGFDxe8w/ze6W5q4ZD2BjOHT8di6zIJSPRL3oJAIDM
	SHgosQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f6tffx8v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:57:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b66edf3284so17225085a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:57:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101861; x=1734706661;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yy+BqQEvdcyQQobfQdkXsHodirxNgq3Fxt9gXerLzbw=;
        b=K9lyvycvUUyq1JEdgwAAFSuc3pST9yVKgXNlw8a6GWdc8VvzYU82eZE3n/tnDr1Bb5
         J4ehRHsy5/fFK75ou9ijRm6q/8vQ5G/sVuRjC+CJ5dy1sHnQNIGrtk1jfy+PgdwvYLnm
         i42idSByMqJYYS50JSoJZKx+jANFZnug+4WMvOvavgHmdXDXry7u8BlHn+o8A+nEW5Cn
         oz+tvzFV7fuJ75u68/SF4El3Ntx9xMMzrJITOelk85mYngSN3W3TH99VM1RV8IPN8sv9
         aKcL5JsfxpntYLLx0VXwavrqEFTuzfeZU+yPJpPtEA/Br4Y5giNNVknnEhqoIc0+tsHl
         5lqA==
X-Forwarded-Encrypted: i=1; AJvYcCWPPqLH+O9IeE6SMCqK8cjGGq5n1zn7iQvRJtQ38SMLczko5kMhnso0UVKtjM06/Q2af08j/BUTbRTS@vger.kernel.org
X-Gm-Message-State: AOJu0YzXlzxadB77lvPylyldtr8HNq3pYCT212j/oAUUzmGeypWVcIGe
	7+c9X+5cFtPGz/IWTf/aHmLfYG4ADP7+M9XVyS9wEEWWyK5zvO20nPTTEHHXeO6T//BjqW3+St0
	rIZjj9l5jwHJvqK5N8SBETHng1pgWtnrS7P2PUPJc0a3eGMe1K/NEWww9AbQc
X-Gm-Gg: ASbGncu0snpxQF3cdajZ3hTiFvtQOBpH2TqQDDPMt7Tii/z585XpaDRQ1kGvhDLUh6G
	9m2nYfZMbOVoqrqaxxqyAnfYlICaxIRwwA38oTwy75JJ2Z/V1GUpYJKF9i/3/ZpVStTQk9OAW53
	QTGUPcSM3wxrQx20WiRzf7tOKC3hi+Sd4yB1Kf4WTcJtUX9NRi1wWoKiYpSZ68EzQ0rbcgPT2JV
	55Tv+iu6PG3T3bdkgnwaEyD4U54b/CtXbLb7b0frMm6jXYve6BzACZg+7utOa7EWhwAVdyMa/06
	AKRsaOOPqJ/Lebn5AeHFGhOzz13lwouZZYD4
X-Received: by 2002:a05:620a:4714:b0:7b6:e196:2219 with SMTP id af79cd13be357-7b6fbec47admr173853285a.2.1734101861180;
        Fri, 13 Dec 2024 06:57:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAimFcstVhPN2cuWe2dozek2VKAfYeR6Wf341B+nTNgMTxY3HBZFRX09MtFPmAK3JgpfclwA==
X-Received: by 2002:a05:620a:4714:b0:7b6:e196:2219 with SMTP id af79cd13be357-7b6fbec47admr173851185a.2.1734101860837;
        Fri, 13 Dec 2024 06:57:40 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa65d18510asm936966766b.122.2024.12.13.06.57.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 06:57:40 -0800 (PST)
Message-ID: <77b74653-7cbd-4dac-8faa-5f181b60e161@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 15:57:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 21/23] arm64: dts: qcom: sm6115: Fix MPSS memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
 <20241213-dts-qcom-cdsp-mpss-base-address-v3-21-2e0036fccd8d@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-21-2e0036fccd8d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2fSJH-LlsR7nbSzJMuB0BmfRQv79kEIa
X-Proofpoint-ORIG-GUID: 2fSJH-LlsR7nbSzJMuB0BmfRQv79kEIa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 mlxlogscore=811 malwarescore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130106

On 13.12.2024 3:54 PM, Krzysztof Kozlowski wrote:
> The address space in MPSS/Modem PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x100 was
> copied from older DTS, but it grew since then.
> 
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.
> 
> Cc: stable@vger.kernel.org
> Fixes: 96ce9227fdbc ("arm64: dts: qcom: sm6115: Add remoteproc nodes")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

