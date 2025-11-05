Return-Path: <devicetree+bounces-235221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB940C35B6F
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 13:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AB9A567872
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 12:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D843161AB;
	Wed,  5 Nov 2025 12:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KArQGNRX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74D5315D5E
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 12:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762347220; cv=none; b=kII5zPOm3QKkHBZBab75PC53+4v4Eul9eJZMLBYhL/a9b5rmFWoi+yXytCc9SieRfnT2/U28RNlnnPRvcWfMuqh+KT6Vs1Wj1N1kufWckQYzNa9jmrPLlOWJT83S2/C4g0UvjMoCO1/592zicB9CpKLAXONpA3SAFzc6ILBp0B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762347220; c=relaxed/simple;
	bh=ZiOZviqEvKwWICEdXoSPzWBNXEjcvi0xyNucmUY2loE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XYq0MAub310Cbss+JuuvvPrYF+DAi33kizKwZkbb1nOKRe21L97CvP1fX/RrnEiR3EHADUUQdp8R3NSXQGIQLHisyshECfULIwJSc6nOD2hev4kLWeoEETdbDlnWQJmD2WQC3NTERRIEYWbg5PG+8HRQQi35ThywnZ0CcVftlfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KArQGNRX; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29516a36affso52911125ad.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 04:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762347218; x=1762952018; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uXTWMvD9XNNtJ+0IuDLHxEJ/55opUg4uFPpMppU+ANg=;
        b=KArQGNRXOG8tTdX09tWTtDS+mm7ac+fS47hwdIhp4xmx/ZWWA9yhUGx0Wr3Ct1LkLh
         Xm93xZ0l6gJ7csUAW8USuqkXecEc+ickdD7+djOHqFqcA9U2apJQuucF6kHxheNtbxKm
         amhNkEbAeQOUZNwiFHhn4WVjz/HNiq+mQvqalkyMqBuIqcj12jbAGChKq1ssMr+tD3RB
         wbVdGbzso5hCcyh9aljtLdnPgV7MpiYFYkrbkGDXpvVXH+3AkFrJidan7CCtVFuhxAAJ
         O/pwGkpsGEca+N/UMmDrJBd4SMKrmC2cKM51u3j0kHlOH7ec66TjmC/E8gcgVKkqqibN
         +eYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762347218; x=1762952018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uXTWMvD9XNNtJ+0IuDLHxEJ/55opUg4uFPpMppU+ANg=;
        b=Ya5qsdC7nYjgHEKlGsZeZERlfM6si11scEK2nMXdZOq+Y7NMw00gJjA5qRs2HF+w5T
         IcAzg31QOURWlcWrZvT/I7azF++g3hw3eFc8RrvpNNOEV49lHCDMWfTg/KN+9lN6wuDO
         OMlRRf7hBw7LInmrkHubJT4/FaV3lW+t5zuC32lZxWJgqr8noz/IPK//PK0Ax+HXQAbu
         A393ojOl+0G4DFQjOpAj4v/x/YtE/FM6Jk8PQD1OBog3kKH+wroYA5+M8HGjIzTlrT+E
         AKuWg9DqvydXinoDA9gltPMSas7El4mZe2eOayAKpVZPZcmamUQLI4H4zm3yC+hbEqUZ
         er/Q==
X-Forwarded-Encrypted: i=1; AJvYcCV+VRdtiT3omNgfa+Rs09WNslWElsAOZ0/QkmVOCmDrSWBQcYTcNI2hJQpblmBc9DCZbgZWBNvRw8ly@vger.kernel.org
X-Gm-Message-State: AOJu0YyiATUA3Y5laIOemfZ+FY/bVw+h5B2i+L207sBsasOlTYiWghqF
	BhD7623uJkC9dbktk6ObrBt1eHx9srfhuDX1lXpqpdfShIEHTiQrKHnm
