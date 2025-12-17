Return-Path: <devicetree+bounces-247365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03146CC7581
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C994B313D590
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A923A339844;
	Wed, 17 Dec 2025 11:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fPdzRIWT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WMDL5gZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF21239086
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765970565; cv=none; b=Ln+JTJyr9WxWCjw3n/JIZv8jpSX9wcku6RvG44t0KLQYxUwTSWJWcyiPGj7ywSN33nbfMy2SHjfSYkEBbkRJ4YwE6nsMg4TVO9I0s5efomho+w19n42UUN5Spjbye0eGMDc5tsOzYEZ6C4K0UO6NsPrZiho4iaI0RG4ebU5WHKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765970565; c=relaxed/simple;
	bh=zlzU7qIdsecqm8Yd7BNW+zl6INOwuUiiu0g873wFH5k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qnhdqu5ndcuMHOSW0xTSws8dUtIDvuZDpGrI8ZwF9QiPrqSq8dhqteMh013h/SUIu0FQkxVBv+75u19spMGxB926Br2OMd+TLAdFudF4mJWxguTGOF6UCswJEB79eFj1RTZ4jVMYVoTdZsx6I51f0d8nbeXePA6y4XcAAlsskbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fPdzRIWT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WMDL5gZj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAL5CH1215846
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:22:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ov7UtnMKy+iCr1FWcNiuhjlgqm4w4M39va7/6IJ8+LU=; b=fPdzRIWThH0K0FRO
	++A1+G1UdANf5j81dRei2mgij0FOp59jKUQ6JaGeN61MNY4N+Ot5JibFxdDLmQv5
	G71o1GrcqZ5AP1BsKKSRNFDJX/KfI11JRcTR8Q95mIBEdJTuqRVIV9jm0GSzGqlD
	8qtysK6m9lanmoVKLDaUN5jwkbNkyWmgCedf7O7gG7vi2qL/cMClDXuSuBggA1I+
	935NNkNuVZ3clTluZEwvBei2/SoUXVZZwHI6eAoBNBz6qEDZvHVzRLzpROkkz22K
	uRkFB9aZ2wgHBWHyRxz51d+2XBR9G5p9MxU6ZkFPFbyqZpqKCevjBkL9A8xrDGKq
	Q2QOWw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g323n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:22:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2fd6ec16aso96038385a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765970561; x=1766575361; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ov7UtnMKy+iCr1FWcNiuhjlgqm4w4M39va7/6IJ8+LU=;
        b=WMDL5gZjfiGeLTA89dHogKYEiMvAmxCVayUHRHjPQbS+w8WHRtnKeKq6Emds/M6Y6B
         uTyoGTCjz4Z2fcnjKdyRrPeG1cKfG/WdxJj9/+behcJWvRXLt8q63M4xHFCiJelAJ5FU
         ZX31zNZO9Lb4GWIF2P9c5Hfp33s0ZvQFdB/3WCa2cVWno0q5A0SzT9XcvQFJR+OVnCvE
         HjpfJmUvEMgx9K1vQh0a+OUp/zLLeQghjTqG59A9cfrigfjgtVQCsZ93zM7a0VNy5FrP
         2WT8RJNwoKYKYwzIb0JQWz7idYHEMjs3jHy40fE8po73zIo4Zx1v0+nwpNaKSSCIKj9d
         IeZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765970561; x=1766575361;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ov7UtnMKy+iCr1FWcNiuhjlgqm4w4M39va7/6IJ8+LU=;
        b=OKv5HCz/7V7bD214ufCnVCE+7hZOtZB3SsGiEnMf1iLy7m//KU7HVT6dLIgQT9PnPj
         zt1s3zyTAASFlevd6TEQ4H0S9O5csH6AbcdyA9L0U0oh/4S8Lw8lvXlqK5hxUvphKMZ2
         QE8ixt9MFrmGzod+olvyDo7/bYOHvfQNbBV22FzGGPc+yStTloASh5dYP7cO1E6cHKKO
         h7qKGG6aCdobAuoQmWPzsKcWur0VA3c2uIcmJg2ztnLSNN7ucGydXO3706JFjg9tIPpO
         a2D1MRMx9afMDX1Ey/bx/sGZ2/IUC0Pu2/2qD4I0egxM8wL+jNA75y1uSlUeg118sz85
         1QdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSe9XUj/Fa7ueTVjtj/7md3JX62Sbsb/lWgNa69B3+kmm7FwbLOycB7oAz4RTgQ2Zaz57TmZMy1IZo@vger.kernel.org
