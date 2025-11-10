Return-Path: <devicetree+bounces-236671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE85C4660B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:50:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86634188F761
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03AA230CDAB;
	Mon, 10 Nov 2025 11:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gk76Bm0H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kvx5R2QP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1CC30CD8E
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762775403; cv=none; b=HXxd4gXeJE9RQYwIS0g5gAGHD9oxrPGFLx1nes38D1WWJxc9b0fFyDcryhv+cDqLMXV9RxAjEISGQNoZzgKtO3wLOTpErHSOwz51WAAuv+173+HSXIE6dOiz9UGY7Qmxlk1yD3V+kAusOTSKgTpOGcMAc73mVGt+yqfICgYYuzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762775403; c=relaxed/simple;
	bh=PbfOgtPT0n2UXrEeiTGt3mSbUyFEmdqiEYouVpjeTQ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mptusTkvtWN7NX7178vOurdnfuk60rNzkLQRSbx6/9VzTm+OSPfRYeZ4uYWV1H7jv4ZOZlNZMHREXX2olKhsR4Yfj3hH4vGv8TlCzBx5pm0PLER6CBcRJ4BS+KYgCbCO8SWPFPFw6kAf+hkCfnDr0TsMPIkIyKjEERxGI4tg5jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gk76Bm0H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kvx5R2QP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA6SS0n2407879
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:50:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	toGXLTCJlydVt4OAEmWhLmfjiiINqMpQruYYZvrtmdI=; b=gk76Bm0HEIR3QPsF
	p7UsJGZS/mEfyH6qsxu3gXJ1AhsXIYhbfNQg94YOOVS6o8U+T8h5Sek35YtId91i
	cqj7Gj5N77/fYFyyw4EeC7KvyVPlkTSAzOMj9OLvf66DoA9hxsP/IM4bc/0JD2hG
	8RONuhFUHeg5hLuJHdjoJWcGeIL8P+QU0wlD+o2/KDiDkst/UXG7WGXItqYXjCW6
	5W0BQfPmLHk+Wx2Ygy7+mvpRdbebCFsDvDo3LE6IXZBODMirnJRHjLyRCRG83Dkm
	UGiMb7fYn/bsJEIgYcKKKcUwUBFa7ic1wERFslFeSMTEEb8t3uU4DvJginSUOso4
	6AIrTQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abatd900j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:50:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b25f8d38efso66011785a.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762775400; x=1763380200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=toGXLTCJlydVt4OAEmWhLmfjiiINqMpQruYYZvrtmdI=;
        b=kvx5R2QP6T4yRuayO5k5s6nvc9Balhe/8wpNMPyn7BFeA0dLjbAp4pLoTNFkss2dTC
         nESxj2KPlakZtFHJTm7KAlKF5uItfjNVeOHI+tfSrh3y9Z692EExyk7bfHbQsgIWCRTH
         9k0n8pENWYSehv+Q0GL+DUzv1mNaFK6mfjDbP2uTjLwKu10hSSHxRIaXtb0exuiIze1x
         ibVx0ENVa0EBxD0tS/pF/c0nEZXnN7/a+nDvsjLuWWCB0MzdDuxiLY9kKFFuhWyuLIZW
         EGpq7TNbe6TGcB6WaMBzhbzndmec8yVDUU+EMlym0o4g8piGt3aSrgvJdcvuDp3ni7rR
         73WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762775400; x=1763380200;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=toGXLTCJlydVt4OAEmWhLmfjiiINqMpQruYYZvrtmdI=;
        b=fF3mobFWEMzSGk5j9TN8VwLgLLtYrvGovIjOFdzxxNvAdw1KlakhZpCdz6gUffjWGm
         X4c3OPeiJyqsM1WjBB+hwfRToHHSITxuD047NigMMPjU6cgcFlOwuwt5ZWsmHSXaa5QT
         4kKr6M7MAZJPISBdxTeBrx+vjPTq+f80MMh1CmkmiHe7WNW2H4NDjGh2mTCywWhxRs03
         rfzKlUQB/l0WnloEb27d7CQmVnxcTNuVxYTHOt2DNEf1iK3qVm6ikUL7ZKPDQwtSDytj
         DhAVWaljgBoLIzsjeKLiAV/jxjHGjgSkr1piVc1y5ROUH6zItkoW3IS4HS26V82Ac8Nw
         MZnw==
X-Forwarded-Encrypted: i=1; AJvYcCWdjgyxmDBys1B60Z3HhNYZtqCiiuzmDN6vue345F2uxsnyIQSzsHA+UDKIc4ZEvzpdsZJWacEM2gmy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw28fKedNXKC7buVNbK+Q61vrEGPH8Ywy3c1rWsCikBl8b4D2Y
	c3R3qyh9Wr+gnV63halD2f7ChTQStPQhfbWy6BHt82KzeSGPjo3lf1NlUji7hj9FYiTBiXIZWGC
	o8CrXmxdw9ZSINjthFbERuop722H7uwj01TSx2KYnPdgtZ9V4JdQgbvLYkgr8ZWeD
