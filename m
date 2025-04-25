Return-Path: <devicetree+bounces-170743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBDBA9C385
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 819177B255C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6D3237186;
	Fri, 25 Apr 2025 09:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hQ8XlJ6d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7382367B4
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745573455; cv=none; b=B/F0KzrBK07gjGS/ZjxddDH1O/UtTjvlM/vb8zY7N58W9WjVh4TKG8eV/OGYfPfdpdoijj4srDR8EkQgMrWKzLNB6PYLjtrYEnVTQDfgnerhNWC5vqEUNTkUQY4LRkyX6KgpCWe7baXmlMmeYdDMddIooED/y48PyFMHle0LuDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745573455; c=relaxed/simple;
	bh=3FVyvo4rQEASBdeLs2jUpPzQ3T7QZ+fT6TGxQJmNZow=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LFrW4rVTlMhufGe+2OYCSU3e7qzLKU6ISo0Deto5KeCR1ELMArgq5Pw6bhjS+8ZULkohDAJ1EHcgq8pP7ojN0lx3oU/+fuwhXlaPEQRNv8BQ9gqUMsCrNGivEvLGKQzxqvyp99BImt6Eb4XUyRyrHRcNk0Ai4wozA/BHe7P/RXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hQ8XlJ6d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T7LP030821
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:30:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UmHsSpCNcapdB0caM5YixdmlQ/ZNsk9RfZS1cEFj9A4=; b=hQ8XlJ6dQpBZZLKY
	tFGFz5oJhH5WwjYnRzEgkAZtyeEdZ1LVCygSThs+GzGjt53ZB+n2HiOiVKlw9eYd
	qZHg9ASFeIWMzkB8LBqRdq8bXvT0kDEti3Zz3ja3zMvZWDVc8g8gM4Q0LerIbRLF
	OY5Q5kyCD7iKRhswS+zZrwn+ju5hT3wggrXbJNCioOmLyln/H26ExIy669r/zEGf
	IaPFXD0HM8ZDT/TziFjjyjA9gP/zmh68XTlryWxgSvzlhiZp9PfAk3DjWqssdbby
	5BDc55AtqtzvC0jR6KhItyG8bVXPddzUYOR4mX7DhpFJIHugbZ/Ay/i8XuAtiB61
	fUbBRw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5ggvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:30:52 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47aeab7b918so4718341cf.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:30:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745573442; x=1746178242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmHsSpCNcapdB0caM5YixdmlQ/ZNsk9RfZS1cEFj9A4=;
        b=mbeE/8bCsU9RQX0zps11SES0/bM+2OpsCxwytx0tmqTF4rI0RSIuRE6LDNhM7BNz38
         qT0EI7A8vNM0U/K5eXzjoh8gQSPdhVG+5jYNvwfxciu9o40+R6Qgb3GzSf9kGPtCIsig
         7WPkKgY7nL4otdMRxOIC3ehKVM1QQy8gJ1VcRT10Dr+0Gb1SPs+T3NdXCUaardk+5Q36
         UfTZO+zaQI9HpvfgsOCojGsAQ6v0feFGRe417G2l2i5wSoUnj/mu6hpQ2unvAT2ljvnA
         QI9pTf8iia+6Dzcd9+P2q2Yi534Q67jsqatf9q9Q3c5NL9F2SPk+ZCSDRaa8kIppNQKL
         Mrsw==
X-Forwarded-Encrypted: i=1; AJvYcCXKuwVpPNYJ8ckTYcyYbbBVS7z6dCK06r4WVg9TopzX/l/5Yka+JUCVPG7m/GFAy7B1FGukDlzRtIdy@vger.kernel.org
X-Gm-Message-State: AOJu0YwZssHqgyHHeJd8lTPQPtmPNLqRh+0pJ7TjxqS2AtfYNhLfLc5q
	Jw9ZIZaY4QmWgytORW+Bmcdz3y6se1F4h0pCLnU/wAyk44QIQljPb78ONorgD2dysDKHP9IXVRW
	DQeMd0xmK4fb3HI/5NiszSu69u+DbSzz8oWK8+0X18D/vBSpT1HY3uHvWBpo5
X-Gm-Gg: ASbGncsSB3UcP0RBXw10qA6LbV1gtWZjLea2sbi+eOr0xoBZmKVhhvA5RXAug0K+qOx
	r5XJfKMgTkeIYB8f7wOAH/N/wryUy9cQN8j1F0a86SzxxhwN3lp+TY30LqCopq+qDl2nrWSEq3L
	GJrprxYi9RzUeYH3gIZL5LnV36M+QEIbRlDdOMUJjJv+4D++YWUbWH3V3PhC7SCabtq0/neFvVH
	6eKA/dbt39MIEkAR1Sk1tJGxP+haDOviytg1lvWrNXd4abKJBW303bEjAz3EXyf1asQXsmguI4i
	QwHCwJvSTk2BwCoWamnFHmsPtZ73ChF55LkNCc7ZZ7Q6dvQ/kkUSGGuJpU71uSR8
