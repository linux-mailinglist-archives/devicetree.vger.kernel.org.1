Return-Path: <devicetree+bounces-252065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2015CCFA902
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:18:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB760306B7BF
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E84C3451CD;
	Tue,  6 Jan 2026 18:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UKKYMF1b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JvTuEJOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A779E33CE8A
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724077; cv=none; b=b+4GUPru3Akj5DGYkuGsEUioNIsE5AP+LmRT7nYCEROIdOE/WSB/NDp0kR+0IQVgS8UMbWPFQWvjL8FqcMGZsAEot//SuuLR/DDlW2OqOJzXm0lsdrZUva3e4sfzJKdVnSSYp7zO5Nz3NNCcRX0IcqnRoNWaR2XOj6jF9wg11aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724077; c=relaxed/simple;
	bh=hevyR2v5UnvB3P1hEItKYkWCuAwttD5s0/yqjxNhfi4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gKe8cd6SEciSNLyuLKi8k9jh122pwGo5BjwOiVngv5z2TXPYHOIntT2mp2QinNQBEfAePNncjUssgDhHHlOxmf7YyaXw6Nt2pB/B8+gDIbTl91QPDRcEczy9in3Fe8qJW9RdnBbiNJiUdvTIh7ooQlt7F/gCkB5KLy0uA0v0SI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UKKYMF1b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JvTuEJOB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606EfkNZ322873
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 18:27:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zbq27qXc2G+YUG9Eao1aPz+j
	rHm7MvW1CZEwhgSHi7I=; b=UKKYMF1baR+GgszvcS/NaOHiu9HShC/B0c7Flz8Q
	UBGk8OabmyAlD7L2l/t30Ublwiadtdnw3lwK1l17BFCeIaoNmj9JuioEqSb9jKGe
	QMl5O/YE3SeID4n64Tc6TYFcVEQu0UIfPjU0u+4sQF9leEjMyKN8jN3WokeJt6PH
	jJmh62mCGjy5+j4LEcE3iFWC/zxdq6WY73mDaButx4I7VQODvKhRiGdvGxZEK3DZ
	MvpJR2Ugw36HWkObBMWS4d291F3mAtFZUiFEfKwhZxa/5MiYQjASfeNZpStzoKFx
	D4LvhF84xpQQOODcOGuy2u7b69T41FG7iKb8RsWeG2bjMA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh4crgq43-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 18:27:54 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ceab125so35391151cf.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767724072; x=1768328872; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zbq27qXc2G+YUG9Eao1aPz+jrHm7MvW1CZEwhgSHi7I=;
        b=JvTuEJOBpFAuVrymIrDzkcdmKThYu/WqVMeMkQN3c8+PaX+umibJItnR+7vX6fa5/i
         MTY3at60DLiYam40waTtDf4HMIeg8M/FOOWuYUnRqlxvbTOQpWxnwLnR4JmBcfEVktdR
         ErdkZgls4WZsONLAx1kZV8o4d2/qNrazpmeINYA8cGM4F+FGB4CMMBycEn/HaEhg7rON
         FgPpWDSwBVKwUQM3C0PPKD6Xe3oFlDbbGKfA7uioxdUl2jeBXGVbFWTcuO0RCAyhCR1J
         LTavqV3FaZqyGoRpWfrUtraHR8h7pe6EQZdF6ebyA1Dg2OqJ7jsJQe34q4sS2qeuMSB4
         NHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767724072; x=1768328872;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zbq27qXc2G+YUG9Eao1aPz+jrHm7MvW1CZEwhgSHi7I=;
        b=nfq+gUT2iwdmLqoKbqyg253h/oEE7sAZZ+TUcZfyAdRxdQqbHqnZZIByoEOo0sImy3
         5HodtHy3SiZ1kjjRcfuZ7mvzKA2FCz44lXwa/cWP6iuHFV6JirI/n8bOm8I0dM5o9isg
         xeq2XjN9snd+FWAXl3cieIhzpJdHEC7W56l8ngdYG/gw9cFEuJ8Ga8p6nDPgwX3YkSGy
         Ukh1j46SQJmZM2ox8zqO80crpnu9sNZE9ujlVJmMqobV4dFvZbIctr5I9Dw+i3vxxmLa
         3te89ymoCRj7hyjq49EVqwHWw54jHCBbjt2D8U1ymVS21QIE5GLyoZQifuA4D39e4GDV
         O7iQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDLwwYm/yGdxhDoj3LohRvA2A1r06EcaHH5tROI3ewN/VptntK+qBYwWID0ZPRRwfauf0bPclKa5cV@vger.kernel.org
X-Gm-Message-State: AOJu0YyVkgE63S640zfnrJqd0ymjRicaL32PTlskk9PtkPY2KRIuhW8w
	Vt5JpNQrLRb+NMxyrafo6r6bF86v7Od3imt4RPs8TFOEVn5vuf0TPuz6h4+U+T+rRV9BG07SBqO
	Gh5J4N4F2dudfxVg/aHtzE3jL53fthbMAtZ0tTPdB4bQKPBpR9O7im4CwHoAwddKb
