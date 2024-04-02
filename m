Return-Path: <devicetree+bounces-55649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0190E895D7D
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 22:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 328AA1C21AE4
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 20:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A2815D5A8;
	Tue,  2 Apr 2024 20:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m2yvE6Ok"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B7D15AAA1
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 20:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712089382; cv=none; b=QUGpbZIujK0tU6WcNbXeTKYrs3qFlpCugsnFlU+Hnm1vVW9gO9Bp5V5oYiXo0EZFUrKBcIirj2dPIqgcEhNdSSF6YYIBXLCXhxvJDRH2XaX6wCLGHXdGGneaG9/RDeIJRoll+jewcFbP9wG/s3/VSoG3bCoLAg6FPCa0p3lHnJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712089382; c=relaxed/simple;
	bh=ALwj0/6ZAJh6u/Y+t/MpVnWel2IUuZU4BcGJZtQaLGg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OEplbho1YZNpLEZzBsxuSXMTxz7IGXmroLINxDsN/bGGRncU+jwEy1R+plmmxEnBTE0xDkSylVm/PZorCSary7rP8rkHKdeMnxksYkyo0XMnQvFV4qpmh68cjcJcKQ4E2xYo9MgqRSly1gP1dzmSU8Zol+vymZeE5w2f/2wUFzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m2yvE6Ok; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-78bd8068b0fso222174385a.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 13:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712089380; x=1712694180; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W7tNiMrOXP1634Yg/vOf4MsEzo95+mvSpyjL4l+eDyM=;
        b=m2yvE6OkycvxMrvaUPBZ+mR05ZyWV2z+CqRvUmOcaSQ2GWX4p/H3M9RxAk7lrfE745
         Allm8npn9TX2uGgbknBgi6L3P2MVgUm7IEbQZTGd+cJZfYqW0W42XRilbAN10UjWWU5a
         aIteSTxUmlPpZoEdH5cPTJn2o0GarQwjBKp+2XHuRmAyCIbkT6yYpmiw8LL1aZ9ew24F
         PQvmgSh9Z7eLojdXUWyDocgPqn1aSzZZdLanm8l/hQtdoXhZi9BI1F5kmvYkNqA/UIiV
         1RwXpw3wDrRyLprNXRR4+gx8yoCgBEwB01d3RAvEjpxpXf5GchPsvM35YAw6H9ErM6FI
         zM8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712089380; x=1712694180;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W7tNiMrOXP1634Yg/vOf4MsEzo95+mvSpyjL4l+eDyM=;
        b=BfZYFIEgVNnyyggbhzptWhs6AxassM31pbrlYqmgy4FdwyFN6eg6OnLZBNoLb7NcXm
         U5QbVkKAgK3Fhb69Tza8V0vlpbC575OLKjAPelUW0P+/8gPCkcfbClNovFVSWGKTRWVK
         LNmmVLU2q9ZeVIR5q2J72YAYO2EACpYuG22iOi4PpBv2/G1F3BWMz4jwjFDNNxZucZQ7
         3Mm1wzaC6G1T5xgsTnnBtJ9WLf8OOhD7mnTYJlg+/S749eobp+/3xV3UxDHAulPk88g7
         hvUaXw9k4BuSCt9sADUxAKHdwfr7m/Ji+MbLhS2F8aCSt7a0B8pliu9Dh79JieQXrFYF
         /jYw==
X-Forwarded-Encrypted: i=1; AJvYcCVXi2FZLgjufHwH3jDIYBO6I9uBdeSb1r1FlrShA1vzfRYBmfzn3wJDg7bh9G3XpuJcLCjSwonbbNhIdtUzhv4JQnOlNJxtveEk+A==
X-Gm-Message-State: AOJu0Yzrd6fOS1MqYcLJztrJzxE4JcfnXmvcVcmcKmhR+XrsaX2CTA+J
	TS7lK+WeK1G6nraHmw5lU0Jcu5sXo/sxIFy4SrgFApA8OS+2VmE8
X-Google-Smtp-Source: AGHT+IEDlMRoYnTSBEqdTFqS2KS4443MfztnkmYIYO0eNCRUT1rr3pHk6ZTKoXRIy66IDPJzAPjXRw==
X-Received: by 2002:a05:620a:4111:b0:78d:36e0:2b5b with SMTP id j17-20020a05620a411100b0078d36e02b5bmr377481qko.68.1712089379915;
        Tue, 02 Apr 2024 13:22:59 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id j9-20020a05620a146900b0078d331b3f70sm527832qkl.11.2024.04.02.13.22.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Apr 2024 13:22:59 -0700 (PDT)
Message-ID: <6dbd1ef4-c516-403c-a2d1-8ed3458add11@gmail.com>
Date: Tue, 2 Apr 2024 13:22:52 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] dt-bindings: arm: bcm:
 raspberrypi,bcm2835-firmware: Drive-by fixes
Content-Language: en-US
To: "Ivan T. Ivanov" <iivanov@suse.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Stefan Wahren <wahrenst@gmx.net>, Peter Robinson <pbrobinson@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Naushir Patuck <naush@raspberrypi.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, u-boot@lists.denx.de
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
 <b044eec1-ae64-4de7-9ab0-e3fe756131ef@gmx.net>
 <20240327233700.GA21080@pendragon.ideasonboard.com>
 <bcf8093ab0ea6f3738bf4a4623de700a@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <bcf8093ab0ea6f3738bf4a4623de700a@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/2/24 01:58, Ivan T. Ivanov wrote:
> 
> Hi,
> 
> On 2024-03-28 01:37, Laurent Pinchart wrote:
>> On Wed, Mar 27, 2024 at 07:49:38AM +0100, Stefan Wahren wrote:
>>> Hi,
>>>
>>> [add Peter and Ivan]
>>>
>>> Am 26.03.24 um 20:58 schrieb Laurent Pinchart:
>>> > Hello,
>>> >
>>> > This small series includes a few drive-by fixes for DT validation
>>> > errors.
>>> >
>>> > The first patch has been posted previously in v1 ([1], and now 
>>> addresses
>>> > a small review comment. I think it's good to go.
>>> >
>>> > The next two patches address the same issue as "[PATCH 1/2] 
>>> dt-bindings:
>>> > arm: bcm: raspberrypi,bcm2835-firmware: Add missing properties" ([2]),
>>> > but this time with a (hopefully) correct approach. Patch 2/3 starts by
>>> > fixing the raspberrypi-bcm2835-firmware driver, removing the need 
>>> for DT
>>> > properties that are specified in bcm2835-rpi.dtsi but not 
>>> documented in
>>> > the corresponding bindings. Patch 3/3 can then drop those properties,
>>> > getting rid of the warnings.
>>>
>>> since this series drops properties from the device tree, does anyone
>>> have the chance to test it with a recent U-Boot?
>>
>> I don't have U-Boot running with my RPi, so I would appreciate if
>> someone could help :-)
> 
> Sorry for taking me so long to verify this.
> 
> I think on RPi U-Boot side we are fine. API used when accessing Mbox
> device do not follow DM model and do not use DMA, but just access
> device directly using this nice macros phys_to_bus/bus_to_phys.
> 
> I build new DTB files with this patch included and U-Boot build
> from the latest sources. No obvious issues on RPi3 and RPi4.
> Devices boot fine.

Can I add this as a Tested-by tag from you while applying then?
-- 
Florian


