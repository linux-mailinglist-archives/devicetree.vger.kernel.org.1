Return-Path: <devicetree+bounces-246610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1848CBE17E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:37:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D29F13032FF2
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46C12E2850;
	Mon, 15 Dec 2025 13:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LN2/+CzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6510A2E175F
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765805405; cv=none; b=bDHvS7p+1LOqAo8n/RL72G8YzOLzWapSo5EGwWsvbLJs7tK+8GJQe0mRYEi1ROdR3uil0o7EuRdc5U561Ij2JRb3HCxxoVNIoUY+cNpw38miY0JHugA03dWqQYuazPVsKP81bP2DHrwGAFtBu/oRRtMPPC6+CE8zos1GqO27vXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765805405; c=relaxed/simple;
	bh=yilNrHpHZPkvhLfgZc7bdKvRXmDizdXeRgViDGXAlME=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uUIbvlG94alVickujwKVoNkiXtGdA7ktHBZxeW/5zx52rcbTzZuaFP/2Swb/WaKT1pUlfukeI8gmZGSjPr9SXffFMQGopXQ/M+V2MqtJk+y/5TEfGonHzAZ5KL4b9LoZghbyW0FrA8K8yaAKdXPoqNNbAukriMb0sSTWf4Nk1wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LN2/+CzD; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a09757004cso21982435ad.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765805404; x=1766410204; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d+11n5xHa65Fb5deTVwy48x8a95WBa5RIlNHjK4BN00=;
        b=LN2/+CzDUBvuDz+baelHh93piEe4PcfZU9D541A9pWLEWbQJsF/gvvKG+iQN4KeHin
         XX5dtTCiUhjdxyeCONs0+Yl+1IaSyX1UX444u08i+VMehygMaMGEWHuf6QHkCpU5Lgrw
         Fw3xwl6uXlZ0JW3+/dFR3eH2/L1XPNzU+jFb5Nbm5kYNN4h+HmJh8s+T9ubhReazrAZ/
         NNXagcODUzsq0xYA0fLXfnV3M3MPb7WnYMM8G1/5MQVrVw7akl7RA9A7u1ThyIEOhRaP
         iGGgyTKk+CjO8uD2x4Q74ybMG+sRoaCRMcYlwRUjG9RGf5Y4rVGTd/NXVr5faf2uYtS9
         S5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765805404; x=1766410204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d+11n5xHa65Fb5deTVwy48x8a95WBa5RIlNHjK4BN00=;
        b=V1hmx8dp0xxbFAm6X/ueMJUeJD+XD0vHXt8Ua4LYouczTGQDz1QgoYF/EkfByf2m1M
         6N9Ug1p1IkNsWWjiAvxBs+M2Js0N+5gfSZ7HQEkipiCuzEeSdqYD2TWpz3ucjlkIBUxj
         WGYjn8s67TYjCE4+2VaiUM1N7wP+P+1X6lYtBBUDTvZ0gLGTTtOOciQGGgjNOP7AbsZe
         JZ9spQCJeNMcw5cmB9Ylygc1APD7QTHilJYAuwoB0OLI4Uc1Wr1AP1WpWl4YcZq/NiG8
         FFhJLVWrzVB5NsOZ3g5vZaXxjOogTmSUCloZDMk5NAxnS6neDxtEaTd05Owim4KGDCm8
         duHw==
X-Forwarded-Encrypted: i=1; AJvYcCX2il3uCwpNx4I/NXQGx0Sk1OQP0hTnxrXfEqbxp4M8Z00y7B1OxQuVw85ri8DnoLmv066e8/1y0rL/@vger.kernel.org
X-Gm-Message-State: AOJu0YyG6u6LwKdT9GawTIgG1/NcEL5LVsjCWLvwjhRaU4FzQU7QArdY
	OCq2UejWkApGg4OwGtmqtgJLMlIXUM9ydORFBHClgPHKOu3/W4lFZ/Nu
