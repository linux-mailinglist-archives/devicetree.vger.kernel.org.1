Return-Path: <devicetree+bounces-194200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E16DAFD495
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 19:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75EE83B9B17
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 17:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD322E6118;
	Tue,  8 Jul 2025 17:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aAFhtQBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B561548C
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 17:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751994092; cv=none; b=akydWNB0ZXWlspQTuHMIWGUwtxEBTGWibknkMNKzVwPjfGlSk2qrSgQLubIzcm8cQNWkJ46fQZqJ2qa229EkKjwiMlQUCRPTLPmqz/Y9+0Ax1sKE/4wt+ZrHnlDnFy5bvb53J6fTH1I7LSiC6vb7SpROHeLobQcYMxFyy38os5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751994092; c=relaxed/simple;
	bh=BqGM5a+qikZv6YmiHyixJJYfugYzxCcrLmI9hiVzEV0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cKlIuFzvCBxWapyswd8aKqecre7nBH+qUO6IaOChBViHo+poccjjNRNM+u/Nd8n6EmSvn5Ld7KtO8gK2qeciGgQt4B8aavbV1byyt08lGGMYTMVO37N80/ZbBJn63w6Uo917CwlqESITc9kiN9RgxJA+WdgS0xg3ACVyUF4XhIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aAFhtQBD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAElA032693
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 17:01:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9HVP8PLVIqdMkjmRam85PKtQy8lGLeiTlplREZoT/Ww=; b=aAFhtQBDKUUcfX2a
	/vYCH7QPM7P3AEvgGOIRifYHnqWzwbHbUCDCsYi9gOXkc6uLlokrV2nBx8jVPKRI
	6Ge6MRoJzG3KXr54OedZeD2uyenR9fa7aw9u7EJfH35v9Qk1riJEO+FK17+yiUCH
	ZilC79JMnbMcXixLaLY9z8/Rk0Ijz9QV81zFZQ3m4bu4qHQ75LuXwbV5az7KgZAg
	7hgfoAmMLq6uI1sV7x/IjKyMVwJXS1UmtklJElLLaAKsNSyDkxlMC6NluJWOJTrC
	gZVIUts0JWShuoDA5xYfYdZDtoQH+a83Hz+Ed0YWhSnAf2yxzFTkvgu8XG4IBTSk
	m/uiGw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psrkqxfb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 17:01:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09b74dc4bso47935385a.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 10:01:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751994089; x=1752598889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9HVP8PLVIqdMkjmRam85PKtQy8lGLeiTlplREZoT/Ww=;
        b=hHstpEQLFdS3U15ZG2OfergJ3TooqMSFSsIx8cYk7e44N0m3m42EXuZtdGkzK11n5L
         aP5b2HzL1MLlHnGmkyf72Zu1gyhMLrH4yL4YwmkHHQ9MndTKxyEGecLpUGiPBGIEEcA7
         zhdJPq5jLWUmkC1DgIlGJVlLxg0JrjsDDjWe4Cf3Ho3UpkHwV6oOyhlQS8BnxOHb7nwP
         H2iSKm2o5ut3eoJZhcntXadoGiiVnbmIdCK/7tTzs3aTeW2lFDtS8nuBB/+LExNuG2ze
         /yD77nWbRE1NKbOmqYxgBvlbx51T5TDjU2iiwCVsvPYP9odBfQUZyC8X48TbwVGa0s1l
         w4Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVs2ko1cwGkG6j0ZyZtaiViJG3JSEXJxNZuneqGrNVFbTTvTRfjqb7WIsAwW/B82PnNRCqBTSOQCkVW@vger.kernel.org
X-Gm-Message-State: AOJu0YwIohzfxeAurgz3T2IK2vZ/NwAcCsYOIMbmzy0MYS+ZvcM0Lmys
	72hniSkzEN6EfLXdYFIm3WZkwBzB5Iq+T5UFafjJtVBqFSQxowNIkQa2kfQJtS+EE93FZFlGZo+
	0YNIJczgxqllQen/1FYoQSX6JXY73k1gNwAXdv2p2q3fOsoVIro5e433zzTfwDNET
