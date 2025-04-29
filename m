Return-Path: <devicetree+bounces-171933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70847AA08E5
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B67C3B0BCB
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193E72BF3EA;
	Tue, 29 Apr 2025 10:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h6FXueAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBBE212D7C
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745923744; cv=none; b=SZ4VG58QetNLceh2fNHKsjDJYYiVOTlvaQ3TdPD4rGSgPi3YzUO8DcDVzIGQ0Jz7250txe4ELjpDZd6h2Qvh30b8bQPluWVGh5UODlWbhFNCfoAuPiql5/HUV7hFisrd2etkDkSbC2uMQxrDynMfqGiELyGrmcKxnYoPiAczNjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745923744; c=relaxed/simple;
	bh=h5yZe9ek0bTkblVkQ7baZzJhtoZvqFqwzWnMpSFK+2Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bEGSEYEtbtMWRrk5TSAw47liH0zGr7xRMoa37vSbUASIlOYGDUDAe6O6zScPwQV9+IhxgEYtBJJVKGO0q1EjucPIi00vOS3tthGQwwdHoDR6Nr45jergCjjzSIcUrpB0W1xz+8PPHSDfb20lgycdgO73ljbC5r//ZKBTWLRzDsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h6FXueAx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53T9lG2C012371
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:49:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pBvpr7r5O1gBvBiULTbtUNMDGW2y6sgXuugVNVBKfi0=; b=h6FXueAxWi5gvkik
	7/54US2GkdmrzI9PeQ72q5+R8w5dGFRXbHSuk1mO5k+MNnFiag4iZJ1YYzCZY99i
	PSrUl9FhC16qzI3/PZF3NaA2Q/KKX1870thX6xk8Es6fEcnhNVHx4fMeBVgAYuzx
	8f4qbpO9HTv9KPfCIBCxcrZGX6V8H9weQsq7jmz7lFf6Z1wnYFaNhsTNvDfORg4v
	z+sp00eL6Q0/tSkXEktBqY9WuIc08FdvYqQgYVH+MLXTVS18bWKBHtSM8KinG1IW
	L9/JcACeqGosYFGxEcTt9F4nHz5HTH1vZe1Ryo+CPunIAYTOnY7Tli+G49/60XOw
	8zaFvg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pg9c9ef-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:49:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f3c21043so14953266d6.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 03:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745923740; x=1746528540;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pBvpr7r5O1gBvBiULTbtUNMDGW2y6sgXuugVNVBKfi0=;
        b=krzLIpGEJ+qmX2Tj5TOexFGSi8NglpjCkNuLInh6WfXkfQEADOIjec7kEKh+k/Q+Uu
         97GX6orkd+8qs+Mv0yESglSgxwePXkR4M+b9mtA2cDD2xRiul0c9UiLnHcCrqEY3GkfF
         Mrb/flfMIhf1XjR9X0uMT1kEJI2Lz8XJJXmqzxAxDTRlW5huYP9R7UQnN6bDHfJhbkzx
         FqBfItACbKOkftJWXIxQQTeQ9zvcbTV9AH8i7A22lBM280QR2rz64nimQzlvcud0SH2O
         GKB2sXc+ggNjP90QDBOLrmPA69jo697SDaZ1f5sBx/7WrxSGCO4xpDZC+gdhOFqBOCws
         LsVw==
X-Forwarded-Encrypted: i=1; AJvYcCUT17Au/qEwvrESkAKwn9qFXsXtu9lbU4STwF4Ar76kE6hRNWTsPAkvyQC+uvCr9PeamnJ6w3e0Ig4I@vger.kernel.org
X-Gm-Message-State: AOJu0YzXbCVZ39nMPfQdb4/ZsgEgMa3hFB8eFY3QZsHQ1cr3Nlq93Moj
	2Z0Ay/spoYBSeLJL7mUGsKH96DvfgbQxhNYrYNI5niQavIab7zajg8LxgktbmK2K2P6JCIl/lIS
	nHlAwyedjwCItQcdW/yCKtkWjy8D+KIuOf1XB91DdcOsqhj/VrzRj3HllZO0M
