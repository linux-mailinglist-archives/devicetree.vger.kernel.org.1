Return-Path: <devicetree+bounces-140564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F74A1A428
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 13:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FD89167D96
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104B220E71B;
	Thu, 23 Jan 2025 12:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pAgDyAGb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7497020E6F2
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737635217; cv=none; b=nHprsleXRVzhESEBT0/J5eVbbGs3JBXs6E7ZiHL5FClBULrQAv0u4vyyqe+XyrhUyZ50SdOOBesd0WqQcFFpmz5xPcV1pGZx5oZF9LKTIsRKgF/J0doDawrf5wRFQ1HJngxDQl+1nbBfErqd1ZoUoxSHcVgdLXkrJ7s6dgCr8Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737635217; c=relaxed/simple;
	bh=ACBSFivpP9E4unzs4ZXjwU6oAfnZAQ70sHCaKfGImdg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qk/dvG6EAHDcOiWvqQE4b99OdXhak+Ds6MtCHXCEha6DGC3DAR2Ybo+TCKZwp+cU+JGUXfqnOaYgOY3CtO8ckwbM6mUKLAq18trn+YarOfDgnlrSq0Iw8QjW9QoGg9wz7RAvxE3i1k+PSvWvcVgFJSn1JFD6iw0+lgOCFBIyM9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pAgDyAGb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50NA3DbA016460
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:26:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZWwtV17kCu9M9Nm/cJS3GAqWmPVKKUghAoXFcol9ZUk=; b=pAgDyAGbwedpRO7K
	dUE/bESfRXAbGcgRK9pvWtlhY9fyGNLvosdw+e1meS6auZRYeikTCQ0EdBatg3O3
	wa0PnWY0RqYTcqsTWJUJ93keG6Fgv6+ylrcnuU6MXz6H7R7w/lPsbvoA/uYpvWOL
	7flpdWTUTCjHrt5TRJbsltvq+l4zjVIkA1lwpCq3bjI5SH9bsIFL5ZdJT8kGbNib
	ExEwoS31evI6ip+5StoQZoiB2Q31Qy6RrATar+6cH6odcwkg9xSx2Is5OJ1tPSfU
	VCnGyxfPZV5fooaeA+qo3OxVZZja08skOLcGnKzZPiwyEG/v/VtdNWzOZGoJO9/h
	VHAN4Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44bknxgaqc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:26:54 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e201764f4bso120406d6.2
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 04:26:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737635214; x=1738240014;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWwtV17kCu9M9Nm/cJS3GAqWmPVKKUghAoXFcol9ZUk=;
        b=I02m52pYvPTVIaTDcR5cI9Nny5uo5ZYzIzKtIIZEicSPhyi+nKIXH1hS1VEgvNDX04
         Lemeijn0QfOHf2N09CkQo7h/nw4T+tloy6F3DHAk5m9demjsPF3OV+Qm3SxWQBsonigP
         TAqcdVHFcNvwX3nWUy3i+o+nLIS2Fr168bryuUDOcyILENXIDQpJu9+f5Ei5Gg3OOuAJ
         iYelTGcYtubZWFxCwRZvfxJZ/NAhzra2olofCkmhfDjEXr22SiusmBDXRoBkTPV0vqO3
         81YSHTbeGEL8kDzUa6hO+CbE0eKGI9Ai8AW9x522BrfLbMT1yqEMbdI0Fct1m/h/oy0j
         VRaw==
X-Forwarded-Encrypted: i=1; AJvYcCXNQzUnzb0J/ltvULqrPV0Nw6h+/PmGbiWFvLwh2ol7Dz+ILqlzuTqNHFvo85Ywng7CwrUx/3nqWSMh@vger.kernel.org
X-Gm-Message-State: AOJu0YxcLiZXe1a947MyDUqV5yzgAmAU2ACgdXadeIj6oNpZhgscVuSG
	QuO1bOnM+0QgtxTAf9WTNxhNVKd33gSPx8l0+IY3b0ax48X16rgCFp39Jykz67YGlLIcYxP9T+x
	bhx55+23mtaZxbcFM1GxiQXztfBfmtcN94JVotJ/t7V7B6v47rc660lJFqg7j
X-Gm-Gg: ASbGnct79axBPLWEUvn558kTj8D4wPBqnx40vImNB94dI6I2qXdhyT3zjoeyS2WgmZs
	C/2+MlZnKNGmQF+e/DTui4KTFjMZZ2FdGz+JrIjXBFPWHyGxmSU6okKGxTcDVymrRmup3eXWZ+8
	tQjvjsmMyBtwUVNAq6VMEyPz/DfcfRCulbgnX7W96n0HjjluNBQI3xfj4zdjUI3l8r5ypp90NOw
	bBaF4LCaMnOdkMkwhBKF4Y+LDisDwbyGz2DDxyGlJrUktKAlebIwaS/L+1B7kEd6GG7KhlI0Tsl
	mFolnL88/3DH/mm/CWxgzcA2YledZ4/fPaCvSQNk31Lak4wS
X-Received: by 2002:ad4:5c88:0:b0:6da:dbf0:9645 with SMTP id 6a1803df08f44-6e1ee64a010mr43491196d6.3.1737635213784;
        Thu, 23 Jan 2025 04:26:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF866t619swlRBkV6TE72KxATlgFIqqVY1f2yhbSOykePnpqRWEsVh73Cc5Tq5q8lMoNVK/FA==
X-Received: by 2002:ad4:5c88:0:b0:6da:dbf0:9645 with SMTP id 6a1803df08f44-6e1ee64a010mr43491046d6.3.1737635213471;
        Thu, 23 Jan 2025 04:26:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f860f9sm1065253666b.136.2025.01.23.04.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 04:26:52 -0800 (PST)
Message-ID: <522904c7-56e9-4943-a2ce-e2a5284f2ca8@oss.qualcomm.com>
Date: Thu, 23 Jan 2025 13:26:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc8280xp-x13s: switch to uefi rtc
 offset
To: Johan Hovold <johan+linaro@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
        linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250120144152.11949-1-johan+linaro@kernel.org>
 <20250120144152.11949-7-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250120144152.11949-7-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zvIz9ffncZFQy6Tvros2ZXToSBGpRTNA
X-Proofpoint-GUID: zvIz9ffncZFQy6Tvros2ZXToSBGpRTNA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_05,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 phishscore=0 spamscore=0 adultscore=0
 mlxscore=0 suspectscore=0 impostorscore=0 mlxlogscore=867 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501230094

On 20.01.2025 3:41 PM, Johan Hovold wrote:
> On many Qualcomm platforms the PMIC RTC control and time registers are
> read-only so that the RTC time can not be updated. Instead an offset
> needs be stored in some machine-specific non-volatile memory, which a
> driver can take into account.
> 
> Switch to using the Qualcomm specific UEFI variable that is used by the
> UEFI firmware (and Windows) to store the RTC offset.
> 
> This specifically means that the RTC time will be synchronised between
> the UEFI firmware setup (or UEFI shell), Windows and Linux.
> 
> Note however that Windows stores the RTC time in local time by default,
> while Linux typically uses UTC (i.e. as on X86).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

