Return-Path: <devicetree+bounces-235584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A73C3A3B1
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 11:27:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 616DD18C42A4
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 10:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFFCA286D4E;
	Thu,  6 Nov 2025 10:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Swp4aVch";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X3Rx4NCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AF441760
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 10:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762424151; cv=none; b=RC7QyNYyjtmygxWZxsttSN9eucuhm7+O2YCgOko/1GE1RTMNhopkd5Nv1UxrD6I0U8cLaEHb49uJtRrLYaiFzPIRpVn4kUm2KaDplt57sr8OPRD311Gp1zA87U2NtOuXjvZz5F1etEog2WziQLkleHygkg0O09iBgXQFegUHCdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762424151; c=relaxed/simple;
	bh=sW/06KO7x9YVvqvYyRC11xa8mKgzDgn0IN+/JBGDhEI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O35ivxnkWwfaxNqV1u+W/B7GA2nFaIT1O2JJAHS6MvA7IZE753bWcrld9GB4cZCcPC5QR9TyA0FkEuwQWrBEeiWgbA0LQrN+tUAMQz0h5bMZ84wUTgjU8/OrlSyIaYc6yjqwNFrMOmvQ0mnpUuoqmkPMLBp1EwY/ZeWylPvDeXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Swp4aVch; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X3Rx4NCt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A66rBeC3361967
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 10:15:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sW/06KO7x9YVvqvYyRC11xa8mKgzDgn0IN+/JBGDhEI=; b=Swp4aVchSAtCKZsq
	0OOqPrZHUDKTQk2eTYaFN/WH7JkW9lYasmvbUY1CDozJiFOcjoQAvnJcMn8gJXQT
	0AICSy1Nd85iKKp8JMgCkcGbHRdLAWXvhLQtJOjglE/ghgKSu82X2chqnPTXnyuU
	65ZAirVp9PvKl47k8zkG7/S/wnrvsgtAO0ttHnLoWP26UukOaEw6/o7dcPiElAIE
	W8+WmeQ44s7ikm0TDlU+RzA33XPEfpqnXIke0MdtNGiOX6xJ0e9v3Xh+1XW4+33k
	XnCaZ/vYq3guQ6eUfspB6mAMDJ/F1xST4uyxoQ3xVDlG1NSmTuhMUNZua2kBssqQ
	/eHNrA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8pt58js9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:15:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8906754b823so26876885a.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 02:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762424148; x=1763028948; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sW/06KO7x9YVvqvYyRC11xa8mKgzDgn0IN+/JBGDhEI=;
        b=X3Rx4NCtQ2Zy4qeXyZ2apSNpJq4dS+cDJzmAh0Vxjaeia1C0l2Vg2fkR4j4LBvRMYd
         ABYLcqbiVormWo/Y09Kwy8MmWKqIkjRYZSzEUZ+Ju+zBT18RfYLyD80XaKXH3nBRTUto
         TcYHx1Zt02VdZOvHuqINX3UqxTnCyem2Rhw44Aayp1NE1VCnYYMDMJiHDfJUHMDcdWV3
         xMi9GcUReWiS/owVORC05eJeMPxc0QLLa7j239VU709dooaIAinfnj0YLj1gG8vTA2In
         rDWzRrYL8KH+dfjHv7677YTIdTtjfLt48O2+brKo9xum0akcAxZ30KO4Jh2EjU93hj78
         dgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762424148; x=1763028948;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sW/06KO7x9YVvqvYyRC11xa8mKgzDgn0IN+/JBGDhEI=;
        b=jbTAWxUNyuSiy2zoyPpk8USd+/7vAysVayHdLQyxDvfK/BiE4E922f8ngW41TB4bW4
         gmdWrc5wCcfSHFUaRUYovRfZVo9OTO+QZ8Y4vln2JMJdjL0hKwynrlevKHALi1Es4fvk
         f2UvMOTpJ08wDCPET2Wk9ZSSiYbr+vk/AhkyaM5eyASfluRcHUpTd7QGMIcvdkFUUqBv
         SMJsR2nqIhkg7vMVcrdVQD1aGJKHX7+9YE3tQy0XWIIkOvK3lx+r0fRASKfCziCnfJsY
         0IgFa7EuXVM14XDK1Oz7MrntIdf6zKjFNMxSg11sBK3NPZ4pm0GvGjw20QEPvrCibCA0
         CMMw==
