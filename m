Return-Path: <devicetree+bounces-185946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1938AD9F01
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 20:32:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6B631898A63
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 18:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191CE2C1786;
	Sat, 14 Jun 2025 18:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BNhFgEV1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923251DB958
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749925938; cv=none; b=b4sOr/uGDyh38oeL8rwtL03jCo82ilNi4oByJjvFYsqHDv0uCFpz1u+2o/go1VezFjLseLOAegZC+aiFwe8h74xRgWBfEqN9qgLsC3QPCVs2hdYSwJ38TEN7y+EegM26HwFyJkVkVwfS0SaX7NTpHlCPMslTqXEzpYosq1PcmJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749925938; c=relaxed/simple;
	bh=0kLZe5y0ZyrzqmqIFyXSqU7kHqgyABQHfGDybgVEDg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E09RugoGkvnEBGkfcVlnL1ONZVOpvHaT+TjWHeqDzXiiepOTKp1s00uMFC7ZVEunegWDpWMLymDotj1oqNbM2VV4JkJcuuJNZCExoLEeegS5YY2CAlR+5muSg03y6+weuRK2iSpz/17ry6uaR8PrQ+lFVi6mv+OvrLZ9EJ3Irow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BNhFgEV1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EDd2nI012737
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:32:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6zjr+jyjGQmEJbKPCSARJJf8FzsrLtcURjCMxa5yFJo=; b=BNhFgEV1DRuBuTHE
	6B1SV6A+h+z/H6wjjkg0th0K/jIYdABdyQV2ddJw0B+FE+F01XpffKkk+ExiCn/V
	xy4vQG1wbLsGWIkeLD4olS+TK+SSR1womDcXHPjceX399Ifc048+3Dhips1yrGfA
	+w29qrRfomzYljHYu3mAed7X8N2JSH0Ptsb8Rl4JCE7U6ow4Peu5VSf+n4HMycDH
	LXih52dXaTVu8OcGtHMDUYcp2R9fDeLQPHHJ4jpZnaBEnHqe26SJNCycpJAl6Ncx
	08MvyOjJaZPOxFQfERiw7bxvikHOvLfE5p39ZWcRjo8ZHg5slcmfFvZhzAwte/oG
	yvIStw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hf8vyd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:32:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a5b3aac5bfso8163541cf.3
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 11:32:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749925934; x=1750530734;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6zjr+jyjGQmEJbKPCSARJJf8FzsrLtcURjCMxa5yFJo=;
        b=BWnQQQN1T6TsJM69jWJaLY+hCkBpstwZjm1VTnnTqS9iVn0koUZORzRihhxg8wLrO4
         TcSgb7Hhksl1U3Uho/KqMGU+GbCaaWBzijeyWyw4F3bhEbFyU+lJxdeqCO7OeA4sEUN7
         AaaLZf9RZ041R39ZtoZBD00y5KswWV/dh9c+/QKy7GvfNCDfRs2Lmwn/3H3vZq1Jl2EK
         9xXLNN7XnqJOqZp/ufgxD6n/WbnGiy4oJirIKEHJE8AHGGK+L7DgOn/jmKiO+Tp2Lvuz
         PCX8lswvgf17WO19CtfKOTqEFflXfB2J272C1jI1MfzOAPFaDaA9WKbU5OqhG3eS6UWh
         L4XA==
X-Forwarded-Encrypted: i=1; AJvYcCV6Qeoa7Yxf+RHdpJF3l0CL06SQXCh9FCittXKNEGXPIEQ1CqdIll8pSSWaG4FjPCxixDJsQJ/k6Txp@vger.kernel.org
X-Gm-Message-State: AOJu0YxzOhUYaY/PMCfdwL9ys2c/O9eK1o4Z8IqKCjzUOYs1BnA1UWJx
	t/I21fq65QEYY7VuE2POW+30XtW01MUVNhfTjN082bdszgeO5ONi82mcF8L3pU/f6QXw28SgM74
	gErOBRT/jj5/T94u4SAHws4BlsIhmjHULbNOJl6C0INTh1IQ4z+Bm8TV6dCqPk8SH
X-Gm-Gg: ASbGncvW+F/Ac2Exq475/nA+QhDAcdmP+Oe9aI9WPUh2oAesR6vQw9q+d0urMHaS2p5
	dF2Qe1e+x79LiW9JpxQfk10HRYIMJnNHONEWCY1L+CI8/C757y7a9pec2PS2RDebPZ83ge5Q5MT
	hKKxc88IuEgunQyddJyGsmgfeuEl+pnB0NvjHwJOKjOcrNNDrf/Wd6gOpWsa38Ol+dSDk0qJQXx
	NI1qmibPR1TdYn+6YvkD5uCaMy++r+KfJk5nUi5mHNiJZW26R4Nk1GV2/fQiZz0rvrLiP2YH0dG
	PDO9Lyj+J6xXVO9I2/Lx8HV3O09pdrsrxFC2v5Ot36RCh9biRFwcjEprQCHMz/yUrHw+5mukiLF
	4B14=
