Return-Path: <devicetree+bounces-2705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0B57AC379
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:08:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id EDB091C20490
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFC51F956;
	Sat, 23 Sep 2023 16:08:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1221D544
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:08:19 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 753FAA3
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:08:18 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c1ff5b741cso35876985ad.2
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695485297; x=1696090097; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhETjAN6xvTReHaikteN+zQl14Ngc/lm9zyyXs36d6E=;
        b=W40SAPa1AcQuEPZ3ZwPm+03/f8iX7GxnBlzdySII3hnOwm/hpJ0kzOclKv278Fg1Qd
         9ZZpkhDKBPEerRe5aSMBWn7Vgt49DmRaLlJG2bUpttBOTqqMzwiPThH7Ck1zxsmeh6wW
         7/WnmVyoQl4Ur9o2SM8xhhU6VzI6svFkPvtq32XlKoqvLsvmeJ+inrlCzrhzec//lQXa
         r6r3Mp1yuUTI0P7bzR2E9w3RHHAs+ctJZky4Re/7AEhHp7aJXjMkXkqnKA1EZxRBIstE
         xlqoCGMr4sfq49TWQ1VFcNoPzM8GV0x4Wo4Cl8VLbiwnTvoq6XI5G7TSFHQO+yJxEfmD
         /QhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695485297; x=1696090097;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yhETjAN6xvTReHaikteN+zQl14Ngc/lm9zyyXs36d6E=;
        b=Gp6vvfIsRjRAGsfeNWIvsfCrhJN1IKz9flFDUEFH6bncyUBWhbb1h9PeV8JTXMKAjx
         J8bIJytG4MncsiLoPTYSbxrVZA+QyNPVHaTeNt+QIGPsVWgK9JijPWyAJvoGHMbIeZSq
         FHX0kvScESY98dVQ79KUI8DsCMbQJkQx0mJTqtOQVTkxuCeYpW0/I3RNc9v0aSgwrfWs
         gVo+BqwsxXnY560ZWknPm9qrdHwGACTrvxpi0mTj5URVLS6An7m5IjniB/He7eidO0qP
         tjN2Cp0Gkiyc2marj9eiEmk8L1NLk5qQIM6JlUZRgJQT+V9UQHRtZVrFrNlTw3czqmVr
         tYrg==
X-Gm-Message-State: AOJu0YxEfqG54yDziXJAEMWSc8wS6f3jvMnS6ROID6pOIrMHfTnZ8fE/
	xPNWF2JgZ/ESXKaADku+EbX45KvhsF8=
X-Google-Smtp-Source: AGHT+IFzUjRlS5gb3bUczacToCgHjdqCSQqjwnw0PGlrl3rIbq9BK0q3npcElcTyYsfnxI4RJfGXUw==
X-Received: by 2002:a17:902:e74c:b0:1c5:a7b7:291c with SMTP id p12-20020a170902e74c00b001c5a7b7291cmr3267831plf.12.1695485297396;
        Sat, 23 Sep 2023 09:08:17 -0700 (PDT)
Received: from [172.16.116.58] ([103.15.228.93])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001c5fa48b9a0sm1675818plg.33.2023.09.23.09.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:08:16 -0700 (PDT)
Message-ID: <ae896c35-58ba-6ba2-31dc-390a1d0d8faf@gmail.com>
Date: Sat, 23 Sep 2023 21:38:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: devicetree@vger.kernel.org
Cc: kernelnewbies@kernelnewbies.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
From: Ayush Singh <ayushdevel1325@gmail.com>
Subject: [Question] dt bindings for BeagleConnect
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


Hello everyone, I am working on writing a BeagleConnect driver for 
Beagleplay board. Let me first go over some terminology:

BeagleConnect is both a technology concept and a line of board designs 
that implement the technology. Born from Greybus, a mechanism for 
dynamically extending a Linux system with embedded peripherals, 
BeagleConnect adds two key elements: a 6LoWPAN transport and mikroBUS 
manifests. The 6LoWPAN transport provides for arbitrary connections, 
including the IEEE802.15.4g long-range wireless transport supported 
between BeaglePlay and BeagleConnect Freedom (the first BeagleConnect 
board design). The mikroBUS manifests provide for rapid prototyping and 
low-node-count production with sensor boards following the mikroBUS 
freely-licensable embedded bus standard, such that existing Linux 
drivers can be loaded upon Greybus discovery of the nodes.

BeaglePlay consists of a main AM62 processor and a CC1352 co-processor 
which is responsible for providing 6LoWPAN support along with Greybus 
node discovery. The AM62 processor and CC1352 are internally connected 
over UART. The CC1352 coprocessor is supposed to run a specific firmware 
as a part BeagleConnect setup. It looks as follows:

AM62 (Linux Driver) <--UART--> CC1352 (Zephyr Firmware) <--6LoWPAN--> 
BeagleConnect Freedom

I need a way to access this bridge UART. The most straightforward method 
is adding a `compatible` property to the device tree of this UART. But I 
am not sure how to go about adding a DT binding for it that can be 
merged upstream.

Here are a few comments I have encountered:

1. DT bindings need to be hardware

I am not sure which hardware the bindings need to target in my case. 
Should the bindings be serial in nature, since I need to use the UART 
device? Or they should be about SoC since CC1352 is the device I am 
actually communicating with? Or maybe there is a 3rd category for an SoC 
running a specialized firmware for a technology/protocol?

2. DON'T create nodes just for the sake of instantiating drivers.

I guess this means that adding a child node just to add a `compatible` 
property is not allowed? For some reason, the driver probe is not called 
if I simply try to override the top level `compatible` property of the 
serial device. But maybe that is just an issue with my approach?

3. DO attempt to make bindings complete even if a driver doesn't support 
some features.

This is only relevant if the answer to 1) is the SoC. Since the CC1352 
device cannot be directly controlled by, the capability of this device 
is defined by the firmware running on top of it rather than the 
hardware. So I am not quite sure what a complete binding for such a 
device even mean. The only property I can make required would be the 
`compatible` property and everything else will be optional I guess?


I understand that strict guidelines are required since once a property 
is added to the Kernel device tree, it will almost be impossible to 
remove without breaking compatibility. So I would like some guidance or 
maybe some similar devices that are already a part of the kernel which I 
can look to for guidance.

Ayush Singh


[BeagleConnect]: 
https://docs.beagleboard.org/latest/boards/beagleconnect/index.html

[BeaglePlay]: 
https://docs.beagleboard.org/latest/boards/beagleplay/index.html

[My Last Patch]: 
https://lists.linaro.org/archives/list/greybus-dev@lists.linaro.org/thread/GKOFWZ5IJMNXIWVDOM3WRNU2B2S4244G/

[My Patch Github]: https://github.com/Ayush1325/linux/tree/gb-beagleplay



