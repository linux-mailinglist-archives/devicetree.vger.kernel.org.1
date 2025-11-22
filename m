Return-Path: <devicetree+bounces-241378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD255C7D221
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 15:03:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 728C63A8E31
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 14:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2349186294;
	Sat, 22 Nov 2025 14:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSGZukAH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R2cE6KyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7256CDF72
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 14:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763820197; cv=none; b=BIN0Q8CmwYEl4hMGwD49V97nVZenqlPve2GtF3oYuVkHts2fNkbvJ+0tn36jddzDpXowv9RqBZB0abqeLHPzZ5cPGB79M4yAitzz5J9LymJPvkht23YTF2/zAbg75suL1/6yPOL1O6y8u5ABALrCOoGCjo0nmBm78lw24ANWLWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763820197; c=relaxed/simple;
	bh=w6/8Mp4sc3KVSVekWse1UcfNbl49wyZrQvK46SLADXk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iPWIp4s0QxkFRmuPHuFNooSpArD1mDNjNY4jBsX02DD9PAfnKk5Gmct33FfcytGrnugmbFGtB2CJaKEu6inHvyb/Un97HGhDYs/C1Be1KjHkkQRCtuDkxycoPmyFZ4/Uytl128/8ehgxByZrwKl91ETajDPFKWz73SJmRFZEpjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSGZukAH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R2cE6KyG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AMCcnlj2049122
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 14:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZFv6aFk1IpQWO3F93NnlDY2gTDZSprI4dUGFyCQW5uQ=; b=jSGZukAHy463Vhtz
	N2Cg7cwvUe1eOdUYmEy3Bv89afj0kk6Gn7C5p7Ws9udeVH7iaqY9DdFL9UFfIpYK
	xhZWRBV2WqifTX3URkRXdQnw/4rz3ItJV/XEtrN4s/eGEguSOsToVNTXGSXtxH0r
	56UAT1J3EatoYkky2qLmaHFe7wtsJYPX7a/q9jfc1YHX0F1VhlegMEbNmefRzMc1
	cJGtxrg51Zn4dn5hKvU00E3aZURXcPriLPAy294tU6EpBqY0i063HWpFA5tU+bWF
	X5qasBMoXVpYVawZZhZhJcftEa4l/DGVMSpS3z1eQFmfSWL1oDN+wzGdcHGyD8fr
	qhU/7w==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6bgrrcc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 14:03:15 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5dfd5a5052eso63596137.1
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 06:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763820194; x=1764424994; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZFv6aFk1IpQWO3F93NnlDY2gTDZSprI4dUGFyCQW5uQ=;
        b=R2cE6KyG5vigWFsEdDmeC4Kl4qHzWfAD5uh3/iWGcXXcLuM7dhppI8LOZATMCR/X6o
         ysAQ6k/VUnh//2UJvpnrtoWCOZuf216YP5OCIo5pLt+e7aSu7b7tygM2XIwnfvT0iKT7
         VxLBLwEW0Sx0RPVtQaXCk000rsMWEUTwdVIhrZrzhgrZ/Ezwqlbs/J0W35tMVD/QDhAv
         3/v7WJlcuCcgnUeTgQRzktJihDrZGNeYVY02JOrkgn97Lx7oq8gFIm4r7469+j8vssiG
         A9C4OThRUp4mvKaZTe7DQDfa24HEEK6BfK7NU1K7bJ5wtwqOqMWVFVo+2itGoO7vR+gX
         qe0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763820194; x=1764424994;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZFv6aFk1IpQWO3F93NnlDY2gTDZSprI4dUGFyCQW5uQ=;
        b=ZGoWA6hAF71yRHHv5ou/wRfmVwyOUfyMzRojR7/5rsfr1iroEXUAgaZ+fJy2Y6CbnC
         kK9nWOGjuF2s4otEEU0qWtQKTpRBKXdQblk5mkdWtsOz80sSLDFBONe0DimDA+1iyl1d
         oT60K2EaU7hjQ9KEx95qq8qnvddxD0XANKasxOyzSph5ttmuxd03aHZ0SSOUB2Xy4Pu6
         N9QSk17X/QopQhX/s5tpkHSirECJ0zKkBYvN91m+O6jTii4vkNPQy4NsbqgJe7/mg4SI
         iT+IiTUScCtX5X/dLOSsfdzp8WC2peBgmQ7TCt3mNGv3NnjiBgLs4Sh3dSJsT0dLVg4M
         3hRw==
