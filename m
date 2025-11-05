Return-Path: <devicetree+bounces-235160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1A8C3501E
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 11:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 503F14E66A3
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 10:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C61B02949E0;
	Wed,  5 Nov 2025 10:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yjd4SI9X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512E623EABD
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 10:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762336895; cv=none; b=DTJ5wSqMR1pdJN+B19pISC2DdLHlLAmrafO3QleMAwdASTR/oS7+FBpQ6MnsAFpeu8VVrhxXjkF8ltTODmPY/1NcbyqMyrFEFrsxTpf6LyEkQDuVx8RU7s2IGfdGFLrtPcq07smwoELAcAvzix8KqCDXDpJIMXM3K5sh5atdw1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762336895; c=relaxed/simple;
	bh=PjekySOel4/sjpWW7nrd46ZLHHYdZhxGp6bxmDRuRUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cME8LDt7jBGhxu4WDsNJNwV5rPkJnz+OyNbZWtYTVvyrQvwNTFy/kulRceK4X4IYOSx6q9yCfMifRjNXFXyzQhaDdXPn9fgAyMoYkGbsyRMfFSnw3EAnjcW11hBONBq9BFq00Mv59lFGyCUE3rs6GmUhVS5cSqxYpq7nPebx0Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yjd4SI9X; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2958db8ae4fso35346375ad.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 02:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762336894; x=1762941694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cp5vfZk3dmhnHvly6a7Wox6YjDFtQKhDSkYj8z6/tT4=;
        b=Yjd4SI9XFnTdpnOq25gh8Dc45gdnBQ0YX0ViZaPpx3yxqhNDCb6ZRTptG1/+2pPwKX
         fUd3c1WSP4xX9Y/FrckXNRC65SjCBCGZwjMhzFgE8jkv4icgOUs6jzj7Qt85nq6EayyR
         OAuRMLudrJgGMmw31bRAf5x2LhxhLNVSHnwikwALNtPLLBgl5X6Q7qMr+trdT+0K4N2r
         t95DSTQYtNiIf0PwwBru3Jx8k5x3larzMMVuajSnc9EKPrMEbte7uIK5SdycgLOgT6pP
         flZ+7TW9aVPVKDSCmf8t9a+m7sRidmegdGQlJXV85UmpEb2tckfKDbLMHSzW0sJmsq1r
         eLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762336894; x=1762941694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cp5vfZk3dmhnHvly6a7Wox6YjDFtQKhDSkYj8z6/tT4=;
        b=IbOhMrlV/+7hIr/kn2KjZFTNTGLFXfcU4etMpB6lRsfPwLOzXVsdeJQw/DnYK1rxQb
         1Vq6WLhKTtn57mVWPJQo87ABibQjHklFucLk1s07psCotc9nRYYwDVLtMUwfj+2sfqAP
         8HwAIAFVA8Jh1anl0ApGNm1sa6+My1Q9cWviPGFbje9UhkOG+Osbe+aNnndnJAE4oeJs
         FJmf0z5Y4jgUJgE+qprSY7pmk3j0Lzm5bnKvX5Nqf7zFnsxA/Jr2xJiX0s0AbC6lFgwa
         8GWytrG7hfn1YYSVC3scrTMZ9ExPQNPJVywPN/v9d8Xp6NHdSOcE7w8yHZmPQUOQcAKr
         nqSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDZMBxhLdml3PW7Pun2RTk/ehpyyYpp54nb6xZGi+nqKg3OV9Phg07GPsTTr5GsHISOGg2tLHgy0MC@vger.kernel.org
X-Gm-Message-State: AOJu0YxwEcwJEjpffZEKBAvxJ9syyrzLxegJhSMugVWir+N6eQXFY9a4
	oZWfO+2Ww2XgdVgOe8/n/NNOkajDz+UGnbdBdDnSF3IUyCwLQDTDWwdQKsSJaw==
