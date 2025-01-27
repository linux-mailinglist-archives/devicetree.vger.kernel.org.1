Return-Path: <devicetree+bounces-141060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E77A1D459
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:24:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2095A1885347
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E547C1FDA6F;
	Mon, 27 Jan 2025 10:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZoJXuiN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEC4146A6F
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737973455; cv=none; b=ealVf67OhDkV8+WIDmVAsiDSABIDmLAB/IK3GedTBlKTTLe9iZf/LBFDZWjRJbKT2OEN1hIAssX8me2WGcs9GxAF0ZSg5m5eykqUxTIjORbckxRgfEEce+OZmndbYiKzP3TGzW7fs45qBqY5oGxF/RGVxRQktU6aArZT94KuRFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737973455; c=relaxed/simple;
	bh=PeguVylUEoEAW+1MGSCEGHhKkC9BF25hVfkYll0Mi0I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IccLBWnUXoR1CYBEC3Mk6abpMXdGHOIleGpIh2p6et63J7dY51VxfoFaIVVrxsHlB1hl9tHNpBkQYcxFI0VJuUF+K9YiHvgQILvTWQC+1TAc3wZyG2kcXmab4cZK49XQJQ46QY+LSSeBDN/Cv9VHaIzirzFBH9FG2Xi7JUeE+j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZoJXuiN1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R9l014026696
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:24:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zqJcBRYJ7hADnVgOR6KgK89epzxGP9SaDVydnZCx8rk=; b=ZoJXuiN1aGAA+iOK
	Hq6ai7JrGHk5tj59plC7YXv9AKsY4Pcf46ZR28kxNgHtEcDPWwVEmrhKJYxG+j7r
	g08mINZ8Do2A0hNlqXe0dUpZjv27CMG+KejHojsllSxDeVdJw0wOhYqP9X82yRdo
	TuEzX9rEdH3aVc4c2Bg6GVmRpKx5KzkYIaj8t+rNVHVRfyYqJlP8jmniA520u9UB
	gEp7uXDNIFwFzLwpEWbq4+Mrpoew5uHIvcD79GOovmfriWr+5pmURSWVBH0vSYcx
	ehXaQck9Djs/alNXaVUnkqXoSPCFronL3hNANNPzvf/IH9jntKViHSk9dMCr/pBX
	q1aXUA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e7tj81xy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:24:13 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8e8153104so6203506d6.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 02:24:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737973452; x=1738578252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zqJcBRYJ7hADnVgOR6KgK89epzxGP9SaDVydnZCx8rk=;
        b=SOmG6E0WPpllF78yJH7csCVNf58pRetiSgwCOma3NHWRcVCADNTlX5ChEqWL70O0g4
         mXwBFlQuoHn7k8Aae2kiurKyn1AFMJ29yNnmyJX9vR/L1iVV45FombGWk1npnOEJxAeL
         zdCfuud3LkMDELI66Cbb5xRc7r9jLiRAl6q7sqMRJVSaZa4POERpzk5FPaPVhMr8JIgB
         X9CqigjiojSq+iYzimGwe/Lo8VPh5n3tHmEYSAv33LyX1T0ovj/XIdYV+e8Z1VnbZYsy
         rkHldJHpbj38/OSbKnIylkJKdC1chw4C2adT8LiDvM5oM+oTyUklFiJu9lmUkD+M+D7F
         dCmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrPnAnZlwWQKpL2ADdSQaRcKqRDqaHpp3UNH4vAIgnNjFjrKd4G8NaLRI/6DhbTDKRrNCrqAecQ3Ja@vger.kernel.org
X-Gm-Message-State: AOJu0YzFq+4u2K5xtmH6yEXOAhfGuYIzMAklU/jM2mt/GF7QZBDSLG6D
	MF16IiAUeI8aYk52YTK04iKl/BMNmmKIFwa6LwsSCRR8eagB6QNIciWhsfcgjBSMECgr14FOQWy
	cLxVHLjwNYSX7zoEx1qUtPXMLlnf5sijmNSWDabHCgjGexsFYHypOdCBIVhM3
X-Gm-Gg: ASbGncvWHryJ0z+6Z0fgfF58oYe5tjA6+wzA51DrBN4qERH00jP00uJwjq3HI8fTEDl
	pfbSEZLbQNtbp/c2JspQaeF4IesJ1apZpYDip6wuXGGK0FRKRwdf/237xofc9ZXIgeeIust99FR
	UQTblL9tpnNdhfDBnhQhz6ONENwanC1iVx8mLg/TeA5nAdFItNpF08KFD4zxRp5qevfjIhUetKu
	gTuW1oHcWS93YvbBGOaC1TtuVGbeEE9kEFtYyL4uf3a2MEyIzwglAGHbI9QVtGkuEpD3Z0pwaDj
	B8uW+qGP7mDx6OVxd084N0XOS35hNzuxJc9Pu4BEDvCW8n0lxt2g1Qx421U=
X-Received: by 2002:a05:620a:24c8:b0:7b6:d26e:9d76 with SMTP id af79cd13be357-7be6325c432mr2277213385a.14.1737973452473;
        Mon, 27 Jan 2025 02:24:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFI5PkaDqCqGnOLm5QnUI6GZTKsLoTu1/eoVLVVx4da1WuKh4k1qwmx2Qeio9Ul4VLt4wA5NQ==
X-Received: by 2002:a05:620a:24c8:b0:7b6:d26e:9d76 with SMTP id af79cd13be357-7be6325c432mr2277211685a.14.1737973452102;
        Mon, 27 Jan 2025 02:24:12 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fbb94sm563446266b.139.2025.01.27.02.24.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:24:11 -0800 (PST)
Message-ID: <70614c91-326e-47ee-80da-12f829d13459@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:24:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-blackrock: switch to uefi rtc
 offset
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
References: <20250122-jg-blackrock-rtc-v1-1-3b05cd85bdfa@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250122-jg-blackrock-rtc-v1-1-3b05cd85bdfa@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2yF_IcyKZ9-pB6M45c9l-A5ULuHOraly
X-Proofpoint-GUID: 2yF_IcyKZ9-pB6M45c9l-A5ULuHOraly
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=767 clxscore=1015 spamscore=0 mlxscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270083

On 22.01.2025 7:41 AM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
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
> Based on a patch by Johan Hovold. [1]
> 
> Link: https://lore.kernel.org/all/20250120144152.11949-7-johan+linaro@kernel.org/ # [1]
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

