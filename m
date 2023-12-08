Return-Path: <devicetree+bounces-23293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C4880AA57
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 18:14:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E5771F212E3
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60CBF38FB8;
	Fri,  8 Dec 2023 17:13:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 196E91BCD
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 09:13:45 -0800 (PST)
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6cea1522303so1766719b3a.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 09:13:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702055624; x=1702660424;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SMMgZavMk6x/anolZA0C5677mHhyCShMOXgIqsNDxyQ=;
        b=KMDcdPFbSOZT9RzIzTunVioSUqs4rwv+2CE2NLW81iMCpOk6bsS96OVmRKUNOMsHiD
         l5Z71HMxFIKmyPkBqPH643n1pCHisjaImgSYa2YlW5tKgatbWbXL1EvmZau3s71U/wfR
         URU9aRw1CoIEyT7gUW3HR/ZLUxF0F9uqfHpX1546dRONyK0kVtrlrY+4XtOitV0N15DV
         4WbRKQxljVTajuQn5FlIbMWfmsVS8l4e5TGFJ6KpOciDckY6Xx1xHZ9fm83eBhQFJorV
         cQR3NWwMppCeYtEL4Li1IqvCDIRtlBrkB4HSPX2cfnfnbcIZG7CwsYUVhOCsdzDpjxqP
         jv4A==
X-Gm-Message-State: AOJu0YzCluKYtb7qja9PFtk5rzxGSZnzNuD4YlqBPsDo2EJSNt3spGSq
	UYh3fOtAUX8fEXcobocSAZHq4w==
X-Google-Smtp-Source: AGHT+IEI16o8QXIqBOlzEC0ZX1SaRLHxgkzSqk+E+HnKlEbuxqjN2M6HnyonFUfLCoYakuFvcma6vA==
X-Received: by 2002:a05:6a00:158c:b0:6ce:72f9:866b with SMTP id u12-20020a056a00158c00b006ce72f9866bmr381237pfk.46.1702055624299;
        Fri, 08 Dec 2023 09:13:44 -0800 (PST)
Received: from localhost (75-172-121-199.tukw.qwest.net. [75.172.121.199])
        by smtp.gmail.com with ESMTPSA id x7-20020a056a00188700b006cdda10bdafsm1825045pfh.183.2023.12.08.09.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 09:13:44 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Dhruva
 Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure
 ti-sysc for wkup_uart0
In-Reply-To: <20231207060854.GQ5169@atomide.com>
References: <20231114073209.40756-1-tony@atomide.com>
 <7h5y1c7c0q.fsf@baylibre.com> <20231207060854.GQ5169@atomide.com>
Date: Fri, 08 Dec 2023 09:13:43 -0800
Message-ID: <7hedfwd3co.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Tony Lindgren <tony@atomide.com> writes:

> * Kevin Hilman <khilman@kernel.org> [231205 18:14]:
>> I'm a little confused why these power-domain and clocks stay here and
>> are not moved under the wkup_uart0 node... 
>
> The resources are also needed by the interconnect target module. It's the
> wrapper IP for the child device(s). In this case there's one chip 8250 IP
> instance. In some other devices there can be multiple child IP devices
> wired to one target module.
>
>> > -		clock-names = "fclk";
>> > -		status = "disabled";
>> > +		clock-names = "fck";
>> > +		#address-cells = <1>;
>> > +		#size-cells = <1>;
>> > +		ranges = <0 0 0x2b300000 0x100000>;
>> > +
>> > +		wkup_uart0: serial@2b300000 {
>> > +			compatible = "ti,am64-uart", "ti,am654-uart";
>> > +			reg = <0 0x100>;
>> > +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
>> > +			status = "disabled";
>> 
>> ...here.
>> 
>> The SCI device ID 114 is specifically for wkup_uart0[1], so it seems to
>> me those should be in the wkup_uart0 node.
>
> Those resources are also needed for the parent target module for revision
> detection, quirks, reset, idle register configuration, and to probe the
> child devices.
>
> Here the 8250 IP can be set to status = "reserved" when used by the
> firmware, and 8250 not touched by Linux. However, the parent interconnect
> target module still needs to be configured for idle registers and wake-up
> path register bit so the wake-up from deeper suspend states works.

OK, makes sense.  Thanks for the clarification.

In that case, shouldn't the same be done for the other wakeup sources
there (e.g. wkup_rtc0) ?

Kevin


