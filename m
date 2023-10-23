Return-Path: <devicetree+bounces-10719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 025777D292D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 05:48:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B12B7281342
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 03:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B02E1874;
	Mon, 23 Oct 2023 03:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WEhZUq2s"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6EA110B
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:48:23 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A2CBE9
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 20:48:22 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a8ee23f043so29731537b3.3
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 20:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698032901; x=1698637701; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=USdds7ihZeKPeG4X8AWkBafZ75QEJD32jcCP29Cf8VY=;
        b=WEhZUq2sXBX4S3e7gXGUjywwQ3ity74AyOnCzkhn957NGGFWaCotcCa16l9OujBhHE
         qS6IUNvU3Vga1Fy7mHKarhgVanh2sWKauRIbYepkE+/XfOtBgMmatlqkC3OlNzfp2Qjv
         DwCSlwPqR+FpH1TR7H2/l429sIgevg2XQ1sUQxllmOtiCDQhMBM2MwVB6jVSfcaTfU4g
         wFJv7gvNgV3i9yqDLWsfQULq4h2Zc79twpfuH7eYr3SrY/RhnAJUpRqu+Qm/WmqTWeHo
         e1XJ5RX8jqdAx0v4JNXgygpT6OJUXA51sNbKqVD6EdYLvnZFd8szHuujeLawghsY3shh
         +vZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698032901; x=1698637701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USdds7ihZeKPeG4X8AWkBafZ75QEJD32jcCP29Cf8VY=;
        b=syuNOt25RiXMDrwdyeCorvSvQ3fjU/wLfWUzm5iTwbcXn32Jx+uclO0PxzU8Np82QH
         KoQsk+hD8X+aruGQgtuG3xYFJR71/8v+YHZWUlYuqMEoGupMVuMa85kKgJHgZNQXnZsu
         jbvRxEi3HAJP9xsa/7CM3sLCGlEIBD1KIDy18opyXN6QcpXtCLrii4MzI0XXXlhpcQAI
         JPsUdqT8khF8YGD0ECRgIKRTl2Nye69BYNx8MhOLc8RhMi8hKhp0G3o+42Ijv1URXYy+
         lxK2PzM6VW7Arn7H7xlEYiPy/5OYDDJ5xt/GjkwycXuGQ1VQv3cb4iiFCWCdW3hUpMnN
         D29w==
X-Gm-Message-State: AOJu0YwOHDjppR3ycunqS/gz0nSUrrfxTBYG4FtBgA4a78vtPOtcx1Uj
	F0oiKNYGCIhpCI1FJXsC5gQ=
X-Google-Smtp-Source: AGHT+IGIevfjUeJ5w0BhV1O/T/DfotANJSyOrk8szIaGyD+wa8XM6SNERofBlsi/TAG0fLCGcSjzYw==
X-Received: by 2002:a81:9181:0:b0:589:f41c:bc63 with SMTP id i123-20020a819181000000b00589f41cbc63mr8915866ywg.39.1698032901521;
        Sun, 22 Oct 2023 20:48:21 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id q80-20020a819953000000b00570253fc3e5sm631000ywg.105.2023.10.22.20.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Oct 2023 20:48:21 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <d4409dca-6131-43be-e167-4bcc0b48d713@roeck-us.net>
Date: Sun, 22 Oct 2023 20:48:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Fabio Estevam <festevam@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20231004182043.2309790-1-festevam@gmail.com>
 <CAOMZO5DsZgp2d5w6a+ZRWoLCkPAKCxE0KCcXhP5t=9yQckqgqg@mail.gmail.com>
 <20231022211557.GA690569-robh@kernel.org>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20231022211557.GA690569-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/22/23 14:15, Rob Herring wrote:
> On Thu, Oct 19, 2023 at 11:54:34PM -0300, Fabio Estevam wrote:
>> Hi Rob,
>>
>> On Wed, Oct 4, 2023 at 3:21 PM Fabio Estevam <festevam@gmail.com> wrote:
>>>
>>> From: Fabio Estevam <festevam@denx.de>
>>>
>>> imx8dxl also contains the SCU watchdog block.
>>>
>>> Add an entry for 'fsl,imx8dxl-sc-wdt'.
>>>
>>> Cc: Wim Van Sebroeck <wim@linux-watchdog.org>
>>> Cc: Guenter Roeck <linux@roeck-us.net>
>>> Signed-off-by: Fabio Estevam <festevam@denx.de>
>>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>>> ---
>>> Changes since v1:
>>> - Sent it as a standalone patch to the DT folks.
>>> - Collected Conor's ack.
>>
>> Can this go through your tree?
> 
> I'm waiting to see if Guenter picks it up, but will if he doesn't.
> 
> Rob

Watchdog patches are picked up by Wim; I only provide Reviewed-by: tags.

Guenter