X-Gm-Gg: ASbGncvEYK96O3UMok/escKMV0JRFEQziQgEYqbY8XvWZxGVYI+AXDluxhkJVdanby9
	P7Aem9jowblAXkQwawVjI46F1F3sDxCZfrIStpV8QDpvVxz2rQP4l0QnXm7nR5I4KADhbaULaIl
	GdnvpkDJMslGo+FQz2vES2E6uipprSGSdbN0a/AzdfVnJDUs5GWvOhjaeLRXKoanD4udKhrk7Zx
	SFdT76aGh8v18AaFDJHTQ0JLxZ37vAtgouBy8qazll2yAp/LlDJxs9dABmcsUslmldz4qxXOYS2
	Rq2W/fdZ33rTlwhvAlJMXeZgDqVFuyZhfxPn9e+azORHYwrtsD0RQOApvP5UMIafFj65Uj9tYwL
	VHzQ=
X-Received: by 2002:a05:620a:2606:b0:7d3:c69e:e3b with SMTP id af79cd13be357-7d5ddc9c00fmr724140685a.12.1751994088975;
        Tue, 08 Jul 2025 10:01:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGm8VaEIcGVpLYIC9btd5VdZrEByDUcJ1j1cqq4zNRG2aWqvXrcL2ih+rvzNvPZChhbhkCHjA==
X-Received: by 2002:a05:620a:2606:b0:7d3:c69e:e3b with SMTP id af79cd13be357-7d5ddc9c00fmr724137285a.12.1751994088291;
        Tue, 08 Jul 2025 10:01:28 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fcb1fa9b8sm7404785a12.54.2025.07.08.10.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 10:01:27 -0700 (PDT)
Message-ID: <548ce30c-941e-4ddd-9391-2bb5609e26a3@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 19:01:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: x1e80100: Add videocc
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
 <20250701-x1e-videocc-v1-6-785d393be502@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250701-x1e-videocc-v1-6-785d393be502@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qGl9YU8y-RjnfOnftjnF3SqML_20oVro
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE0NCBTYWx0ZWRfX8CFzqS7iULjh
 4KP9mSoapdm9fY9JbYkblOMeJRvmW/AfSD6MWJMmnd0DIdfky7193G+HH42GjqD2Pc8oK2ALWLb
 Gy1eTneckz6/NOa55uGtjtFKCExA90iFxRPEFJG4Fju+lNWYVxDWubojxZnfDkbLaqoyK8bMInn
 fjgxsjh1WvX+Qfq63LqEo0EfNzEWKGlJXQaXu5qqGD9wgJN5LTPIK7zKH7fTpYMbQWshwFqhhX4
 uHziRyNpLeKM0lSnA1dKC/UxgSxCr3ATo+dIhf60laxk+LdJgwIij2DYiWIyA6jfPjKGdNIYvNS
 FOPMg+VXiv5TBETHs1uMcxuT6BDqJuR9n8NiMwX4s+W7u2TOth3LodT/Y3isP6XgiYVMMBZCJ/N
 1UNhVgoseTC0+J7GkonajhG6JSQLgn0VfI2TaRZ5FAKnNdzR3KwAPP2Qk0OlSodwXiBLs9KN
X-Proofpoint-GUID: qGl9YU8y-RjnfOnftjnF3SqML_20oVro
X-Authority-Analysis: v=2.4 cv=GtBC+l1C c=1 sm=1 tr=0 ts=686d4eea cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=GeF6aowdgphGmeW15skA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_04,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 spamscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080144

On 7/1/25 7:28 PM, Stephan Gerhold wrote:
> Add the video clock controller for X1E80100, similar to sm8550.dtsi. It
> provides the needed clocks/power domains for the iris video codec.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index a9a7bb676c6f8ac48a2e443d28efdc8c9b5e52c0..890eaaa40184a18bff54f2d750968112a2546d19 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
> +#include <dt-bindings/clock/qcom,sm8450-videocc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
> @@ -5171,6 +5172,20 @@ usb_1_ss1_dwc3_ss: endpoint {
>  			};
>  		};
>  
> +		videocc: clock-controller@aaf0000 {
> +			compatible = "qcom,x1e80100-videocc";
> +			reg = <0 0x0aaf0000 0 0x10000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_QMIP_VIDEO_VCODEC_AHB_CLK>;

This should be GCC_VIDEO_AHB_CLK, you can refer to it even if
we don't expose it through the clk framework on Linux (it's
enabled through magic writes instead)

Konrad

