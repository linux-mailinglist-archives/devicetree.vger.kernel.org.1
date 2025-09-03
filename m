Return-Path: <devicetree+bounces-212319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6217AB425E8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:50:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44B704E51FF
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B447D28AAF9;
	Wed,  3 Sep 2025 15:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p2+sutGY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0CD1DE2C2
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756914608; cv=none; b=aR2PoY2vVvgThg1tDIc147JMG3X3/FUZuwdvdhEnICdRvb9Y6pqF+OO+bcwlPeMcHJLem7pP0PoQRhhU6LjRN5Qot6VWl9wmSHulQ/X5h8as44qeqoWnaaoXBdcWf2NJzazJYb3wsjPg556d9K/fnck5iu3+uaWsT6xIFv/2hQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756914608; c=relaxed/simple;
	bh=H5qfSjclHJYp6VlMCGtyMvRXByBYpsPV4yiw5eNY7so=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LHqEqc6WCXFmyriosA38jS2VpXRXACmB5zYCpxWNj7pBXiR+hW/+T4jU7d0QYtZU2hrR41L41pmlLmc+Ja/BsA4BeMWdRp0ve7j30aXp1U9LxCOigXgXWmMDlpvSr9KGXXr5LkW2HeWEtfe7BRGooZ7C7XMF/Hl5kEw7xhuQxFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p2+sutGY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dwx3Z008347
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:50:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wix1g4uaPabNljAYVNfcf6lXHFclM2pJ4RBkrprNZ6o=; b=p2+sutGYPslM6Z2C
	j5bJtXi8oO7ulNmoKt2MenR5taVhx+NdfhbmAHyq2GpQfZ+/kNTELUfVaBaKqkAN
	C0fb1Z15DYrLLhlwpWMWBpIuYuaxi1hj773G9nIunQkRH/aOFK49y6E+6aN+AXqT
	NkgDVHvVjodweK3/0SiOUM9V3j/KzauwIuPixykixjLBVzR/ar/000pLuY3ca3Rd
	aNdTLLHG4br25j4f6s8eCHn+jONf2tPzTReOrRLPq1ipf2KO2YAFbJFQL0IcrcMe
	zl9x7R1TBj8k0l6Wji5EZkktqJdIyOVMbDUNcBNNr445xB9l/gYo6LQ3aS7lcq7o
	IgWBWA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy84yy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:50:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2967fd196so82041cf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756914605; x=1757519405;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wix1g4uaPabNljAYVNfcf6lXHFclM2pJ4RBkrprNZ6o=;
        b=kK9Bcv/HPp3YgHVOjLyncC8cPSAVU1/Lu/iEA/o3IalIZfTyGCF/u179/NMOvagTOh
         2Wcgfzc4QPKqRml/TN74LdKP9zYLdNl5UGans5DSgTU3zyKv8OAHiEwtJIoy+Ep0T22B
         sM0ugfra5zzPvYRJ0bsYJjFnjpyE0YCQvMVRfqqNv+7MzpMSmzzyaD8iMN7NzeQwC2wV
         FD4t6Do9B+B/FV9Z34sqUFNcBvwY6TNLNBB3R6cHEvRd5h3xg7Ap1IfaqRFP8+nI0Skq
         90HkoK1nvGkWh9TX+4EiwzppGR5T8CKX2nL3YbsWBcNXerHZX6SO1fU8Kxz9JWOxMPgn
         q07w==
X-Forwarded-Encrypted: i=1; AJvYcCVm19sJ/2SDx6LXWSA2Nx10afRCTNB9SDvj1U+ECHxjQz7X+NBTF2HKvec/AZj/Gi894+t5Nd1hVFs5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj3FNSy30uE06UMPTvQGVFt9RInPXbpmGJs4P8if6zRXUfl3ky
	G9J3lzAw5/4nWTIyZzffzE5K5Vi2LnaSlwz9pdcUFpZzXbDwuVwDxe1Um1VJvSEzXH1Qdkl3Vhi
	fmbqrMpCv1dK/2h3Dr9y/R2r77BCP6P1CZaPzudmvkioCbnBKVKxkNZVQCYn4YPs+
