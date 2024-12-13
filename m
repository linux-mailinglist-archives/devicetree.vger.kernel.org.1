Return-Path: <devicetree+bounces-130741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7B59F0CC9
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 13:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C762188A0F3
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516AC1DF97A;
	Fri, 13 Dec 2024 12:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aOy15jUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0F31DF254
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734094629; cv=none; b=sGjVUjOsvNJ6NupwTf0eFrQAhojU2z0Wf5sIdLiZNjuGCQGiwAMiQ+8wWTs8pxD+Yp+il3bR90HOk2qtHW6OgsEcryPZV/a/C9QLBuKhJ7L/DfT+TgezSgTnCenoV8J98VTtYQBkKOSNARfcbUFsA1h0DkHCJQ/hpSR+NmpsFxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734094629; c=relaxed/simple;
	bh=l8KsrE03emNq7UppVQLLJ0d4dMzAkUTOKa2rdEiioJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VHoC8B1MYAv9JaxXeqrJavjtdh+Ta3iXJdHi4wm5wd9kdeprgMM/MBkOE7LMXXs0HkFrFT7qoQgqJ/zYfbcce+jIpFbhiM2v2NE5M83jHiQcccIOhILyZ3boMbmy2duBL6JR93MvKT0i32fMGGA/rsH2SH8xzDtUAxBfnmJSpRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aOy15jUu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD466Hi018037
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:57:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WXots972fPbdp6i9JzosvgtQ7mFIrezy4R4hyv2/s3M=; b=aOy15jUuGRjtmecZ
	wlii3NYI7VWmnlC5D5HopEB6+ENSFIQifPJcCCIFhYjzNzx3V96abcMJwJ8g9hGz
	661SRimYU7snOnmcr3B5V8kEJTpBodCRPBCQqXtJ0deaLYjPIK/o9ND8HErvZ0Vk
	LZCy3U/dLSh0Nj7tkA+h7cKGo6LdK17lQ/DKeSnMZqhYHqGMeuf38s/SBaNAF7aI
	UiZl/p8He/7qhMN6T1SGO661PmHaXi3eq2wpTvhHPznDI+Z2Uym0eL8cho7qcOcO
	QgjdEL4fvd/VtbooF5gRNU3fv+PDsuC1sGy0AG+qsZZlY1hmX22XgDQJJd/VKVaB
	u4Jv4w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gdkn1bse-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:57:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6f134dac1so21726185a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 04:57:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734094626; x=1734699426;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WXots972fPbdp6i9JzosvgtQ7mFIrezy4R4hyv2/s3M=;
        b=voGbz8jc6Uvgardr1eVoBYH0eGy5cdSmOil99YvE6+KYJ279A4lZKNIynayjQ0G4pk
         j2FVvYAoiSiph2FpzBvUqhLU0eWzg29PJeX+AD59okmK/shTjfE7VBbdJZLwHBpRhkt3
         VIPHT8Htu3+glFcmXgIEM00SnWC7vIcRbC5SAZzeaOJ/HBIDPsUgGi4j/LRBxKBxB0RB
         o27Li2QP2nZPYpYE4GJ1fnCWOubkXYtOHEW22J7VYHAVaXdjhf15KgnGNttQ5wRIqtC2
         feGJT+Aa4ds9rw+4hYrXzWuvMJoVhRed/J1rgN6Le7Qcs9bNc+Zxv15JvHq6oQ89juYl
         Ir8A==
X-Forwarded-Encrypted: i=1; AJvYcCXudB0eweME329IWlWp05kVuAzXeWBiUysqJjCi8HqS1O9VEtnMJsT9KGx16WI8fJIBl5suIzns9izE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/GvhzSNS0wwgGnvbezqcCq8clsAoZsRoHdRj/TNnrqXvewfnw
	mKZ7Ahp823xoUyAIx+e/JLTBJ8fC3n3wtomfDpSj8UJffIuoEfTSWwQLO2wuV99HtfNzS2Tm05l
	fc+25xJwI9FNb2LFpy9W0imk0cUaOBM/o3OCBuXrHUiMuYGDK2UTEQLEZp+Rv
X-Gm-Gg: ASbGnct1VzEq2yYComviqMsErRQW0zdZyZkuT59YiFlvTJMKT1VO1xyBcaxqWj/U3PX
	Ymc85AnJdCL0EhDDIZz/zVZdGqYJgUnqkaQ0RLSmih/9zhPGVF28TErCoMvqxY3AP8Um8m82Sd5
	lMRiSQeo210gMfk8WnNKC4SjSqxa4nJy/ivK4RgNL2vVWUDfIgYK//XPpQQ7KiadUj8baOczcyM
	VZ92etPRRo4iRwOYrQdcR/3GvbH1y6KFo9idwvIJXw2Qh3B+48PXv9k7/2cI0IWOpETbQziSgyX
	4KZNgPKxS6aXA7x8Nh+TCU2Z5d7Lmk3MYcIr
X-Received: by 2002:a05:620a:2943:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7b6fbf33233mr136806585a.10.1734094625857;
        Fri, 13 Dec 2024 04:57:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZhHxIqP2hZhqh9hq8kHurGjbNWtS03TzMvzUPivnkY5ofV7Qj8x8h/O0tRSpbhCbXXWSQ9g==
X-Received: by 2002:a05:620a:2943:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7b6fbf33233mr136804885a.10.1734094625452;
        Fri, 13 Dec 2024 04:57:05 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3d51c3c4fsm9336412a12.64.2024.12.13.04.57.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 04:57:04 -0800 (PST)
Message-ID: <c344a212-1932-47f3-ad0b-c6f65362a699@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 13:57:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: Add Huawei Matebook E Go
 (sc8280xp)
To: Pengyu Luo <mitltlatltl@gmail.com>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, chenxuecong2009@outlook.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
        gty0622@gmail.com, johan+linaro@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh@kernel.org
References: <3dfdf882-eb1d-498e-96b9-90c6cdcaa44c@oss.qualcomm.com>
 <20241213125008.597166-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213125008.597166-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mNqIx6Ho90WOCMmGlVaKOVw85gWbdCGR
X-Proofpoint-ORIG-GUID: mNqIx6Ho90WOCMmGlVaKOVw85gWbdCGR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=657
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130091

On 13.12.2024 1:50 PM, Pengyu Luo wrote:
> should I attach the all?
> # dmesg | grep -i 'adsp '
> [    0.000000] OF: reserved mem: 0x0000000086c00000..0x0000000088bfffff (32768 KiB) nomap non-reusable adsp-region@86c00000
> [    2.249916] remoteproc remoteproc1: Booting fw image qcom/sc8280xp/HUAWEI/gaokun3/qcadsp8280.mbn, size 12950508
> [    2.556517] PDR: Indication received from msm/adsp/audio_pd, state: 0x1fffffff, trans-id: 1
> [    2.556546] qcom,apr 3000000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:1
> [    2.556594] qcom,apr 3000000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:2

(Please don't top-post)

Yes, please share the whole thing

Konrad

