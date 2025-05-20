Return-Path: <devicetree+bounces-178912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2A7ABE00A
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 18:09:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30A65172710
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7001726B946;
	Tue, 20 May 2025 16:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ls9reJSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA19326D4D5
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747757335; cv=none; b=PCIh1cfHlRB1+abCke5dUCWf1OsotD/ZIkwTcRUKCbYvDX6qyf8XTpplCpHCp4AcVWEbN494ue6t2lfrJCJbYKi5AwtFBJ0q7aLUnazBxnuJZuhl56YF1a3E/A9OuASXtIDiF8mSUZ+Ym5Osb3CKX4dGmkBncFp89EZK3u2/azQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747757335; c=relaxed/simple;
	bh=wYTaVwvNsbAu2UjkeaZU968DhSOzxXgvk2nExcpMZ7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DwXzGsdMywrex1ylPogFzaKHdhMxV+yAYK/u81Ug54Lw97hZlalJKcI/xMF0Jf68r7xxbrUhgvBJ3ZgGLYiQ3e06WMke8dMW4+lun6h2L7//elJT/kmHOY95oyZ5sLucKqfbpQe7nJypSglpWDoLZcBOfo+x1yAUTY3QWEFoB+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ls9reJSI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K7cIDf023174
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:08:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZNBYPSDwYBwcL0JlUFsjFsIcMrNE3FHeUbnIgo/55M0=; b=ls9reJSIc0Ps1nQY
	X6+XHEewVfzKWf+aglBFzyw+7OddUtb6MPYGZ9flKuW/4FvbRW02V8u19R6r7oqO
	s+c2ya58YrsNTzHsmpTuap/no0YT/so4QVwUlJjqj8GbPG5WfEgEh7yXwW+ML+MZ
	9koRM1/MAR4741n8D+iw1ltdbwrkwt83XfqfZwVVuVKDx617Akwebml1UmJaWfgj
	DyibvQ/L1ky+e0ckVYoilFG2OvHXWNQnRKnA0No2IwFzri8OuwpjZ5VO/W8CLPBC
	5iPZBMMtC2LHgz0Ng8IDIlrNEBwvvZ6t1v+VSnbDpGFq1mu0TIIiyCveJx32M9pV
	nll/5A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r29d4frm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:08:52 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8c0e8a5e3so8425876d6.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:08:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747757323; x=1748362123;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZNBYPSDwYBwcL0JlUFsjFsIcMrNE3FHeUbnIgo/55M0=;
        b=eybKJyfaY6AC0XpmRfwVASBcmBIGv4gF6hXOnSpwIT16KFO6zNYmd3ucBCyDi8hfbL
         ezYciDvs0gelWnNsrYk9V4HltQEw1DFMe5eq8WvkXGcSrqGvzMhUFEbAFHbcZvmCmGAC
         M6SiZ1tU6Q77oAa4GORSvXbvKWC3qvOgUzYpDa2MKNa4j+8v0cooEmmMDZb/+3SF4DTp
         5rs4cI5AzZ4dRCVzII+mSZ9AzsQcXx8oVlfr459TCZ0Wf+SvARMl7ST2cr8vmhirU7gF
         tMD2D34YpU1eWmc8BcEu0cuXZLz9LS3/+ZJdahprgfcmXb0y82Uc8BduNGaxd20Xcdca
         MOUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkdsiAtPGKKJ6BikBFYK1QUETbwlXA4yKf40oJT1S7HekmbT9tvmAx5Cc9IXM8PJtqaZAykvwhBkhT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi+/btTohAhM3J675lcWqdjWtshlF7F5zIv8J0+2ayU51lUAYN
	7j4TiW8CrXAU0CC7zLMOrP0K0tCNWesns5JmQ9So4XIMog9bcmcPzh3Wu3C7/43oW9uFgwQ+nFR
	4kzgcDQ4WsGDv+Lm3pPR2pNAcwDOvk9oT3FqANaujSYrFMWSvx1/sF0/TgI+3pHrU
