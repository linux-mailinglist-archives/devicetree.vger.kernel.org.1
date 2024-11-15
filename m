Return-Path: <devicetree+bounces-122260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E695D9CF582
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 21:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88FFBB2EABD
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32831E1041;
	Fri, 15 Nov 2024 20:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pv7U7p/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8987217E010
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731701336; cv=none; b=CpKuI9itI8ftrBTTEQOTAq6BIn4a9EkUkxf/NEfYivtmrKLIkPmwaqCplNQHwwfYr1Uk4wnmRC4lRuQ3ao1Eut4RnCA/NTosTSZlLWWyNTTGRKhoyR/0z7eFVxzENn0RUmd3lDt2LA2/jmE8XmVMa6hIC9l2peq+DLFbmq0ajvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731701336; c=relaxed/simple;
	bh=AFzwwS3G3AU3lK0XY8whHtEnhR0/cIoT3roEoHg19bM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=iNkqv6TiQjPM2s1YyhvvphjXB6W1qWQMTqF2Ns2Tvoo+uwodGyuYEZUhr6AiBdoS4sgGEdYr3nY8s82BpUrRLcA7EifnZzM5jFLd92q68J/qG4M6es/Ia6pk6Y2oEQu4qmOPXCOf1x21U1ekcDnEE9MwGCV8ZyWhdUEGaNIJjbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pv7U7p/p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AFJ3rii019841
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:08:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hse3Mlbw04uR0im4BpBbm+MAHd9CqxyZme6biBeqk5s=; b=pv7U7p/pd6mh0f0s
	0mq3tHolBEYgTLvG+Ht7fyLphRXsq3Fyw4gk9Ss94b2PWjFeNWcoOvVTHfb79HxH
	bBRRJuy2r58cBAKy1/ylYCY/5hwIvbOy9pxT7vJFNSwr+IKfQ9ZXsdZEPnNtp7Qo
	cAxPGfPO7Ory6NWJtevFD9/uZTaYIZeMHc3z2BVv28tZ409WtnpgFt8MZfQXwKEw
	FozcXr5E0TlJogNxY/3C1ZmMeBjKNuRwm/SlTd3baR3C1AiEKHK5igUVKmV92ZHZ
	HWULZ+0kFafMwc4L4IcjG1CJkICMWM3skAEQ6Ma2v3S8kObqlee2DsJWPyUy//SO
	aXeqww==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42v4kr5629-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:08:54 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4608b08f072so4544111cf.1
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 12:08:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731701333; x=1732306133;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hse3Mlbw04uR0im4BpBbm+MAHd9CqxyZme6biBeqk5s=;
        b=DelQYEHa4KeQ75ZkVLLoKRWQqGA0kDdBO3bExxNgwO0bWwykeg076fUh2TM0uH+IBf
         YKGnR/S5xaJdlDFl+yqLiMa3x7mPbq3LZMSQFLt2IGpDULWILPYcDtXPJ7bsnry4PiNf
         jz0RIya5nUUAhEZV8mEZ2hF+pZ9LxrD2MB33QOsHnjO2yI8OpguonLNuO+iDeMUaILry
         c1E+/NT6t68ARtJifD04/1PImY+SZCRcN37tG55Nh7bRvofw3q6AL4f3xew+5ZSJFqLZ
         nGsyaygk3x0/fJaiEC8KmC/yclb5nmQXsY10vdOuSbOQSUIfnpp/glU8f1CND1WutZIB
         m3Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWPjLG48tSqiaiN1qZoQKB1kBqPkgctEHuL3siC9egMzk1pUGzNQ0tJLSxdh0IaJIs/sEwPX9bUTsKj@vger.kernel.org
X-Gm-Message-State: AOJu0YyNjD/PX7TRpS4/G5JVxuDjFVrhFt5bQePCi+Cgz8v0Hnua+yS/
	g4UaHEKGDp7VCu/ksygOz4z/yFlwmYghToNZ6T4/6/NtRNoIsCi4yOUVJEkV6XsHjRxuLpArr/s
	eP0oQVoIBuvwIqFBZHnAab3eK0keZXee1VzyXWjp/iecrscNwTRm3nQfoUcO5
X-Received: by 2002:ac8:5984:0:b0:460:bb96:dd02 with SMTP id d75a77b69052e-46363debc44mr23042221cf.2.1731701333253;
        Fri, 15 Nov 2024 12:08:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEzrql8SdyFYE2oqYQwCh+1FtfpAe7+KdSR1TE46c/4hpWbrSrrGvXWcLnK+FVQbmvWkQKBxw==
X-Received: by 2002:ac8:5984:0:b0:460:bb96:dd02 with SMTP id d75a77b69052e-46363debc44mr23042081cf.2.1731701332896;
        Fri, 15 Nov 2024 12:08:52 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df50b65sm212562066b.54.2024.11.15.12.08.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 12:08:52 -0800 (PST)
Message-ID: <cd31a99f-569f-45ba-8f57-777f71541f82@oss.qualcomm.com>
Date: Fri, 15 Nov 2024 21:08:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] soc: qcom: llcc: Update configuration data for
 IPQ5424
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, conor@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241105102210.510025-1-quic_varada@quicinc.com>
 <20241105102210.510025-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241105102210.510025-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tGn6mrjZ8tFXT778TUQX7yi02hvUSw-6
X-Proofpoint-GUID: tGn6mrjZ8tFXT778TUQX7yi02hvUSw-6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 malwarescore=0 spamscore=0 clxscore=1015 mlxscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150169

On 5.11.2024 11:22 AM, Varadarajan Narayanan wrote:
> The 'broadcast' register space is present only in chipsets that
> have multiple instances of LLCC IP. Since IPQ5424 has only one
> instance, both the LLCC and LLCC_BROADCAST points to the same
> register space.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Use 'true/false' instead of '1/0' for boolean variables.
>     Add 'no_broadcast_register' to qcom_llcc_config structure
>     to identify SoC without LLCC_BROADCAST register space instead
>     of using 'num_banks'.
> ---
This looks good now. Please rebase on next as there have been
some changes to the driver in meantime.

Konrad

