Return-Path: <devicetree+bounces-255425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D7DD22C57
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB9C73013547
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03600328251;
	Thu, 15 Jan 2026 07:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j76IMzSN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ahG1grMO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B905D3254AE
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461360; cv=none; b=NdM33O2pSJl50Bs1rgqKNPAscyRqQ+3RH+CfAnklgrcwgzl7GTLzdCrnhQNl9vE/U+TTKIzynotogb5zcGverVKGSN8sMxSeWK71cQSkUjhuWAEsB8WYN3cJO+XsIVjFSKv9nKzuOaoiS+XsJkfdwhxM5MrGW+Mx01dnapevLCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461360; c=relaxed/simple;
	bh=HJbybca+wr8o9lUuo1JWLswNiCcKQn2bcZDqcemjVpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YvZIW/Jm5xfe3S86X11i2COXH2Gs6/w2J4cX479Vtl96YgsMAt08hRf5n5wgeXeZztjvMSwVP45lweN5xVZ47mRz8pcf1pegJji93ZorJ6RA9kqO6TVc+iinfd0Tc0jAxbyFKFyMOAlVEuZNxxDwKyvVvu/0ioY2OfQ1JZOXhas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j76IMzSN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ahG1grMO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fmZp3419438
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:15:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U8drD34oan7dihf8y4tFhjeU
	iGioslwpR1YxYCHlkAU=; b=j76IMzSN2gaXHQG+qS3Q23/o3cr0A2/9Ry/YLnly
	+i2AKd40JIFJtTtEkxsfQNeVqvx889baY8/CdtV7UUSVOekOF19Dlg0lhTV/innU
	qF0r1LW8Jgz+oL8m/29544zpMBdyswtSeWErbiPwyLiD4U+atfhbIz+dE1qiE9KQ
	1JyNDdnKrJs5xkGV+cNeNFvktJkQNzLaxNveaKuwzvtCSM1aAXdfHnqL/acr4yiq
	0Q4xIm0gHp4NwmGoWRhrWLR/GpwxOYFQZXcksNfbZP8MAV1SF52LvmQK+gbvxGTL
	ddwxbszUym5uEIWjJfDDkL9Dr23idJGbBnS9DBfbZDOLsw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpjj89gr5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:15:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52f07fbd0so278331085a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768461358; x=1769066158; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U8drD34oan7dihf8y4tFhjeUiGioslwpR1YxYCHlkAU=;
        b=ahG1grMOD5Bv/Sfs9LtCvTIoMfQvCqnUPKbHsS+NVUqBxAq39W1oq2KswZPyBaa4BU
         FoaXgOsJEGQFcHjDgqMTr6+hAa0nr6X9b3Evt8qyRNPngZBmDwsmdM85HyiFqX1OvFni
         ZHy7h76+rX9sK05GT4M9pyFupUrMTWgpg4gCDenvFxI8mIhAwfGw0wP/CL4tooihDhQY
         wlxRa8iXYX9hk+e6ybYXVSnGQgQJHMdstE2h4w1COB8BhYsVLr032ZphUEhi/ANJ6yBr
         bI2YmO1JNSNznF4S+dlWOzFj62zmL1vMOiOM7vCad3bfhq1/bisXp3XSsTfp74k1IwVP
         5i/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768461358; x=1769066158;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U8drD34oan7dihf8y4tFhjeUiGioslwpR1YxYCHlkAU=;
        b=Wn64qzEKKGxOFjrt3PBgPVRsmODVam/uIxiv9JlmmeBcp/TgWJ2MMcYfXiN8qGJAIN
         L/7G9YRbkGqf8nT0HvsG50HuIduNgUNQz5Rib73NvctZSTLCBLq3rRExayJDWxSwR0zD
         dPiObd6DB2NoWiwG4A24aWAkqypTYLxgQyrWl35tk6EUt6CmQeS1JfXrUeN+t9ML2TdH
         /EI3WMuPMUbc6Mv5wYSWaOrA/nSHU/5W5tLjbB57HP7Zl8uwCSZR8qQrXqYWvjjbLuUk
         iKb9Uz9s1EUmssqg51f5yIL6gCskHO6NeTDXbBZy2P1nw2xfFuASpmG5/VNK4Kc0fXkH
         W+xA==
X-Forwarded-Encrypted: i=1; AJvYcCVylJabZ58CJTeE8NgfJfUR/GJLGPOZ1R61W9iV9rZ9hmgu3DJKuiQnVtRE/Rb1Ubvue7EeYfxWbr4Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp3KOUxfLfWPglbwhxS+0OPIuZKXsckPs1GB3jd9O4n7u5CxNv
	T5AFdVznU2a6o9FKxv47NBjscYG4EK4XgCBHZt0lpvWJtj+EA4R6Yhn3a6HL01befuzf32k7FJy
	kgS/vVm3O0SotR18ntR4a9hwMO8ufrQ5jnFOQuZi8dFPwzrb3H0Ph1ArP0/VaiYZG