X-Gm-Message-State: AOJu0YxBvqHwBkV/OW4WMuBY+8r/Kp2hTyvLxl4Liw58O0/2gHbJLqw8
	gq7nTbCBqmnNws9cAudAoTxDhS+UIBQE65v0i+RO8I1NgEH2iOJLN6Wx635Uj6WsOAcqUiKHj5K
	SwlTt33SrnCKcgdxEe8sBrpqYduUg1AiIesO1vlpGtxRXoUhyManRZKRDusEYZkmt
X-Gm-Gg: AY/fxX7y1Y6j+fRmvsOL8qsuKQFbVC3rLjFkhAf/lTE3FYQ0klpWLJvjEMY6Gqhwps0
	CAouFf4uC4+9V/SNT5ALbtuwm9tivVSWFBog1Wkvw/5bxise7Eahuwk36hGAz2cdYypUGaUE4FK
	Qs4XOGJ788W9ADIMLIO0+TGKefboFEbgv6OAnDjyldNvJUIIwuR9BEaOv1Sncg3W5alzM57C7Kd
	Chq0/kc7QLadz9h55miTa01lH2oUbVcOywNrwsZ3jHVBNngEhS75iVKpAVko/Ws3Tt/jjRNwOT+
	DXxONUvyB1jiDxYAP1yEmlLmpreUxVLrXrTf+HRezzj9cEzP/Dw/J4FOo77iNVeh+1zd5352AtY
	K/T+OgaIW7ZloN4ZZElNhWZwmYzllUU2YCNMMX+0gUcSUi14zmVBRaJnUwRH82LRMZQ==
X-Received: by 2002:a05:620a:4405:b0:8a5:2246:bc29 with SMTP id af79cd13be357-8bb3a254065mr1969175985a.8.1765970561572;
        Wed, 17 Dec 2025 03:22:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZf/mPeoRWC7o1Nag4SNB0IuoDlQr/tUrsUb9Qj6Cq/abGekbh55WEonT9E/KnFjsAN5cWPA==
X-Received: by 2002:a05:620a:4405:b0:8a5:2246:bc29 with SMTP id af79cd13be357-8bb3a254065mr1969174585a.8.1765970561192;
        Wed, 17 Dec 2025 03:22:41 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b44620bb8sm1172917a12.14.2025.12.17.03.22.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:22:40 -0800 (PST)
Message-ID: <8f721d93-e1e8-4959-8ca7-4b4dc505110f@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:22:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: sm8750-mtp: Enable display
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com>
 <20251216-sm8750-display-dts-v3-2-3889ace2ff0b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251216-sm8750-display-dts-v3-2-3889ace2ff0b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5BsLKp3F8Obh4ksnvIKCqDXu4i_Kom50
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfXwbHTkOqo5P/h
 whYPL8ggBngK7R0sdfnAbmXzLipjKozkmt+lITWVH1k3sVgaKVfztHpcE9B5DGEKFQUu6xQ86VF
 HVt3IVuZcAZ+/++1kqoKG/gdS7j08ICJWPmrXiaOUTaN6qdIGgIZfv80smw4fJQTOoG3fLw7NR8
 oZli6TYqShVjOwc6aku8vpal0oEG3DXsurZvSPLUjyykEy20ctuftnYBMtAz/Xr0ZJ3r7vBEA9p
 syp9tYnyv2Jcqlz3alpjQJZYClUZd0Ju48lIZn6vCykbcRlYgTvUKUuyfF2GRLdnyM5uW6nZeus
 6y/rAK0tsRF5ZLdBk5GeMX9TFv3JoCbiRszmsehgGcm1NHYIwBhFWpO8j5CvA8sC/a/I7b1GTTe
 wYVaNmQKZzsfMPhFvETEQDEN9v3KFQ==
X-Proofpoint-GUID: 5BsLKp3F8Obh4ksnvIKCqDXu4i_Kom50
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=69429282 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=drb9gvCtaXarAPuUoGYA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170089

On 12/16/25 5:47 PM, Krzysztof Kozlowski wrote:
> Enable display on MTP8750 board with Novatek NT37801 panel.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

[...]

> +	mdp_vsync_active: mdp-vsync-active-state {
> +		pins = "gpio86";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +
> +	mdp_vsync_suspend: mdp-vsync-suspend-state {
> +		pins = "gpio86";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};

FYI these are identical

Konrad

