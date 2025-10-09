Return-Path: <devicetree+bounces-224949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6631BBC9248
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 244623C7422
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F88F2E62BF;
	Thu,  9 Oct 2025 12:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SLRg7YqF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8C72E62B5
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760014502; cv=none; b=rrbKRWaLbIu3F6rigboy5ZUW9KbxuyqjrxxO5S+JezAmOgjrqmyf8UC5ygHijH5jKmIToC1S5CEfrMevfn232A2Ll8qBPCNLQJjnPQpOih/gJ7+Ye1ceXlLaulwe4cjcoB4Xq4pPRsF8GzqDSL07JYbFWV2R+Rw+X9piMyTlp3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760014502; c=relaxed/simple;
	bh=L48gd4bUY0iY0RmLNqg8Qnr65EJUPqeXnSrEl3McFgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tbBybiPkc+w52Grvk3V+aKhOziTZsU3/R6UBwlrI97Y3GMg0/TAWWGqx8vQyxIBm/FDs5kKxbCg1Cvo2PY+4X3gQ+ybb9nJ0c/MjxnfRbugaKTj7sw0uGhugQBWnxb8zpfY76HhutXukPKlJ3FAWu/zy5Napi9+hxutokM/NJUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SLRg7YqF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EwQQ012775
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 12:54:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4x8fFSQ8NWhJBwrNV1vx5VXfQmCnGeigKLq2KnoY1LU=; b=SLRg7YqFiIrQ1lPE
	HxPLUZq3yZZj8Q5DeiJi5m6x4PXLMRRhEwrZcCpl3ttbOdGECbfQMJBE5QE3VsxA
	iCKo8lcK/4cCCC3y4P8yBOC3F5VE7F+IIjWaJhGMAH5jv/QPyiXaAerm6HXkVuh1
	51leb8oUthYCfIVHO+Ez6G5i1qwMotkesJOZ/kHyJ0RAZ0h6dirMFKBIetPLCzQj
	yqbwqUsDpgGf8i5CE9/wRO/5ozxn6IYAHlSnhRLr1kd8WEutwtv0LeJWFpZRV6Yx
	Ca1dQOsm9kB90uHfgq0OjPp0mOQCy2d9EoHtYft5SprMcN8iYvJ04CAkOy8vdOlv
	JkRBcw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kjuk9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 12:54:58 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4dd729008d7so3501351cf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:54:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760014497; x=1760619297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4x8fFSQ8NWhJBwrNV1vx5VXfQmCnGeigKLq2KnoY1LU=;
        b=WuZsTtPyLSdaLLb30kE/p+MXpnMFu6gS/9uDjZclB35UFpKwKRyHljeCjpvqUMw4qg
         /2y9qNVWZpJzUS1HWUq6eSydbQLOn74I1tTFfmiECu/xGYHc9YdUEtSqO44uxy8Zig9g
         SjX5mPyz15r7zZvsCgb87LDtQ+YaW65TZPGIm1nLlKSHDDPvcj3kKLfLT/1+eJlILXax
         JP5yHBgswjkql7mc1X0nDqZQ781JJ4yhC4eJq8QIPYfkrpkxmSLYXI2WAGluluU0Al8C
         fc9F8lqkmk6LbUGyASH6FDmQ/2+W9GLN1W1pZGADFk9/tSh+ObWmrATYuJUKmnW3N73e
         CqXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHWaAw1hPa9sGLQp20Bw4CBlUjIaKMDrdBkCZ80acY3owZmT1/IwOn5DiqcLiAJg+n7SLTb+Odo2/T@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2PpBstnAFAwxigr1xAKeERGL2+VGmiRf+7ChyTuc+NLT+Bf6Y
	jPk+uNTQABzRc8BbZ+1Z6HCwXTpCSgjhT92FoY/SdNWcjCZR8TFusrnpczL7SeId0IqppeUL9aY
	1f5sd9OHKUJ5UsujcIR2Q+c18Nj+qXRJXBpNxdoXFh0FaDY8p1AEDJPDIK5/cQTsf