X-Received: by 2002:a05:620a:408c:b0:7c5:ba85:c66 with SMTP id af79cd13be357-7c9606a5a7emr105132085a.2.1745573442525;
        Fri, 25 Apr 2025 02:30:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDRyY4PM8jzTjzoC1dvp3QYYo4+2XjnvPPlpbIBlFWpeQUEACI8O0HFOiJIeU/wAirNuAVkw==
X-Received: by 2002:a05:620a:408c:b0:7c5:ba85:c66 with SMTP id af79cd13be357-7c9606a5a7emr105129085a.2.1745573442069;
        Fri, 25 Apr 2025 02:30:42 -0700 (PDT)
Received: from [192.168.65.5] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e69b8sm105678766b.41.2025.04.25.02.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 02:30:41 -0700 (PDT)
Message-ID: <dd271e8c-e430-4e6d-88ca-95eabe61ce94@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 11:30:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8750-mtp: Add sound (speakers,
 headset codec, dmics)
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org>
 <20250424-sm8750-audio-part-2-v1-2-50133a0ec35f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424-sm8750-audio-part-2-v1-2-50133a0ec35f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA2OSBTYWx0ZWRfX1zNLdP/MlgO8 nHnSXgllubI784KRlLys7JWdipcrf3bAFzOPh/rcvyKsuJhNpqXKYupGt5Z4Wvvxk4BRapJa8Su 2FkAP3s3WTwIDja0j3ECOGU07Vzw+q9i3Pd6ys2CdGnaF9YpEEBkS0Pwy4chO5s/Nk62l9xeu+7
 h0tXno0KWJWaC+gSxP7pI7C7ZcRsyLfH9j+ICPoYeaXx0v0NpFJRztCsIMeQzg11AmQDu2hoQPs SSvu3AzwRTSv8H+jDBlZNFcUc4OYtOG17pNV8Z429979uSIpjAl7JhLM8a6nc/lBoXseo8/MBek rS6dVly1XXWt5lhh6I8MAUFV/VdbivqHSZ1pvjQ5rtHHciYgvM0fM+myl3hLF+/InAnqPM3mMqm
 XRd9XjsTJ5yNRvyT5pYxzoK9caTODLlgyCg5mGnAYrlfmu7eLkpq1CGDLTHXWQN9OvTdylDo
X-Proofpoint-GUID: _WKDpOOHYv2V4MphsX9ACZdA_r1KRkDg
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=680b564c cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=BFmnnolzGEVUYXV1o_QA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: _WKDpOOHYv2V4MphsX9ACZdA_r1KRkDg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250069

On 4/24/25 11:40 AM, Krzysztof Kozlowski wrote:
> Add device nodes for most of the sound support - WSA883x smart speakers,
> WCD9395 audio codec (headset) and sound card - which allows sound
> playback via speakers and recording via DMIC microphones.  Changes bring
> necessary foundation for headset playback/recording via USB, but that
> part is not yet ready.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

[...]

> +	sound {
> +		compatible = "qcom,sm8750-sndcard", "qcom,sm8450-sndcard";
> +		model = "SM8750-MTP";
> +		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
> +				"SpkrRight IN", "WSA_SPK2 OUT",
> +				"IN1_HPHL", "HPHL_OUT",
> +				"IN2_HPHR", "HPHR_OUT",
> +				"AMIC2", "MIC BIAS2",
> +				"VA DMIC0", "MIC BIAS3", /* MIC4 on schematics */
> +				"VA DMIC1", "MIC BIAS3", /* MIC1 on schematics */

Is this a mistake in what the codec driver exposes, or just a fumble
in numbering $somewhere?

> +				"VA DMIC2", "MIC BIAS1",
> +				"VA DMIC3", "MIC BIAS1",
> +				"VA DMIC0", "VA MIC BIAS3",
> +				"VA DMIC1", "VA MIC BIAS3",
> +				"VA DMIC2", "VA MIC BIAS1",
> +				"VA DMIC3", "VA MIC BIAS1",
> +				"TX SWR_INPUT1", "ADC2_OUTPUT";
> +
> +		wcd-playback-dai-link {
> +			link-name = "WCD Playback";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +			};
> +
> +			codec {

'co'dec < 'cp'u

[...]

> +		/*
> +		 * WCD9395 RX Port 1 (HPH_L/R)      <=> SWR1 Port 1 (HPH_L/R)
> +		 * WCD9395 RX Port 2 (CLSH)         <=> SWR1 Port 2 (CLSH)
> +		 * WCD9395 RX Port 3 (COMP_L/R)     <=> SWR1 Port 3 (COMP_L/R)
> +		 * WCD9395 RX Port 4 (LO)           <=> SWR1 Port 4 (LO)
> +		 * WCD9395 RX Port 5 (DSD_L/R)      <=> SWR1 Port 5 (DSD_L/R)
> +		 * WCD9395 RX Port 6 (HIFI_PCM_L/R) <=> SWR1 Port 9 (HIFI_PCM_L/R)
> +		 */
> +		qcom,rx-port-mapping = <1 2 3 4 5 9>;

Does this deserve some dt-bindings constants?

Konrad