X-Gm-Gg: ASbGncuzjQW7J4G/nBOXGG3bvC5kRhZmUb2ZUCyi8kdV+jUHdWfyl8f81n8kb287SwB
	j1FYqKNzksm21y3DAyWNfKaol+vHEJlxEEnlvg+K6NIC/zJ2CUybZXKNiyYq9j4Uuaudda5SHNZ
	G/RpR5ZmSMqTCw+xDMq2nn5Z0ofoEuHw3rep5ZiO6Oev/RAYt8evUHP6TulBDlZjkeNvMedCOvp
	UI6xzGhbM4XJIRija52ouzmbGqi2/Grb+mPY9/esQ+V+rVEAma3cpRnpsZ3pBaY1wZgPUG7p+Re
	N2Tx0+ziiGzIxol3iK7J6ey5AyOJwZUSJiBX8Nu0NsTRwDPg9SznZ6jiXKzbEDQ9LA==
X-Received: by 2002:a05:6214:48d:b0:6f8:af9c:b825 with SMTP id 6a1803df08f44-6f8b0881b2bmr101922406d6.3.1747757323166;
        Tue, 20 May 2025 09:08:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvxo25X0xwc+Sia4cHOSRvAs8I2RKXQTr31HG6wPXMbAy/2Bmn5DJMjpgKZAqen7UvAExheg==
X-Received: by 2002:a05:6214:48d:b0:6f8:af9c:b825 with SMTP id 6a1803df08f44-6f8b0881b2bmr101922106d6.3.1747757322446;
        Tue, 20 May 2025 09:08:42 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d437585sm740241366b.115.2025.05.20.09.08.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 09:08:41 -0700 (PDT)
Message-ID: <898a2204-f129-44d0-9f73-74370524112c@oss.qualcomm.com>
Date: Tue, 20 May 2025 18:08:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sa8775p: Add CCI definitions
To: Wenmeng Liu <quic_wenmliu@quicinc.com>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vikram Sharma <quic_vikramsa@quicinc.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-i2c@vger.kernel.org
References: <20250514-rb8_camera-v1-0-bf4a39e304e9@quicinc.com>
 <20250514-rb8_camera-v1-3-bf4a39e304e9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250514-rb8_camera-v1-3-bf4a39e304e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzMyBTYWx0ZWRfX5IDXI1iVK2/l
 fZbhyQLZh73/vkMY66k7mpE02fcHcWnFta7M1lvy2983PlMbs9jMyGgHddA2kd6YYfK4jAE5gsU
 JUpAhZPvuvxiLmkWCLIXTy8ukTEi54v4A9kS3CPlx938+8KAZCTEQwtURxT4UaxEB4euwrRq/wV
 f0/ACDq5jAvoppWsLdB4PmkXhHxg1gZBJfZ24Pr3HcdTW2Bpt4SoJ5TPrWklMYtThTxZNunDO7Y
 qBRahlPWYWSSgbupXATVL86SjymsrHbrljHEASMWuYNyNhD9LESgO3PoK7R1VwjMWET5ZgTux9G
 P08EYPEfVd9nKStRAY+zLrVg0ZvpKtVNO2TIf4IFmTSWs0/PgxBdjuskxb+g1W+4I+qgs3Eq0CG
 nBabHrgYqNyJf6A7i0PwzuztaVJFzoFHslFjHHmq1cYTFW9fAgFFfBFucl31JpXkgrRTkBla
X-Proofpoint-GUID: CozeiOkax3SnYzrJr9OEZHalaHBDiPUS
X-Authority-Analysis: v=2.4 cv=KLdaDEFo c=1 sm=1 tr=0 ts=682ca914 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=IC-rWu3oLdSMw__OBeYA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: CozeiOkax3SnYzrJr9OEZHalaHBDiPUS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 suspectscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200133

On 5/14/25 4:40 AM, Wenmeng Liu wrote:
> Qualcomm SA8775P SoC contains 4 Camera Control Interface controllers.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 268 ++++++++++++++++++++++++++++++++++
>  1 file changed, 268 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 9a8f60db87b1afdf16cf55eb2e95f83eb45803a5..a867694b15b307344b72041e972bae6e7543a98f 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3941,6 +3941,162 @@ videocc: clock-controller@abf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		cci0: cci@ac13000 {
> +			compatible = "qcom,sa8775p-cci", "qcom,msm8996-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;

put these two above status, please

> +
> +			reg = <0x0 0xac13000 0x0 0x1000>;

0x0ac13000 so that it's nicely paddded to 8 hex digits

> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK_SRC>;
Only CCI_0 and the SLOW_AHB clocks should be necessary

[...]

> +			cci0_0_default: cci0-0-default-state {
> +					pins = "gpio60", "gpio61";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-up = <2200>;

Please set your editor's tab width to 8 spaces

Konrad

