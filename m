Return-Path: <devicetree+bounces-248204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E16EDCCFE37
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E99A311E3EB
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FAD341048;
	Fri, 19 Dec 2025 12:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bOJZeZx3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RCV6HPw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807BC340A62
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766147553; cv=none; b=m09A/U7jezXYb+1RddO+aGznfjrJlhOjkQPpRdmnEbtff4QNam72V5z6eD5gBDZaaSvl0m/QoD/uCPtvFe4Asj9JjwUIry8ydPo/livSIGUetkgKY9xfcctBU9PDZjMOOl74fyIBwIE9f1ds+mX+STvmQV+VGBp5idRRI8JdgG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766147553; c=relaxed/simple;
	bh=mZFZf18BY/ufK6zFxztQ9i1a1A/GLj96ahIOqJb5zVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fmWTdOOYCGnHAJ9Vume+wyr5Vg/w4E/nhVzJ1/VNXy2447hkPs/fNUhAXNlCL2IWXBHPrR/Kw4Q9yWmhoeAgMZInEIfq9vIbpj8nBWRBaGhxQzRKXV0f1CWb4+8gPHu0Xs+KD+hH/+zRuL1uXxDSN20qO6Z3mcBosXhXUw9PY0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bOJZeZx3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RCV6HPw/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBAenm3939666
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:32:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8u9oyvu1hGtJNJiR4DhBrZamy4UAVZ53w+H+cr2gGAM=; b=bOJZeZx3YgGwsbKT
	BDuhqpcasnPHG5xnBxsKd5rFHbg6tOTv8t56t33asZkM3kvmbTf/MDBS2gsV3BnT
	+rAbQiUWkpKJX7LBx3owpk0GRxnuo8uQOw6jBleIeg50DlehYdJeP3AxRdbnraHz
	AOdIlSw4WAM8v/PByvKQwB1ATLjltLrN20KHW7vkgTyBIA4Zsho2/JAslg+Xh8Xs
	mDzxKXObH8eBImEvWmIhVobw7Vz/l7Cokhi3Ruaiqk3Of1WQD8n3JtGRSOq5z5ND
	2q8Ww3w+Dl0UOnuT+hNu1z2hxWMcGpO+qWL3LQbXKBXpo5otNzwDxEciltxG++e6
	oOvGuw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c2n6u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:32:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e518fb75so26766785a.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:32:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766147550; x=1766752350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8u9oyvu1hGtJNJiR4DhBrZamy4UAVZ53w+H+cr2gGAM=;
        b=RCV6HPw/CNbwAHzwQfZV4P5g3LOG3Q+e1DAeJFA1tc1I6hpIzhL2nHH6VFyQk6DPlf
         AC20J2/rMOKOGcNtVkDt2J/zi5np24xOCX9Z2NWoze1LJqjAAr/Lg9I9cqgVcj6JSuaj
         79fLghKt+cPgb2tcdU7z1hrzPApmyoaqghX6Cq6+kf7fzr22zYuh0YOxV3hu355EAJrY
         4TuWIvfmWLk6UrczhPYQiWSRYQbxbHXD0Dog9czzjvaLoH41HmY+ywiEuZsBlvXa2dMK
         SQXLFxRR8B6RtArszokvtoyg61TG9L6jgTSyG3D3eYuyX1ygEnvy6LURyoQh5pru5kKT
         1Giw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766147550; x=1766752350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8u9oyvu1hGtJNJiR4DhBrZamy4UAVZ53w+H+cr2gGAM=;
        b=XuBPj2/G9L/ae2b8HVdp2sPj4wc6BD4KohbWY/EwlgsLsyb5ovHuBDso0eWM5AHwAU
         /Ocq1VB/bWJw+iFe412nB5RNoRhgR1LbglOk42upLe26BvMfId+swhLhDPFJi+Ooljum
         LDIyt7bgRU5mnL26cRNq0e2gn8rItBIRrehKozgJngqEZYZg+4HCKgxBwElIKW0WIObI
         WNMiMSa5kLknkF3RO/9CskYsakG6B+0+DEZSlmxcyI5AQnPXQaU9+z56xuRClxklNj8t
         PvZZqM40BzMRyBsoda/Z2NTj15vhZqJucCub5dqEZz/exkW4Xg3MQQ1o7nlrRPi8SsaP
         v8Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVc5GNTtlz7peTlTFc6bLDIfQzZU8cTOdxA4JDfF/RnJ23/3Njnk2YTynEQAn3RPZTGnXLRFf0do4QE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv+yLqOawEXjxzeohNcY2yUVADeaix7KdDOKkoxJPlbd0fbb/g
	UVV1o5q/FOjNorAK0GRXuREusr/NE5oNfoUUIdr7kZeQecjPrdBE5VcLQx7yAjfcMTpXY16NJkZ
	L0VkbtZzugADSmFOh8Mfjpkz9q3ZdHuxZ7aI711V1Fzy7C9Wv20XHZQzZjZAjmU+e