X-Gm-Gg: AY/fxX5AH/Jw4P6ITzlcl816YKq7I9IuRpfvjPj38Rj5Vq83J+gniv0h+Mvf8jikG5d
	kVyoFi6devP2qBe/qwKlYlPnNRHmYBj1K8iUfwb0/58P4Ps8ascAfiyUWX+dOR98Z7etjEvoKT7
	hvtVGORlLw8cBVJW7gD8kiuJhem6ysDMyET2r70w0sGMDxQNYS8/0WgSzLqffPCofadA5Ekw3aE
	iU1Y09e+mbXHWnMPsQKmmFl2M3/6Uc1KDnM3GV4FilOAOrZxq2+w4HJEfGO+l1qNKLQDkzpPv+2
	Ca2wmgiyuBXvs+5fJEn8nI6dNbuEfraLSJGuzuwoupqmvfRtYMWmIb+zFTmSppcicLlDbooS0Yy
	8FAd7OVQyFQm/QhbPPiRQd6X5wTyZjvGUMLRHiUuCdVrEEGk3UobDBIS29S+oSMY5w9j7USxOA/
	g7ekdpfLlPa4l1h4oaR1Np814=
X-Received: by 2002:a05:620a:c55:b0:8c3:6f20:2ed2 with SMTP id af79cd13be357-8c52fc10ef8mr766537685a.84.1768461358061;
        Wed, 14 Jan 2026 23:15:58 -0800 (PST)
X-Received: by 2002:a05:620a:c55:b0:8c3:6f20:2ed2 with SMTP id af79cd13be357-8c52fc10ef8mr766534785a.84.1768461357524;
        Wed, 14 Jan 2026 23:15:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382ff00220esm51342661fa.24.2026.01.14.23.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:15:55 -0800 (PST)
Date: Thu, 15 Jan 2026 09:15:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Subject: Re: [PATCH v3 08/10] arm64: dts: qcom: kaanapali-mtp: Add audio
 support (WSA8845, WCD9395, DMIC)
Message-ID: <v5rprswnwedm2y7rjr3y2zfvhdh5qztvm4nnaeti2n6yqyj5yh@7wbyro7orb3q>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-8-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-knp-dts-misc-v3-8-a6cc9e45de93@oss.qualcomm.com>
X-Proofpoint-GUID: GLNE4enDBx3Ckw6JjmU_Ts_-9vrBXbRQ
X-Proofpoint-ORIG-GUID: GLNE4enDBx3Ckw6JjmU_Ts_-9vrBXbRQ
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=6968942f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=k45dlaRLeZTL36E3v-sA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0NyBTYWx0ZWRfX5biFqumaHbtB
 Yo+im92RULEaV8dlZt1NV7vxgI/7tjMhrC0Sf+YpNj+nntxsXF+RpaIj7ybB+BHqToPA+2gaUvG
 6hru0hRtx+hbc+GzRAiOkCwzmrbcBmxWJi8qce0C9qL2aLVItYm7mff98OMJKzhXL93QcaiXfzN
 IW6yBt1aN0HjyJEr/ia79ER0agCjmYcIdjJjpKN3Yc1c64pedp4uJxhvTfV+LLW636joQ8y+jOT
 2l/A+S719I90vDK3HxICSnjWErLl58eDVHjuZM5qiCrnhgL4zlyhV5r+J3Bw1UlAWO1hY5Uupj7
 O3rGdK6MXB8hPR8I9b84jyzipfSbl7KjGAHeVKBRsT241rEoeYvQ0e9npyc+prxMYnMyWo9yEkN
 XR7uieZqn3yDjzMEeKmwUvaAh7qrDxaQ+4UklqEKFWo69X6P+EpvUAhxKkIz8gDi6U4XNPGzD1r
 W0cCsxuzP5yD3nALHkQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150047

On Wed, Jan 14, 2026 at 10:49:10PM -0800, Jingyi Wang wrote:
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> 
> Add support for audio on the Kaanapali MTP platform by introducing device
> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
> microphone for capture, and sound card routing. The WCD9395 codec is add
> to supply MIC-BIAS, for enabling onboard microphone capture.
> 
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
>  1 file changed, 226 insertions(+)
> @@ -684,6 +793,14 @@ &pcie_port0 {
>  	reset-gpios = <&tlmm 102 GPIO_ACTIVE_LOW>;
>  };
>  
> +&lpass_vamacro {

It is a strange alphabet, where 'p' comes before 'l'.

> +	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
> +	pinctrl-names = "default";
> +
> +	vdd-micb-supply = <&vreg_l10b_1p8>;
> +	qcom,dmic-sample-rate = <4800000>;
> +};
> +
>  &remoteproc_adsp {
>  	firmware-name = "qcom/kaanapali/adsp.mbn",
>  			"qcom/kaanapali/adsp_dtb.mbn";

-- 
With best wishes
Dmitry