X-Gm-Gg: AY/fxX4kRDGgtir/tUwii557EghHbvX7ThqiVZhHppono0BjBlX8njg7piTqA6J+lD7
	3gAw9hfqoQBMnfEnxx2pJhJOnwLn+yY3YXz0qgb7o8NIrjBGxg6cGB8mAt87BqhEPjpXuyt/4ro
	SqqKRGcj0RrWJebQkrh4BCINpMtcXDfxc3YJv9ZOUMrCIRTMqKONVcAKZJ9lNTFwu41aM7nxyXD
	SFqZGmDTGzNS6IyreZ8U9Q+gmuzPSsKfx3s3OV4sE+rYkiQPo7WfqbcC4YWVrSBmjMy676zMXSm
	f0ADGeuSravZlUNFdDHloDTkW26T8fc22mrsBUT6q/xhphheEQw1qgKo15iJomKMVNqhxmscaQm
	DNbeqdgTsgwKy3UDP18bFt0Di7IeRdE4H45sHpp6oO6BPTVVH2+mU//i6lvY3LyyjExB84iU9YH
	x1J1aC3IZuVeyX4pFZeDJ9CT1xH/NLMjwkG0I=
X-Google-Smtp-Source: AGHT+IEtCn7RCKYrfOQv0VLR0gIK+RnVSUAv5QdRQXlQ50oZhdE1Y/XjPK/4zORkdAPHbPP0TygwwA==
X-Received: by 2002:a17:903:120e:b0:296:4d61:6cdb with SMTP id d9443c01a7336-29f23b77debmr115041045ad.27.1765805403657;
        Mon, 15 Dec 2025 05:30:03 -0800 (PST)
Received: from [172.16.20.12] ([136.226.244.245])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea016e21sm136133595ad.55.2025.12.15.05.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 05:30:03 -0800 (PST)
Message-ID: <2fa1ed49-4051-4ecc-a38c-de2c7b97dc03@gmail.com>
Date: Mon, 15 Dec 2025 19:00:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251201172222.3764933-1-tessolveupstream@gmail.com>
 <20251201172222.3764933-3-tessolveupstream@gmail.com>
 <846a5cc1-fa0b-4952-ab40-852a07607eb7@oss.qualcomm.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <846a5cc1-fa0b-4952-ab40-852a07607eb7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05-12-2025 16:22, Konrad Dybcio wrote:
> On 12/1/25 6:22 PM, Sudarshan Shetty wrote:
>> Add the device tree for the QCS615-based Talos EVK platform. The
>> platform is composed of a System-on-Module following the SMARC
>> standard, and a Carrier Board.
> 
> [...]
> 
>> +	hdmi-out {
> 
> You must refer to existing nodes by &label references - let's call
> this one hdmi_connector: hdmi-out {}
> 

Okay, will update in v10 patch.
> [...]
> 
>> +&i2c1 {
>> +	clock-frequency = <400000>;
>> +
>> +	status = "okay";
>> +
>> +	bridge@3d {
>> +		status = "disabled";
>> +	};
> 
> Similarly here - hdmi_bridge: bridge@3d {}
> 

Okay.
>> +
>> +	bridge: bridge@2c {
> 
> lvds_bridge:
>

Okay, got it. > [...]
> 
> +
>> +				sn65dsi84_in: endpoint {
>> +				data-lanes = <0 1 2 3>;
>> +				remote-endpoint = <&mdss_dsi0_out>;
> 
> The formatting fell apart a little here - please give it a touch-up
>

Okay, will update in v10 patch.
> [...]
> >> +&tlmm {
>> +	pcie_default_state: pcie-default-state {
>> +		clkreq-pins {
>> +			pins = "gpio90";
>> +			function = "pcie_clk_req";
>> +			drive-strength = <2>;
>> +			bias-pull-up;
>> +		};
>> +
>> +		perst-pins {
>> +			pins = "gpio101";
>> +			function = "gpio";
>> +			drive-strength = <2>;
>> +			bias-pull-down;
> 
> bias-disable - this pin is active-low
> 

Okay, got it. Will update in next patch
> [...]
> 
>> +&i2c1 {
>> +	clock-frequency = <400000>;
>> +	status = "okay";
>> +	bridge: bridge@3d {
> 
> This really needs a \n above

Okay.
>> +		compatible = "adi,adv7535";
>> +		reg = <0x3d>;
>> +		avdd-supply = <&vreg_v1p8_out>;
>> +		dvdd-supply = <&vreg_v1p8_out>;
>> +		pvdd-supply = <&vreg_v1p8_out>;
>> +		a2vdd-supply = <&vreg_v1p8_out>;
>> +		v3p3-supply = <&vreg_v3p3_out>;
>> +		interrupts-extended = <&tlmm 26 IRQ_TYPE_LEVEL_LOW>;
>> +		adi,dsi-lanes = <4>;
>> +		ports {
> 
> And here

Understood, will take care in v10 patch.

> 
> Konrad


