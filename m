Return-Path: <devicetree+bounces-140563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC37A1A425
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 13:26:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44E041677EF
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40AF20E71B;
	Thu, 23 Jan 2025 12:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XAz6Cuoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4346220E6FE
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737635208; cv=none; b=StuGGK9wrYJoGk21/Zg5Luf9igYGLoMFGs5JaJkt9x7dGNsXZwhYdFxSYdyMIWdFp7GN1Wj3nFbvB3qL3XH/SBplRhdF1ycAMl48L+VNcqD+TR+sb7JfuOD7PccWSyb7ck41bpWGbnQEvlW4Lcg+Gfl5BmRiSfxj+8+T0gyfkJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737635208; c=relaxed/simple;
	bh=G+QKe8FfMJCfm1MlKvKWgZRaCarwwrdjGyBdzMRS4WI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DOH2cPMbndMBFGmbIyVuWTsLRTPE67GDrsLxj4K0JnYMeccPpXPjuXOXtcXIeNZJWZw4rZF/JSfhxAoIluDTStWzqaaiK666+WAMXI0NrjXMRbFZP8MSsCcQIMAl4mUu81fT1IvVYL7rqKf7DL9cfZ0M+WG3nHdQQE/hjipSuQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XAz6Cuoz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50N6FdcP025853
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:26:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SVZW13cVN8pkSk0oQ25DglUpIcmodrG5JxW5IFgDsRg=; b=XAz6CuoznR6A0BDV
	EP1lnsI5+XxsQvP7/mWfoevtCzh5G/Z4zQz61mB6WKvYciXheynUZidMBXp4g0ik
	mOT6RK3D+zUVWgpficLDHP3hKWrYds7nLvw2poUbNse90jNpvXfoup3PQZGW+hFz
	tAmyi74nkC3GiOC3gEOlH6R1Fuj9Q/TTyECjW4YAYHlGobCtqEvSI6hA/PU2Vst4
	KBSVSEMlVAy4V8G1s60kVx/naoPZ97EOIHHr3xZJ4soYF759YXU79HTyvuDh+OaS
	WFGNvt8/pEDPYAxvcaruhrwtbjBN+rH+bAAhd2bJwDtEHx3U6d4PkTxejZ2oJaUB
	Y4giyg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44bgbh0ugs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:26:46 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e1a2a15514so2063036d6.2
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 04:26:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737635205; x=1738240005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SVZW13cVN8pkSk0oQ25DglUpIcmodrG5JxW5IFgDsRg=;
        b=K5RJQtrsZP0/6d/kngG+is/RNn73tNCSoc3pMAuURhkrBlt4a2znQarWytlj2egoev
         UqmIP+0/iniOrSyykIOS56CRk08hDtgy9h1cGZWNgUAzKAF+61v6eStarb5KlijpFGC8
         sQZDFzHc5t54e6E3koRGKdiA4L20xirFR8OZhFp46u9ehde6AzLeQSLjXW3dedkzFj/F
         W7KaKn2531guKqJOFQ5wEoaDN17IT1cMRt+rqiDRehJraBftDo+KaSg6i/MVRxoovG8E
         SgTaBu5tEg937hRJFBGnbB+0SU5w3Gmnf8JqBa8LUAX+HJvr4YiZvmdO6dYd8qy4vcSA
         zFuw==
X-Forwarded-Encrypted: i=1; AJvYcCXs7jxMfETmLqjorFPhP9i1D+ql14dftXOiWsBScLU7yfOatq91PxI1Zuo8BBg9U9y2BVR5UYlMA/Rk@vger.kernel.org
X-Gm-Message-State: AOJu0YyfI7uaJNH9mJFwadzWZ4hf4eHMP52Uujq16gLuyyYXrOvlusMK
	UqRMtV3adObSM3Q9HsvAaRpf5w/JyoHFW9D6S6giyunq1F0f3l8OjA3lHlMaX2RJlpIvaHzuj85
	Lzt/1lBqDr0Yc6KyfTcN6TSURjTduyCNe+vJVcHw/6zQUzWJbJ5ZtQ5rI9o/D9i9u5nYT
X-Gm-Gg: ASbGncvMAHfh2+qUmqQeVwUTgGy1IB0zgnxw+deKFEN6xrzmNs9ZVFx99BVr6/qyjoL
	rgzTQw4srXR0sZnTG2w3Yq6U5UWgL6AvksHD93llmGhPxeT1qZ06q3dBAtvwEdUAFeNy7AbrGnv
	IMM3BB+aj7aLd6m4cVdfNKnLdJWeS++aGLim2+rsojgjTE8Ll9vAH1zIj50ANpDRUMs5Gog+a2a
	QSpYqCQyAy516Jf2z8MPk2ACdcM25NINB52jJhGmzA/xRK9iwE5Rpo8Put+RdOTnNDzTw0SZzHi
	mLWah5MKkqxjgQXRt9sO3MCpgK8CLrv0o9e2Gh6Xx/4WW+P/
X-Received: by 2002:a05:6214:1cc6:b0:6d8:adb8:eb8c with SMTP id 6a1803df08f44-6e1b21fdfe3mr142360576d6.10.1737635205210;
        Thu, 23 Jan 2025 04:26:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFz7Y8CusS4RA3BkMNLMi1X1MQwL8uOIZ5Z83f5hBMegoiNhIaOyMr2v+dC01obzMP3OpsYeA==
X-Received: by 2002:a05:6214:1cc6:b0:6d8:adb8:eb8c with SMTP id 6a1803df08f44-6e1b21fdfe3mr142360346d6.10.1737635204866;
        Thu, 23 Jan 2025 04:26:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f223fesm1066630866b.105.2025.01.23.04.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 04:26:44 -0800 (PST)
Message-ID: <3b085773-bc6e-4d03-a9f0-8f8444bdbd45@oss.qualcomm.com>
Date: Thu, 23 Jan 2025 13:26:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: x1e80100: enable rtc
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
 <20250120144152.11949-8-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250120144152.11949-8-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2WBCd2etwsl1yLx93YkXjgS5L-LPiQFf
X-Proofpoint-ORIG-GUID: 2WBCd2etwsl1yLx93YkXjgS5L-LPiQFf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_05,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 clxscore=1015 phishscore=0 bulkscore=0 mlxlogscore=720 impostorscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 lowpriorityscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501230095

On 20.01.2025 3:41 PM, Johan Hovold wrote:
> On many Qualcomm platforms the PMIC RTC control and time registers are
> read-only so that the RTC time can not be updated. Instead an offset
> needs be stored in some machine-specific non-volatile memory, which a
> driver can take into account.
> 
> On X1E based Windows on Arm machines the offset is stored in a Qualcomm
> specific UEFI variable.
> 
> Unlike on previous platforms the alarm registers are also unaccessible
> on X1E as they are owned by the ADSP.
> 
> Assume all X1E machines use similar firmware and enable the RTC in the
> PMIC dtsi for now.
> 
> Based on a patch by Jonathan Marek. [1]
> 
> Link: https://lore.kernel.org/r/20241015004945.3676-4-jonathan@marek.ca # [1]
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

