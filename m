Return-Path: <devicetree+bounces-199026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B85BAB0F16A
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:39:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F63E546511
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FF42E5412;
	Wed, 23 Jul 2025 11:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cBQf0Gtd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15BB2E499B
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270735; cv=none; b=TYSwmo8ECpNqM7FxGr71BScFstk8KnPGieFRn6U0aTsJjupI9cqeRQHfx7BwDfVag/MCVlqkX47jPf6AJabozQ9rX8ATu+2MmF+lloR+htou6Reh6fHhVJG2M9BiT3eDHX19UQtBXyvsqGI+fWWbk9qxtXvLV3gZp1LtbgexMAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270735; c=relaxed/simple;
	bh=Q/s3PcMjRexeC0DnoBSgh2I/u1nQNwA+BW7t88ERllQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PmYMnxql3Kp8dxEkdIEtb7rn38O/6vRyPJ4Vhk49ooMqQPsKstW6LwlfR1/NTZuALZjG4VAF7fazadI9CQhXaD2Ec4Z+u+EEcw+IvoLssMFkrqww7wky2DLCbvSRUXHXs6mk2fCDzCNzXBd1b5h1tfyd8/bHK6dcYJrA9l+vIhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cBQf0Gtd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9l7Dv032272
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:38:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hAFYdgiboJDJWj7VnpPVQrrNPGsva593mh0x6zDqHNk=; b=cBQf0Gtd4C0UdpSE
	+0cqRGbUkvfbeaYdS35p5RrCfpBVx4zxfifBwb+MZIphMlqpRQGhSUJYBV7Sg1uM
	EBhYlmokdqmuU/7TbYC7ZCnca47cMdcMw8ndUfbpbrkCC6cSVlCdwsMy+dwjqBvI
	kGGplKZddcmCcsGkBfw4NUEBJVOaTFKhZ4fbAy7Go2VHPOEDEPzCjVsHz2/vT1Uf
	tTSqUdhQpg2SVhzIEUf/t3bm+Hm3UZXzOO8Vzg6JbGlZYmP8sEAVRV5ttM8EzDgf
	G8YIZkeYxoVY1RRC/SI8rGBvVsC9vhtTr2opGWW/46tQLOgma9IOx5RGo5dx/XqQ
	1UwCGA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1ca11-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:38:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e33e133f42so30574785a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753270732; x=1753875532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hAFYdgiboJDJWj7VnpPVQrrNPGsva593mh0x6zDqHNk=;
        b=FHnRGBxp6mmFj2RwDSZ/xrNahpzc05ksWImIhE4BiNp6+TCdQDVpJKiETl7Wg8t+eP
         OS2NDnsnaL5pjAeu9TisnURC5s6gD+HYwk8cxUkYkum/8WdcmSFoHiQcfASIBYm6dTMl
         axjo9sCdUWJkR1Q6ESGAVXxS7rACNm5BRQm+r+RY6dEWshJle/M3nIxPWmaI8w/5muut
         sNg4g18W6ItGtAQ92DkaWY4bCA9nZWAk/qF+013qHdAr2H6IpCLNyx/0wRs90wPiLFp2
         0bk+qdOIVq2yVT75R8Hf6AKEOkHArwZDGdwdm3GxDL0UeNJ3J+aai6V6i6/nzLPGA/+n
         cgkA==
X-Forwarded-Encrypted: i=1; AJvYcCVO+lU/tRK4C/tnnjVMTwK6jf1vGA/T8JH2DgUlGWxuo2IsllxOsior2nT11fdXevV2aaNBaENEQrqg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6iTxy0UuvoKO05+to26bI4jX4WJP19NERcjVVrrKI/eZWNFCN
	Prqwsx66ICWx1Jqpa5KZId2+8HbKBUmWwMjH/kmd5TZaPs0lh8rzeQAvgIM+ZOfBW/EpF4A3uHp
	SJ+wCiPB696j/vBfpX4z6KJD5JaS8Mo4YcVL87crhSsOfCsjlMKgJOl5STuiAoJt4
X-Gm-Gg: ASbGnctkeXbgF7CVZ78c5CspKY1LAZi5mcL7Du0SLBFUf6pRDTz6z/jiLv7x/VjU4Cm
	+fG7juyqOyeg2ffRLvCHNTsCwvi2Fs/V+iTFPMDau7cmCQAkGhIEl+cqHSS986HnheJVeK/Elkb
	l6WXB2+gYOXcws4A0bpSZP2MBc5psZBcP+AqfMqVo2xdyM1+Odunykwo9SnjvKnFejEKGwq/cWF
	rNKOf1R6tsh1Edc3OCy4//eAhVbxvJvZfKVGUbIB+mmU/w7QLRZCHaE/TPI850MZrzS+7gahY1U
	+PXLuk5twGVphq61l6LysAL8rOWUonJfhmyOglQ1Qf3BhGKJgkme7Da2AKCGbiE3e0IZo8WxdpJ
	0z+ZRgrRkIzIyN2NDIw==
