Return-Path: <devicetree+bounces-200743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1885B15E16
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:25:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 49BA27A2B69
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 10:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC68927FB3A;
	Wed, 30 Jul 2025 10:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S2lhwnMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FBF26E140
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753871137; cv=none; b=e2ifbRgEo0kPJs5jbG+4JuBan/frPNM/nwkBpoX70zy2emxtKB6nn2HQZPV2H4KesYvuP4RWdbbkyO7HsGaIycNQRHLQhz5P0ChwvhT+cue0BirSlOymriQKR+cxXPlH05EGSDaYDGPMwFL/81e+Sb646xl0Fa207/v25fVBy2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753871137; c=relaxed/simple;
	bh=hfgO/8yLce5wklzCy0SXQn/TWgh4OLbtWWSwWhKoY+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cbRhjWOYeH0zdtr1I3KGPwiwbeRGP8XfUgRlMaZUMHOnx2sppNJO/V8Vcp7QMTinGykmib1Cf9453hfvRiDHdj0lq0Rv2hqLVL3GAJNuVWK4rz+woDa0p+TBipkx9rgO6SulVnmANa148daYGHil2ys4vH4CtLNa09k2uBf+/Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S2lhwnMD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U6dRNW018159
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:25:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VU19aOSOm56x7/zn9FprtBwoPEraQQ7b/Aj6oWD3uuU=; b=S2lhwnMDthYf3/EN
	Hl7XfU9ZkRuv2ao8FYOqGVW913VXGcItCUnpfYKFW0PxM96Z+t/h6NAT6guwdsB5
	O+q1oCOsYcuVJSioQEHzFE24jaw9O/k2P1WpKKhh9lYRQ1B+EDz4GeuJl+FF0nH8
	r0vKNZEtWq1uMBPzIx7Xu9Sx85jkLwcC7g+ypMkea5KnnfjuSEhlG9m3mD/Zmk2N
	rqME75PTgjBSMCsPNXp1885TdEi63yO7O7bmuXHXSvmajpDbE/T2YX2v7PWHxcQI
	ogchR9HfBo/f9uvqImgkLaMwW4+yZiMAtOWQaKFzCr5+0H4sa8FpL9awKjs8AyGr
	ZDSxUQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbm38ta-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:25:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ae762426d8so4608261cf.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 03:25:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753871134; x=1754475934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VU19aOSOm56x7/zn9FprtBwoPEraQQ7b/Aj6oWD3uuU=;
        b=DOBX+Uh8PzdXiJGvm3eFu92vHyyyKqa3PurDc/bYSQUCTh/1GwjtqZV/ty8Fubux86
         7eQ9g9Euf42Sou8mPS3M+wrMjQESOrauvFsn5MKs/BlV9wPpS7nq7xCRC0vifUvf8bTt
         QAdRyOb0aYNnHmCHTwY88K+M6S83Ha8tVU7g8xz85b2JZeF94H5lgEFeUDTJx7Z9xUHf
         3rnMoS7fTzPi/NSMdL24hoCIIGEYONHSj8lR3DBjg/A0JlMc7ytHAzFNnT0sK+hgBAVk
         kTkUk2FY3hp0BIflZ5ZYIUVMC4woXF0w6Eh7EcY/BFaMOhQhfKtVeH/8y1eM/XO/qyrz
         r9cg==
X-Forwarded-Encrypted: i=1; AJvYcCXlQHNDrbFhSWp3ae0Wq7gOu+oaJBw2ouSe7KqX+5Uq2T9m178YSJZzzIdIslurXWqNZUzHc8iDbY0l@vger.kernel.org
X-Gm-Message-State: AOJu0YzXntf29hlZoWn3nOLF+Y/c4UKn1ZtbPIiVKD/IxsKdsme5YGir
	gVsgYRczec4+/k5sThegt2KDqBgOjy5Zd2pGIm++OncpCxCKriNX1n2zGdyKGzRlmFNSSDcm6jW
	K3SiKdowzbvskFgwMSwn+LwZguby5ddV6Em1IKwQ2Vq8Y7lAHlhbrxnLffifwanGg
