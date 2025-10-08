Return-Path: <devicetree+bounces-224445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C38AFBC3D8E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7ECBD3AC104
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5A5226D1E;
	Wed,  8 Oct 2025 08:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jn5x0UvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981241A9FA4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912264; cv=none; b=r6/vMp7j+xKkuN558HogDLI97G9VXe6kGk5FCRkUWEkqCU/eEGzR+aXO3XPRa9GEpg+aRknG/szxPZjIeWBbpGjGhRXzVTHosj2AJE+PH8Cjr/KE2S0cxZ+x9JKNG1Gkoc23fwPqRmn6LR1lf/uyBoQKb8VkZ6+12WGxKxwWx+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912264; c=relaxed/simple;
	bh=MlOQPUrFbRM7lzb6+6+OsElMAObdrmpb4oWngR80KNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tWuGq5CNyduqPLg/nNVOPdzSuwug05o9iRQOrnMF/aqJBaImdqh16T5WuD5Jzfwz/JHZvZ3Sk4jfUR8QxVwY5UR+3nfNfjd107t0z0rxUN931yAdDu6MXYxPQmGpkPGNTLdy7k0Jk32kikMb43mamPorQy9lMJJtUCDQE4zYcRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jn5x0UvG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5987aV1x012303
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 08:31:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+msSb2AQCXuitHlyCPM/RkFMjkfHAZ9Xm5Da/gnVsS0=; b=Jn5x0UvG1v++ZhOx
	EakpkYX6Pf8tlTjMEVCrbKuoS0APFpTQRmwfyt6QRqh/K3OInFOeX4A+mYQaGGzf
	37G3lTMUbchAcbPgRWFAnq+ztDooXRZh5yWTAPZgllN8f2OiPb9jv6N4eU60O2h8
	JrCpbFXWcj6zg/ikmwtDpC13GbC5PJMksPDO1DJTSWbvQAY9ireEFIANTTTzykqV
	Dz18+ve2SDiVXIJfzYPPgn+MLVQEtZmEur3GWwx6WUDrYweJSO4kDCniGHdktyhd
	YpZbMprBvU/EByUkOMQ8uoBOfsCjTITXoOLrmuG+cAgu3PyDVHYBZdJMnJA27lkY
	CcbQ3A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgsuhs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 08:31:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e231785cc3so29662701cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:31:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912260; x=1760517060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+msSb2AQCXuitHlyCPM/RkFMjkfHAZ9Xm5Da/gnVsS0=;
        b=qbGm93scnUnsdCSDFeBqGayiAAxoZmwst3iRaV4M+aJHzm522ZeJJVJyHJZqWVyO4q
         Hd9O4AR0oXq7yrRehnEuHU5DilqCZn5I4I4QLm5xZpmfdbsPwdl0y7T+D7ijkEVvmhHo
         xoX3ap3firq/jK9/JDBJcQw4iMzVJAyEagwDUJVjzYmlTgbJS3jarK9SuR0/jIuKVlfN
         cqxpWPfWqfQ6DhdJRUKVC5gHv+TLNeZxonRPRQQE8pNaELa2c4u/nPxl9fN6rde9zYDM
         2m5ZcfuOP59G0fU9vTGypnMCMzJYA9F0Txif/jJdhQFuJqpj57dER5R8WwaScZy6ZuM7
         NYDg==
X-Forwarded-Encrypted: i=1; AJvYcCUHNsjtATuJBIRyh4IuPnrFW+J3WcwEfHuOSnLaLjDWUgB9QFrNb4VHK8H4TANZt5H2xY0dAtyrj8+3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4zTFGvqbsU2kz6/lfL4aZx93hHVACtxSn6ZXDXTO1bfw0mRG9
	9STxdL+Re7ugkCgxYisfmp7Qeb2Q1pnuKZgOQOpz0G6iw/ZlU5uoNpiyCFgbRled+UPsEmGHBkQ
	0k/EpKp7D3F3ObSyJZAlAljTUS/LskozuyQ1Lkb9H99zqaVs/HQy+VR8OA7hCUiQWQ0e8hA/p