X-Gm-Gg: ASbGncuBCJFyc8fDkvjbw2LxsTOM1xmk3yWk89ypWLzQKis+izuGxAk/CTybKPlxIYQ
	sErv+X8PvSTSvFKcyR4vAAD8tG6W+ekNyjjhaRohusGJezCMX1lYfw0K5zsqRs1IjpHRhi0yO3g
	LVQJBX6GDKzeCYMpVu4WXWcg/ToN+rjApMj072yrROrNxwSbpHLgQu4UJQK3ut1qnjbpsiRxdVb
	5TFOVknYK7KNJL3pFc6bLv2W3hdk5S4/l3upzBWC5VDmMqLthWmKSrxItve0o4ypaSdzSV+LmSC
	8cbOU7+rxEcsQ3H4/umiWynCzj9WyknGJLQbKKi5k04/vIxp5N3lutu1ofNT8zP4Rg==
X-Received: by 2002:ad4:5943:0:b0:6e8:f4f9:40e1 with SMTP id 6a1803df08f44-6f4f1ab0d4fmr15842396d6.0.1745923740232;
        Tue, 29 Apr 2025 03:49:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELFfrw4BLWnm8qQ43tdPLNTqSNsmPlRGAJf590ok3QkJlSZByXE/OZIdliFR/98sZgfwkbJQ==
X-Received: by 2002:ad4:5943:0:b0:6e8:f4f9:40e1 with SMTP id 6a1803df08f44-6f4f1ab0d4fmr15842286d6.0.1745923739964;
        Tue, 29 Apr 2025 03:48:59 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff812sm7596718a12.25.2025.04.29.03.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 03:48:59 -0700 (PDT)
Message-ID: <758047f5-e31a-4933-8560-56d988492d95@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 12:48:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] arm64: dts: qcom: qcs6490-audioreach: Add gpr node
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-2-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429092430.21477-2-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZpvtK87G c=1 sm=1 tr=0 ts=6810ae9d cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=0757IJQN7x3-QKvqGJMA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 7ajJMudB8sZb0BebnJmFUP2Mst_o8Cv-
X-Proofpoint-GUID: 7ajJMudB8sZb0BebnJmFUP2Mst_o8Cv-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA3OSBTYWx0ZWRfXznt8uye/vOR0 BeYaAXRak1wtCuEMfFoOH6XIK2g3LTlI4iIW8xSIcT5fwikCoxmr7qgH0Tx5sC6F/i7Sf/vV8XJ 2+SqSlnk7aHoW3CWVGJwQxi8wOgKSCz1x22VDVTs49WNUnvrSt9TAIQU62/JvltNUCtq0Sie9ij
 Pv6W+LklDBjqpxaiwlvcL+3kl89Kmw31PaSuGxY+gPiuqjxflCLZKlVxg8JswJwPrbHIPXpiSzV NheCaAMwrx2ImtCM1Zkfx4+m3Tcsty3R2FakBoFv5fkKjYI/tipEg5QdsVG0mcyStHNNL+i542C mk2tBIz+o7b0aPXAzjjAuF0om14+eacb7Plp70S4yAN9W2trZZHnTr47gpMDhGq6pX8EtVaaj1U
 qgrHMqrKWNeUD4/kQ7EycfvGOAgRJvAn8IBLdDvUSBEYUYne/XBAY0iD5Xi1yjJmMPLd7pDV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=754 malwarescore=0 adultscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290079

On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add GPR(Generic Pack router) node along with
> APM(Audio Process Manager) and PRM(Proxy resource
> Manager) audio services.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

[...]

> +&remoteproc_adsp_glink {
> +	/delete-node/ apr;
> +
> +	gpr {
> +		compatible = "qcom,gpr";
> +		qcom,glink-channels = "adsp_apps";
> +		qcom,domain = <GPR_DOMAIN_ID_ADSP>;
> +		qcom,intents = <512 20>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		q6apm: service@1 {
> +			compatible = "qcom,q6apm";
> +			reg = <GPR_APM_MODULE_IID>;
> +			#sound-dai-cells = <0>;

No `qcom,protection-domain` under either of the services?

Konrad

