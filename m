Return-Path: <devicetree+bounces-223533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17812BB6C5B
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 15:05:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAF4019E7D41
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 13:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907872F25EC;
	Fri,  3 Oct 2025 13:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="If4+Xn0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3CB2F0C40
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 13:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759496597; cv=none; b=uULSIq7JCluNcHN7v/Nv2UrfyjKWmGqDI0K9Mt67d3ZBwGdymxyfMSYFwWUfYHsyr3HI2gqLb0WCQ2mg9DIslpwL5fGBk/uOSuOX6A3tXCBk/oV48ssu6YuiT8SvqcCN1HGvrD7lQwa+a7HXbBQ0k2b8aJWbOFBIXdcBrQdYmKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759496597; c=relaxed/simple;
	bh=/+vzANEWukvpwKeEiEZiIlph+tgYWtmfH2k1oDiry4Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JlOl4A9BiV8otvI1NQCjJqwLLAsJh9VBJZhJeP3zSinYD8JNpSHIHFhequrE7VgKJ7jZg88zpJVRxwypJhwtg4k5R6T13OzArVKi7ZJE22e3VA63ZyxMtD4qb4wXrGM/+AZOkWvyWaDgCMT46ac3IyiFPgr8ANWRghXI5onQmo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=If4+Xn0N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593A1g6U022701
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 13:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GUfToON4fuL/wPZ4KQXRYs7Yvx2Y1KhbqwkK/RVyoQA=; b=If4+Xn0NpPkjXR+q
	iPcZfBJOHHUVUM7bFWxsOqCb/a1a5VERnqavHzrBldJ7wbzvHFz+ZyfqXVVRiagj
	3jTrgrX2wzCfpO4FVWtY0uElLaVkByEZ9xr7/pKT0oiFsVLlZ4cyiM+NhcRjGNMb
	ZzcaNIr++1ybss2zqdd4PnMC7R0SoX9xB4VerSEvx5BBS7uuODnYTsM4H7lIvpF2
	OODhypSap//3Q8DS0vpCwjmLjoF02MOVBKPazbWlDaCf93h3MferwWyLRaxhmFVM
	fvEFv785yiKeNYFsPkYZdq+D3iU+F7xv1pPSTwG77N6v5kJ4Fd6DFEi0bkheqBC+
	AzvCSA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59nb7dd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 13:03:13 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-54aa308b2bcso280479e0c.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 06:03:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759496593; x=1760101393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GUfToON4fuL/wPZ4KQXRYs7Yvx2Y1KhbqwkK/RVyoQA=;
        b=Ch+76S2sP9t/YN0elH884eCVKELYjIgWI1gN7RGDrQ0VhUIAlVmdgfDKxIJC3h5N3e
         65vRiAGxOunZJoEtOweeBQHbNHzYxMyX2MxnRUzBiuSLIlF3JFuaVN87VbEbeq/Bvyz9
         lpELgeLlUFdskQaV6ce1tQxuZEHIPLB/mRdmN9O8E5sphvNOXKu5U7yrIs3DJWvRl3fQ
         1vWl13CRquukbhe98EFe5cmTfUlsX8PQEVQju6eBeJlaB/S4tZjX3GcTejvayl8v8EMf
         iib2TdOGOZ/Yz4dilpmGdLvbhnZbpZHlJ91kMECvrg96dL1CWsCDkQVaZGYEZMvDzSf1
         yBmw==
X-Gm-Message-State: AOJu0YwJcn2WsgrbLwwK8YoLkOdkNY4YfLN7g7B91SSOiKKxXowFo3Hk
	Eldspf5qp2RCVw2gFnLkmsdVTAhLESaM3iHwIF7X5ApE0O39RaMCj5WENc+NkZkx5awQBI2HAJK
	PVQk7+eumtnLbDx+Hwuj71bP0HoHD1E4cStA5TfG+elVXLbXvQj3tvhyXni3gFojx
X-Gm-Gg: ASbGncsKeQAN31rz8k+3SHA6lzSfelbAZZAcmOHYHHsdR/J49Oy9x7biYwLz7LPbckt
	Vd0QMXq7wGXHPlnTgMIduMpOaU1K37Ve6TfeuAYm/FR+Ou28KrfLY8XcVXXBkhERZYEptvRlbIM
	G+4gk62TEDjxmexACdUCdSTRJYoYx5Fge1Qf9HdpUHaqXwoB7gm62Prxcchqsghf73zNntqHU44
	0K4zcQEmmjagdsajQDz7GdGl15MnEml+bu018efStlJHT+ihSpmyx+dGy6KghWHw93TBPtp+PP6
	cwU+ddzuWLr/8Fthuw/zzRlAVpffekSfzmpa5WsufvPhy9XZBnn5xB/kJK5liofZk4BCmfzRsiT
	fCUcQWt+KB/Oq4WVPwSO6rN5Q1c4=
X-Received: by 2002:a05:6102:809c:b0:55d:b35e:7a67 with SMTP id ada2fe7eead31-5d41cfe36f5mr438317137.2.1759496592710;
        Fri, 03 Oct 2025 06:03:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGL615tEydfIMsGqpnM6Kt93SV8jnAC5FaGdRPAbgaQXeVQAavYg+Y9iihBDoT+UcVp78gOPQ==
X-Received: by 2002:a05:6102:809c:b0:55d:b35e:7a67 with SMTP id ada2fe7eead31-5d41cfe36f5mr438254137.2.1759496592041;
        Fri, 03 Oct 2025 06:03:12 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3ab167sm3923312a12.10.2025.10.03.06.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 06:03:10 -0700 (PDT)
Message-ID: <46b25c1a-066b-4983-ad8a-d4f5f3da580e@oss.qualcomm.com>
Date: Fri, 3 Oct 2025 15:03:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] arm64: dts: qcom: sm8250-samsung-common: correct
 reserved pins
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251002184459.15742-1-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251002184459.15742-1-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Y1Twp7L5cU6pNHwAWgz-emYbHw0mEGh4
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dfc991 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=RUP1UBqQREs9RzM9fpIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-ORIG-GUID: Y1Twp7L5cU6pNHwAWgz-emYbHw0mEGh4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX5gI1ewpuiRuu
 LNk9ynEprNwcAQhIE/RRWsAgVwf+swltRajQOXpRO6LqzSoevIExQsCZY+GKFK5kPEwakFAOAh2
 Kj8ZwaDnsaLw3v5KtauC5fMIAb8vqTeugs7Bv/85O/eXQU7dcoSum9DcswifbUElYlSJ9GVND/b
 YxSnT+18bwD+o9zn7aaXkEdtGtgnYjn8mZP/m+MtdppzMSThlaMT2pQxk9viXgaABCtLh+f2BqG
 wq1ui4lAA6EjEwvlQnllYC9293Z/1w1V2hLHJHlUQlDEpuQhfNDcy/2gvYTy5XCTwU1AgDEYRns
 UTmXVzFI/FlIrNGDLMkKXkgJ5dVtkBU7+CEwY7yOrt7rHJpaQGcmPKyqFFmZSbMEI3ioE8a0jqG
 hbWylKKpnLmLXSxkKFrG87IWcQHKDQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On 10/2/25 8:44 PM, Eric Gonçalves wrote:
> The S20 series has additional reserved pins for the fingerprint sensor,
> GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.
> 
> Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung Galaxy S20 FE")
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