X-Received: by 2002:ac8:5e53:0:b0:4a4:3087:6cee with SMTP id d75a77b69052e-4a73c6535fdmr22676121cf.15.1749925934434;
        Sat, 14 Jun 2025 11:32:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjnXi4LOAlGNITRHE+D0Vz0y+jMvb4gMS3dWcaYwtLxZUeHDyVtPykLidKSxscG3bnnLZpAQ==
X-Received: by 2002:ac8:5e53:0:b0:4a4:3087:6cee with SMTP id d75a77b69052e-4a73c6535fdmr22675891cf.15.1749925933787;
        Sat, 14 Jun 2025 11:32:13 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81bff9fsm350710166b.52.2025.06.14.11.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 11:32:13 -0700 (PDT)
Message-ID: <f2508b08-5a6b-4104-9da8-461e179421b9@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 20:32:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] ARM: dts: qcom: msm8960: add gsbi8 and its serial
 configuration
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250614-msm8960-sdcard-v1-0-ccce629428b6@smankusors.com>
 <20250614-msm8960-sdcard-v1-2-ccce629428b6@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250614-msm8960-sdcard-v1-2-ccce629428b6@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE1NSBTYWx0ZWRfX7owC28hHH4BX
 W+WpE8LnhGO4OXMwlThy0hg51k2Yg8vhELVz9/oSIHX4ews0apui8UiPfW8lPUtGkf6uhQWd2fv
 zk/8JU+MLD0YrTIXQmSMWbNinO5sbXH7Cd8AhuOkq5uqXDT7i5Pt5PIWlhf/jDl572+7RB1mbwe
 D3R1ki3vOfcoTgsbrbs7UjgwQM796Dn8JiVlY30m0BfOBsdtBS0m2/edVDVzBzByHtseHXjwSqg
 VnefV7Vpox9Hc8XBTcse8RA0Ryld1WwFZhE9LatWYjq3Yf84YeOXOSdHap9xSLxrsPYJRwbO/tS
 8jVPNuS9AlLltY8Q9/eSAheqyMraPQtRB0M5tPx3pfax9RTDNjMF4nxBbVPgb35lY1YkloT56IE
 qKvjK6KrcnqpvMy9X/K2AsHS64J2J9XrM5AVtA2ue8H1CkEhIkWEFlZJXf+rW+fJ8lMqa6eg
X-Authority-Analysis: v=2.4 cv=VvEjA/2n c=1 sm=1 tr=0 ts=684dc02f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=wxLWbCv9AAAA:8 a=EfQDsuKygrJdTQcVXAAA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-GUID: E33cz_rVK-KMWgaKx3WRRmt4faAtRfDl
X-Proofpoint-ORIG-GUID: E33cz_rVK-KMWgaKx3WRRmt4faAtRfDl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140155

On 6/13/25 7:50 PM, Antony Kurniawan Soemardi wrote:
> The LTE variant of the MSM8960 SoC has a gsbi8 node used for the
> serial console.
> 
> That's if the downstream kernel is to be believed, as Xperia SP has
> a serial console on gsbi8 even on the non-LTE variant.
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> index 4babd0bbe5d638b228e05cdfe6b068b4ea16335f..66071ad498e49c4f54ba105fa94640575fe08da6 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> @@ -333,6 +333,30 @@ gsbi5_serial: serial@16440000 {
>  			};
>  		};
>  
> +		gsbi8: gsbi@1a000000  {
> +			compatible = "qcom,gsbi-v1.0.0";
> +			cell-index = <8>;
> +			reg = <0x1a000000 0x100>;
> +			clocks = <&gcc GSBI8_H_CLK>;
> +			clock-names = "iface";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			syscon-tcsr = <&tcsr>;
> +			status = "disabled";
> +
> +			gsbi8_serial: serial@1a040000 {
> +				compatible = "qcom,msm-uartdm-v1.3", "qcom,msm-uartdm";
> +				reg = <0x1a040000 0x1000>,
> +							<0x1a000000 0x1000>;

This is way off - please make sure you editor's tab width is set to 8
and align the '<'s

> +				interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&gcc GSBI8_UART_CLK>, <&gcc GSBI8_H_CLK>;
> +				clock-names = "core", "iface";

Please also keep one entry per line, '<'s and '"' aligned.
I know it's not how other nodes do it, but this is an old file

Konrad

