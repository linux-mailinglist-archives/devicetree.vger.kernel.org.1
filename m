Return-Path: <devicetree+bounces-247060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3590CC3789
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A07DD3062E3C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48ED234DB67;
	Tue, 16 Dec 2025 14:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iD1O5BHK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gelnxj+o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F9034DB43
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765894044; cv=none; b=lvCZ4yjWYFpfbWXzjTJN9X0dJTlQSaATMrR2RGLozHsvaKu83X1xw7Rl6MBtJCnfLKRXECV9SaM/nKSzA6QgBgpJKALIjtzlBqVKqZs1KNg2UOspSZFHRKVeL1dSxPlxbJRC5m6nFLgw16sH7mSGVH4lEcrYzcJInWXeiRwpsOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765894044; c=relaxed/simple;
	bh=N0vnY3HcnC3ShALe60b7mAJTFhDTLzPVQZ2IovDZ19Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ee9sPrccyGZa63FifMmQjgRQ9a8wquQ+Ykr9hMWjYqiyqtTSCYvOMymvWiti9Pgcp62sL9XRyLmhc8NnZZnkTULeuiTFNhXtBGb8I5Z6+7SAp/XT4SZ09AZZngvZWJOwaQdexgkPqkUnSNbEUnwr40L4qxfniwcLKSOva7lX7IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iD1O5BHK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gelnxj+o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG9bneT2516448
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:07:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kc52L//RsWPCaHjiytXYgWdk/atL0o6gSee0I4wsNyU=; b=iD1O5BHKTyPEY0jW
	YQehAoF2UY7PcRuTlV/l3skFRomiUaa9a3Y/xQim0UljkvQIoojtC+Xz+rfdLnP1
	YorzWEYysKB6rfwvjlhMLcCuzShhlYrKfDmmLMykfwXTKK2t8/XoMVRUc9E+fBhN
	diJZ2hQNNjdR9+0bMANS6YjTbiTgECUzI8SnI6ibsz4VIDghqHwPymlxPl6QD7jo
	hVIWT+/hZVMBFh5qpyDmgQNWuQdoLVuUFfshokQwMFJWjiPx/AH8odU91668CyW6
	pJpcW/0N5qbn1h6cElBsT7Q75Y1/FRRa/JwfOzXPMhP/IvaC0EKo928XfwGjPWft
	ucumGQ==
