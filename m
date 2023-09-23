Return-Path: <devicetree+bounces-2706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9206E7AC37A
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:08:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id EF9431F23B7F
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E7A200AA;
	Sat, 23 Sep 2023 16:08:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCC41F5F8
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:08:36 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86A1B92
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:08:34 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so65120511fa.2
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695485313; x=1696090113; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1gQp1lHFtm6dVr89Oz44O+Ki0nF77ZeDnLLnv/g+WjQ=;
        b=RXPxBSTs4nlvzigkdz1itfqC7RjPVph4XFm7J7Kz0PQWyhMAAzWfRb6pVWRnekjcWl
         cfPmlpweQRyg94lrJu6ZYu7oyABBblHaI/w17BSKAzRdtzJcPCLkwFH5NFu56042Czxr
         ZcuVmSOg0acfsf+vUJhvIXbjpGZQAw135M7Rmuxx0QzH6eijPJqcRAQGw5WQJo93fOZv
         N1Ca+ccBXTiCUVLCT3UWh0afWNGGlsbsGVKNBhFdXCiy8ynuXspVIriSmGfMgPC1+bBM
         P6dGNnlUNZu3xfrhND14V8qBkfC1eccJt7+mh3WoipweQ++7u4tXFKuYETWKjmS2L9Hi
         +fdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695485313; x=1696090113;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1gQp1lHFtm6dVr89Oz44O+Ki0nF77ZeDnLLnv/g+WjQ=;
        b=XYhQeYc4OIx4UjiTzfD2wnJTBCAO19MBiZ3BATUEPAMgBzgixhVAyuN5AQWHqAfBuV
         7bcRBcgYEldq54WV2WMDWk6PbLvdrENFxXROBCdxDoCFzu5lz9mfCkPHFXHzTE3S7F8D
         uJDlrqvSqbs2V65YygoMAeVe0kfrlM4OKefluGqF083Zkx3uBof49sFUJUrylf37ataB
         n9nZoOGdF260HCJJPJQDnOHqCRYOMKoBteKqzPpCoJINuADlFNO9kcGLHKnBVjQ69dzR
         5lRERlbXW7J2yDcYv7OLyi/b3ZP+rjpypXZK2sPploo//IasqqvZtxcOAPwS5Kl51Cw6
         H8YA==
X-Gm-Message-State: AOJu0YxCrj/l2S1wiQ87LzVi04UeyRnQw4C8deoNVm6LEEEN6kDPul01
	Kv5CWa8041HbKmXnLalyxN2QjjORJlulhcjFsgg=
X-Google-Smtp-Source: AGHT+IFi+pCfungV/iDgNe4t69PNFQAwB/38MJZKPJ192MQa6pcc8M3u3WhB/PbaRC/MzPED4JCuVA==
X-Received: by 2002:a2e:9b8b:0:b0:2bc:c38a:bd7c with SMTP id z11-20020a2e9b8b000000b002bcc38abd7cmr1865010lji.33.1695485312607;
        Sat, 23 Sep 2023 09:08:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id q19-20020a056402041300b005330e1e7da0sm3429882edv.92.2023.09.23.09.08.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:08:32 -0700 (PDT)
Message-ID: <de6c83ca-ddda-4c74-d9ea-e7c388f60b88@linaro.org>
Date: Sat, 23 Sep 2023 18:08:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [Question] dt bindings for BeagleConnect
To: Ayush Singh <ayushsingh1325@gmail.com>, devicetree@vger.kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, kernelnewbies@kernelnewbies.org
References: <e0565d97-e67a-2f71-7454-cd95b9ab081d@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e0565d97-e67a-2f71-7454-cd95b9ab081d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 18:04, Ayush Singh wrote:
> Hello everyone, I am working on writing a BeagleConnect driver for 
> Beagleplay board. Let me first go over some terminology:
> 
> BeagleConnect is both a technology concept and a line of board designs 
> that implement the technology. Born from Greybus, a mechanism for 
> dynamically extending a Linux system with embedded peripherals, 
> BeagleConnect adds two key elements: a 6LoWPAN transport and mikroBUS 
> manifests. The 6LoWPAN transport provides for arbitrary connections, 
> including the IEEE802.15.4g long-range wireless transport supported 
> between BeaglePlay and BeagleConnect Freedom (the first BeagleConnect 
> board design). The mikroBUS manifests provide for rapid prototyping and 
> low-node-count production with sensor boards following the mikroBUS 
> freely-licensable embedded bus standard, such that existing Linux 
> drivers can be loaded upon Greybus discovery of the nodes.
> 
> BeaglePlay consists of a main AM62 processor and a CC1352 co-processor 
> which is responsible for providing 6LoWPAN support along with Greybus 
> node discovery. The AM62 processor and CC1352 are internally connected 
> over UART. The CC1352 coprocessor is supposed to run a specific firmware 
> as a part BeagleConnect setup. It looks as follows:
> 
> AM62 (Linux Driver) <--UART--> CC1352 (Zephyr Firmware) <--6LoWPAN--> 
> BeagleConnect Freedom
> 
> I need a way to access this bridge UART. The most straightforward method 
> is adding a `compatible` property to the device tree of this UART. But I 
> am not sure how to go about adding a DT binding for it that can be 
> merged upstream.
> 
> Here are a few comments I have encountered:
> 
> 1. DT bindings need to be hardware
> 
> I am not sure which hardware the bindings need to target in my case. 
> Should the bindings be serial in nature, since I need to use the UART 
> device? Or they should be about SoC since CC1352 is the device I am 
> actually communicating with? Or maybe there is a 3rd category for an SoC 
> running a specialized firmware for a technology/protocol?
> 
> 2. DON'T create nodes just for the sake of instantiating drivers.
> 
> I guess this means that adding a child node just to add a `compatible` 
> property is not allowed? For some reason, the driver probe is not called 
> if I simply try to override the top level `compatible` property of the 
> serial device. But maybe that is just an issue with my approach?
> 
> 3. DO attempt to make bindings complete even if a driver doesn't support 
> some features.
> 
> This is only relevant if the answer to 1) is the SoC. Since the CC1352 
> device cannot be directly controlled by, the capability of this device 
> is defined by the firmware running on top of it rather than the 
> hardware. So I am not quite sure what a complete binding for such a 
> device even mean. The only property I can make required would be the 
> `compatible` property and everything else will be optional I guess?

Referring to some comments without the context - patch and the comments
given - makes any discussion difficult. We do not work like this in
upstream communities. Please respond inline, not top posting, to the
comments you received.


> I understand that strict guidelines are required since once a property 
> is added to the Kernel device tree, it will almost be impossible to 
> remove without breaking compatibility. So I would like some guidance or 
> maybe some similar devices that are already a part of the kernel which I 
> can look to for guidance.

There are plenty of other serial-attached MCUs. Just look for "mcu {"
(for serial) or mcu@ (for other buses).

Best regards,
Krzysztof


