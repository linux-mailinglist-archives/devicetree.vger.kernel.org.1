Return-Path: <devicetree+bounces-262933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Fr6FndjhGkM2wMAu9opvQ
	(envelope-from <devicetree+bounces-262933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:31:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A3DF0CC7
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53D5F300951B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C23739280C;
	Thu,  5 Feb 2026 09:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQTTtLvx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fwxpngEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C3138F233
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770283688; cv=none; b=ZRnruVbVz5MlY9rJexcuj0pxE2a9ojjGhOYvlMA/rProG7qgs/jhq8T59DFiAQ5or/s0l8kwq2v/lNv+IfhdF8cXStY5eBPHP98VgS6ED4U9c31x45xOK3hWKqP4/OrX+Pj22D4Cw+p2K3pK4/Bg4MTb3AuhDrfyVZRbSRY9wYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770283688; c=relaxed/simple;
	bh=gxQveDBM7qF0rdFdrSgSO4y6/QY91w1rM5MH2qp7D6c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ezdzt4y4GbFGWYqTQItkQtq7lVl7mXF/eUH0rq3gUPQH3zbiZDnQC5GJlMKpAx5kgE2Shp4RHVBMu4zuJIptOmaOajbW0cxKgMr2pqRPD3RPGeomsY1QRb2TsXxzdJU3HqaRpL1qVmYgyW8e2uJ6pwa/1DbDFwEgFT7Too2iuNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQTTtLvx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fwxpngEA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61555tPb3047932
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:28:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LFLeFgRhfVKTGntJpERI+4iO5ebTZcd0XRVPfB0PjGo=; b=cQTTtLvxEKoWMlw6
	yAZyZi5yEvWfbE7vL4+9wq+tEDrR09PTb0pirW3q8QL4FqA2xsOEBCmOdMzQZFRr
	Rh4HF8kd03hmvf4/2/lIBNRhKIY93q/dZELGfSQexDAri1ZbVQADWMtNL6hXiZre
	0lB54dWLy2Ob0MvAVEk2E+VvjhR4TrpRkwNUjREQTScFB8/MDaGQZXsnSdDCKDze
	8dy7Ru6RnUFCb9P2itEYLXXfd0hai6x7xzP8O2M8tnF78q/od3cyB4VUsJPgXJ3I
	k6heTwHzdPxR+icGf97TDO8BOPPsp73RnN7xDicUUNcaf0oexPOZoPQ8Tm3UwuEE
	y7K5TQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4mrtgs21-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:28:06 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8951e32dbc8so2823836d6.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770283686; x=1770888486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LFLeFgRhfVKTGntJpERI+4iO5ebTZcd0XRVPfB0PjGo=;
        b=fwxpngEA1gSEGDUhgAuO9B9QFjBXEM7hvaabGIZqA8QvBqoZRwMg0IULw1Zqxw8brX
         pEvyLQG3hVdsGpfmFhTsmdPYEi+E4xZHCog7S+Ygl604JenMIaPlIUbD9AHWhBy5UK7e
         ludQkN2B9FyPAgLjUF1nRFxBI7nydhjrWaCXvwoYwJ7OgZ1IR6ZfNoCz0kk3yujjQLWY
         IoMWm51K1XP6hTGrecM/TRTwz0G58rX+eDAwH1c+0Ot6ujd2t03OcptxkaTv6lwPyLi9
         4zGMU0VmnQm13kS8PK3pcsUsky8Zd8Ye67pn6Z0lRk7IX/Bn3OJcQraY1v7FaZZlV0DT
         1jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770283686; x=1770888486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LFLeFgRhfVKTGntJpERI+4iO5ebTZcd0XRVPfB0PjGo=;
        b=AecJtZwEGJLaIH8n0vd3rm9VPvUrC3YdQIGCH0aDBGZuCdSlZCS/zo7GYykBTSnmLS
         8XrrGlQHW7Va4xtrA9bjCCB7/1BTAuD3GFagjHr6bxyFIkhfw1OjPk/+SiuLapKit0C3
         sISAFAR7nCmhu0CQ2M0cqpkHI4nUFn9rJ/rA4vVNfy9w9ZSjGBH606Qfie8bCQpT6Vh7
         3z87oFrnnbQzf3RxyswpFpc6uktlpY10h1Gn/+WTC4h+WuBFJFeQ+fMR2X7dljEQNTRG
         hyRVP1awkjeRt3GRSyoRs07LLX95Y6QavTA0AtbSERRWX6kPhu2k3AERdCEixUYALgnd
         MC5w==
X-Forwarded-Encrypted: i=1; AJvYcCXXd7XAhn04v2a6Q7N3YvBqzp0X/XqyoO6jQ+RGF6R/LYHIFO6wxOb3lgYaz46+xFa8Ih6BiozOaogs@vger.kernel.org
X-Gm-Message-State: AOJu0YzBESCed0646az+8hb973myg8n7xYCTrZdmkMeM0aHQUg+/6RLU
	emUT7Hvu3CIfeUWY3+ojapBqa3YFB+zWmuV71m9L0jzB+NSS16vCyHD0cx07Ud2n0tLxSLRaA5Z
	r4N34YsTAWN3KzAkeatKAWBr4CWRLkjAYni+MeojYVBIPd67Un3bdWsOXmz6S3JJz
X-Gm-Gg: AZuq6aIZRSMm0NYd7eHJ4Rn/SaJjDXQFgExKLgLYaFPMwtPPttG8NJpFeuGhysOmFoq
	qf4zNEoEmW2y4OjBHEE9tKs7TTRDU0Ot5FdK3MQ1M6aaPgupMArFBbtJ3d9186DO2ZvXaU5NdiN
	k8W7281IHqAkdbffgBD5clONDJBUioglVdZu5Ra8s3TXZr6pZnk67/aTKmdUV8DM7F9LJ7QQzRO
	8Y99sKsIOlYzmBcm4WjK3Z2hXfOFKAahedMRj0AwCobQVh0xB2T8pfwJ+i0Hy6UXSwIvRTZU7Pr
	E9W3/lqdI60ZO2xpAONuS6Lzgnwh8HHu48IXsZFHO2olF+hq14O4BqegaY3wwaY4qLaA8fpjgqx
	Oii9i0/j5kH7qL6lEXP9Mj43TINEC1FjCX6dj5iaXfSn/sKWGdX4hBWy/rO1Jyv25QFk=
X-Received: by 2002:a05:6214:6008:b0:895:1b9c:bfbc with SMTP id 6a1803df08f44-89522227fddmr57554656d6.7.1770283686132;
        Thu, 05 Feb 2026 01:28:06 -0800 (PST)
X-Received: by 2002:a05:6214:6008:b0:895:1b9c:bfbc with SMTP id 6a1803df08f44-89522227fddmr57554586d6.7.1770283685687;
        Thu, 05 Feb 2026 01:28:05 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65949fd4fc3sm1789652a12.12.2026.02.05.01.28.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 01:28:04 -0800 (PST)
Message-ID: <46d0bc58-2c85-4293-a8ee-480282b80161@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 10:28:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
To: Wei Zhang <wei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260122053624.4068718-1-wei.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260122053624.4068718-1-wei.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2OCBTYWx0ZWRfXyq0d1rTOUlhz
 wTxfpkNEGnglcFrMLqToOwQTOjmeFEGvgvWC5igVx7p3f0MGXPjQKHbDNu55BTh73tbdWaKEE/o
 ai9hqDLTp+rpcfo/q++yENJKfleSWLUSwVtTjzNJpo+vz8nnAdg/R+BsifhPYIZYbae85h3GU/L
 NgH8RNcaePLSQh+u2P3IKSthFDRvnEfwHQNjD2lStAcI1LIve6TFzCZROlFrlsnhDCpEvwJDWmJ
 bpPniaX5Alt4/Mi/4R4RwxhLoj66vZ91Wk3fPQmRqH2utMHI7nKTF6dJ+S0hHFS0fyURbAQ87Bh
 A3OEKz0RFc7iVw7oIFKbLs+ansI01rtF2nhGhAX9f080HKwaVLuPf0Y3et55xphmoFHLMm3jwxg
 HxBqjH/9GtixCs69Hiv0sr0mND/Rdpw7rhzgJOHeZEYsUp0k7wJMtFl3yMcBgf6O1Tmqq+OpWnV
 duN27IrCoDpva9/R1Qw==
X-Proofpoint-ORIG-GUID: lJKMm5LAZySGdDA3BvBEo0ULpsp8auZa
X-Authority-Analysis: v=2.4 cv=UoBu9uwB c=1 sm=1 tr=0 ts=698462a6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tNj8q9q2U3ANdgGxWw8A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: lJKMm5LAZySGdDA3BvBEo0ULpsp8auZa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-262933-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 03A3DF0CC7
X-Rspamd-Action: no action

On 1/22/26 6:36 AM, Wei Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
> 
> On the qcs8300-ride platform, the corresponding firmware and BDF
> are QCA6698AQ instead of WCN6855, which have been added in the
> 20250211 release.
> 
> Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>
> ---

[...]

> +	wlan_en_state: wlan-en-state {
> +		pins = "gpio54";
> +		function = "gpio";
> +		bias-pull-up;
> +	};

pull-up sounds odd for an active-high pin

Konrad

