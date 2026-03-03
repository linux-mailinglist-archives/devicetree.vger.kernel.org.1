Return-Path: <devicetree+bounces-270419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IR7HCe3pmk7TAAAu9opvQ
	(envelope-from <devicetree+bounces-270419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:25:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C09B1ECA06
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CFFD1302BBCA
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D770B398904;
	Tue,  3 Mar 2026 10:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zpq73Xnd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iKxrNAj5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFE038C2C8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772533536; cv=none; b=bjfTIHfyPt0e7x5mU8ifBGEenJu+KobUX5hW5hIcnHYmzep2Ihlt382xbS0p58QI2cj3pAdIUkC5eqZam5EOfCaMdaojP3kIq7Izv46fpMgC1tSPkJPJyUF9CmhZmzAYQDWCvotXl5xsjMyLRuMq+pxiqMc1/c1BffajmhGrgyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772533536; c=relaxed/simple;
	bh=1bbuAYHkgyOltmSdG+a8M6FutTv6NEJFd4tufC9v5R4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CzcFJa1rMInrfmbfcUVT5R0HzvjHFTwHIfTV0j+CGDR+ETSjugVxWvOA6jIPohNuHO4TTe3gb27s8HI2kzVrj1itqSdOJeUnEWWVkec1Bx0H5VDhrz8FJCjWDTXasa8WbsgL33rm+1QTDEAXWCat6URJ/XaHw7Al/BE5TlLexY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zpq73Xnd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iKxrNAj5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n5Mf1838277
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:25:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6NjXyhMbELuv2Vib8gbhLp2svnsqseY66OaXHBiR1dM=; b=Zpq73XnddCtnFxL/
	YXpuq3CSFOFE5ps0FezJbmhovfIkOzzYX5+PvjcuN5tGplP3LvvUVUzMMBpCd0M7
	DdHJQDS5LLP3q5bh0HW1q3W30xCcJm3EvOJGtPWD0XwTy/A9pK9WOW3rcux2WN+I
	pksKntrTkPdaUsMSPkJAzvZQqDrNMGChHvd5FBlioOH+ovOREQLeGmeOhjWPT1lY
	ntXL84AMQBDt0KESEMmAMG7VvIMLdqJFPM5QOnsp3Ghmmq7ZLo9WqT6XPzGbJGQZ
	yBqHdBO/HUotqtJsSlJ8Euadjdcp02AZ2xs6MlMXYx0ocoBRdmcPQrPTtdJDMmw1
	FVuhZg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnngg9thy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:25:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb45a6b860so364541985a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772533534; x=1773138334; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6NjXyhMbELuv2Vib8gbhLp2svnsqseY66OaXHBiR1dM=;
        b=iKxrNAj5mndWB0diAYK4nslGak6AbgG0GcmFkq08rDSbwIZkmoLhus2c6eI/GCwmBP
         deiL8rEbwyd1jCO5o0ejM4qM7ynOl+Bd5TtgMWK6d4Q4RI6P3pGM+7EFsG6zWY6pvHoO
         F7UCQqOxxMFwc8GgX1e8BAt6LmzcKEI6t0rFoNPjE0q2PB/laYR/HUPASK2EAAHZSYlq
         532z/w56EPcBbuS0Mv/fmnfzhHpaJ1EqsHvfzXEWZWyZqgBx40f+/WtQt5mnj9ba4CBT
         Y9y+ez/eFdwULAu+Ehzm/naveKkrUxhBVn/sk+ROH70P8LU6syhQNHv/TwYZtFm+JQaC
         qtew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772533534; x=1773138334;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6NjXyhMbELuv2Vib8gbhLp2svnsqseY66OaXHBiR1dM=;
        b=QeveP1kLZLCb6AjUmLnfYqTfZWS0nfzagWL1U2GDiSSyi7daLmWy5Jnq6mlb/NoTkB
         hQooaGwxQ9iPkiRUnzVvBZ8AXGDw7f/aS1ZNzye7FhQHA7ciiB266J5X1D+WTWAAbgyZ
         8yqFXWlOFxtCUuTylVM302vR+V1tG6XwTgBWtJt/mtQuENLKeoh1tlJm46zP2QMACp6w
         YT3w7xopbOKX6kR556H69GQWiCbC0b3VU9MAKpGJNs96F71a7uNBumeoIAAtUrNA/h0F
         jS53gmoCm1Y8rGb5gmz/Xm7eIPuH91yUKyBKPCtYkSlGJCUnXuXEby+NJ4MDszQghitF
         UEgA==
X-Forwarded-Encrypted: i=1; AJvYcCVtF1HKNPW8COp79BRsFhE3PKCgrQ7BfuWB6kaRwfaII6Dw1PZxkSaFBnXFlzMmIHFT+uSYNage70SS@vger.kernel.org
X-Gm-Message-State: AOJu0YxOhV0FpGHY4/rzupJ+J51Yq3fqmtgLhbqSwvI+wY3XpamUhY8m
	YEk2LEsTudcYKpU8S8syG7qZEovFfgzKMcg7j3DAPO2WW1SdJrOEz0XiE4GW6yUyYLmp87UuKBv
	hd2N6P8mvhHisguJTlTX4ikcDfm6fYd94cmCH95i+Q09qJcEQXVDAqmktVAu05C3L
X-Gm-Gg: ATEYQzybq5jVAe8XZjklPUieJpWnq9/gJuxGchFEjJf0plN9ghNf0P5m5DcB+iDv3cH
	Fdd8UPqpI2II+2ioPBCTQGSy0MHqup9c5kf7PaDO4Wl7rg1RQ+XkrzelY3fV/uYHR3P/HdPdVVZ
	4d0HYeIRwVNYBXpNjOOBPaZ9Fzmem3vD/VM0YxQ+2l6luMUNypeHaHYJEVQIS+D+AseyT9tAgYz
	fkTfvL0PVd7qjf7Jv4WYFbA2+YTyO3NfdtMXKoV/gmchmtrR1K77oBacirKMBwk6E3RGTjtg345
	KDee0en/52LyTyv3e5sRuiiFPQG2aWYUTWsmfnns4ZfqbxdffJ/wigTltE+hdgQW5t1BZ7rpwx1
	bhYmNHvjSGD+fPIp9O1dI4Xk0WaPRE/iumGIODXXe85b3TEx6VPS1/NF6nus/7TJQqQPrqAmEwZ
	2FIhc=
X-Received: by 2002:a05:620a:2806:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cbc8ef417fmr1520689685a.6.1772533533957;
        Tue, 03 Mar 2026 02:25:33 -0800 (PST)
X-Received: by 2002:a05:620a:2806:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cbc8ef417fmr1520688085a.6.1772533533528;
        Tue, 03 Mar 2026 02:25:33 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae612f7sm590393066b.36.2026.03.03.02.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 02:25:33 -0800 (PST)
Message-ID: <df538e4b-026d-48ef-a50a-7180cef9be84@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:25:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 3/3] arm64: dts: qcom: glymur-crd: Enable USB
 support
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20260302-dts-qcom-glymur-add-usb-support-v3-0-883eb2691a0d@oss.qualcomm.com>
 <20260302-dts-qcom-glymur-add-usb-support-v3-3-883eb2691a0d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260302-dts-qcom-glymur-add-usb-support-v3-3-883eb2691a0d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P7E3RyAu c=1 sm=1 tr=0 ts=69a6b71e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=01g4Aj6GVqNSfurPf18A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: qbbIMd2nGJqL9kUBY6CbOfLe7a1nd0Nh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3OSBTYWx0ZWRfX4LihDKjKTwyG
 SwYw+U62x+kYh/ALvV3qWVpKSOyrh7jFqCy5t6cdEBJLkjW5lCPb3qBrsqLUtFXqCxalDCQ7Ffn
 tKfDf8l/jq/XsFdmp1AMMQZy3cWRaDShCso9P8Z4/LwvcTdmql55N6q00yMGMPMwK4s1Tqd2qN8
 cEyfXhlIQaxSqGY6awW4phVoq0Gn+CsFxs3a2dnJxH4m5PntEAl4WdTcS0pVOTVn0NUzDvM00xD
 rHZRsIHmLHGM2KMxABCEYLxB7iGHd//Wc4koV9BtzTMMdZW8uQJwWlCCQVinNUoYT46ShKivST2
 Zpw9Rk5zRdfE0oTtgfFMmTeX6W4lBj7/kIVwXkzpveXHBQxMpCrgr3GpXWFKcF/ng/iobjWGbX7
 jPx4CIJDvFlxpRkw928us1HVz5m0Bbhi8XyFyT8SJnEZWiB9NLQxsTI+D5XdRTrlLCwT1+8UpiV
 kz93+qg+hCjfgbmgrvQ==