X-Gm-Gg: ASbGncuqp2lJTzOh+TlAKIVK3Jlv0DIfM9x5UsZfSOj4CTrjsnxQdkk0UquYFaHGyZ3
	SzO6rwCt+ebd23n+zaYC4EVP24iFSAw9zPGJKZ45QlAMgub2+RSi1sXfPy6uFYlnz5lFoPkU6mQ
	BejDJ1+qcVlzIwj0MixGpZzKUNb1pKyRDsx5zXqD71am7d4Vl/oRPU4RS8bYDIzDHTINwLq4WZM
	tRvcKgggAl/NpeRmD5QeK60mFIFtWtoIsDm2xOK9qMixWXSbJR5sNuIIBGNl9CSR0a8Gpvg/9VG
	iJiojiNaRDSKsZhOF9IQ6pqt6CNus0ENXXovyBHDG1EOWOj6CboVsbiauUYn0As6uu7I6bDV873
	ryTBmlOaPwlfa6b6r7yEqoav7+pA=
X-Received: by 2002:a05:622a:1a28:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4e6eacf31e7mr24483691cf.4.1759912260327;
        Wed, 08 Oct 2025 01:31:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEho6Mv27Giv6bxZJ6pXvVDhyeR4MaSk/nV6G8qKCeFZZbNjnhay6CBU2IK8uL6Zhs0P9fM9Q==
X-Received: by 2002:a05:622a:1a28:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4e6eacf31e7mr24483461cf.4.1759912259775;
        Wed, 08 Oct 2025 01:30:59 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-637881000besm14230201a12.23.2025.10.08.01.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 01:30:59 -0700 (PDT)
Message-ID: <6429dd8d-d610-4393-9863-b856dcfd0cb0@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 10:30:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/20] arm64: dts: qcom: kaanapali: Add iris video node
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-20-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-20-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX7v1m4myVUN41
 ANLwhBKQNsmlZWnJ8CvOJaAaIGgz0mhU6kTTmQaoGJXJYgVim6p5f24ywfoANuKrBLHhOdCuxCQ
 72CwMpzFVLP3d3Gn5qJhQshpDDZAfEVBVfENIe6n2jxy1Csl1MI8LUfi2ryo13baDkKgFhWVTHd
 ddwRtcFzS53m8xYnu9Ofkj9KGFlrzpfwXeAvAFFH1g8vUS9s6K/KjpLEbS0McTxq6tZDdbeAvhY
 D+bu7+ssE9+V0HbOM/Xn/Ogf+6/w8yAE11Oy2cDnhoEIRI+uArNUu0LXQqARLrIWpVzLTqWfobp
 B130LktdVmELQRuXsigm6EiJVZWNKXsTcQ/vUKMcD6oCUfhBcrwjLedFQVtchnZx4tPmZ4pPmX6
 5yM8DcjFefpS48azDySDkFTXDbz3vw==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e62145 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=nVCHojuieXwSnDvak8UA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: sV1xW55PA88ZyMiwhXitW1ihadLUCOUO
X-Proofpoint-ORIG-GUID: sV1xW55PA88ZyMiwhXitW1ihadLUCOUO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 9/25/25 2:17 AM, Jingyi Wang wrote:
> Add DT node for the kaanapali iris video node.
> 
> Written with help from Taniya Das(added videocc node).
> 
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

I think you might have lost Vikash's authorship here

[...]
> +		videocc: clock-controller@20f0000 {
> +			compatible = "qcom,kaanapali-videocc";
> +			reg = <0x0 0x20f0000 0x0 0x10000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_VIDEO_AHB_CLK>;
> +
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;

I see that the PLLs can operate at LOWSVS_D1 at the same frequencies
as they do at LOWSVS, although they need _SVS to fully stretch their
legs

I think we can do _D1 here? +Taniya?

Konrad