X-Gm-Gg: ASbGncucZ7qbh3/ewYjyJj1eKJ51ciB6V6ncu5SAANTf7Mk1wu4P3I0uoM3SYWqh5SM
	1+XeegIAR9M9t265NQGsHfD1BOCL7P8BNL9Jb6gofc3dogJTELq4VPrI02hDIp80PvoTkTHJCtC
	r/xEsAgULD0J8gwoXHBNLn/CZg/3IXp9uoqgwi9Po2LidiPGm0StrmRyyzlaLb7OHRYBOuRzXOO
	IcTAOTrcMPTgLDfUOAloYcTK7pCeT4UrXK/XlCXSU/YXTIK5MSSAY2Fc9KBBYL1DLatLHYo8XA8
	T1xRjmJfG1okIO6fo47tzjWwH9z9dSUAVY3LXSF7wNtE8ePV4DiY/RoGt2Uo2deqBuGn8lrswWl
	vtARiioDilmrIBhnmr1b5WN1AhTRQWGJnMb6Y+GdCJuWN4uRtxcYArts4wvwLwg4sfG/MWFKCDW
	yoV4IMu4L4o5+JpwIQiJqQpps=
X-Google-Smtp-Source: AGHT+IHBN4VkbQKNmCLBiIgRjIYellv4E9HST21vbL23DuJyUD9FRyJJOaACcMEzUU8YHwQ9nvKEWw==
X-Received: by 2002:a17:902:ec90:b0:295:68dd:4ebf with SMTP id d9443c01a7336-2962ad26752mr42430685ad.16.1762336893509;
        Wed, 05 Nov 2025 02:01:33 -0800 (PST)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a37377sm54661285ad.66.2025.11.05.02.01.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 02:01:33 -0800 (PST)
Message-ID: <4e3b01fa-174b-4de3-a5ef-67f51f0b2033@gmail.com>
Date: Wed, 5 Nov 2025 15:31:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251104125126.1006400-1-tessolveupstream@gmail.com>
 <20251104125126.1006400-3-tessolveupstream@gmail.com>
 <27f51013-9276-4e41-b57d-fb0baaec5bc6@oss.qualcomm.com>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <27f51013-9276-4e41-b57d-fb0baaec5bc6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 04/11/25 19:57, Konrad Dybcio wrote:
> On 11/4/25 1:51 PM, Sudarshan Shetty wrote:
>> Introduce the device tree support for the QCS615-based talos-evk
>> platform, which follows the SMARC (Smart Mobility ARChitecture)
>> standard. The platform is composed of two main hardware
>> components: the talos-evk-som and the talos-evk carrier board.
> 
> How is the carrier board a separate entity from the "talos-evk.dts"?

The talos-evk platform follows a modular SoM + carrier design.
In our current implementation:
talos-evk-som.dtsi — describes SoM-specific components.
talos-evk-cb.dtsi — represents the carrier board and includes the
SoM file, adding carrier-specific interfaces (micro SD, power button etc.).
talos-evk.dts — includes both the SoM and CB DTSIs and enables HDMI 
display configuration.
talos-evk-lvds.dts — also includes both the SoM and CB DTSIs but enables 
LVDS instead of HDMI.

HDMI and LVDS share the same DSI output and cannot be used simultaneously.
Therefore, we provide separate top-level DTS files (talos-evk.dts for HDMI
and talos-evk-lvds.dts for LVDS), while keeping common board
logic in talos-evk-cb.dtsi.

Hence, layer looks as below:

talos-evk-som.dtsi
├── talos-evk-cb.dtsi (includes som)
│    ├── talos-evk.dts (HDMI)
│    └── talos-evk-lvds.dts (LVDS)

This ensures modularity, and properly models mutually exclusive display
configurations.
> 
> [...]
> 
>> +&mdss_dp_phy {
>> +	vdda-phy-supply = <&vreg_l11a>;
>> +	vdda-pll-supply = <&vreg_l5a>;
>> +	status = "okay";
> 
> Please apply a consistent \n before status

okay, will update in v6 patch.
> 
> [...]
> 
>> +		ports {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			port@0 {
>> +				reg = <0>;
>> +				adv7535_in: endpoint {
> 
> and between the last property and the following subnode
> 
okay, will update in v6 patch.
> Konrad
> 
>> +					remote-endpoint = <&mdss_dsi0_out>;
>> +				};
>> +			};
>> +
>> +			port@1 {
>> +				reg = <1>;
>> +				adv7535_out: endpoint {
>> +					remote-endpoint = <&hdmi_con_out>;
>> +				};
>> +			};
>> +		};
>> +	};
>> +};