X-Gm-Gg: ASbGnctPouyNrGSo77n4QlCH29e2aEg7Ajsi9OjGpPBNMkyK8HP3zhq6E5UDT9O4bfQ
	c3SJxP33aHxNisAOxQa2wcIibr0YEEl/9JWYHe5VkZ+UqNBsXd7FRi443tLeFR7bVbWXkuwNgnz
	39dUAfaMBYfyWdhYrXuMkCETzz+z6Xhvuxy6A+tiNQZzIQAkjxk9pA9GQffCChxYBA4eeGuDCdm
	6twQRjo081j1CupUywwHlImfjcBpxgLl3mtnH+1zMLZHwlze/QKJ0d71mJonOpsa0j0XbR8Aees
	WNHWRzm/XBOoL2mgqMh/QpaytK/DZWmBgONsXJ6yvTtjE85vBp81isOv/JlpU3dategUbDzmJPz
	Rumz/tTTrr/4i7zmXIHikomgCQNe2058YG4dsjC1I90GqTAU1cVgtn7cw
X-Received: by 2002:a05:620a:28d0:b0:8a2:a5b2:e3bf with SMTP id af79cd13be357-8b257f06a92mr604941585a.6.1762775400426;
        Mon, 10 Nov 2025 03:50:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGVjQGFZFRM2pmp/M8zDXVLETjOwEc3uxHXPygKZvWFAmQzq7WVw+Rm1obV6L2pDPnFYmJtbg==
X-Received: by 2002:a05:620a:28d0:b0:8a2:a5b2:e3bf with SMTP id af79cd13be357-8b257f06a92mr604939685a.6.1762775399998;
        Mon, 10 Nov 2025 03:49:59 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bdbce8f9sm1072113366b.2.2025.11.10.03.49.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 03:49:59 -0800 (PST)
Message-ID: <28ffece5-29b7-4d6f-a6cf-5fdf3b8259ef@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 12:49:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Enable Bluetooth support
To: Wei Deng <wei.deng@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        stable@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        quic_jiaymao@quicinc.com, quic_chezhou@quicinc.com,
        quic_shuaz@quicinc.com
References: <20251110055709.319587-1-wei.deng@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110055709.319587-1-wei.deng@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: C3CEZLwOeUFhOaS_AnvzbrzrIcXGKE6J
X-Authority-Analysis: v=2.4 cv=eZowvrEH c=1 sm=1 tr=0 ts=6911d169 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=b7yh_2p2DTCkp5fgmd0A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: C3CEZLwOeUFhOaS_AnvzbrzrIcXGKE6J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEwMyBTYWx0ZWRfX9BLmIHZTW9fL
 mQwVLSZ3x3NskGHlCjGHa5dRsffjvwABD16vHBG4W3vZeMX9RckxVk6VEMh5/es304RbS0XiajL
 /kquYV4NFeYILxCo32/1WziHi9AjRX+xtN+h2Rg/zutaYPMHpPJbXC5hMj3XiaSttMHwVeH7D2S
 HqpfLY26FFqqxszr3AIzHFi1tO+MQd38hWGR8g2H95eplbO5Ry7zEBzvUaN9bXcXPXM9gxMfODw
 cpUdKOHRzI+xrp5Gyu3OiFVM7OoHPEomT/fP3eqRUV7xb4ANuUKATgi0UR5dhFCG0B6Xl2X7rM2
 ru/CzBljjHRtGGONy9DbqNV+05vJdOSgGPToQ5gBirEVRdkh9fBb7T2LjVII1ifK1uBvJC+JTjJ
 Oq0p/6KP0fxFl3IRCSlEDEgug2jjzw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100103

On 11/10/25 6:57 AM, Wei Deng wrote:
> There's a WCN6855 WiFi/Bluetooth module on an M.2 card. To make
> Bluetooth work, we need to define the necessary device tree nodes,
> including UART configuration and power supplies.
> 
> Since there is no standard M.2 binding in the device tree at present,
> the PMU is described using dedicated PMU nodes to represent the
> internal regulators required by the module.
> 
> The 3.3V supply for the module is assumed to come directly from the
> main board supply, which is 12V. To model this in the device tree, we
> add a fixed 12V regulator node as the DC-IN source and connect it to
> the 3.3V regulator node.
> 
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
> ---

[...]

>  &apps_rsc {
> @@ -627,6 +708,22 @@ &qupv3_id_2 {
>  	status = "okay";
>  };
>  
> +&qup_uart17_cts {
> +	bias-disable;
> +};
> +
> +&qup_uart17_rts {
> +	bias-pull-down;
> +};
> +
> +&qup_uart17_tx {
> +	bias-pull-up;
> +};
> +
> +&qup_uart17_rx {
> +	bias-pull-down;
> +};

This is notably different than all other platforms' bluetooth pin
settings - for example pulling down RX sounds odd, since UART signal
is supposed to be high at idle

see hamoa.dtsi : qup_uart14_default as an example

Konrad