X-Received: by 2002:a05:6214:2464:b0:706:696d:d0f4 with SMTP id 6a1803df08f44-7070069c99fmr13782096d6.10.1753270731638;
        Wed, 23 Jul 2025 04:38:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9RWEsyo4ybfZpZOzleOs98pWnU1DzaZC671XDHTlA7NNrqQhMCLEiMR5XX29DxqVIWwvFDw==
X-Received: by 2002:a05:6214:2464:b0:706:696d:d0f4 with SMTP id 6a1803df08f44-7070069c99fmr13781816d6.10.1753270730943;
        Wed, 23 Jul 2025 04:38:50 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca2f1a7sm1030310466b.91.2025.07.23.04.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 04:38:49 -0700 (PDT)
Message-ID: <bebf58c0-b340-4c2c-ab57-4be751d1d7b1@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 13:38:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Enable display support
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250723-x1e-evk-dp-v1-1-be76ce53b9b8@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250723-x1e-evk-dp-v1-1-be76ce53b9b8@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: z_eN3X5kQ9VdW_O6O7opC6RuAxVTVf-C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA5OSBTYWx0ZWRfXzEcSNRLOmzFj
 2jnsTte2hBApB0p/97PobbL7/NaWesBKurP9tIIR3lpVzIbjw4asAWviTDv/5T0QMgHJs0klqxE
 Iw3YsH4qeWXPjpvQt+LrcGvG7BZGyc01bln0rxsMAseCC8dTWQntXf4HIfwYr7kMbNsTCbnhiva
 x8L+sVOZTdqHm9rGohlC35CoavWZJr7tKips4Yqxr3h5XoC9SnRjwRsvSv8fNNlLJnSd0ATkKEn
 kVRWdUqjx8bjddqCHRbAaQAfqJTip7bGzGh2ce9gmCOJx7m1iba3+IUWACvBfecxwJuql7m3773
 HhUI/hBI6WgpVXykosSlS8epeout/IwRENcGU2xX7JyDfKRFd3qcFdgd+TDldrwJVcxI8eYtyWa
 8GdiyYgCHNgqtUkfuAQHngDcmu7ySIDhuQVhXgmJuDbzzfSJXOAGHGVX19hKMCRygaIRKw5e
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=6880c9cc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=FtQQbC5FwJ0cWtqdlLwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: z_eN3X5kQ9VdW_O6O7opC6RuAxVTVf-C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230099

On 7/23/25 8:14 AM, Yongxing Mou wrote:
> Enable DisplayPort support on all three USB-C ports of the
> hamoa-iot-evk platform.
> 
> Unlike most X1E-based boards, this platform uses FSUSB42 USB
> switches for the USB0 Type-C port, while USB1 and USB2 rely on
> Parade PS8830 retimers for Alt Mode switching.
> 
> Support for the PS8830 retimers was already included in the
> initial DTS, so this change adds support for the FSUSB42 switches.
> 
> Due to limitations in the USB/DP combo PHY driver, DisplayPort
> functionality is limited to 2 lanes instead of the maximum 4,
> consistent with other X1E-based platforms.
> 
> The platform also supports embedded DisplayPort (eDP) by default.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> This change made top of initial DTS:
> https://lore.kernel.org/all/20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com/
> ---

[...]

> +	ports {
> +		port@1 {
> +			reg = <1>;
> +			mdss_dp3_out: endpoint {

Please keep a \n between properties and subnodes

[...]

> base-commit: 0be23810e32e6d0a17df7c0ebad895ba2c210fc4
> change-id: 20250721-x1e-evk-dp-141e0df5593d
> prerequisite-message-id: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
> prerequisite-patch-id: 3c553b55d143eafc1036ce2e88df558ec61c4e83
> prerequisite-patch-id: a4b2dabd376d32ecb159141c17113a8f3fc4ddfa
> prerequisite-patch-id: 24bf2ada12dc10f9980ed2c56347e5b6f7964ebd
> prerequisite-patch-id: c764e86c94055e56aaf9e701341bba52a54a998b

Having so many dependencies should raise your attention..

Konrad

