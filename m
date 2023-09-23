Return-Path: <devicetree+bounces-2704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CBE7AC373
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:04:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 461F01C2085A
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1011F5F8;
	Sat, 23 Sep 2023 16:04:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D843A1D547
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:04:48 +0000 (UTC)
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94C5819F
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:04:47 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-274df3878a2so2561345a91.1
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695485086; x=1696089886; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7VMT+LY++uuOeXw8X+RbcSs8KwN19g93AAFIFdkBoKU=;
        b=Gu4JEoF6imKxe/CqpyRKKo0GRRr2dji1ojFrsF8XQkadxHA6SNSgkGqjGclL4spVrO
         Y+scNhGMT8EKPe7rTY6+Wc2gQWbQ1sADz/N/kiCgcNw37Z5hzI++MTx+gxDH1CGNmVt8
         D/Ju6urZRNRsIvcUN3kovH/L5od1fbxGt6MABymcPBBiO/OKy814Cfw9p92JPAobO6xW
         6aEsvfvEyrzR8uVzWKBjNHDpqmAUoxehSvEvQZ8oucyUID2YZvttA5w0j6k/qG+kBJxL
         wxjDVjkRVu7opIMeBQ5gedCdW7DnSxZcCLJSB8VzzwNVS0rlV7qErZHnPed8cAJA8XYP
         uCCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695485086; x=1696089886;
        h=content-transfer-encoding:cc:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7VMT+LY++uuOeXw8X+RbcSs8KwN19g93AAFIFdkBoKU=;
        b=xJkbL0NvAPOMmQgUQ7IiT4jMQ1k2jO3z52vW3f4VqqW/q17LBJgE2pmyHSQ2uJJInl
         WmZ0S3qfp0Gaeahrnd4cNyuZUlZysOYYTrQ239+X2FolNr5GDedXy4Q1WCF5TE7hkIqX
         sbwX2P1INZrRAQr2NT0NMaLn8Ld/jZMorYmTI2CNy+1H1eh+oOYwL6sY9+9sE5O0WY9I
         Zr2NrPkfWqNR3nB8VYwG3JujcDmqDcsgzpZ4aYcOBCqUiiyN15k1zZyDObEYsX0vX5zZ
         D8l8USlqi26zGyN9PBU4DVBO82AI7UVZTWDT+Yr05ElNeh8+9G5dzAwtrHsDsJpkKplf
         tV3g==
X-Gm-Message-State: AOJu0YwDS8eI0qLI9OFmnL5RNbwsUmi52nBgE0rRzZ1cENFnWMdfNWSj
	IM5svWHbSL6gK1jQ15VwYc9W+gOfvkFIb+Lo
X-Google-Smtp-Source: AGHT+IEo/XQ8T1YWyQsdXz8t4g6VhuYne3wCq68dSXZZww2qBWilDtgc+qNCV9ilI/RZgPaTVBDgYg==
X-Received: by 2002:a17:90b:3892:b0:276:cd68:606c with SMTP id mu18-20020a17090b389200b00276cd68606cmr2001589pjb.8.1695485086341;
        Sat, 23 Sep 2023 09:04:46 -0700 (PDT)
Received: from [172.16.116.58] ([103.15.228.93])
        by smtp.gmail.com with ESMTPSA id d13-20020a17090ae28d00b00262e485156esm6854776pjz.57.2023.09.23.09.04.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:04:45 -0700 (PDT)
Message-ID: <e0565d97-e67a-2f71-7454-cd95b9ab081d@gmail.com>
Date: Sat, 23 Sep 2023 21:34:42 +0530
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
From: Ayush Singh <ayushsingh1325@gmail.com>
Subject: [Question] dt bindings for BeagleConnect
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, kernelnewbies@kernelnewbies.org
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


