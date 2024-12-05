Return-Path: <devicetree+bounces-127575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 887599E5C10
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DE3616DD99
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1DEE225798;
	Thu,  5 Dec 2024 16:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MmadT7w0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CF0225791
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733417119; cv=none; b=QTRmbgVXP2vghQwcgTFg2CZQ0VCvT0utfVmUA5I3E9oammfnCuLhhEqFc0LeZrTWiyjFzlZm+OdHCvz5QXBViStrnmudh+AWP4QehX1CKMGwwOzxeRaJwZep06g0W35ctDO+ne/blhUSkXWGhG5MsgO+LF4zxyINxP94rjaGkbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733417119; c=relaxed/simple;
	bh=zGxUDR6c4ZU+Y5Se8IU+zzOYqXF4mfTOL3cNhJL7c5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=caQqpC9Lr+8uI40DB8hKtFkqtY3cC228wpEfh4yTQb0hFRpziWy9rdshsz5XRqi/qDwOzJpgbdGtGHZ2mlE+6BlK+579EbAnJ8maOuTssPc+eUHMX1mEOpxs+rUWSzfqu1ijb1iOy8S+BgecpSpI+AKdGNDfQZ8DwQM/QLNeOTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MmadT7w0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57NIG8006403
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:45:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L6x0KHCQDiAykCeDoL6SPhnPeHMpJmBzuR92rcSSHCE=; b=MmadT7w0t4FI82xy
	/QDeA8tEaN4ILLY5OyZZ9btHhflbxwFDE/wj5RAIHom883jTYjujOJiZdG9Fl6Ux
	mFlCxztrCxUvSWwSKs6l421UBlr4U7LjQeYzCEoS0XdhJUy1NGIBwXH2u3hW36Tj
	x/vol0xl2GJEmgpORubvQwpbCmw+7qtJFOao4JJlbLR1VUPArGt3tmGrOUIWoMQH
	hDYL9GPChX9QVtVaHnmeDY1TeeFDyGrJHsjULT+XtkF44tdLkEGgQcNzP7VGM228
	ZcWhznX2WNYGcMLvRXQWcTeCYZ3lXPHOkMHvwsb3tB2TWUYi0Hzey9pXO7NWm8Jq
	O1fdEw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w3er8n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:45:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8878bbe9aso2863576d6.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:45:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733417116; x=1734021916;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L6x0KHCQDiAykCeDoL6SPhnPeHMpJmBzuR92rcSSHCE=;
        b=g+oQUmTZDGCzd0OQhDqBp7x2okqs4wWDV6OJsY+jHdIGS1vhzn7X/BrG0TJpMgSKCH
         BMxKG+HZeeM32kPnTSvkVH2x4h8mPt1/8iDgBl6Frh2ENAh2tL3gT/KyRYoLWMNQVL84
         twBjWXMg/66Ovw5BMbfPjqGuY0Nd3aaXQbZRSxRMgbpvEeZD7olH86e2/tpdyuOf5hIF
         KARLRRZXlA3TtVJ4dk9vnNmCuQEMs1JKhHj2eEydNFajDGJlcO7BiMXfHR71Hzo0klOA
         3vzQUOoW7LqbVvrZDQQuBz2F1AYyamcmVbT7njRIJxZu+VlOgNvHeJdSI1WoXkcIdUI7
         tOIg==
X-Forwarded-Encrypted: i=1; AJvYcCXM1vJO2zUabxP92YDcgvCAvD+q60bqwSR5QWVinB1nWSMbHPYhheB9+ppJs6tV+SVH7507UI35X4L2@vger.kernel.org
X-Gm-Message-State: AOJu0YxvdnhTpI9iP80LEsvzHKGHaJdGLQ/zSsnUKYe4oceJ9QqiJCRE
	BezHexPAiRNqGsSbgg/GWaNi3tfIaihnN4oEESZ7GXk3DKvuRcmO5liLdKq8avcYM4d36lLOyXH
	fW7r5dczocoVimBsZcR5sgmoIpultPsGsn94Gtw3n3JQPCmQSSqR01LLCcoyZ
X-Gm-Gg: ASbGncuE2jc/Vv9vXbSwF1gSSSsNQeDnk+0RkUESKpTuXobzwCLX2RfMjIhxfxhGHJD
	XpRQJFAmLENq0yfgQJ6GibGQBgCE371KqRrg+IHSfIWrWB9j6mjwN4VaIoYfsU3vwYsPeSSzp4b
	fao60KFDIiaunHixE8E1D3WlrFW/9i3QRaujpTtxy/ZjdT60Z+zHCb6pF0iRjKECrC4xDWdlwq7
	VcthFNmIbEFTkrnP2xH5gDfvuUld6i6C3GOaENr+Hhir9DKSxCPjK0tWbnxgRhikXTUgGUBNgKC
	B4FZg5mk6VMXy3+5ski/oXEDIIqvllQ=
X-Received: by 2002:a05:6214:2627:b0:6d8:b562:efcd with SMTP id 6a1803df08f44-6d8b73a489cmr65325356d6.7.1733417116179;
        Thu, 05 Dec 2024 08:45:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMc4CkwAoyme+72kcypxiH9g4yohl2nQ8tC0nVxXgfCDWMGWk+Bw8wSqwheuFgPrHSioLgfA==
X-Received: by 2002:a05:6214:2627:b0:6d8:b562:efcd with SMTP id 6a1803df08f44-6d8b73a489cmr65325086d6.7.1733417115832;
        Thu, 05 Dec 2024 08:45:15 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa62601b5d2sm115958266b.93.2024.12.05.08.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:45:15 -0800 (PST)
Message-ID: <b9225284-7830-4aa4-aed2-7f58fb7320e8@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:45:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] arm64: dts: qcom: Add board dts files for SM8750
 MTP and QRD
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241204-sm8750_master_dt-v3-0-4d5a8269950b@quicinc.com>
 <20241204-sm8750_master_dt-v3-6-4d5a8269950b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204-sm8750_master_dt-v3-6-4d5a8269950b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IXNnGd6m6H0d2k2_AWYX-MiJT8tPWjeR
X-Proofpoint-ORIG-GUID: IXNnGd6m6H0d2k2_AWYX-MiJT8tPWjeR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=809
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412050121

On 5.12.2024 12:18 AM, Melody Olvera wrote:
> Add MTP and QRD dts files for SM8750 describing board clocks, regulators,
> gpio keys, etc.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

> +&tlmm {
> +	/* reserved for secure world */
> +	gpio-reserved-ranges = <36 4>, <74 1>;
> +};

Any chance you could describe what those specifically are?

Konrad

