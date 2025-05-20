Return-Path: <devicetree+bounces-179001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 753E1ABE489
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 22:12:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 438827B1E4E
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 20:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4314028936D;
	Tue, 20 May 2025 20:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jp7YlTW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3228F288CAE
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 20:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747771919; cv=none; b=ZC9iVnyZb2lE9C3LQSclNxAYmIE+XE6n+uN1BNVziw6ISvRh4CaKef3cftRYVn7FxrnuQUobkhWKEsVn5ygxOZG//T66bksb/4JPL/mTK4inmbVpSe4bJAXCNSMmFbQfwECp/2CcfqgR+WoMEfRC8PMLP1SvUcdFxme0vKvZFrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747771919; c=relaxed/simple;
	bh=lf5r2wM+gWSyxkofv+4fH4wCygy/kakxH7guIFLmfd0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LaN9ub1UPJCh0YdJEiCOSKqne/wi9po1nw0HDcX0cyklDOCRrnA6hnHnHBruK8E3HNrJZ2+oL2Qkb75lNLDDCcWSsgTrlX5fIeT8aoPxK5ySid5htfAgadNzyYQ9krt/06HXqlFt5zPA/U2q+5cggtMmzZzTC74CWVZD5rRBTME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jp7YlTW4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGrxn7013210
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 20:11:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JmLDKTMzuwuVTtW266uV4nw5LyID1iKNvQ6npmle/Ic=; b=jp7YlTW450nG0WeQ
	486jxcu18YFc8o9HTFsecUO7ZLeqgFE2z/uTbIBQdFyePrXRO8CchSNMa3W6uTRz
	Ej5yOfr/1zkR+8m17bXYLkH0icu1FoBmJUwq9eHsy7XlLkLMYVtr+V7XNHH3n8eh
	nGWoQbGSn9VxA4Zx9FFmK6uEiHJoCncCJt6XhUSH167Pft80xdZdHSqceOwft8S+
	Q/EBiU+T/5qE3CBhwBMtdVpEcAmG2JCgmxgGAgxfVY0SvTLAsoTxOy/OS4jkOrNp
	MrGf4M5edF6Vv9t5EtNszLs4HE4Dn+oAJzr/WGxaJ+LFP/UOFExDkM4N2viDZWUD
	OCcD6A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf00hvf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 20:11:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c76062c513so167728385a.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 13:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747771914; x=1748376714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JmLDKTMzuwuVTtW266uV4nw5LyID1iKNvQ6npmle/Ic=;
        b=adBQY+EzF9UaZIBumVqP4hyAReJaalIGf+Yr1qLwAUd1gCaK6M8rhsUJRqlnok7bgf
         MSXElzwaiLrhyxhS1sVKJAdz8ht243p3pAv6mTTYtMHI2Rov1cdhtaxWs6WT9RELZKtL
         OHiJXNVREJETu5z0CVz6IACfG1G09AeHAMCANDEN/Hv2lySYb0mCPyayttJ0InE+gxNN
         9+m3eHpVOQkgKV8f0TvrRd9p4qKEVgK7x4v9nSoxheLVkM3voQlGubx2HkSHRt1G7qVr
         xu4kfhDvKr6Ne9AmP5Hgd4EiSSkmxs0Zg49Ubqd1eQrCP8IErZYx1srswkK2C508jji6
         n7bw==
X-Forwarded-Encrypted: i=1; AJvYcCXMHV9LBVv5rGbAyMzUw20O/eLNZtyathF4TQWoSagTlB9p1Y0wW3kYL3sxmtBylVm01RtGyJW9LWvb@vger.kernel.org
X-Gm-Message-State: AOJu0YxNuETmY4+OT7soRBxlhaN59+R7mLJ8mbYqHmkhY4g0dI79XLHU
	tytiTmuSgg9RViGQNGEhiE/5+Dgv9hZRradRucrUpqopUjlZfmqlMYqBrx+crr9A1eYbLfSutJj
	9F+GB1Y9CxZ2YrPTvxyt+nTQLHQHLfgw9KCCNxQWtmfFRQX2YC82RPaBvAz9qlU/P
