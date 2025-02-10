Return-Path: <devicetree+bounces-144839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBDEA2F6CA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1F327A1D7F
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB8A24FBE5;
	Mon, 10 Feb 2025 18:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nM6cG0tm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEAB25B690
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739211672; cv=none; b=rtMyTpMTCIDVUm5TcUPOT3X4u0yw5uKBz1LUXH2Cp3QL3chIyaoEAsMKWzpBjVN6QO8pLjYBsDPKcLq0+bS184rg4p3YGxbZpqJvX7vL5EL8elvcNQ4V2agfX5goxxQfDbxlyJvUriHQkENzInqCzGYTxgWQZ8DvwFHOSfaaGug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739211672; c=relaxed/simple;
	bh=0xL+skDucnhLW89bz7IEHnc3Zd8q/Qz85gybd/2B8EM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oYS0GIO87AU6QzkKf8OJFA0CbqxM53TlM8cIhtPPuLb9Xyi5qR0pQWSET06i5pZ5/gZoPr0dFIDLoyd3CR/Y2Ft/eryGejpiRTz+Q9MRcM2TTMXaMA410kZsWr1viJ6Vpk7hI1NiJtuH7QtX9CqQ/L6E3yOWicp35DHhgMp0AgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nM6cG0tm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AHZMRM006135
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:21:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QI+unw75zeXEBFxdOXAwEc+3K46TDQuzT8vn2rDTQVo=; b=nM6cG0tm7Qff3bBq
	VEcWhKl+xaOX5DX10tn5EW4zfaKmjKXd3fjSSPm6N7yEbCJWweRw/deImo96TE9q
	LE+JqPVlqqHz2C/tgWRFEi2l+ZMazWBPgZ7DFs9C8ttbujNAY/e+LB5ajX5EXgPp
	dfPzUD8oFqHF4y79tpvxHQukNmqs2zHS1y5MVeJA3VX+YBou1neX5175ESHMXTN+
	di478lKXVYqHQMmedEQ/R0ah5XdJ/zNQKbjSFD7VQ03IYGuOzQIS1KUo6/7ZCb3P
	MtFz8mN3mF+L/U00eWijASukcB/81FBZ4K/bJceLa2lEHtrh7Cha4+ROgjqaGzIC
	VyE9yQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe5msk7q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:21:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4718adef552so2619191cf.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:21:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739211669; x=1739816469;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QI+unw75zeXEBFxdOXAwEc+3K46TDQuzT8vn2rDTQVo=;
        b=kSIPlts3uvjGpJfjaliOlxHj98YtWJnWfbqxr2rHZAPYArPCBQFCQOjxzgQWgEnYSR
         hL7htiHWwj4u6bzy4JXVaVaPPQunwHU3DKL+HQmsSl+dJvBXj262gL9qk6eftgP/QPgU
         PhXC2LGfgTO9nkAjjsU7ozrIyMs2czdmHFAbWlufW5Ftd9whBNg0LdCBQ6BNPiVrloRZ
         nzbXl3V6CFXV8SqtsYWs87LTjTW5wGaKWdz1zsIpinJs/r7P1HOwmbsuER4z5CEfqZhu
         3igOmZtYdNW9oQq4U46SbfKALiMPh4ez3ndh54Ld1qBuw59MAHYg4Bt6GKYsUOKvZ8YT
         xyzw==
X-Forwarded-Encrypted: i=1; AJvYcCWqaYcApJDprn3dtT0qN6XkioeZDuQ81+GhCeSQxoC441rsQ9HfG0ttylNqzB8PpabcK0QWTc3NKRh1@vger.kernel.org
X-Gm-Message-State: AOJu0YzPFYzOzi7m3TIbY1qAzDSTH6Z4QFHn6cEB4xEJj+IPoorkeXrS
	TcgQ3FWGNsXOJhFoNt1oa1Fc0AQ8gVTDCVwlMwI57XeIIUzAFhVYTmaW9z87pzMcqSqGBYPBkol
	4XIRVDEkQ1LGswI1okmq+TpmMpJ8gTSS2TucPMz+IdGUm1qaX8OC5UPh+kpNR
X-Gm-Gg: ASbGncvkMlD7gVc4UR+j+ysL1jbI2mOWfC65rWsUlH+dhKhXb4MdPsaZSXd2ZL+0AV0
	k3rE8gbmce4AuCscwczEO/imcIq0jssiuUrGcwz78rW0BKuVK1psKMeCy/qFGNirCwItwgwblcC
	ovGBbzygT9N5xQyW3f+5zWNRLQbeU3ywF9MPRmYYKF94neTCvk0nos6Wy4+T0RBCLWZ0G0mSof2
	KYG7Whp+9FDa1SAyB3MBFzDWRm6iq5YcIZ1GkJ8svF7RhI/s+41VP1e9UoFSLY+GQ984r00l9MA
	bQNyX8V5ADaZV8C/B+Ex5LwGLeqXZv7J3SYl6rNOUOj7yQyKV7wu5z5RP44=
X-Received: by 2002:ac8:7fc3:0:b0:471:9a28:9cd9 with SMTP id d75a77b69052e-4719a289dbfmr13057501cf.12.1739211669105;
        Mon, 10 Feb 2025 10:21:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJNqJM+UBEddhwuMPsWiRaR7uhcCjBlr02t3ErOLh4HzSUhnhYV4TIB/ErinPZjckYCY0qZA==
X-Received: by 2002:ac8:7fc3:0:b0:471:9a28:9cd9 with SMTP id d75a77b69052e-4719a289dbfmr13057271cf.12.1739211668780;
        Mon, 10 Feb 2025 10:21:08 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7800ddc19sm849807966b.175.2025.02.10.10.21.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:21:08 -0800 (PST)
Message-ID: <9d156390-148f-4853-a9c4-d00c4ba11d32@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 19:21:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8650: switch to interrupt-cells 4
 to add PPI partitions
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org>
 <20250207-topic-sm8650-pmu-ppi-partition-v1-1-dd3ba17b3eea@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207-topic-sm8650-pmu-ppi-partition-v1-1-dd3ba17b3eea@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: o-c0U2YLx6Fc5WQGMo-gJvWAwHHauzVW
X-Proofpoint-ORIG-GUID: o-c0U2YLx6Fc5WQGMo-gJvWAwHHauzVW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 mlxlogscore=757 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100149

On 7.02.2025 11:31 AM, Neil Armstrong wrote:
> The ARM PMUs shares the same per-cpu (PPI) interrupt, so we need to switch
> to interrupt-cells = <4> in the GIC node to allow adding an interrupt
> partition map phandle as the 4th cell value for GIC_PPI interrupts.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

