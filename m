Return-Path: <devicetree+bounces-157292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3249A5F93C
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 16:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 259313BAECC
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39C4B268C79;
	Thu, 13 Mar 2025 15:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KLP97L+u"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5791E268C5E
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 15:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741878505; cv=none; b=FKxjpMl/R7Q9RjHDw18cTH5kUvvbbZW3M0VR7tTdec5wBnBtXBgsn4mkcdW0GSKvjP+gyBhFIuhiMY5ga8i3+QS+FfW0MyDGjyoVZE4pGqTr6hVxJOKao0o8RRaP9oYS33L2iKCfdeJ0hmTBejsQMl/XlETRdPSsadPbF88HBbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741878505; c=relaxed/simple;
	bh=BZmdNCZ5/qRxlx0SPeoGB47Ed8FZNgHI2espj13qmpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=safF0Me/vSjEApoLOFPgvP7lOrKsSApebQfmQAHKBFCJ2+QKIGM8BFJBWV+5P+316d+NBTQEAjsWWz7rgFlpHkGQEuPsDL3lfKzlTtq6anyLtJm1ANmNOgCsnfldXLsPds5NgI6oRzalL7h3ipz6bcbp9Leh7A8r0Vn3p4+ezGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KLP97L+u; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1741878502;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HVXcsr7GZMEAmniMdC/b6umj6ZIH2ElXr2xetOJBYLo=;
	b=KLP97L+ur7IF0kX5QAIe25pMsw9XN+ZUlCCQA3JCQTc1uzOGdFkpDFKKy+CRflqReP8fd3
	NkPc0HySGhELp6PU5DeOC00aW6RQfjdE8CMA5NgYgyyJ0gvYNNRWw2L2sM96/muaOJMSzk
	WH/hl6kZBUWGExmoNd6vvsLCST0hMIo=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-530-C2HumtSuPSCEEPLrxPC3kQ-1; Thu, 13 Mar 2025 11:08:21 -0400
X-MC-Unique: C2HumtSuPSCEEPLrxPC3kQ-1
X-Mimecast-MFC-AGG-ID: C2HumtSuPSCEEPLrxPC3kQ_1741878500
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-ac1e442740cso104296366b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 08:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741878500; x=1742483300;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HVXcsr7GZMEAmniMdC/b6umj6ZIH2ElXr2xetOJBYLo=;
        b=CqxviWvzNiwu2k4WLFvK3lFTLJuLMRWjZvJ7F2hvsMK/+WWAz7qBjz3X9McC8kKFm8
         Xvv8oAZo5FB+O3CiHadvcWFGhTKyAOxQU5jl0oGsBXFDHe0NXjCiGlru5l/A6CkDAMJ7
         ed2qf66gg975huLnucmdwOUXBHb+g2a7W6O9R1k6a+y4mVF6XOFtRzL0ivd2KSqxU77E
         cfOQvWAezrRtmUPo6WM0XieSGyCkjJsqT0S8Kh8aO3vHWLBs5Yoh6bOt2lTSQOHX72gK
         gzIyzzxZ9yvqx9bI0OhAsqz7z1O981cHsj92H0qQA/Q0Shrfmd2ylbTRLH6DLhnGItQP
         WvBg==
X-Forwarded-Encrypted: i=1; AJvYcCUeN3UHt9a6ZDPlxvdEcC0E0WnpWW0KIq0DonVvOTboC2i8cL/YMq7Z5xW7VxG/3n/1EanH1mjUnc3r@vger.kernel.org
X-Gm-Message-State: AOJu0YxgtRpSD8oFkC2rCfFLEfjEdhwWUZ4MvoesAI3XoV/sP8rR2Ojb
	4qcuQjTvEFFEXZIWghtcP0iRQ7thD2zfa2MK8R6eOw8Bfn22BNd+sTjXfHOnN8BhVBIGCZfsbR2
	pZfmvjbLb4W2mQ4RWCBjXznWbHLymdMyuEMkIi1r8P02pytrTHwEYg/vLJiM=