X-Gm-Gg: ASbGnctyMvs1cIFc/koXRhIeGZZR5nUCWa6ALlZ3AVliB8WSGYd7FK2P4KUMkiyBelS
	qOmYNcWdmnqLAQ4wh/NCuhswyzLr5dlDDbh2NuoSRaLw3nCp0qISjKbCrbAVGfoLoSwHUA+FE3G
	WoWinzKLjUgYIehaIjcaTIElVJ6B0KTQXHO330az6FvC6BT416oRBXhtOn6EH+Vgj0ZsAS12o91
	Q22z5XEjDu6TubsAYiIMzbgBBbcYr96dzlDsG4H2Ciff06hzi2wAtw7oLsehLySm9kBkHuhQg9w
	mE+fz4YLsUK9KiG+dYXnoZxccMCqdsw9kuPeqmCEMhkFpJduvLEzM1BaR0AheF7FkyNsZVIQz9I
	tlvyCvBBhGPSjFD7ZV8t27HjCLipYgZu7g3ZXfPQ33FMN6/SkNWLBr5tqy0lzG9A+5m7xReLbvz
	z8ORauIfnImkBH
X-Google-Smtp-Source: AGHT+IHDL9eiMgzkVlgRWTri8WIsiKSHk1G9FSbzFFFh7VWfcOfgAFDPdxNgUrmGjQyDZbwKIMBq/Q==
X-Received: by 2002:a17:902:da88:b0:27d:6f37:7b66 with SMTP id d9443c01a7336-2962adb9263mr50059675ad.47.1762347217742;
        Wed, 05 Nov 2025 04:53:37 -0800 (PST)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a689ad7fsm2938352a91.2.2025.11.05.04.53.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 04:53:37 -0800 (PST)
Message-ID: <1e13b14a-83eb-4ab3-b5e3-4721a6026b65@gmail.com>
Date: Wed, 5 Nov 2025 18:23:32 +0530
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
 <4e3b01fa-174b-4de3-a5ef-67f51f0b2033@gmail.com>
 <c2b91dd0-1b0c-43bc-ad3e-5e4b136c75c9@oss.qualcomm.com>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <c2b91dd0-1b0c-43bc-ad3e-5e4b136c75c9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 05/11/25 16:39, Konrad Dybcio wrote:
> On 11/5/25 11:01 AM, Tessolve Upstream wrote:
>>
>>
>> On 04/11/25 19:57, Konrad Dybcio wrote:
>>> On 11/4/25 1:51 PM, Sudarshan Shetty wrote:
>>>> Introduce the device tree support for the QCS615-based talos-evk
>>>> platform, which follows the SMARC (Smart Mobility ARChitecture)
>>>> standard. The platform is composed of two main hardware
>>>> components: the talos-evk-som and the talos-evk carrier board.
>>>
>>> How is the carrier board a separate entity from the "talos-evk.dts"?
>>
>> The talos-evk platform follows a modular SoM + carrier design.
>> In our current implementation:
>> talos-evk-som.dtsi — describes SoM-specific components.
>> talos-evk-cb.dtsi — represents the carrier board and includes the
>> SoM file, adding carrier-specific interfaces (micro SD, power button etc.).
>> talos-evk.dts — includes both the SoM and CB DTSIs and enables HDMI 
>> display configuration.
>> talos-evk-lvds.dts — also includes both the SoM and CB DTSIs but enables 
>> LVDS instead of HDMI.
>>
>> HDMI and LVDS share the same DSI output and cannot be used simultaneously.
>> Therefore, we provide separate top-level DTS files (talos-evk.dts for HDMI
>> and talos-evk-lvds.dts for LVDS), while keeping common board
>> logic in talos-evk-cb.dtsi.
>>
>> Hence, layer looks as below:
>>
>> talos-evk-som.dtsi
>> ├── talos-evk-cb.dtsi (includes som)
>> │    ├── talos-evk.dts (HDMI)
>> │    └── talos-evk-lvds.dts (LVDS)
>>
>> This ensures modularity, and properly models mutually exclusive display
>> configurations.
> 
> And are both the LVDS display and HDMI converter on separate add-in boards?
> 
Both HDMI and LVDS interfaces are present on the same carrier board, 
but they share the same DSI output from the SoM.

The hardware requires physical reconfiguration (resistor changes)
to select either the ADV7535 HDMI path or the LVDS bridge path.

Because they cannot be used simultaneously and represent different hardware
configurations, we provide two separate DTS files — one for HDMI and 
one for LVDS — while keeping the common carrier definitions in talos-evk-cb.dtsi.
> Konrad