X-Gm-Gg: AY/fxX57TQRKIIozVzRVF1L36eZOUmbxGyD6nc2fspONpd2MIrm7BHY3afm14Kx8Zcn
	8DssmFGEqF8joaFHqQGNLmZaaDhCCE92rSBE9onYeUZxddz0dxFLktfjoAoYFcLLQcTp3Lpe6eL
	1s8D0qqU/tpy+qzzSi7Z6AOtQrtkTtluWBfuQa89Ygge2TPS9KVOHj+tCArjrs5ymYrCg/h4A+M
	XrP7epjiEC1aJ8AfWijA1IiIYJp44m3hjPfLMSbnudxy3hAVV6kWnY48gw0wgiY81GM6kx5HTD+
	uo4Xt+vi/m9mYwwPVaMMWokjUGib/BUrdr4BVDfJjc/E2M5lL2XYfHqjsQIGXXJb61j+nXKolX5
	bvpJIa8Tx0+SIviLLZuIEs2qEGskXednkeJYvEuKeHIiY4UDKyC7NGYI28rcL1o12rpEIbdtu1l
	C4g2EB/r0QHAKaJNmmSlPv85o=
X-Received: by 2002:a05:622a:1106:b0:4de:cb90:dbe4 with SMTP id d75a77b69052e-4ffa7808058mr50291681cf.66.1767724072176;
        Tue, 06 Jan 2026 10:27:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpa8t2J+xNbmiBOjOlobvGIsyKnixEwHEuIMtCBrOGb618b9Xf2yvBuMmE8Lwt1egtbEQvqA==
X-Received: by 2002:a05:622a:1106:b0:4de:cb90:dbe4 with SMTP id d75a77b69052e-4ffa7808058mr50291151cf.66.1767724071584;
        Tue, 06 Jan 2026 10:27:51 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6cc4d11csm203749e87.74.2026.01.06.10.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 10:27:50 -0800 (PST)
Date: Tue, 6 Jan 2026 20:27:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: talos: Add CCI definitions
Message-ID: <z2co4ligqcydhk5cxzjdi72nuhf2gm36hrf4qae5hb36m7yvbs@sen7esib2k2x>
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-2-bb112cb83d74@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106-sm6150_evk-v2-2-bb112cb83d74@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=V9FwEOni c=1 sm=1 tr=0 ts=695d542a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Io2tlQXC3H8IfOpeASMA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: OcTzPIcqV8y07jtMrwkN0qR2J1jNM8Xp
X-Proofpoint-GUID: OcTzPIcqV8y07jtMrwkN0qR2J1jNM8Xp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE2MCBTYWx0ZWRfX4RHCKn3c0rXA
 78jb/a+ZPRb0Utl7ToJIjTC6ChhSdJNDEn732BeLvG5BoegGhWoN6g9P8PUkNIGADy2T7CP8cNL
 9Y04PtisTCzM4Hy1AhdwR6RazZNBdn3qajCO2uyD6VvcCqMMAwYWuof0EyH2rH+nWXLdHgoXpNr
 Uw6JhOmCXNS9Gi0Wc65lAVAxiExXJejq4q7iljbdcOJrMBh7Gi3PLnrmy4HHaUmydRFJog2XZ3F
 /T6ttds3zaKCnRwI9NbPkqHRtzlhuPk8FrIW9H6xpFDDUFYkAcf5/CSnafM3PvQ4nKgvOmY/Sm+
 5zKzj6P9E9Cqr+LfU7QhhDTfBYRByJqE2Dy7/ucC2CMmKvCKqTByyM2HHrsrEDZmCvnN6mV6I9B
 tRfgld9V9ycTBhxpGRAfp6NBfQhqmAmmjfxWz/ErTGczxUZxBViqf35UEYZH/s+9Of+UEaSiDVK
 TGYvv7IQnCk2AHJj79g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060160

On Tue, Jan 06, 2026 at 05:39:54PM +0800, Wenmeng Liu wrote:
> Qualcomm Talos SoC contains single controller,
> containing 2 I2C hosts.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 72 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index e1dfaff9b6bf8641b19a685e74d60ad4e1e99d41..461a39968d928260828993ff3549aa15fd1870df 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -1549,6 +1549,42 @@ tlmm: pinctrl@3100000 {
>  			#interrupt-cells = <2>;
>  			wakeup-parent = <&pdc>;
>  
> +			cci_default: cci0-default-state {
> +				cci_i2c0_default: cci-i2c0-default-pins {

These need to be split, having just one host per state.

> +					/* SDA, SCL */
> +					pins = "gpio32", "gpio33";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +
> +				cci_i2c1_default: cci-i2c1-default-pins {
> +					/* SDA, SCL */
> +					pins = "gpio34", "gpio35";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +			};
> +
> +			cci_sleep: cci-sleep-state {
> +				cci_i2c0_sleep: cci-i2c0-sleep-state {

The same

> +					/* SDA, SCL */
> +					pins = "gpio32", "gpio33";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +
> +				cci_i2c1_sleep: cci-i2c1-sleep-state {
> +					/* SDA, SCL */
> +					pins = "gpio34", "gpio35";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
>  			qup_i2c1_data_clk: qup-i2c1-data-clk-state {
>  				pins = "gpio4", "gpio5";
>  				function = "qup0";
> @@ -3785,6 +3821,42 @@ videocc: clock-controller@ab00000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		cci: cci@ac4a000 {
> +			compatible = "qcom,sm6150-cci", "qcom,msm8996-cci";
> +
> +			reg = <0x0 0x0ac4a000  0x0 0x4000>;

Extra double space.

> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&camcc TITAN_TOP_GDSC>;
> +			clocks = <&camcc CAM_CC_SOC_AHB_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_CLK>;
> +			clock-names = "soc_ahb",
> +				      "cpas_ahb",
> +				      "cci";
> +			pinctrl-0 = <&cci_default>;
> +			pinctrl-1 = <&cci_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>  		camss: isp@acb3000 {
>  			compatible = "qcom,sm6150-camss";
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

