Return-Path: <devicetree+bounces-227519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CD7BE23C1
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:54:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2FE53ADC4E
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 394DD30C635;
	Thu, 16 Oct 2025 08:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U1QxQ0f9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A113A2E5B10
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604891; cv=none; b=BZh841Y488pXdb8Sczz0lWDZ1vamRCwdA3EjoMNBvwsnV0ArMXt+QhjLpx7x2rT+3hHLN6zgCt4iUH1/LcAtXHSFyed79O3XUOKfq+6w/b36SanuGwx3cv7VCSCnkndru6ncSgqNMGshe2nBIS2vcMZChjoNKfOANsDMm5/w2dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604891; c=relaxed/simple;
	bh=2rafzbMdaFeNafw0cDwUzS/gvaRAPFh8RUG59mmAZ9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rzEnmXjBUSsTcrQVn6G8B8vKhqJpnMIeAek5asJj7Ltgui46zPdHfcYj9Ye/S/Vpp2wbTXLr9sbjAAn/9nUDBU7U5sqvTETUdT0hDekcgctkm0L7bpQxQOlYNHU9IQzMAShASd8JLf3fis28Z2515F85PgptxX8ZfwJxfTcWKRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U1QxQ0f9; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b58445361e8so1459428a12.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760604887; x=1761209687; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4MgLhWrjcTr2cAQ96NvgwB/k2TVFLBgEuk088GaLCgY=;
        b=U1QxQ0f9SMhcZLFc+jR1xLB7zZbSxZR4OwlrqaB5TJU7As0P5O3rasRdvPT3jos4C/
         0ZnHx0N68ma6orHXjpGfibuvq8OXoSqaZC+dtJNFwqbAgXExR54BBAKYHQjrmxRx3mrc
         QSRGTNYbVPzqaX4g7mFG7kM9mMaP/RQxRoFtbhVRvDQ8llIUrOJjOciwUWz23OZVYTp1
         7ebzLq33w9EWpTWivd/IKXTxyiW9b3umx3Hr7gx1ycQdNv/nKGTY+usV3vodcpxwmGpn
         maq3MZIFjd1BMp/f8JCTaDQ6VcaMA7wCcXbVvjbA8JY8kQ3f+sGYlNLyUcR3lbQp54tk
         QPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760604887; x=1761209687;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4MgLhWrjcTr2cAQ96NvgwB/k2TVFLBgEuk088GaLCgY=;
        b=L0Amo6MjXQQJWW70u8xYaSIkNBw6brYG11clfX3iu8s28pmhN1iM9yxZm3vBcJahAe
         F+3w45JnRajy9lKRrU7ZS+Nn0xDiOXyIAO/sv/qe6XnZegkjJewsTsaG3KYUWPUpePdZ
         1bghseNpLkvusDtgGRsKnz7mj+iboMKXaviIo0FdhsI++Jm6ZTTdfRKXZ0Rh/fT2aruj
         s9gdouJJwarwrV64DhpJ14XLCAuekAPRM87IMzUGffJpNvjUVi8w0zEMSDT2bHU8HynP
         0pD8yxRsIWwBxBqlBSYEgaQbEhOWBBApcZZOqNHspJFWsuyQEd1/DiffuWMSx7AJMr2B
         2unA==
X-Forwarded-Encrypted: i=1; AJvYcCV+C2NYgOXTrs663xsu01HIGObWxt4xSmVhN9yieoSgjRLcoEmo5pyukjz7Hlqp98AgJD9ZGSwYlsea@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+Fe6KkMBOr+MaqCky4S4LPE1GyeEaZObqiF7WeD+0YlbOx/ZC
	B4gtL7oFSuymXjh+lpArC5942ZjincYX/cCuey7cV66wl7X+DoHePa3p
X-Gm-Gg: ASbGncsQm1T26cmQy9ThA/vyidk6ykkTdDCad9JihbmqSfR8q2q59m+g+LwsKkoci1h
	KLByBpIZhRlOsOA28DvbR9fvNS3Oqt7sV/5kpcxbMedfAEjJAG/+4nxFZqjEmquRqq/KfnDgHmz
	0bEoMzKv/rvZ5LUugyWm1H60jSERTGrY15kTlOom8oA6ktrxERfbS0xro9UXt5GiK0bsHS9R8wz
	9OPEeWSHYiM/yFgel8cjNuXCjmHn7tSLUho2z34i8+WEFG7si4b4GxjQLxIsa5KSQPMzPKiICMk
	gZ9jZUKqZztzEeMZiqGImEq7c72pLR2Ueyiax1sS6WJvk+dSdROgBclcNi8L8laE1NzikcEQ81U
	WoOV3AF7oNVd7P7Kp65xNcMgUK/DxpR7+qUDBNhBQYrqFPH+myrMoZPjTFnSJB0wHLzrhDh/q7/
	0Sh5Hlu1VupQJG
X-Google-Smtp-Source: AGHT+IGxQpJfY65arfEGOquKzS1b9C8R+GcQ0oDHqQfexd6OPIIVXxr+NOuDLtw1djCFkYpeS7J+QQ==
X-Received: by 2002:a17:902:d4c2:b0:274:506d:7fcc with SMTP id d9443c01a7336-290918cbc9bmr44520025ad.6.1760604886790;
        Thu, 16 Oct 2025 01:54:46 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bb66a22a6sm1043470a91.15.2025.10.16.01.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:54:46 -0700 (PDT)
