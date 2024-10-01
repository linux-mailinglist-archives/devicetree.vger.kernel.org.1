Return-Path: <devicetree+bounces-106835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA3398BE48
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 15:48:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5AB66B220E0
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B85D1C3F3E;
	Tue,  1 Oct 2024 13:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iyXGDWZK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCD31C2DAB
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 13:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727790468; cv=none; b=P7mOkgt6OamFDRek22COGuwLzIxP5GZ8dZvka+efbogSenh79e3b0o//XuYgVA00m1S9KmouT11udsTZZyDRUzhQAIYG1sk+/xXsF0axOBApnSPUz8kKNIFXxcjT3zLm4n5g3J7wwVkywqCpA6X0LhMh2Su3Z6oyumpiCeogkrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727790468; c=relaxed/simple;
	bh=7a8xwjon7m5Sc1PRKs5XA4FWMWfbFUdhBQa+8zL1vbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Icl75ozu9kcj1fxKjtKIogvI1tx1uVExGd0KGYTJ6fwW4f0+vdc+RFKZ7Bv3SHxgpLBX2cNzVYYbYvmbWog5ELJ4fzzsxPRnXHRuifL7V7ZvAZ4nYYw0WSxHa4E1VTHYvROG0R3sCeVsPd83I92pReB2iwV2c17FejYapX+DLOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iyXGDWZK; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5c5b9d2195eso7420791a12.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 06:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727790465; x=1728395265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2hznvRVGa0+vAbTfd7hLLkz8ohJgvQx9/WOhiN6JASY=;
        b=iyXGDWZK/c+2ZE02yaHdBxy3ukZHf0qADj00RFI5roBWw7R/f3fltlB84QOEKtX0Ps
         wY/8BZ03aiAQeFq8Ob8N9dEZs0nBZPhSskwd+Z1Yk85x/p6t3nFMOZgMTV6Y/rdyPh3i
         UYYPXsLyGYRWxtdBZH2ImJ8LdOpgE6ACwisCkWQIwm/yp9nGUY6WEaJ964ON/jRrabn2
         4QI1jI17CtCi4rOuZmJ7A1irXj841Wg1IPpIvrG/CQkNquAWf1oGFuVOdyZwYdV7nq6N
         z/3YbMS6dMVALWw5O3dmrZE0GAS0+L86FPX/KuXUnDh5LEG/WAD2kCTG6EFWCK9xHT2u
         t7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727790465; x=1728395265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2hznvRVGa0+vAbTfd7hLLkz8ohJgvQx9/WOhiN6JASY=;
        b=fj6C4fteQiFuEUxbjowZ5eP7F4FV2ziSF21erHyO1DXV4Trqetr17EQx8JVZ0YaSIP
         pQKlcf+tzpRTFB6IOI+wlC+izKy0C2x7H1QO8SIlGOD4GRNNevI/xhhZLAGMGAVcFs5l
         /sqENnM7JrBSz+x2bE9V8j6F50Ns6+iB5XsyxbQi6saF2KvsZcBTDweB/H8qMwNgYxJV
         SzylOU5ZmfgLsZPgs19CP/iSm2IxQDIVzbfI3FP7B/J+jvKORyecGuezGn7u4OMbU8u8
         mBGNcERm16fiHtOc735oNh2VBtoJVHJAjsOrOsro7a86OkDtsKF0wfXrNr13xeVOrAaz
         sEkA==
X-Forwarded-Encrypted: i=1; AJvYcCW0inP7HjahHHrCBaJhlyH9GyjKrekwXa+Y67cGBepapGKWWjOJgWvwCTlmasc4S9kDCdgkzgsvEfJ+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg4s+Y8+RM5BTByySuJlWOdzCuZYi6nKTiP7i/TH+lDnA22DkR
	oLj4EvGOs1nt7vhMJlTB/EK3UplgXudSjKDthj2+AttShutAkewtmYi/r3qHFo4=
X-Google-Smtp-Source: AGHT+IEbloO9yBhCfPYYLDsu9/VylS1HFiqNsqgLhe5KNm1baA5fLjMzPkXL7SXJcHileo0F0AWScA==
X-Received: by 2002:a05:6402:50c9:b0:5c8:8bde:a1c1 with SMTP id 4fb4d7f45d1cf-5c88bdea2bamr6843576a12.9.1727790464738;
        Tue, 01 Oct 2024 06:47:44 -0700 (PDT)
Received: from [192.168.0.15] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c882c7d23asm6111494a12.32.2024.10.01.06.47.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2024 06:47:44 -0700 (PDT)
Message-ID: <95d7d695-89d2-4c1d-99f6-4f9a687f7d13@linaro.org>
Date: Tue, 1 Oct 2024 14:47:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] media: dt-bindings: Add OmniVision OV08X40
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Jason Chen <jason.z.chen@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241001-b4-master-24-11-25-ov08x40-v2-0-e478976b20c1@linaro.org>
 <20241001-b4-master-24-11-25-ov08x40-v2-2-e478976b20c1@linaro.org>
 <Zvv3kM1wWDiRCCiA@kekkonen.localdomain>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Zvv3kM1wWDiRCCiA@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2024 14:22, Sakari Ailus wrote:
>> +  assigned-clocks: true
>> +  assigned-clock-parents: true
>> +  assigned-clock-rates: true
> As much as I'd like to see these mandatory, there seem to be cases where
> they can't be used. Therefore I'd leave them in the example only.
> 
> If that turns out to be the only change to do, I can also handle that while
> applying.

So I took Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml 
as the reference for this.

Without listing "assigned-clock*" in the required: field I believe the 
dts checkers will not require those.

So instead of saying
assigned-clocks:
     maxItems: 1

we write
assigned-clocks: true

omit from "required:" and get the desired effect.

For example this passes the checker for me.

&cci1_i2c1 {
         camera@36 {
                 compatible = "ovti,ov08x40";
                 reg = <0x36>;

                 reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
                 pinctrl-names = "default";
                 pinctrl-0 = <&cam_rgb_default>;

                 clocks = <&camcc CAM_CC_MCLK4_CLK>;
                 assigned-clocks = <&camcc CAM_CC_MCLK4_CLK>;
                 assigned-clock-rates = <19200000>;

                 orientation = <0>; /* front facing */

                 avdd-supply = <&vreg_l7b_2p8>;
                 dvdd-supply = <&vreg_l7b_2p8>;
                 dovdd-supply = <&vreg_l3m_1p8>;

                 port {
                         ov08x40_ep: endpoint {
                                 clock-lanes = <0>;
                                 data-lanes = <1 2 3 4>;
                                 link-frequencies = /bits/ 64 <400000000>;
                                 remote-endpoint = <&csiphy4_ep>;
                         };
                 };
         };
};

Eh.. at least that's how I think this works.

Krzysztof/Rob ?

---
bod