X-Gm-Gg: ASbGncvGFzZ2VVVamjQPlVoHqQLoAPdn1m0qE9oDmtkjoXe1Zyb8drQp7jZk3N39Xcv
	PS+w2exQlg72Nnf8KalMFEe0PR2YRuCt5j/r/JLBcMOfOYA8zwXlgUrj2ZJiCoRLKwRP8WJnaNx
	0vNftMC3zMGKtXAMtaAjLvsA1X3TxmWcxeUGLttD9BIF3slkMgaD/7x1bXSGETBg6UxIaCRuNuF
	n9nX1dHHB5y4+7nIfhemhkJ0MhHJVHgAO6veOzk10Ww6f9UoLjl7aixThX5SjoURHG59A+yxjeF
	Jjbyk2W3DmRyUD94Lz55aVcZgcEFZLK+NQ5sdGFW04lNZ5rekO+IOWK2Am9NLOEE9A==
X-Received: by 2002:a05:620a:6011:b0:7c5:ba85:357e with SMTP id af79cd13be357-7cd4670a6c3mr1189380585a.3.1747771913938;
        Tue, 20 May 2025 13:11:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyzuWFlHh0j0Gw6RSmsJ2bBhmR0N482udldB75GhgJ0zvzi5X83XCYG+N2BLCT3Z7jVlI4Aw==
X-Received: by 2002:a05:620a:6011:b0:7c5:ba85:357e with SMTP id af79cd13be357-7cd4670a6c3mr1189378885a.3.1747771913432;
        Tue, 20 May 2025 13:11:53 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d498d05sm791783566b.149.2025.05.20.13.11.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 13:11:52 -0700 (PDT)
Message-ID: <121568c3-a6b2-4772-8c28-7453aa0ef3b3@oss.qualcomm.com>
Date: Tue, 20 May 2025 22:11:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: msm8939: Add camss and cci
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zEnS8n1MMtvDhmiF00iDSxV93GryMkcl
X-Proofpoint-ORIG-GUID: zEnS8n1MMtvDhmiF00iDSxV93GryMkcl
X-Authority-Analysis: v=2.4 cv=ZP3XmW7b c=1 sm=1 tr=0 ts=682ce20b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=TqukyxIwAAAA:8 a=bmytIewYy0Yx7_8Z9RYA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=e_wvXvRcY2B3oMitRgDS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2MiBTYWx0ZWRfX5rAf7BMoGl/U
 MVAetocEB85zdLlmOHtYGJwqgVJs56BPlIJXWkosbCu9E3Ba+qDr/mMLpJL+KTRtVvemGj5h3Eu
 FDmYZjmO8NXKdDWsRN/yHFd1vscw9dfxDdWfXkPX2cK8JST7y8XsAIjSs8V1kpHZi1IVj0PYOcL
 oT57pM6X/CLVbUIHTPFlzOIgcpfj9zmipMhYLqecR1pvmz6b2cSNEdwO5dCu7pLugEtrzLAgemP
 5wcGKgO4cy4SB4m0wdy4dX7K4ORli5yblx8fV/T3CvxCdTqtSvQiikO3tCLVhcNtf///MuU7poQ
 AIVxWMYwB00EGzQCK6GI9F4idJf0tO8HZucpJpbrqATN7qN3sqLW3PeejBIL2Sh9mSIopNm6t8P
 weFYw03p0GtUlO8NLCP+9mMZdSDazLnixxxxeWOvkv7D5p4Wor17cwDRtI9E4mHi4vbo2veF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 mlxlogscore=849 suspectscore=0 bulkscore=0
 impostorscore=0 phishscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200162

On 5/20/25 8:39 PM, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> Add the camera subsystem and CCI used to interface with cameras on the
> Snapdragon 615.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---

[...]

> +			interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 79 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 51 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 52 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 153 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 55 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 57 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "csiphy0",
> +					  "csiphy1",
> +					  "csid0",
> +					  "csid1",
> +					  "csid2",

docs don't mention the interrupt of csid0, but this soc is very old so
something might have gotten lost..

[...]

> +		cci: cci@1b0c000 {
> +			compatible = "qcom,msm8916-cci", "qcom,msm8226-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;

please move these two above status

> +			reg = <0x01b0c000 0x1000>;
> +			interrupts = <GIC_SPI 50 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&gcc GCC_CAMSS_ISPIF_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_TOP_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CCI_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CCI_CLK>,
> +				 <&gcc GCC_CAMSS_AHB_CLK>;

camss_ahb should be unnecessary, maybe ispif_ahb too

Konrad