X-Gm-Gg: ASbGncsNdhY611nzZEUIACLolHQa0WdmfGbVshwxxni+GfY23oQJVV0LQMwbeCti0Oo
	DOfNbBhJZeTSkpZvVNFj7R3cds6N9zx1EOlcSEMfXKFm2NCguCBmvoOUSCycj1Nf6ubyHu4ZwLg
	H+aFbIULz/zNlr9fQD6DCK9VC7DwtsKHQQ50VBRLIgmgzI5xenT0BpK/d3fZzakHIrlRpWQ947r
	v8K+NdAEx7s2X9xc9NOmSMcZqsTQ08paNUTjtl4zngrID2mMOshNpQl9rcQilbAQxAqnBC5CIwj
	DqqR1V5wXHmKyqAAhRqWySYMb59fjCzP3HAL+E7FsTJf0KwoC+IFghPq377lv4gU0WNQBSgJjFu
	KudGtQhHuyL5+BNou7Ky3WPxY1/bWFcyjX/Y9vtDbqdFUm5GTNXal5AYC6xY9Z+vBoA==
X-Received: by 2002:a17:907:94ce:b0:abf:69e6:4372 with SMTP id a640c23a62f3a-ac252749adcmr3564775266b.4.1741878498244;
        Thu, 13 Mar 2025 08:08:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfz8dFEUeqIRmnyOekkf1jHZOOgVGjHfESNlROwH3AaptJBdPv/biPGWbLkHziULBAePb/Lg==
X-Received: by 2002:a17:907:94ce:b0:abf:69e6:4372 with SMTP id a640c23a62f3a-ac252749adcmr3564747666b.4.1741878496272;
        Thu, 13 Mar 2025 08:08:16 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac32510726csm9933266b.127.2025.03.13.08.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 08:08:15 -0700 (PDT)
Message-ID: <4596db59-51fc-4497-9e94-670e9533e7aa@redhat.com>
Date: Thu, 13 Mar 2025 16:08:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 0/2] platform: toradex: Add toradex embedded
 controller
To: Francesco Dolcini <francesco@dolcini.it>,
 Emanuele Ghidoli <ghidoliemanuele@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, soc@kernel.org,
 Andy Shevchenko <andy@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20250313144331.70591-1-francesco@dolcini.it>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20250313144331.70591-1-francesco@dolcini.it>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Francesco,

On 13-Mar-25 3:43 PM, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> This series adds support for the Toradex Embedded Controller, currently used
> on Toradex SMARC iMX95 and iMX8MP boards, with more to come in the future.
> 
> The EC provides board power-off, reset and GPIO expander functionalities.
> 
> Sending it as an RFC to gather initial feedback on it before investing more
> time in testing and adding the remaining functionalities, with that said both
> the code and the binding are in condition to be wholly reviewed.
> 
> Emanuele Ghidoli (2):
>   dt-bindings: firmware: add toradex,embedded-controller
>   platform: toradex: add preliminary support for Embedded Controller

Thank you for your patches.

2 remarks, as Andy already hinted at drivers/platform/arm64/ likely
is a better location for this.

But as the commit first adding that directory indicates:

https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=363c8aea25728604537b170a1cc24e2f46844896

The reason for having ARM EC drivers there is that these are for
x86-pc-like laptops with all the typical laptops bells and whistles
like EC handled battery charging limits / spk/mic mute-leds built
into keys on the keyboards. Special key handling (like mute, kbd
backlight) done by the EC etc.

Since all the experience for dealing with those laptop-esque features
and exporting them to userspace with a consistent userspace API is
in hands of the maintainers of drivers/platform/x86 it was decided to
add a new drivers/platform/arm64 directory maintained by the same folks.

If this EC driver's only functionality is: "The EC provides board
power-off, reset and GPIO expander functionalities." I'm not sure
that drivers/platform/arm64 is the best place for this.

Also you mention GPIO expander, but that does not seem to be
supported yet? The GPIO functionality really should be in its
own GPIO driver. So it seems to me that what would be a better
fit here would be:

1. A drivers/mfd/ MFD driver with the regmap stuff,
   registering "board-reset" and "gpio" cells

2. A drivers/power/reset/ driver for the "board-reset" cell,
quoting from the Kconfig help text for that dir:

menuconfig POWER_RESET
        bool "Board level reset or power off"
        help
          Provides a number of drivers which either reset a complete board
          or shut it down, by manipulating the main power supply on the board.

          Say Y here to enable board reset and power off

which seems to match exactly with your current EC driver functionality

3. A drivers/gpio/ driver to expose the GPIOs using the standard
GPIO framework, this can be added later in a follow up patch.

Regards,

Hans