Message-ID: <b3390184-a3ef-49f6-8b68-dbf94564ab43@gmail.com>
Date: Thu, 16 Oct 2025 14:24:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: talos-evk: Add ADV7535 DSI-to-HDMI
 bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251015122808.1986627-1-tessolveupstream@gmail.com>
 <53ef53b423uespn7xspqfxnnvqvhzb5b22a4oaimf6g2qy7ruo@273oegazxbaz>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <53ef53b423uespn7xspqfxnnvqvhzb5b22a4oaimf6g2qy7ruo@273oegazxbaz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 15/10/25 18:34, Dmitry Baryshkov wrote:
> On Wed, Oct 15, 2025 at 05:58:08PM +0530, Sudarshan Shetty wrote:
>> Hook up the ADV7535 DSI-to-HDMI bridge on the QCS615 Talos EVK board.
>> This provides HDMI output through the external DSI-to-HDMI converter.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 21 ++++++
>>  arch/arm64/boot/dts/qcom/talos-evk.dts      | 76 +++++++++++++++++++++
>>  2 files changed, 97 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>> index 55ec8034103d..b58cae02c9cb 100644
>> --- a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>> @@ -244,6 +244,27 @@ eeprom@5f {
>>  	};
>>  };
>>  
>> +&mdss {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dsi0 {
>> +	vdda-supply = <&vreg_l11a>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dsi0_out {
>> +	remote-endpoint = <&adv7535_in>;
>> +	data-lanes = <0 1 2 3>;
>> +};
>> +
>> +&mdss_dsi0_phy {
>> +	vdds-supply = <&vreg_l5a>;
>> +
>> +	status = "okay";
>> +};
>> +
>>  &pcie {
>>  	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
>>  	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
>> index 25057f4f6a91..f7e8be3667d1 100644
>> --- a/arch/arm64/boot/dts/qcom/talos-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
>> @@ -14,6 +14,82 @@ / {
>>  	aliases {
>>  		mmc1 = &sdhc_2;
>>  	};
>> +
>> +	hdmi-out {
>> +		compatible = "hdmi-connector";
>> +		type = "d";
>> +
>> +		port {
>> +			hdmi_con_out: endpoint {
>> +				remote-endpoint = <&adv7535_out>;
>> +			};
>> +		};
>> +	};
>> +
>> +	vreg_v1p2_out: regulator-v1p2-out {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg-v1p2-out";
>> +		regulator-min-microvolt = <1200000>;
>> +		regulator-max-microvolt = <1200000>;
>> +		regulator-boot-on;
>> +		regulator-always-on;
>> +	};
>> +
>> +	vreg_v1p8_out: regulator-v1p8-out {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg-v1p8-out";
>> +		regulator-min-microvolt = <1800000>;
>> +		regulator-max-microvolt = <1800000>;
>> +		regulator-boot-on;
>> +		regulator-always-on;
>> +	};
>> +
>> +	vreg_v3p3_out: regulator-v3p3-out {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg-v3p3-out";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		regulator-boot-on;
>> +		regulator-always-on;
>> +	};
> 
> Please describe the power grid. Are these regulators being fed by
> nothing and generating energy from the thin air?

Thanks for the feedback.
You are right — in the previous patch, the regulators appeared
to have no source, which was incorrect.

To clarify the hardware design:
The 3.3 V and 1.8 V supplies to the HDMI controller are not coming 
from the PMIC. They are generated on the carrier board as follows:

20 V (USBC_VBUS_IN) → 5 V rail (V5P0_OUT)
→ 3.3 V buck regulator (RAA211250) and 1.8 V LDO (TPS7A9101).

The 5 V rail (V5P0_OUT) acts as the input supply for both regulators.
Both regulators are always on.

example:
v5p0_out: regulator-v5p0-out {
    compatible = "regulator-fixed";
    regulator-name = "v5p0_out";
    regulator-min-microvolt = <5000000>;
    regulator-max-microvolt = <5000000>;
    regulator-always-on;
    regulator-boot-on;
};

v3p3_out: regulator-v3p3-out {
    compatible = "regulator-fixed";
    regulator-name = "v3p3_out";
    regulator-min-microvolt = <3300000>;
    regulator-max-microvolt = <3300000>;
    vin-supply = <&v5p0_out>;
    regulator-always-on;
    regulator-boot-on;
};

v1p8_out: regulator-v1p8-out {
    compatible = "regulator-fixed";
    regulator-name = "v1p8_out";
    regulator-min-microvolt = <1800000>;
    regulator-max-microvolt = <1800000>;
    vin-supply = <&v5p0_out>;
    regulator-always-on;
    regulator-boot-on;
};

These reflect the actual power grid of the board.
The 20 V input is not modeled since it’s a raw external
supply and not managed by Linux.

Please let me know if this structure looks acceptable,
Thanks again for the review and guidance!
> 
>> +};
>> +
>> +&i2c1 {
>> +	clock-frequency = <400000>;
>> +
>> +	status = "okay";
>> +
>> +	adv7535: adv7535@3d {
>> +		compatible = "adi,adv7535";
>> +		reg = <0x3d>;
>> +		avdd-supply = <&vreg_v1p8_out>;
>> +		dvdd-supply = <&vreg_v1p8_out>;
>> +		pvdd-supply = <&vreg_v1p8_out>;
>> +		a2vdd-supply = <&vreg_v1p8_out>;
>> +		v3p3-supply = <&vreg_v3p3_out>;
>> +		v1p2-supply = <&vreg_v1p2_out>;
> 
> I think this is not correct. Please consult your schematics isntead of
> adding dummy regulators.

Will take care in v2 patch.
> 
> 