X-Forwarded-Encrypted: i=1; AJvYcCW6tSTRqZYxoba9xU4+6K/Un/NQzr0yTGmiz966I904E2PqtSEy2J4hum/Z0TDOEEEapCpPfZW23GOS@vger.kernel.org
X-Gm-Message-State: AOJu0YzSSAoEEDRoUSNaWJE5sELnzoBNCm+o/jAjgOXYmIGylQuc7ybW
	19hP45Z+vimrFidLHIu5QIduGxd1+pTJDxRFEXG3ckyfv6p351SUu3SCTbKS0lkt88U+4d6fHpL
	THkMZLoyQ0V4MlSXbrFrnB66wxEPPcjslsFZWZPUt0NuUAXsIZGzfSM/Aikpys+w2
X-Gm-Gg: ASbGncu3ayQQsPqtXMn+DweDc+uAb60GEHHSdyl6AIOgx0sQvLv80RIcbfNMa7Rt6BY
	H1RNErrGb2QOS3eAOCsks9FYxJ0A8RxsWgq3hhDCFkE8NT4Uzi4QXR2mC0x6XnWq1Rw3DIrLTvU
	ra+cOQETgIxj6QSl3CjNmpHfq5AtJmgmUai54IBpf8SEsy2C+2br3qAAazZbTiD+HY62c3G/kHZ
	kiO49q+VWiPNTpRLpJVkSvUVxBJ6smefcD0IkJPa9/ISRmq8UyyM97vVFWSPzYUmpGt2IviYYc4
	PwM8/2eGQeGNVh5WxoYA6w7MuL+xRqZlkH45qBDtH8brK38xOCJPcvESdbjfotrr0OPmzILhWd6
	Ruj+QaEw/I6VgNrrwe1wDH/Dctg3doy+nX4HWEhoU1iQ/K4PdbkX03FF+Y36m+mpgPik=
X-Received: by 2002:a05:6102:f07:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e1e6ab5701mr905524137.7.1763820194455;
        Sat, 22 Nov 2025 06:03:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGOa5oUdJ8Eo4PVOAHiaccaEv2w3avq9wi2Hvan5TZ2E3W36cwP0a8YCtGpXcrKuWHN8TVK2w==
X-Received: by 2002:a05:6102:f07:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e1e6ab5701mr905500137.7.1763820193999;
        Sat, 22 Nov 2025 06:03:13 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d502fasm726258966b.17.2025.11.22.06.03.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 06:03:13 -0800 (PST)
Message-ID: <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
Date: Sat, 22 Nov 2025 15:03:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 990VEZN4b6BxOBr9OKJju_loCxfSLBpH
X-Authority-Analysis: v=2.4 cv=MtJfKmae c=1 sm=1 tr=0 ts=6921c2a3 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=K5gqOp28Iz7Nk40COgAA:9 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 990VEZN4b6BxOBr9OKJju_loCxfSLBpH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDExNSBTYWx0ZWRfXyHC/EVBojQVV
 8TOtWo8uAhBnI212UlKu+eNOPlok1hJklRVGnPEPVCUbmooVV/nAvshksdrypGl1unc5W8DkH+x
 sx8DSSheyDIvyPBp83odOgreT3g45/Gsav3zPH6ygULoTA7vGTDksCBep3v66cRryhfjju7yAd/
 vLQtlL/+Ggq59D5g8qf5e3RdzxfEe9fphbvhGYSUY1JLLqi+c8f43dWAPxn8M3Rzb0YnyJ7Jff2
 61w5TsG7i+c89vXCw1bz47WxJDcFrkyLnTQ95hfGrzE74Ti6MRf0Q/yWz4BR4J8GGCJOvc5QFnS
 taw1AqSusarvbGIFJ+KqYkqLHIFWxarOs3erQyD9FEvNsiYtRS5+0CJ05Fn9y2EB/L6gaV2ndXU
 fyc6IJKZrJFaVvjjvecFIE+LHai4yg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_05,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220115

On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and rgmu nodes for qcs615 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

[...]

> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-845000000 {
> +					opp-hz = /bits/ 64 <845000000>;
> +					required-opps = <&rpmhpd_opp_turbo>;
> +					opp-peak-kBps = <7050000>;
> +				};

I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
or mobile parts specifically?

[...]

> +
> +				opp-745000000 {
> +					opp-hz = /bits/ 64 <745000000>;
> +					required-opps = <&rpmhpd_opp_nom_l1>;
> +					opp-peak-kBps = <6075000>;
> +				};
> +
> +				opp-650000000 {
> +					opp-hz = /bits/ 64 <650000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <5287500>;
> +				};

Here the freq map says 700 MHz

> +				opp-500000000 {
> +					opp-hz = /bits/ 64 <500000000>;
> +					required-opps = <&rpmhpd_opp_svs_l1>;
> +					opp-peak-kBps = <3975000>;
> +				};

550

Konrad

