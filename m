Return-Path: <devicetree+bounces-112803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9AD9A38BC
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C47041C23AF9
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D03A188CD8;
	Fri, 18 Oct 2024 08:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RJh21MkO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5151618EFCD
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729240773; cv=none; b=bBdRVrJDqJIvx12+Zm4phH2SNDkBhJVNH/4XUPNgJLrotQ3VqI9TScJ2NlszwSaiIOjt3A45wSRlWhQHVdnFfl+X4lovZeCUmut+z87XUwQUeavnjBdw3FSdufZEUijPxp37+L/Jw+B1bPUC3aUGE7WFQg4NvLbzVvYUjD6uJ54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729240773; c=relaxed/simple;
	bh=mc6L5X0DUWLJW/OkuS9ePuMADpz3zlh4zv/WCAV31FM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=bawivEbgBPlbTlm83zwnkhDyzPxCyF7vxesiFuCf1e5h0lDaUpIu8aVQabgh/SbcMuufLTWF6ayVFcud/zDsmWCYWiFbyNKn1yJENS6VQTKH6EbYRzYwjhT/BfanJL4/DfLtRad1w4rvYQTbNFKHX4+EiLMRbjrPLWp3tiHDXM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RJh21MkO; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-430ee5c9570so24010165e9.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729240770; x=1729845570; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=HrncWdVx0bleY/RhYi61o0nRl8Zpr6NCNC/up3U4baE=;
        b=RJh21MkOuPaNjAw+3zN8rsI9EKXWte9YZ5uck6aCoPB4it2ioUXE+mSSbSrBHNGVZP
         auaqKWone7EmTMnx3GuVWjsrqWuShVVBerE40bbKvGGuwIO0IpKaXh9XNK+HDTQy4hNR
         h5yJF1e3otUZ5WSRY4JTwlfjE2kmRExDc29UzPk4iZkFyRlZ+9ajDIVAP6JcWcUJ3gxk
         IQ3WNpr4So9joz4WtS8GO5f85H//zuCY981qQYlNDnUAI1Q8Tlb/oUxAAMAyLJq7a70K
         3zOElhQ07n2EVCstbWBXRe5xzyScR98RMrxo7ydd2UBidVy76nlEjIUbIodViiyG+/ka
         XJ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729240770; x=1729845570;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HrncWdVx0bleY/RhYi61o0nRl8Zpr6NCNC/up3U4baE=;
        b=Uz9tLH0ovj7MFw3XC8t0x+z/H2aWZNUi7FvyMqkJ2f5FsFOBy7XuF/ai9JDDtbNCYE
         D4ihXEaY3egRbNj1sR7bkSv2HtnO4n05rpoWXJlF9OfwqJm26tpyGKjUZc0/yoYTPfw2
         b/AYoxkDCLiegdS8YTIZz1qCE0jGbkNBs6SU0ydTNTpXAL+XFrZ0x6kIB0YcSgxJVchb
         klFg+VqeekILuZCw+UOq2zuMir6TDAeztNEtK9nm4ZB2rNYVDibjIfpIXNpGDa68KtKN
         idExghVchVtkE59s61W5s5MeKy/pVMupf7kvjrwyztSSaSvCdQ6dWtnMUIZhszqDFhfs
         DpVA==
X-Forwarded-Encrypted: i=1; AJvYcCUMOfwhGTsn7uzc2646d/K0jZbU2EFpcx/qeJCa1Yzvzj1kPJPvWa7YP6D3/6t5vWl3H98vOt91iYAA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl9SmH0GQqvqeRf/EQ1GvjM+Wuxf/DwGhqdTLxb7Es4oxkfflZ
	Cxq0rasOVTDs6jKNyyDuVus6d1jmidnRi178oItkdY38ujbglRYtOjtAl9hpUYA=
X-Google-Smtp-Source: AGHT+IEtT0VrGwMXWD3f3PNN6+mMk8Niqje0hsKtwQA0iMPfyIkaGazeJqRT2ugGAgBVN1yXC2tZog==
X-Received: by 2002:a05:600c:4e8b:b0:431:5c3d:1700 with SMTP id 5b1f17b1804b1-43161642386mr15793305e9.21.1729240769641;
        Fri, 18 Oct 2024 01:39:29 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:6e2b:4562:2d66:575e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43160e4fd55sm17360595e9.45.2024.10.18.01.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:39:29 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: xianwei.zhao@amlogic.com,  Linus Walleij <linus.walleij@linaro.org>,
  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  Bartosz Golaszewski
 <brgl@bgdev.pl>,  linux-gpio@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,  linux-amlogic@lists.infradead.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: Add support for Amlogic A4
 SoCs
In-Reply-To: <4a79f996-9d82-48b2-8a93-d7917413ed8c@kernel.org> (Krzysztof
	Kozlowski's message of "Fri, 18 Oct 2024 10:28:51 +0200")
References: <20241018-a4_pinctrl-v3-0-e76fd1cf01d7@amlogic.com>
	<20241018-a4_pinctrl-v3-1-e76fd1cf01d7@amlogic.com>
	<4a79f996-9d82-48b2-8a93-d7917413ed8c@kernel.org>
Date: Fri, 18 Oct 2024 10:39:28 +0200
Message-ID: <1jttd9rein.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 18 Oct 2024 at 10:28, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 18/10/2024 10:10, Xianwei Zhao via B4 Relay wrote:
>> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>> 
>> Add the new compatible name for Amlogic A4 pin controller, and add
>> a new dt-binding header file which document the detail pin names.

the change does not do what is described here. At least the description
needs updating.

So if the pin definition is now in the driver, does it mean that pins have
to be referenced in DT directly using the made up numbers that are
created in pinctrl-amlogic-a4.c at the beginning of patch #2 ?

If that's case, it does not look very easy a read.

>> 
>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof

-- 
Jerome

