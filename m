Return-Path: <devicetree+bounces-24855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DC98117EC
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CABF1F21E06
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 499643A8F8;
	Wed, 13 Dec 2023 15:42:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DEB3187
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:42:09 -0800 (PST)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6ce94f62806so3892772b3a.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:42:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702482128; x=1703086928;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7dGqDRJ0w9nVIHFYvwy3H2NeZxOqyG5Sv0/1APrHxnU=;
        b=BU8xJJqOUq7KMcqYmrK+tcuqMzkqdNSTA/ml1VAlZLTae6GE+Gcn/2yKVMHcvxPZuz
         XnGGgwgqI1XogzrMuOXp6KsSbHpuPBuXoFQDl7JspqNGvVugcnHTtqmBEYuwqLmI05E5
         8J2Q9+qMBdfU3+9FzmrgJLsOVtUe1sBBBrSRuls1ikhpQ4GzOrMlfGffmSzBntfymsdk
         ycaPLa6AryVvWvmCnBNyzB6XO+gK/VgYmubFi7xrHrcUz6mivQ3XkGXKVbFr/urfLZpB
         BxtiQofJ8Cqrx2JpV1gkCx87UHBThTD7h834GWdGTRiAvCyu5g1sx+QsDyzgLe6ZVQHX
         MD7Q==
X-Gm-Message-State: AOJu0YxLI1BM2U7+4SoF1kgZxuL8iaD9qYxY24tO3DUnQNbZttbqoAut
	Bxscb0rQPqHGobr7PMdmJluViw==
X-Google-Smtp-Source: AGHT+IHopEAauysSfb8ROWt34w1/YfNc58y9l66Fy5uQbu6hMwlQZkVrsT+zflkJyHs9vn/ZgDLSHA==
X-Received: by 2002:a05:6a00:3095:b0:6ce:2731:c247 with SMTP id bh21-20020a056a00309500b006ce2731c247mr2696557pfb.54.1702482128421;
        Wed, 13 Dec 2023 07:42:08 -0800 (PST)
Received: from localhost (75-172-121-199.tukw.qwest.net. [75.172.121.199])
        by smtp.gmail.com with ESMTPSA id u23-20020aa78497000000b006d0d83a11afsm1064030pfn.203.2023.12.13.07.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:42:07 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Dhruva
 Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure
 ti-sysc for wkup_uart0
In-Reply-To: <20231209035900.GW5169@atomide.com>
References: <20231114073209.40756-1-tony@atomide.com>
 <7h5y1c7c0q.fsf@baylibre.com> <20231207060854.GQ5169@atomide.com>
 <7hedfwd3co.fsf@baylibre.com> <20231209035900.GW5169@atomide.com>
Date: Wed, 13 Dec 2023 07:41:44 -0800
Message-ID: <7hcyvam7nr.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Tony Lindgren <tony@atomide.com> writes:

> * Kevin Hilman <khilman@kernel.org> [231208 17:13]:
>> Tony Lindgren <tony@atomide.com> writes:
>> 
>> > * Kevin Hilman <khilman@kernel.org> [231205 18:14]:
>> >> I'm a little confused why these power-domain and clocks stay here and
>> >> are not moved under the wkup_uart0 node... 
>> >
>> > The resources are also needed by the interconnect target module. It's the
>> > wrapper IP for the child device(s). In this case there's one chip 8250 IP
>> > instance. In some other devices there can be multiple child IP devices
>> > wired to one target module.
>> >
>> >> > -		clock-names = "fclk";
>> >> > -		status = "disabled";
>> >> > +		clock-names = "fck";
>> >> > +		#address-cells = <1>;
>> >> > +		#size-cells = <1>;
>> >> > +		ranges = <0 0 0x2b300000 0x100000>;
>> >> > +
>> >> > +		wkup_uart0: serial@2b300000 {
>> >> > +			compatible = "ti,am64-uart", "ti,am654-uart";
>> >> > +			reg = <0 0x100>;
>> >> > +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
>> >> > +			status = "disabled";
>> >> 
>> >> ...here.
>> >> 
>> >> The SCI device ID 114 is specifically for wkup_uart0[1], so it seems to
>> >> me those should be in the wkup_uart0 node.
>> >
>> > Those resources are also needed for the parent target module for revision
>> > detection, quirks, reset, idle register configuration, and to probe the
>> > child devices.
>> >
>> > Here the 8250 IP can be set to status = "reserved" when used by the
>> > firmware, and 8250 not touched by Linux. However, the parent interconnect
>> > target module still needs to be configured for idle registers and wake-up
>> > path register bit so the wake-up from deeper suspend states works.
>> 
>> OK, makes sense.  Thanks for the clarification.
>
> One more thing to clarify, there's nothing stopping also mapping the needed
> resources for the child IP too if needed by the driver or the dts binding.
> The calls for resources by the 8250 driver just won't do anything as the
> resources are already enabled by the parent.

OK, thanks.

>> In that case, shouldn't the same be done for the other wakeup sources
>> there (e.g. wkup_rtc0) ?
>
> Yes it should be done for devices with the wake-up path wired like
> wkup_rtc0.

OK, in that case, this all makes sense to me.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Kevin