X-Forwarded-Encrypted: i=1; AJvYcCW3BIbY7X/f7l8Mz8ph7o5Plj8zne6aC1NrTuoI59Jp+EFYEwr4qbIa+8sGy05+krvfBNkHYH5GZ+Ka@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/nRUfdsiabebXnIXhfjgIvWxcJd3P91SU3e0DEv/msMPyk+YK
	szepZeI/9BHYjrtcb4gQpg0omxqJJ2KaJERvI4n5qyb1fib5FrIAM+bfDynoOOaTK2gVd2yx7rm
	zA2sr+nuTvrGxIkD06xSUi3Ohm+0CFVAXS1aHHTv2VKNf7CCOlKTujdOJqw7ffuPl
X-Gm-Gg: ASbGncvRijkagEmI84zYMiwJc/2+NmNZRCaI8z6zbO/I4UEQgB8KPJe7ZoGEAgeMmcD
	s5WOgL99q5i83Nk3B/s4BK6oX+FRHQIGbRm/Z/M6JRsFch4iKLpf8ofrm+pHbIbGMm6w4k9ZDa9
	NtrRmUJlNB+DG+LIGMmx6I1RUJW/IZqpjpD34XWahRVAMJDcpwve2jmf6/xZ5z9DGSDY7wpxuM6
	vBOOEJ4Seidy6qay0Riu1+6XrBbM/vksHMThSf99PJUNuFzHU7mv/iYh+Itd9+C/EwA4rQ9csnI
	ekZrDNz7iuhPifpLvGx0lNfCop84TIeuAxPr5Gd0atkRoEpJYsGgAhswj/SkbkYWwJ+kMBrvAXS
	9VfGOq+PKmwdlf5+cEh7slYyksTyV6HWYtzb0OWZpdikLCZuxGy63rEri
X-Received: by 2002:a05:622a:6bcd:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4ed7f85259dmr20669911cf.10.1762424148504;
        Thu, 06 Nov 2025 02:15:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvO7NovlZmVexkCrJ/x1iqSlqkoHta3xpjkhCpmmF9whGLqj96UH50RkqjdDSUCAvBN887/A==
X-Received: by 2002:a05:622a:6bcd:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4ed7f85259dmr20669751cf.10.1762424148021;
        Thu, 06 Nov 2025 02:15:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7289682128sm177009466b.50.2025.11.06.02.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 02:15:47 -0800 (PST)
Message-ID: <29ef2def-4073-4a77-8437-41cdfac2fa9d@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 11:15:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add backlight support
 for eDP panel
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251106-hamoa_dvt_backlight-v2-1-9f844c8f8110@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251106-hamoa_dvt_backlight-v2-1-9f844c8f8110@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3Hv-1IqlDIbVq5rmiqcLPnjB6Xg8E4hN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA3OSBTYWx0ZWRfXyqfLGEAArOuW
 15PbkjpgChtNgdgG4RR/29khNTP+MCnUEako2mWVPRNkYZnj8Ljg1VlZdcJ7o+ylFJQJa4CmxSX
 COdAKjNdw5fdg/GwZGhpz8IpAyBgPFJHQcF3jl5CTqSOhwLcvovKgeG2lF9oDlAgOBXR4TGmeW1
 e5ovojBsKukEwwUn60im4F4sClIfofcX/NFjvzxmXSy3+71W0IXdtR0CsUEga/KLTcnkyZoO9It
 PeswIQZcp07GTvySEdWwaepcr8N4bPV4hRPZxTW9+MNIqevwsUltNS+tuTkX7bYywvsbKx1fVhi
 WeErcRoE4urC3h5wuOs1WtTDhT2qEkzQO+/ukTRz+y0Z5XGgxP0P3RuTpaqKGXxXDVHU+VTjknY
 6TZMCDnN6qurt8Zk4sVBYl34P1iR9w==
X-Authority-Analysis: v=2.4 cv=XNI9iAhE c=1 sm=1 tr=0 ts=690c7555 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=nQNFA-VO8Zg1hjSIiBcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 3Hv-1IqlDIbVq5rmiqcLPnjB6Xg8E4hN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060079

On 11/6/25 8:12 AM, Yongxing Mou wrote:
> Previously, the eDP panel backlight was enabled via UEFI. Added backlight
> control node in kernel DTS due to some meta may not enable the backlight.

Adding the hardware description to the DT with the reason that some prior
boot stage might not have taken care of it is not great

How about:

The backlight on the Hamoa IoT EVK is controlled through a PWM signal.
Aligned with other x1e80100-based platforms: the PWM signal is controlled
by PMK8550, and the backlight enable signal is handled by PMC8380.

Describe the backlight device and connect it to the eDP panel to allow
for brightness control

Konrad