X-Gm-Gg: ASbGncvShOXLHkSF+oqFvjeS42GziC8vhUabnmXayRjmeCOpwSwpdzExG+7NEsGEh+J
	MBTXI2MQrnwobwydHPJmzEeMhgqiGRzgKAfYQPIzXyrfiRvt1sk2ik0Ghe8z3oAq8LE2RiYqyky
	pz8yLOyofwpAu0XP/uN/9E0vQHjtmgTkOTGAQUeyfpUyOELpOoMwlRP8eGVzvy6CYVh9JnlBWTd
	6IYxlCeX23uikpM6rg1XqIM+Wozb+0/uTwdp22jC8bw4Flz97ohbDpap+3pxopsyODalHTQXVbb
	EEVtXmSLqiYFPv8R/TDH2Z7oCqNv1vUaL6nRqKJ6KDl0UuZneAoE0qUUVukXuQhr/zCVdBi+BdL
	NOylitL0lNhtxHxwmK702dxGV0t0=
X-Received: by 2002:a05:622a:4586:b0:4e7:462:76fb with SMTP id d75a77b69052e-4e7046278bbmr3443481cf.4.1760014496719;
        Thu, 09 Oct 2025 05:54:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEX5/sWgll0CtsSoWnbnw8OuK/4gzjMQpFI0vobMt8d6Sm2EXkMS+OFvldQCCANHXNk1w5jSA==
X-Received: by 2002:a05:622a:4586:b0:4e7:462:76fb with SMTP id d75a77b69052e-4e7046278bbmr3443201cf.4.1760014496195;
        Thu, 09 Oct 2025 05:54:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1926375966b.2.2025.10.09.05.54.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 05:54:55 -0700 (PDT)
Message-ID: <6b9ae65c-08f0-4b13-94cb-b899764bfc8c@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 14:54:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] arm64: dts: qcom: sdm845-oneplus: Describe TE gpio
To: david@ixit.cz, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding
 <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-4-21eca1d5c289@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008-s6e3fc2x01-v2-4-21eca1d5c289@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e7b0a2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=qaMgwUmbLaqo04ox7REA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 0FH22KKz1fGOCtMDACtHk3FTIbcrIBaF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXyZZX6utTD2Jd
 t38JjYJNDppbHjLnwo8PFqq48HAAhr0YR+9Sv2B7cl9MpuF8IgbmPfn2nf/AWgMHvoaKOm60zC1
 XZVvX6B7ztv95yRk+pnLRHCE30uaB2Mmour89SX8nHQH9tZ22/IHYkdvhKxfB1AfdudUXYqqm7G
 WnFyMBss9+6jxG3wXs/6w5X5QdAKycNLv/rzftHRlbw08dVvmQ/o28uOyWc1ro05eiEHcOT6To7
 Li1A4S2MM7kgYy3Ifca9ngbpW7KMz1MUKkyWN8mEm1+a/D0Srcr01+oEi85WZjsYMudukjWL6p9
 YG2W16R5A6tE26uaHB7i1SpvO9jbO4pxvDW4m/Vg3GY1NL1mtZ4tCfl4+/PVu07XE1yGmDHlbpa
 zZadNyETvEPr8bzljZkRbXKg6UVfdQ==
X-Proofpoint-ORIG-GUID: 0FH22KKz1fGOCtMDACtHk3FTIbcrIBaF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/8/25 4:05 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Describe panel Tearing Effect (TE) GPIO line.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> index 1cf03047dd7ae..75989b377f8bc 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> @@ -460,6 +460,7 @@ display_panel: panel@0 {
>  		vci-supply = <&panel_vci_3v3>;
>  		poc-supply = <&panel_vddi_poc_1p8>;
>  
> +		te-gpios = <&tlmm 30 GPIO_ACTIVE_HIGH>;

Wait, I just noticed nothing consumes this..

Konrad