X-Gm-Gg: AY/fxX4vYnsIRxcyN0t8lpUk6LIEpfLQc9TbqGSG0PRYdMsTmiuu9Ty70cPoGbB+wYE
	lcn3VWS/ggagRW7Cm5B0F5gBuHS4f/xOTz0GB1Mck83/TmilXGWK98XPx4PydJO6xcivL3o9Wre
	5ithSXwC6bovWMPE0op++hUSOz6cL26oBnHDDL9J8KJiHFQ8rznxXoZ7EETQvxgr5fhq5bnrY7O
	DFyuQlvSNqEhLFNJi9iWcILmXbyAUcJBVieH9wQIZ4AO/1s0WsAHy/RZn1zf6s7g/+pxFJcGKa5
	155yAZFtzslJESPX2MV4ElebR6g0D/5ZuH8WDSou6cNgm4l9o7KQocMDPlDuVxPnLgJauqL/Fr8
	JS1Fb0r2Lrd28ZnPk8n0XZfJPl3+rHfv2cVxaSa8tGprJLjcXxubpnvH3+1X43TV16g==
X-Received: by 2002:a05:622a:5c8:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4f4abd173a9mr28999731cf.3.1766147549679;
        Fri, 19 Dec 2025 04:32:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCLarACSlXZpDNlKsP8TnF+SwJ7xKQm3Iz2dIDLFiWlhyQ6rlJ+J5TUvkOCo7O4V6PCoN0cQ==
X-Received: by 2002:a05:622a:5c8:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4f4abd173a9mr28999371cf.3.1766147549199;
        Fri, 19 Dec 2025 04:32:29 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad2732sm223677366b.20.2025.12.19.04.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 04:32:28 -0800 (PST)
Message-ID: <b09d427d-0276-46ef-ac85-8f4bd4dbf42e@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 13:32:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: x1e80100: add TRNG node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
References: <20251211-trng_dt_binding_x1e80100-v3-0-397fb3872ff1@oss.qualcomm.com>
 <20251211-trng_dt_binding_x1e80100-v3-2-397fb3872ff1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-trng_dt_binding_x1e80100-v3-2-397fb3872ff1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qTSEM529CUBv6hnjLpaPkWRkwZI8V6as
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEwNCBTYWx0ZWRfX+3E9II0Oe60N
 PW7rAX4uHD2VO4RSoIGb0KsmBWdJvnkRWG5p2d7l0n1v7Mv7fSSc9GscQ+Bvrd98YAR0tqdb2+7
 R5pk+wbfnwU8O/3Mnqt5W5ub9ri0MjLfTpWFyFJCEZbhM7CuoLqIVYgrMnqFqgOT3twsACl4DHb
 TTrbRi4Ip40Le+C9VUqbhXCAmFU4YckfeT9J4wkkIDnavznRV+AhSwSCa9JGwG9o9g6nLOKE28N
 ym1N/hMOdrAcmx0vh1w95hIMCbKNqJc4HwfsLZkt2cXaNAjuvmOQlF+S2NHd+0w3i6tETYYW1l2
 9WmnQHwsa+Ujg0rGclXAjp1xcyAd91ykAyHjdj3hXjCxKkXjyO/mY30F59fYSB14sAt89Kzqk2+
 JWuI904jgaHQiIZeKv6R4je5eTAKA77SfcXgAvsu+o5iUr1Hr51h3DECiV3Bo8W3e8SKBatnIm2
 E+uKbd/JkUFTMEklfIg==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=694545de cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-fCe_xzhPpQA6hE3_okA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: qTSEM529CUBv6hnjLpaPkWRkwZI8V6as
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190104

On 12/11/25 9:45 AM, Harshal Dev wrote:
> The x1e80100 SoC has a True Random Number Generator, add the node with
> the correct compatible set.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 51576d9c935d..c17c02c347be 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3033,6 +3033,11 @@ usb_1_ss2_qmpphy_dp_in: endpoint {
>  			};
>  		};
>  
> +		rng: rng@10c3000 {
> +			compatible = "qcom,x1e80100-trng", "qcom,trng";
> +			reg = <0x0 0x10c3000 0x0 0x1000>;

Please add a leading zero to the address, so that it's padded to 8
hex digits, like all other nodes in this file

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

