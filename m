Return-Path: <devicetree+bounces-134758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C74699FE731
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:35:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71E42162682
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05CD21A7AD0;
	Mon, 30 Dec 2024 14:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="go3Fp6oP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32051A23B7
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735569331; cv=none; b=dcnVZysOJBie95jaHQ7ivFrPGZEMq1HxZwuUQkm0tC8GcK0hDFLBr29tVEmJ5Ws1JgNDtFew2IdOzpxX30YMTeo6utUjU3kSWb8CItk0OrXHPWzGlBeIhwcUYuV7cmg7fDkrGsNqApSCDp3PcnVq/tJRIx36JlVtMwjbr18rmj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735569331; c=relaxed/simple;
	bh=4/VnyOXrT3JGf5WsPvk3BVKaMaqy8D5O2Q3cR8n/yWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HvvMB3YS53NThjxhaJDQL7CefHkxMTGXMTQNcbm/x4JhIS3XfjVwaD+XpONyCyE4vXs4CfeByp3JsgL5N9w9lbTxuU9QO/79Ph6/FLpaEwS+VqlaiQCyKtsTfp7YghlqFWgXFsc88Y8K9pYz0y5/YtfAMSNv6+OArGXeIW991Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=go3Fp6oP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BUE6DPE027345
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 14:35:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ca7ntn6iD6tGchtGKdEcybi2Jcp/1fo/wjRw6IKzrwQ=; b=go3Fp6oP1sqbigek
	83Q0gZiNwPsM1DcSJKQoHK2+z1aRXr89DwlVkwDaVXGwgOe5Ap1LR3xD8U9MwITW
	Alz33FqUWsBWYk8J3y/hJGxPtjAaaCTdL77jqn/tjRN/ht0eplLMSZ9aMqxvpzKL
	p0GwACFi2NN9Pggpv58k2r8xuURClzc9Y42VZdpYMR7ENfajpkhJSDbivCHdJC2G
	sGngku7jYpdurZa8hEPwOMcS1tjdRXYs/X1os6CBrG7Tn0KD7WpD94TDqH/NSdaG
	RK58V/T3tT6s+rxTtOLpK5ST1yeRCmU8OqF4CB1JafrDLG/3AoK8yL8NuIBVHYx/
	Xor7xg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43uvyt02e3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 14:35:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8a3cb9dbfso12080326d6.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 06:35:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735569328; x=1736174128;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ca7ntn6iD6tGchtGKdEcybi2Jcp/1fo/wjRw6IKzrwQ=;
        b=U5vnQQsnw4FIiG6ttNbJt6Rtq5aR4L/io95WKj4HvbTVfom55yESijf8ohvf4sHTBl
         A6yb/Rs4pjmL5NyTZftYQ6exA80RdK2eQPYANn4YwVwKKUKhxatYzTMzGJhZyttBXmYY
         yJ5Pr1m0Jx6NG6vFrk1bPcW76cp7eAyhBirktnqTtNKpxtfjsn1L4SATCT9M7LyJZ+D+
         njMaiQbK7Kt6Oj4tyKY3QVdkYpp4H0H0oNG4QFApoeIDByTpd7c1JJ7jrUV4VnpfMpq2
         uaDLUPzo1VYyVI5AgvsJMnoeJu+lpeZEdPMpRfP1SvFSpO0/RoixFvG6NtV0/AYC7Iph
         GJWA==
X-Forwarded-Encrypted: i=1; AJvYcCW/z5fXwH63EbeexvkPPqsXiZIlZKZoWqMZgqFYfu5iZUysBXfbxZUEzh14JxuwrHq4fk3/XdTAZn8B@vger.kernel.org
X-Gm-Message-State: AOJu0YwuzXR1ivnpXVM3G6wNzS6jl/dttKIHwfMCmwMzxQb2ZErKIrcb
	c69z0HbdOxIqFCI+o93OrbTxf9PTln/Akg5p9llQF3mcWP7CIZChn2/A9pdOXgZq70pOpz/ah4f
	yrxaa/YRFBMT3SvbExjAKdUCYW8MMajX2sYoUyDVogft2CQeSpX9cNK1lbjvm
X-Gm-Gg: ASbGncv6dQf4Ts1wQHojKLIEZGwLfAdlxYTRBgorH9nB1BUbt1Mnjv30PxHpeNGVNCx
	EL/VoRglsPGoVw/DZ2Gr3c99dwlxCpm4zAVcg2nFZvd91WZGVQeZYUbPiiQB5DV9seU2GYFLNZB
	kWCtg1hXuiw86thmzT14d9uYVXB8qwYoQCbufxrSnYUjyGiUP/85xq3gM1FjhNBA7aQjLWi0lCr
	quM0kTSChKrlI3QbFdyll456uGGzL/7d0FGMHp5EMT8ecTglH5EtgCffu74v3K4yGHP/Z/ARqGA
	HbvNbB+fHYSk+TwyfJMlFYvHcF8HWymMl0E=
X-Received: by 2002:a05:6214:319b:b0:6d8:a150:3eee with SMTP id 6a1803df08f44-6dd233a4531mr190310976d6.9.1735569328554;
        Mon, 30 Dec 2024 06:35:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXGxWXxBqgw8dXA5FF2+gOKXaqW7sBSe0wlRITAGHk3QFW7PPHISzbNWqrjbjAlpl0ZBv5jw==
X-Received: by 2002:a05:6214:319b:b0:6d8:a150:3eee with SMTP id 6a1803df08f44-6dd233a4531mr190310446d6.9.1735569326630;
        Mon, 30 Dec 2024 06:35:26 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80701a4cesm14660082a12.72.2024.12.30.06.35.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 06:35:25 -0800 (PST)
Message-ID: <4738ef57-c7af-42d6-b620-2e81b09a3223@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 15:35:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs8300-ride: Enable Display
 Port
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241226-dts_qcs8300-v2-0-ec8d4fb65cba@quicinc.com>
 <20241226-dts_qcs8300-v2-2-ec8d4fb65cba@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241226-dts_qcs8300-v2-2-ec8d4fb65cba@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: d6TC_1XRJFxKzGo68i3d_vDwF0Zg4ynS
X-Proofpoint-GUID: d6TC_1XRJFxKzGo68i3d_vDwF0Zg4ynS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 adultscore=0 mlxlogscore=920
 suspectscore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300126

On 26.12.2024 11:43 AM, Yongxing Mou wrote:
> Enable DPTX0 along with their corresponding PHYs for
> qcs8300-ride platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

