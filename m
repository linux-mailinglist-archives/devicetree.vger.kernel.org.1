Return-Path: <devicetree+bounces-131132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E83E9F214B
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 23:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B10141886166
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 22:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80BB1B2194;
	Sat, 14 Dec 2024 22:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FGwVLHAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B5819D07C
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734215687; cv=none; b=T8dhJrVWgQgNdgcP6FPFd3Brj6r5cLe6lnHv8ZaOdLmHLLQdC1ESyoeHTLvWapCouwWVqXjxA5rWgz9ZatJD3G2p70pHfWLTG5t41O3YrBc1XJg5qqfV0BN5msjTg0Ie79nCTZQvrQXF4/isjCSlRAMvjac4s3Jm19IEsLZoyOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734215687; c=relaxed/simple;
	bh=eoKXfq6Hj5SW8j+wkA/iHI2/OaarWoeU1Zy5vKlID1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KPc+7WmW8Qz/FV7F2kpxkC+bPZZcnXZJ3v9qMt847GtuoxDLjf/5y2KoaWFiiAGl/+cG9antaZIjymrRmrvOz9ud2taOhefUeC2L9ewdSjP991SOXPhFsCv7+9KDD9O08ZaTy3x/BRkybmEcTxNp5Rl/Nkb92gwKP6rYdAVQOrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FGwVLHAx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BELvBRT030895
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:34:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zoT/6Ve4wQjNE7DzpC+6ucI6/tFmHxfuNE9Av90lsj4=; b=FGwVLHAxwHE79fiU
	fJiTlSRTOOwPetAh1rhqbQ48tydFNGPNY74nlVFhlrBtQPAMR8Ve4DscBZznadiT
	wlW/PdJXylbs1Q4w9h0eQYAMBXqCgm9aGCcukHH3AOfxGL6IF2q7VDCcQw72TZtr
	FNUIZc2WN/wXwRuJGvhxb4bT9J9bk3NNMCH5o8fMXjjXA7UIzF30vGxG1PTSsDaH
	lE80w5jryLvPeeoOp5fB4fDsEmHKLMWjN2ykYiEnB7033kKcenrZRZFsdttfndcM
	WRZcgKKr+AlPcndUrXcTgK9ugCyZpRMf2ltD26pNvcLDmPQGuZXT0BGrlbOY/25F
	nwk4KQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43hjc281ad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 22:34:45 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467975f1b53so8188071cf.3
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 14:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734215684; x=1734820484;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zoT/6Ve4wQjNE7DzpC+6ucI6/tFmHxfuNE9Av90lsj4=;
        b=ZU5YkdWXgQ0LbGZLSxYRfe+YnvVBgjaVS3RHGEpBz12hDAKBomAkNh6Z2DlrfrMTij
         yPx2NRFrvfWVmK2aQHgWetBYf/Wf5PtmW5/TtUiCSrJxGmdAGOF7NyHjhFsqYKpYf3MP
         OHdb1OlF84HN5DMSAf+LGR2Jo5n4Q8JRr4x+g7jmAFSjM0MZtfxm3ErKktNT2lXgeIUP
         da1zI3MLRcdh3ntxjstXlPpBjOzroZU06PGZseV3Sxc/RVHxIUOWeBdUSI83iZFVzxtK
         iGeNSdyb2XHIEoCm42yWzVGfnH2d/u1t1BsGEc50UGxJs61wVbKW3YIx6dVlKB0KCQ4e
         BDlg==
X-Forwarded-Encrypted: i=1; AJvYcCV2K3+lqxpkdkBeIuLw5Ow/lMO5nrIoOFjp0oI/2NvC7A36AVpRjufhzvTt1+KPTRFXkMvqmzclGuh5@vger.kernel.org
X-Gm-Message-State: AOJu0YxfQXEy233kIcQHrlreSOQxOTcT38fFAK2omwTrFBpxWDaLqYlJ
	x1s6KjX6aVvDavwmxHHl59WwKwdsyfjK/3j00iRjuGta2rBQRySIgEJ2SQdE6TwK7hvP17kdsmG
	VzsFjhqS9Fg2wWroapP/yaUQBGw89EwpS2DK8csSKtKybqiUoY+Ys6ojp7Yoa
X-Gm-Gg: ASbGncssxtUOblnRSyl0SpXSGX8LXjFg4ReCK+Kf4UIfalkGcSRVUa0lVPjVDIZTubD
	9+0gt1/E29TGIHr5Lo0g8GNVxBUEsRET61G+Mf5ysJ7opzI3a7tcE9CCB+N5cHZoeIsOlFryLER
	h2CqoaJCzPPZ4ZAAi+D8zzlzDEFtOO47H0w48zGMNABLsDvGB4y3Pufu2/xW9jiYlqtYklf0vKa
	Sf17h6EMfvJRfumaW1Kyu8NeWruN4dGrXIkWqJA6XilLIa5Y5RCRyBewbMudi4wmGHSZAmAyWL1
	G5GXlVTva6E0/uZFwhqPh2iZA+UAMm1ghEk=
X-Received: by 2002:a05:622a:606:b0:460:9026:6861 with SMTP id d75a77b69052e-467a578e2cemr51306831cf.9.1734215684494;
        Sat, 14 Dec 2024 14:34:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGQIFK1+HGT44yFDj67IL1tLQqfEsu3uldzYeFqe8AIQ8wuuDnknJYfqn8obcdvMjeSrZ+OA==
X-Received: by 2002:a05:622a:606:b0:460:9026:6861 with SMTP id d75a77b69052e-467a578e2cemr51306641cf.9.1734215684091;
        Sat, 14 Dec 2024 14:34:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d652ad17d7sm1396571a12.25.2024.12.14.14.34.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Dec 2024 14:34:43 -0800 (PST)
Message-ID: <cf9e3fcd-052c-4ccf-b3fe-a63a95bb2a2c@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 23:34:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
References: <20241114095500.18616-1-quic_mukhopad@quicinc.com>
 <20241114095500.18616-3-quic_mukhopad@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241114095500.18616-3-quic_mukhopad@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2HbuRRyKQGaPflKICdJJGy0VvfisJsUa
X-Proofpoint-ORIG-GUID: 2HbuRRyKQGaPflKICdJJGy0VvfisJsUa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 bulkscore=0 mlxlogscore=921 malwarescore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412140186

On 14.11.2024 10:55 AM, Soutrik Mukhopadhyay wrote:
> Enable DPTX0 and DPTX1 along with their corresponding PHYs for
> sa8775p-ride platform.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

