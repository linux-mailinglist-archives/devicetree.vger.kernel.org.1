Return-Path: <devicetree+bounces-141456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E7FA20BBF
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 15:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44FE43A2C1F
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AFC1A841A;
	Tue, 28 Jan 2025 14:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZyDIc0pp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611DE199FC9
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738073291; cv=none; b=OMSUKrUfAAahG99M59nu9rae8ZHbhz3eWihfWta9VGLJ7Kyhd/8ioYQtEXmPPeBUIptDUmCGa6Yd14dIPkF0miowqXYZDEc/Cp7FNvTjnO8EmEExNQoOHVLtLRQ+HTaE3z4L2ln9aNdz42MRv5naoIF/UHqAutqLilIfc4yj76Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738073291; c=relaxed/simple;
	bh=gbEFTZYXXqqLxXjipk9QgAoXde5WC5DcV6tWcO8zuDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NBI+XAozluSrYvKuKoAyE7nLqppVBo/tQb3OOayu9aQmkjdpiAYixL39UcQ+zc8rgQyDy08oXDtILwzdQI5BIlx89f0G3ud1a0d9yRCMXwlfhzIhmr5qyyrfMMnJyVauTuU67egw7QGmlP91AkxYf+VQ9FN08KVkYWaGud+b9b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZyDIc0pp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SDrcGx003560
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:08:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dmt1xz+iuLIC18Lw6YWHic0kUAuDcmzyCH1VTEO7o4Y=; b=ZyDIc0pp697cLiJj
	+PIg+7ZzRb6SBbnKsGjXH+DXk/Dd8wdo2c3qoqep580qlggQr9mwqnAe1R8PzrUV
	mrzUIcXZP2hJIyuUIbQd21I+x10xwWC6GVGQ+uqrAFcc4BeqEFc5tP32ylgx0XdD
	1u0A9ok390yCv6pOo81m5PR4mzudknfqewuVXjwem+ukWcZr/QgN8/FWSOz3zTU4
	3b0X6zP9UntedosFo+D+h4YtI54eIL8UiR0brbRrkE/HFORLUMpJJHxtlryVbtqU
	KSCONm9agKW0hhLIzTZG/UPLonS4FBQkRaM1ExSPENYLGG5nV08Mf8iOKqnpENtq
	gfSq1Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44f0h781de-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:08:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6e5c3a933so131375485a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 06:08:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738073288; x=1738678088;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dmt1xz+iuLIC18Lw6YWHic0kUAuDcmzyCH1VTEO7o4Y=;
        b=W1JYQO8Vc53QXtM3+HtOPJGjocAeSYdLaod5740T8FE3eaQVtt/N/W3NiYRScaa+IM
         iFGCBH733EWSl6NRCrs2fQucXGVjBjyQGP+4F3CzfvydmmaFgAnSsbZG0VPa6c9nKK06
         O8yJWRnB1DsknWNS4fmoMvu5ibHyVMrihvWpft2C8ad8aMQ61ZYf+X/ZpLdLG3MSfBQ/
         LqPMElF7JfKWIDldGL5XNwvKzGP/7IQQiwtRaREZRu+d0bOaQYkTzE3qKslndla+K1LK
         NhSjYI9Ks3AatRvpW448fhH0awkVFtRVUnF7CIZfGYILp8fxw+iWilTgmKawLfvGkulP
         QI2A==
X-Forwarded-Encrypted: i=1; AJvYcCXJVmb+zNXX+b2jOKh/ZwEhemMCyfRIhnZbDnkInYqXbfUdosM0LPwkLogGpVy5rvRc3U7I7z7hr3Wx@vger.kernel.org
X-Gm-Message-State: AOJu0YwyjY+xtp0cweNGcK5srfFbC4+AKTO15If2/EOxBkwW7U8Syh4g
	69piI6lt7TwWadO6CweMf5rxSzNDWZ+yUp2m4AtlsZeJNqA++JQ2K7PWpkpE2FrIZVIiXhUhizD
	djySkdCA/xj8sVpwnS6a85XraIUVM6wHiVy+Vzz1Xs2pmMFKrRuQ405ZxK/45
X-Gm-Gg: ASbGnctEM77c64KDICy6PKtOsLzc3OCKOJRyupfJnvOeb0+LLl4yONA/kFdQ6v9Bc8f
	Bel9iJQDTbqzEkzTBndWSOvcTSsUd4gz6U2eZva+/L3cGLDfAnwhYe6QmFb1s+PMq5omy5CKG4O
	99EWzaBPEaYIWrdfRMeQFLQEQwIEZpwquAptY4esJp+5zlL/BVe+rW1et2gJkBbrx9JSG7gA246
	v5qBBaJDZt55exqMdYKIEdCsqCTfRAsA5x7bwTO0qDeE7M+rC9QTVNLESBPST1ozr88f3RYhMnq
	bLVq99ySWCclHDcUib1lA4516PTa4SYnxS271XMrrsCoch/Z425ujxZFqaw=
X-Received: by 2002:a05:620a:405:b0:7bf:f916:fb04 with SMTP id af79cd13be357-7bff916fdc8mr53675885a.3.1738073288304;
        Tue, 28 Jan 2025 06:08:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXllgt4NvniruW7iNsLxNWhK6cgB7BOeYVODqKMyfbrJ2Xv+GBD4G3q+q/m8qYnZO7nql7RQ==
X-Received: by 2002:a05:620a:405:b0:7bf:f916:fb04 with SMTP id af79cd13be357-7bff916fdc8mr53673185a.3.1738073287860;
        Tue, 28 Jan 2025 06:08:07 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fc2ffsm797046066b.147.2025.01.28.06.08.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 06:08:07 -0800 (PST)
Message-ID: <dc8f6c41-fa96-4ed9-90d5-a529e34f0513@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 15:08:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: enable GPIO based LEDs and
 Buttons
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250120064508.2722341-1-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250120064508.2722341-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TMAOlOZw8WGMtu6nzxGhkPBazM8tyXDP
X-Proofpoint-ORIG-GUID: TMAOlOZw8WGMtu6nzxGhkPBazM8tyXDP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 mlxscore=0 suspectscore=0
 spamscore=0 adultscore=0 mlxlogscore=732 clxscore=1015 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501280105

On 20.01.2025 7:45 AM, Manikanta Mylavarapu wrote:
> Add support for wlan-2g LED on GPIO 42 and wps buttons on GPIO 19.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