Received: from mail-yx1-f71.google.com (mail-yx1-f71.google.com [74.125.224.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b34y8111v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:07:22 +0000 (GMT)
Received: by mail-yx1-f71.google.com with SMTP id 956f58d0204a3-644773463e8so1103695d50.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 06:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765894041; x=1766498841; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kc52L//RsWPCaHjiytXYgWdk/atL0o6gSee0I4wsNyU=;
        b=gelnxj+oFz6wimNAGjxcOnAtK4dJ1/Ih3Vqn8tWD0ljytRooANRa/bfQTGN7uzTB86
         sE5/8wtuc5Eem9+F9C9AWFoWsHxIX2zZwIlIbKj6oJjJ7yXJY/EHDUkBlXsIKWQxyUjX
         ftJwkbc8WOwSjZQhF+5ZAUhgHCjOwVCnb3x6VRgcrzG+gUvKIUAb+47KPwhzNMonvUyy
         OKHbD92EaZ8zNqdvmfYmxIFpuaEnks7VFrfM/HydM7eo8sXZPw7Sod6QOVhwhK7mx9sq
         sq5Bs4Mgn1Xbro8cQ4ot2pAJPH+ElXPHWQNEs3CYHBROEpAhi5ll+LyDx9sst6gh4aJf
         3rzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765894041; x=1766498841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kc52L//RsWPCaHjiytXYgWdk/atL0o6gSee0I4wsNyU=;
        b=T49Lfi6mvHpcozpv1gkglJBCOmXL6nSmCqx4hoSekJc0Qzbkg6FjzJAFETxjq3GgaH
         UgFbeOENBrWARVjXQLXocIuxkcTo1R8IqCwI89fE0Yum4dR/fRjjZIKuwkZzI5lv13xE
         RfLOK5UH2B37kYADUxjcV+gM7QxRLbCQtg5HMy08X6wZjj0AskKktER25BcNfwONh904
         e9ao0Ntl+cIXIPtAQZr9xrpwrJ0JXS8Wrc3/A0LqBA5vjrlweslnjVKauW8sL7YVKYNF
         uBiFYr0Z3bx91v5mUaKTyEs38DLjZPvetedqClzHW7NCVrI5gIgUUVLrdAaFfNcnfo2r
         GF1w==
X-Forwarded-Encrypted: i=1; AJvYcCXIbJ1dut35ayLGJJAfUSvfksgaU1M/MguNC0yOQUHQtUGoY3LWDGpBlCRAZFOuA4b9WJmtRjxVKR4H@vger.kernel.org
X-Gm-Message-State: AOJu0YyM+H7Az7u5O2coHJrbX9TktixbnSuO7WxCYcsuUGO9Lcygbznw
	MkTxMin/8AQsqb8SGH9dxSTCvF+ybct+QPf/PJlDvA25Iiade6P1NFbKcZACcEXPw9zSbgtKL6a
	s+WYGj97SULvlyLiZTXe7W4uJqM+f5L7/tippege/MZaEOmnFRgXid3hy001VIvQa
X-Gm-Gg: AY/fxX4XmZEH3nt4ckSaZRoax2Xhgvotn8Liype9r/YR0OQ2DK9hbKiv/UFZn8iRYHf
	lHL6COzkVIFXz2cVMkyrbD5IRdOrUffH9ONhz62XpXlf1q8Xm20HbqRQ0dbxGGi+2qg1YmRJjmM
	QHT8p9zilWfMOE70KO/UtlAmSIbAsLdVxaiBXsFjc2L8yQ4icGK6rsx45Dg/gCIqC+MSUs5ZZee
	pdQypNqZnQO4KtNxZoDTd1bFY3oyGhXKPriYrK/j5mLLzjveCSxVCJPASxUWf1aJSlJfNXawwZQ
	EiZE0gJI8aGEMrWYvgV7+BN3WNeXUtF4Db0wguklIOSeqqWQBkCFy2Ydcap8pFzRHGGKMKIZt48
	NnQZW9jgR+eNhA1ghle661GnBd3DglzfReC6qY9RgHrADDfjYi32YTf3WsvaXilOWLw==
X-Received: by 2002:a05:690c:1b:b0:78a:8599:acaf with SMTP id 00721157ae682-78e66c43cefmr111508677b3.5.1765894040966;
        Tue, 16 Dec 2025 06:07:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEFJ7Q2nujWCboMFK9YsEtYpyDaxV6KeXRK5g+YEeoNMC8LZw3C2WqNcqD0cfUQe9nSO2WyQ==
X-Received: by 2002:a05:690c:1b:b0:78a:8599:acaf with SMTP id 00721157ae682-78e66c43cefmr111508257b3.5.1765894040414;
        Tue, 16 Dec 2025 06:07:20 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa51b864sm1634502966b.37.2025.12.16.06.07.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 06:07:19 -0800 (PST)
Message-ID: <e32357d4-6462-4035-9a7b-356480c3d643@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 15:07:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 1/2] arm64: dts: qcom: sm8750: add memory node for
 adsp fastrpc
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>,
        Ekansh Gupta <quic_ekangupt@quicinc.com>
References: <20251209-sm8750-fastrpc-adsp-v3-0-ccfff49a8af9@linaro.org>
 <20251209-sm8750-fastrpc-adsp-v3-1-ccfff49a8af9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251209-sm8750-fastrpc-adsp-v3-1-ccfff49a8af9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LrCfC3dc c=1 sm=1 tr=0 ts=6941679a cx=c_pps
 a=ngMg22mHWrP7m7pwYf9JkA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=OJ3QmTlK_4weYT2pb6wA:9 a=QEXdDO2ut3YA:10 a=yHXA93iunegOHmWoMUFd:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: iv_gEckwHSXR7xJyjGtENUp8XuUw5pQ1
X-Proofpoint-GUID: iv_gEckwHSXR7xJyjGtENUp8XuUw5pQ1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEyMSBTYWx0ZWRfX7Z3yvitkIhsM
 2vFMvoxnbbraq9lQogvO2vNg858NQLezcLDVHKRvmYx+s09ys46i2Nh86EvbQUo3DnmacwE0Ksy
 e1gszNEC4ixw+D+YVLUApfC6IjEpM8sPi/W1/5TmR+Kb+DmuYdfjk5gYGV7cDKKtEPuFMgG43e4
 7a2J+MbvmnkRwf3a+ejtwzdIQ7bmmKApqzbjK50cDUf6ftuXRH0rMPKvTGACAFySoTeYevc8OEQ
 rVbmY25YvqUUF63nkVI7KMPD0kXFIb8TcUGv8zLHWmr5soh3t9in6EB0Xts7hgSZod4uo073kcv
 UYqBWT6MxAzyHk/GoIsg9DBET2nFRcxh+IB++LXgkKtec2ePT8f2b+k/CydDj62X5OtuFpwrkhH
 BEhv+R+s4Lt5Z2TAbY0jIPnwQISlNQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160121

On 12/9/25 8:37 AM, Alexey Klimov wrote:
> Add optional memory heap node that can be used for ADSP fastrpc.
> 
> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3f0b57f428bbb388521c27d9ae96bbef3d62b2e2..be89c65163bf0480100c09c883b68d03455c1870 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -524,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
>  			reg = <0x0 0xff800000 0x0 0x800000>;
>  			no-map;
>  		};
> +
> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> +			compatible = "shared-dma-pool";
> +			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;

Ekansh, perhaps you'd know.. is there any reason for this to only be
allocated in the lowest 4G?

Konrad

> +			alignment = <0x0 0x400000>;
> +			size = <0x0 0xc00000>;
> +			reusable;
> +		};
>  	};
>  
>  	smp2p-adsp {
> 

