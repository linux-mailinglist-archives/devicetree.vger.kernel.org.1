Return-Path: <devicetree+bounces-118738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB4B9BB6AE
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32BC0282235
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 13:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDD37082A;
	Mon,  4 Nov 2024 13:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SItzWc9U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126504779D
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 13:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730728289; cv=none; b=fninUrNZTZOx2rp2ZQCs8tNBx0hUS8BNE8S9qTGPFOWi0cGL7hdJlO1MovMUq12d0o2i7/BtPFmcOzoAYEDwAeARbqvDnvNFsDiwj/SqzWkyXhyYtCQoyrxYW7Ga/FHGfhJvely/odFODau1th19ej7mPBsg/65ub4c6eplUSjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730728289; c=relaxed/simple;
	bh=yHsIXd5nkO+LMf5xN/UBFpUESu98mQJHpMkCwWTphDI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZuIux1+q2g+p/GMBSaXEUNfLP3JtO8dJz7oxIgF5UlVVmRuqm5YZw4rDwrgfwAvruf27KQYG4kR1PGo5z24zServIttWugoVGnMpcnwvdGKfOht6LRDNhxXMOxQHkMPI4kt0wGPzbO2A+jzjj+DYaVpINlssiOHNEq1HS4B+Ta8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SItzWc9U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A4Bj24W027157
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 13:51:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q+7hgCYK899f0FJbEY/vMXn0wJqm6OxSk7/yIGdwDuI=; b=SItzWc9U8yLNkDxI
	41AHDteGPUMg5kJiTHxOiwF52+0ODUyOkQD1EY3zzchBjfTNvm3HlF2sv9wwLks5
	xpz0TQ7MCPzm7igp+R4EMwQH6OTgXlyOKlnRenO2NbpGZjWAxTtCNGmbBURZfUXI
	W4AjIwPhLD+nZ7ioIO6DcwEMYBsYwxxVTURjICL9SHvilaEUrAzvnTi5yG58hI91
	Pdijc6SOJCoAZorwEyaODy+j1K+oZy1NlZNkwQoqdxl3xXypsQ6M3BrCpLEd9MSc
	k07aJyd+3x+KEvva60hsW8f5sJhcZlXPpac8aJox5Ob28w8IZ2r6Gep9h8ZuwBlz
	e2JCJw==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ncyxvcm7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 13:51:26 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-71806530394so395631a34.2
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 05:51:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730728271; x=1731333071;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+7hgCYK899f0FJbEY/vMXn0wJqm6OxSk7/yIGdwDuI=;
        b=GaMfLK7o+yI28DzfauIx0bLtj/Sdk718Kcy46Pi0x+LuLDAxXiLnBh6aVLZmtRIJSY
         +03bB7eWBysZI8cVEyZMQmtbOxQUAeGW0U1u7zUeuRHgFeXinnSOKyn63Obj+MXXXkKg
         LvQG8dCfyrDy6QiTFCzd65O7sbnGPH7EXFDc8S8fm/8QVLw5HxqYrux6kLVzQyPbF0ww
         2SEMtCsWsMGSX1EmkwPXXdh4+Yy1pUBN1qkfx5ZFzEV5nNWOtd0g6SdWWx3nVjGVC+SO
         Ap22igjkljkCaLJGo+gmTU+aO5mwlT/r1BtxNpnPuFzuKuLYouu2Xh7PixL7Ks2vmtmX
         zxuA==
X-Forwarded-Encrypted: i=1; AJvYcCW20sN9GKkMKIRC9qOvNDSRdGLhqWDinzK6AabdA40gRXtYeAwmmL3C6SfFG6q/yuV5A4X6n0tVx3+p@vger.kernel.org
X-Gm-Message-State: AOJu0YzQKlFKN0KNhmsl1GYdKf2bA7lizTDK0pV5gdOvG4ZsBeVRAl7t
	scDtLkgBMtLNYvSZQvg40rLR1OeQHYZnZoh45G7bQOZp0eVg2xmfrnMlXwR3yMTBCvw92olXWgv
	Zd9wQF8WQ6BSAtoF4IORZNI2DgHU+LVCbIyS31WEJ/WfWElHdDjfW5ggwV+tp
X-Received: by 2002:a05:6808:2111:b0:3e6:49e0:f16b with SMTP id 5614622812f47-3e649e0fb7bmr6547839b6e.1.1730728271367;
        Mon, 04 Nov 2024 05:51:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4cnc3xqY8a6NcTMGPZ60dRJUOHzCgUzfXFzm9uWLTFW4bfNOfHKp4a3z7OM+82mgUNhac/Q==
X-Received: by 2002:a05:6808:2111:b0:3e6:49e0:f16b with SMTP id 5614622812f47-3e649e0fb7bmr6547824b6e.1.1730728270940;
        Mon, 04 Nov 2024 05:51:10 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564941f7sm554474766b.20.2024.11.04.05.51.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 05:51:09 -0800 (PST)
Message-ID: <91ea0f03-9bbe-491d-9056-ebd9fdc73bfa@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 14:51:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 7/7] arm64: dts: qcom: ipq5424: Add thermal zone nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        srinivas.kandagatla@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, amitk@kernel.org, thara.gopinath@gmail.com,
        rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241104124413.2012794-1-quic_mmanikan@quicinc.com>
 <20241104124413.2012794-8-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241104124413.2012794-8-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1d2QjbHGIRG7G79nHxdSPmyG1lDTZpy6
X-Proofpoint-GUID: 1d2QjbHGIRG7G79nHxdSPmyG1lDTZpy6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 phishscore=0 adultscore=0 mlxlogscore=681
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040121

On 4.11.2024 1:44 PM, Manikanta Mylavarapu wrote:
> Add thermal zone nodes for sensors present in IPQ5424.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
[...]

> +
> +		cpu3-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsens 13>;
> +
> +			trips {
> +				cpu-critical {
> +					temperature = <120000>;
> +					hysteresis = <9000>;
> +					type = "critical";
> +				};
> +
> +				cpu-passive {
> +					temperature = <110000>;
> +					hysteresis = <9000>;
> +					type = "passive";

You have a passive trip point without passive polling

> +				};
> +			};
> +		};
> +
> +		wcss-tile2-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;

These are the defaults

> +			thermal-sensors = <&tsens 9>;
> +
> +			trips {
> +				wcss_tile2-critical {

Node names must not contain underscores

Konrad