X-Gm-Gg: ASbGncuNWyB8/cN8JaVUV/lVEmAfq59WiX1hYBH0PVCSfHs4lm2+6M3AQyNKtgnX0eT
	GbmVeo6DSmy4isxW4QjMz7jpBRsrkfxe+8KySSU8DaHRjFEUFnRIcHT8lBzncbC5IKP27BtRXuo
	dk0GMcm5PGdaMvbk3fPI3zXYUx3QeAxiHOre8Aol7UNxIjOISZ79zr4pYTQXvJ9cnQuZNFaHtG/
	hi3kUVKKtlBcZBa+i6HWxkhi44qBGrJYFJdk5C8kfOUTfPBH3yBm8t6boukscvkgyeCushk2sRz
	ytbrjapksImIahmulLVu08/oqINGSd2OguQoCsHqxhcQBB3v9VrM6mvJ0XuVYgn9dIW0/+fg4j1
	/UJ7q1Jesi4E4rd7XCQ==
X-Received: by 2002:ac8:7f8f:0:b0:494:b722:141a with SMTP id d75a77b69052e-4aedbc28da7mr22576421cf.13.1753871134214;
        Wed, 30 Jul 2025 03:25:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2MoFWPpyzdfwxYmpNHy2wlZZRbH85Mua0jLB3ZlgUxjY101B5fuxUH7O7k5j3qpTqRTcx6g==
X-Received: by 2002:ac8:7f8f:0:b0:494:b722:141a with SMTP id d75a77b69052e-4aedbc28da7mr22576281cf.13.1753871133823;
        Wed, 30 Jul 2025 03:25:33 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615923e13d3sm514484a12.49.2025.07.30.03.25.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 03:25:33 -0700 (PDT)
Message-ID: <f3aeacf5-f178-4e61-b34a-60353f89daae@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 12:25:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com>
 <20250730-dts_qcs8300-v4-1-5e2dd12ddf6d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730-dts_qcs8300-v4-1-5e2dd12ddf6d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=6889f31f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=ggSMAipNaOlLgWN-UjYA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA3MyBTYWx0ZWRfX1B4y/wPcnx6C
 b3S2DjtseMEHy/obFkCyz0KiE4kNqTqZj8rrhMPYe4F4p8CkTHVHE+pTM6Wmdsz0rXqnIv2pxj5
 iGsWPNKO8msFqcdKHNqTz2xOYMRqpq4OJtX5PnrNjPHlaSdwUtQ+TwMu9bSTPzyWuHT+wxakJ2v
 HCEoi5H+lJNx4wE2O2IOTe2qBY5ntkunQN8/dgoHfO7ktormH1+saCWe1el3KnsozNd9yiAwbA4
 cZ1XkiAD9G6NhJEQO7lkBUl/+wHl9DYnuhdPNj3cAwCgEWAtxetz276bjnmeywsw2zMdmUSUu2i
 2jmsW2bNwT+cu0GXjr7NI+acLRd+hcY6YqwskbBUDxA0c3avnxXd/jDOi7mjliETpymCXlkB5IX
 NWhX69QM1TMTlv1O2zSqAZbLc2k0oeRt4GNsoGJvASEER9+oagKRhNVIBi24SKYbOCyaCp47
X-Proofpoint-ORIG-GUID: -Ruu-GAImGm8SXYVTqc2fkCTLdro5L-G
X-Proofpoint-GUID: -Ruu-GAImGm8SXYVTqc2fkCTLdro5L-G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=876 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300073

On 7/30/25 11:49 AM, Yongxing Mou wrote:
> Add devicetree changes to enable MDSS display-subsystem,
> display-controller(DPU), DisplayPort controller and eDP PHY for
> Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

[...]

> +
> +				assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> +				assigned-clock-rates = <19200000>;

is this necessary?

> +
> +				operating-points-v2 = <&mdp_opp_table>;
> +				power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +				interrupt-parent = <&mdss>;
> +				interrupts = <0>;

interrupts-extended, file-wide

Konrad

