Return-Path: <devicetree+bounces-120378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B889C26C6
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 21:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81486286A4F
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 20:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A2320B7F8;
	Fri,  8 Nov 2024 20:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oUv6GFYh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66BD1DF732
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 20:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731098579; cv=none; b=NwBcXCS9Qgcp2x+vGXfvKjDQ2iUpnXeDvFjVxW3eUdRair5f2rfPs6OJrSFl1tF8NOXDDPqK1u0wzy1UGzYZRjq5O1nOFM4sMrr3X3rWXI0PUmlwgvjLx0eS1rVEkMgMfvScO1q4psJDk3XFJjAflLUy46d5aK6jgz/lz31kQ34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731098579; c=relaxed/simple;
	bh=NIGh/xa8vBmbgPLyU70Etun5Uy7YLNS7WA7j/MRtOkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MiYRVLAIhJvK78FdgxA4uVMtLx96quGfyEd3s3PC1xBovwV8i/AA6xMTL+1q5foGjhQyj8gn3u8xgI3z7fgbBlvq8hL7s8U9uOoi5awpA23/98NgWONqhVpTMZCis1wmyW8NelgZyS/am5Ww2c8IB0vB7IdNEPJQXRfvPUbRkak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oUv6GFYh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A8EoMoV011964
	for <devicetree@vger.kernel.org>; Fri, 8 Nov 2024 20:42:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VdJcdmEbuUjsz9W6dsG6F13BKeiSPurxezaypVBjUh4=; b=oUv6GFYhboRpAupQ
	o1N+ky3RuUB/q4tQBmntvG7rlQ6rqEY2Eu/Ko74+7HK2GiTBtw0kVLWKBjJ6ebWq
	YJNQHRJqix2lHQIVGHJGzpufDoF7K/dUKHh/EchecdGktjhKxHR201/WTbKPzLLN
	rn02LMen3StTASNEaRib647Bb/a+/OGLegr7GLchz3m01Zh3+hrIUj+rlaLAyEvu
	jCrDzXshGSdb5+5hFqBikgNaxfVVVFuoFgg2KVjxHi8z1CjSyh43hFcJZgvCcpVS
	yaW3Qn/WANnfHbK12SMzMA9bTQWbRrhhLwqxLQge2gQXwQXV17cIm75u0LVyPtVp
	rxnKKw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42s6gm2jwd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 20:42:56 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbe993f230so7534826d6.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 12:42:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731098576; x=1731703376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VdJcdmEbuUjsz9W6dsG6F13BKeiSPurxezaypVBjUh4=;
        b=HUfKfJPsA/PZZJisfH5MzQxMM3U3hOs3+yKoBKOCxyPFqU/X+PvgT6JrvciRjHOLjJ
         8BL3n0TOlPp6bb7Ay9/UqXkH9CbyFob+4RVwg2G6xQEyHvlD0XDf2Q0WNY7mph7pkm/A
         2qMNX8lLmZo00C9xHatQn2IFZzO3It5XOWAlOoiOlTTMB7rpenBEtZbZK34VKMOpkLs1
         P5pH3GlasykZ/diw64GVYRIDXBnIuLljs4QPhgaOg4THltFzrkS7e7La+8X5Arf/JtNk
         CLOu0Beif6rJbb4bX+0FmKNcp4EChPp6GRS9qUup0EIDiJ/M1YDbs+ZBzplX7LZmkhfh
         PYIw==
X-Forwarded-Encrypted: i=1; AJvYcCWjLNUjZ/j1FwYTo4Z+DUXBfqHcb+7UuYge47HBubw37e/Tfev9g7Iebsmz0ISog9eTNGW1tMKkjNhl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+6NwThKCnsK0vXtIMeZnuyqZuwjHkeXf33oU9p+RT7ShD02sL
	9UGYECyldZyP+gtftcKucqhDovZh2wVOYeNA+49e4rVU/dg6JkCB2QCL2gwdKA9ExIV5Or25WIy
	XolkaQp7hFf1u6vTWWgNH943fotXMHUjqNo8kKhHVnyOFZtrDdeWN6FqSG3dO
X-Received: by 2002:a05:620a:2a07:b0:7b1:4920:8006 with SMTP id af79cd13be357-7b331e4cf7emr229939585a.11.1731098575761;
        Fri, 08 Nov 2024 12:42:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2rPJ8TWctxcZMgE4zJgB8rPLFwzZPX76YJC1zO5aP6gngaNdRzDusbilO7NPwDQ+LrWVpzQ==
X-Received: by 2002:a05:620a:2a07:b0:7b1:4920:8006 with SMTP id af79cd13be357-7b331e4cf7emr229936885a.11.1731098575404;
        Fri, 08 Nov 2024 12:42:55 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf03c7ce0asm2314144a12.85.2024.11.08.12.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 12:42:54 -0800 (PST)
Message-ID: <cf054b7e-3ab3-4b33-a165-49287cac6515@oss.qualcomm.com>
Date: Fri, 8 Nov 2024 21:42:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 6/6] arm64: dts: qcom: sa8775p-ride: Add PSCI
 SYSTEM_RESET2 types
To: Elliot Berman <quic_eberman@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, cros-qcom-dts-watchers@chromium.org,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Shivendra Pratap <quic_spratap@quicinc.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20241107-arm-psci-system_reset2-vendor-reboots-v8-0-e8715fa65cb5@quicinc.com>
 <20241107-arm-psci-system_reset2-vendor-reboots-v8-6-e8715fa65cb5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241107-arm-psci-system_reset2-vendor-reboots-v8-6-e8715fa65cb5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1JAFSGh4LvzMK3bjoxcer-NeeQ6rWWYN
X-Proofpoint-GUID: 1JAFSGh4LvzMK3bjoxcer-NeeQ6rWWYN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=872 spamscore=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 mlxscore=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411080170

On 8.11.2024 12:38 AM, Elliot Berman wrote:
> sa8775p-ride firmware supports vendor-defined SYSTEM_RESET2 types.
> Describe the reset types: "bootloader" will cause device to reboot and
> stop in the bootloader's fastboot mode. "edl" will cause device to
> reboot into "emergency download mode", which permits loading images via
> the Firehose protocol.
> 
> Co-developed-by: Shivendra Pratap <quic_spratap@quicinc.com>
> Signed-off-by: Shivendra Pratap <quic_spratap@quicinc.com>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