X-Gm-Gg: ASbGncsYtSOdB+btAMjIUFifThiSPbyvCbRopKaogfGx7gg9CAEd9vVOArLRkbmDd2Y
	7thdYaMBMbCKTduuZFPQzZeJiMsoamIT0pDcf4Dn+D7WOvK/OH33EgKQ2aovZh/QSTQlEjLEy/H
	ux+R4S3BBAIAtSHhARm3axFqyOTY+qdh1czXoUhZeMexU6uOD/uXIhoHAZa+i+ofzJUXyspgC4R
	tQvGvw115beP51IkZkS6wTww68igHGMQcaPQTyKLCuZi0nZsViZ3K3Z4pFmjhbcOtYoNsFiTy86
	2PsiejWThSNrE/iqljtyNCpR3locTaHa33iN74txiCo1MHU1nh6fs/7r+iUO9J4niD0qDqxhCcJ
	BBWFZYbpW0mxkKTuIvu3mnQ==
X-Received: by 2002:ac8:7f53:0:b0:4b1:2122:4a51 with SMTP id d75a77b69052e-4b313e59df0mr162339121cf.4.1756914604679;
        Wed, 03 Sep 2025 08:50:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYKt+soWuAENoVdQ9j/e/O6Qu8NlsHabjBSI6xYSgRI5GQL7c5Sk7w14RsYRKa3ZHe4HcE9A==
X-Received: by 2002:ac8:7f53:0:b0:4b1:2122:4a51 with SMTP id d75a77b69052e-4b313e59df0mr162338661cf.4.1756914604015;
        Wed, 03 Sep 2025 08:50:04 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc5306e6sm12116057a12.47.2025.09.03.08.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:50:03 -0700 (PDT)
Message-ID: <facc2270-e700-49e4-a7ab-3b473e343ccb@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 17:50:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/13] arm64: dts: qcom: lemans-evk: Enable PCIe
 support
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-6-bfa381bf8ba2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-6-bfa381bf8ba2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b863ad cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=g-wiT8vaiPKb6nfFgJ4A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: E19oLXHBt8dsG2s6Hqceqpw5jqngp-y8
X-Proofpoint-ORIG-GUID: E19oLXHBt8dsG2s6Hqceqpw5jqngp-y8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX9JkYcaYAQqlx
 RFzfWoYKm6hKDU3CkhglD8TraKaaZTSxNaSn0EMtqV4gnwUBet/jhHfHGFA3Ur9UsQowByK51/F
 LxhJJ6ZKOkSD+X7zo8JTMWjr2T2yq3v9BzLgmsE9gPV9UWwEE032J9JtcfL6h6KoJ1zDEa/F9ab
 5fMt9Kx8zWTUVhlqzv2pxhw7pmbwVJXxn8I1qUMT/bLCHpYHCYJKf1H2cTRugcUrheExgRZbfVl
 6i3ohkWIWdVyEd88Nrz36YKuRXHoujyWzNT5OlZjRU85ZWGKZmVqVaY9EKg5R38m9jN2FPaW5wQ
 7y8BCDep+qAMh88aSvmRnytmrtKwxh/h2T2WEcRN4ii41ZEK5IkVBEggCTanjBpbsuqzF37QMh4
 cx3NYR5i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On 9/3/25 1:47 PM, Wasim Nazir wrote:
> From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> 
> Enable PCIe0 and PCIe1 along with the respective phy-nodes.
> 
> PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
> attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
> 
> Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 82 +++++++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index 196c5ee0dd34..7528fa1c661a 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -379,6 +379,40 @@ &mdss0_dp1_phy {
>  	status = "okay";
>  };
>  
> +&pcie0 {
> +	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_default_state>;

property-n
property-names

in this order, please

Konrad

