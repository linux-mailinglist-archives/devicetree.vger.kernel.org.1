Return-Path: <devicetree+bounces-156475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 05852A5BDA4
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 11:20:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F10267A9744
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 10:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04ADA233722;
	Tue, 11 Mar 2025 10:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TunRKVYG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC6622577E
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741688406; cv=none; b=Ef2Zw/D1n3mASWnzuSMfKFcvAPfU4O7YHSc3R0Wc5RxAL4dWjtyJwBRMxSFn7Usb54tq66U8HD2OHTtRRW2bjc5Up8g6tykrT4yMDtz1Zyv1P3X48EJhWNyGTpF16e0rhy35g3Qa4tvZeoTi4lWoxuplL0/BIpDzLcis+l0GHdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741688406; c=relaxed/simple;
	bh=/LhwAatIrYhSKz3Hn3nUzj4oY/T6QI4BOBJtK2+GS6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mud8LRVVJ71ify5/qu9iFx9modZT08qZGvTO1qXa+SAVs1LYnRPr/TqbP13cgPb2sX9ZzvD4BoYi+HC4lbG/aJBxnVXsnIRGFPk3Fsg05cVq2pjtn7Wo3w9cqkGQH3IvyoYfwUUHr3heWzInFK9dj0vs/fNg/tNZSskpoEg7EDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TunRKVYG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52B7oXMZ009966
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:20:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hvpU8cNRRyE3NYbYhBrTn7HxH5bd5zCkr2AnBxiZ2/E=; b=TunRKVYG8BYyiIAq
	J+t+DI4eSfSh3xb37pDaolOhuEA5qHtJQYdb+sDY4Dganr3yXUIxyPpFoVNureok
	kTV7mEwuRzqR6+xI55extt2pZ7m1L0lUEnP0RYnt+UR9eRr4yND4rucc4mbUkLGA
	Lnm6B2gr6Bv9h9Ia/0gtnYWpkXbeXssNcCEqQP3kbU6/YJm0BYGO+wT0/kgNck91
	jpyZAxKDa+AF0XGjll36u9c1Zm12xSwHRZVZ9TClwI7XlDk+C6FcgCniZib3BCFq
	Q4Bd1CzjTJcQgC8TFd2b5Pu19c6ODX2uZoqWwH2qjCQmXrIIG7eiiE/gyAyoD8Fa
	jFe99Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ah4s0e4a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:20:04 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e4546f8c47so16391666d6.0
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 03:20:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741688403; x=1742293203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hvpU8cNRRyE3NYbYhBrTn7HxH5bd5zCkr2AnBxiZ2/E=;
        b=Xc80Ea9INWkSVOi9+yASBKza/EHveEHT7MezSoRHoy9oZChLwMj2z6jRJjtIlUM07f
         nb/9XLcSHBfDdVZN9Ee6V8IFJhZcLzTPBVeydy/RbYd5GTlDhROsCEgVmA8dv2gT5eb6
         ZZ07+W+XKRTnJj8tj0lX/Pqva9uyerJrFLoHjJSv63qSU0CIzJ4jo5KT12qQAcNraw8f
         nCaHBxG6yLQiRD+eYmWmeIsZUmiIHnqsCBAsA3TDqGdk3oosBzajPDCHZ5wxFuWWUwap
         jnVVkXQ0pGJ89684u3+Qy/r6V6Sr8JrE1kat4D20bvrJhcTP/0fZdKvBziS8wyqjHqo/
         SZbg==
X-Forwarded-Encrypted: i=1; AJvYcCVbLFfRr4uxgHRjxESJk9100NRzedr//sTWL5/RHvhHyBTgM2u7c2xf07/RX5HNLfaTtrSzksoNcDdW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh6XD/G6JL3vwXypk9reBRQ16v11XTQ+plpqanfpr77rnFtsw3
	vsiGQt4EkywE/sAxLyoA3vHbMxLV6D/BX/6t/SmVWEjWgO09CEu72tRIg32PNTmoq+KrOfmiGQ/
	NGmR3nKSgIBF7JH224xKGcqlJJHQvf/wZjWZAc9nQrg6rVgOpo380i05HCsw5
X-Gm-Gg: ASbGnctHtnum1GavuKKWzv37wkJD3BThbKV//Wg0ZByplPRdy1yZN62Pxi1DrvO3kPx
	bFpOjBEdA3Zx2PVdlf0Lls2gGzoRMgup6uOxHrWR15TrGuTw/bUWIQAbd+s4oelWpiVWtt2MeAV
	XQTo0pm4f0xPCuwk9GVGgWSlZa6FEG4ODMrVRCAsMrXeb44LGSfRKOZbEsMp0X9TrKX7TgWoXAP
	XjP/Bl+3qlcXIl7Fu9higsSrL/Oa3bD5pFonURfgRqdjdECEwdE9F/z0InUHIeoPC8g5B7RtV4T
	TZWgbfKtzt+XwBEvJ4bnov682QzdbSfWjr/T2qP4dy7w61j39Y9bCHrptSH+MfxdzrDnuA==
X-Received: by 2002:a05:620a:458e:b0:7c3:dd4c:df72 with SMTP id af79cd13be357-7c53e1d8a09mr587920485a.12.1741688403394;
        Tue, 11 Mar 2025 03:20:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHW14GWzzafpI/ZRpdjigJAXfL/a9aWGOu+pEKCihxcSDZYjxrGZ1Np3hPVMmw+svw9Ztt3wQ==
X-Received: by 2002:a05:620a:458e:b0:7c3:dd4c:df72 with SMTP id af79cd13be357-7c53e1d8a09mr587919785a.12.1741688403073;
        Tue, 11 Mar 2025 03:20:03 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c768f995sm8055087a12.73.2025.03.11.03.20.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 03:20:02 -0700 (PDT)
Message-ID: <69680418-5a34-4b6b-966f-bb22f0ca53aa@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 11:20:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm8750: Add LLCC node
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250304-sm8750_llcc_master-v2-0-ae4e1949546e@quicinc.com>
 <20250304-sm8750_llcc_master-v2-4-ae4e1949546e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_llcc_master-v2-4-ae4e1949546e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YYVH5xRf c=1 sm=1 tr=0 ts=67d00e54 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=oA5OGs6Rxt_rxKO5FVQA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: RaMyH8FyDxmE0hV8WamlqmlBgQ2ckl4E
X-Proofpoint-ORIG-GUID: RaMyH8FyDxmE0hV8WamlqmlBgQ2ckl4E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 mlxlogscore=957 bulkscore=0 lowpriorityscore=0 impostorscore=0
 suspectscore=0 phishscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503110069

On 3/4/25 11:24 PM, Melody Olvera wrote:
> Add LLCC node for SM8750 SoC.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..a3f9595c496f6f6fcdf430d44fdd465dda4bd39e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -2888,6 +2888,24 @@ gem_noc: interconnect@24100000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		system-cache-controller@24800000 {
> +			compatible = "qcom,sm8750-llcc";
> +			reg = <0x0 0x24800000 0x0 0x200000>,
> +				  <0x0 0x25800000 0x0 0x200000>,
> +				  <0x0 0x24c00000 0x0 0x200000>,
> +				  <0x0 0x25c00000 0x0 0x200000>,
> +				  <0x0 0x26800000 0x0 0x200000>,
> +				  <0x0 0x26c00000 0x0 0x200000>;

Please align the <-s and "s, the data looks good

Konrad