X-Proofpoint-ORIG-GUID: qbbIMd2nGJqL9kUBY6CbOfLe7a1nd0Nh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030079
X-Rspamd-Queue-Id: 2C09B1ECA06
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270419-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.0.47:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.43:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/2/26 6:09 PM, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Qualcomm Glymur Compute Reference Device comes with 3 Type-C ports,
> one USB Type-A, and a fingerprint reader connected over USB. Each of these
> 3 Type-C ports are connected to one of the USB combo PHYs and one of the
> M31 eUSB2 PHYs. The Type-A is connected to the USB Multi-port controller
> via one of the M31 eUSB2 PHYs and one USB3 UNI PHY. The fingerprint reader
> is connected to the USB_2 controller. All M31 eUSB2 PHYs have associated
> eUSB2 to USB 2.0 repeaters, which are either part of SMB2370 PMICs or
> dedicated NXP PTN3222.
> 
> So enable all needed controllers, PHYs and repeaters, while describing
> their supplies. Also describe the PMIC glink graph for Type-C connectors.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

[...]

> +	ptn3222_0: redriver@43 {
> +		compatible = "nxp,ptn3222";
> +		reg = <0x43>;
> +
> +		reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
> +
> +		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
> +		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
> +
> +		#phy-cells = <0>;
> +	};
> +
> +	ptn3222_2: redriver@47 {

I'm not super content with the _2 suffix now, but it's not a big deal

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

