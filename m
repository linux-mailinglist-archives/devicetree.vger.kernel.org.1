Return-Path: <devicetree+bounces-50425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4500387BA69
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 10:29:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD8FC1F22DFD
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 09:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E06B36CDC6;
	Thu, 14 Mar 2024 09:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pi7KCbCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC3A6CDB9
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 09:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710408561; cv=none; b=dzx82uPymQrROzExIMjD+Px3Ya+yT4g+RWaxyrGMI+P5y2/tkbCbnA8yBimUbxv3z6xRKACvaCNwc7fp+mR+lIaDMdyrm3iGrZpRzhSqly/f5cKpGDb+3E0gMrIgMJj/CmEdlbf8CyvCAU5jDIl7TvYz4P63xs34N9e0WoNP/BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710408561; c=relaxed/simple;
	bh=L8+rKuW0TUaSjATe3UMHZdyq8FKWrVImRUolwSRExj0=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=Py3r1IEtHK5k4ltVokeQKjaEhH+onCDgTU5ysDXZQyAjvyeCa6m6bG5jF5s3KDklsl9MdIrZi8gmhQRz41T/ps4bWTNjEz9Kd1LGbNgp5HMsd3s3IaTV56gmSXWGagWC0Icz9eoMBcbC+CunG6ZVCHXeVkmyv+hhX3NgH7X+Q2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pi7KCbCj; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-413f2fcd8e1so1685675e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 02:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710408557; x=1711013357; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=YVpA2JX+fzlp/qRr3hVbu2IFpulUsmSIfEJZSoktU3E=;
        b=pi7KCbCjN/+qfCALO71Gwwg/VMH86MqviELxLuV73FFEoYwLiU5mY3Ru/UN8Nrpbv9
         SiAJgK7PvYlJ/Nb6oDmBeCJY86CIQvuHC8X+dMoxNN+Tud4Z+1m0x4KXm1pfGoW6zhHB
         yoe8OYm76Mcuwwz8r8nrYnnabPtZ1QUWbY6IXwMhI53l8TUo0y3fo4JsIYbOwHWO9Dfn
         ikfoGNggrtlFEYiOVnIweJkMo6udjxH+V8kLkJs8R26aPV1KwAZ+1daVLELDcUb1PY2/
         zZ/B5/eaqfruUIggyUCHMux9zm1se/5PPb+z5K2MqumM+NWI3FhaR6w5zjELClWr5WUm
         GIQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710408557; x=1711013357;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YVpA2JX+fzlp/qRr3hVbu2IFpulUsmSIfEJZSoktU3E=;
        b=H8CUY2C51yP9aoWbSJS/Ch8LFhFV+PdliPETaduTmau2wEAT/vef/pW5KsNDIncF9X
         nG4IsfFjnnD7zWAB1WwigJKxL/6VQIc6dGwSAqaW7uTMfsmx5Khm/C87rGYNXKz6SuuT
         7TfRzFK+gNHQCeuFLjT8p5rgHO2LtXJHtP5Oo+2rNm6ppPT14OKJJLbAD00h7a2uEoZd
         l5597QJE9zBeNdU9DiJ0dqzZ8VMQzchoWIOZgE6mVZ/exSuRlN1mm6oUIggZnJDMWK/o
         ZO9mKXeeWlPkckooRJ/3/4aYf8ARy2JUHr3YGsQsT16uTE7ibGlh6xg8pzVOTD3OlMti
         /8xA==
X-Forwarded-Encrypted: i=1; AJvYcCUuYoL86mXo8I9Z3ooVTMKlcNYjvoTUk1aV2iEaquSOUTc84Os6RtIlDocNId4Y41jFVV9rXNN+C1Eo4a3K3xbMJYVGCnh2NaSv2A==
X-Gm-Message-State: AOJu0YyCsa/s84zjGyDFNzmfN/ntMuMhC5CqwXSCChclk5tTzR5lGvua
	Aixq9jpx1Ms71VRmAkTamqY9fLGGea7w3lQxzRVpPcdo/ixmb1nrRR9bgoKMS/c=
X-Google-Smtp-Source: AGHT+IFhNZ2TtpDUXtz09eVcfKUHcjWWWpUtXTeEmJ8m3au/jqm3KhAMcAZOfzORToIXAGGCUCJhrw==
X-Received: by 2002:a05:600c:4fce:b0:413:2e2b:bad2 with SMTP id o14-20020a05600c4fce00b004132e2bbad2mr929596wmq.5.1710408556468;
        Thu, 14 Mar 2024 02:29:16 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:cd51:5f38:3a35:2e03])
        by smtp.gmail.com with ESMTPSA id r21-20020a05600c35d500b004126afe04f6sm5047088wmq.32.2024.03.14.02.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 02:29:16 -0700 (PDT)
References: <20240312-basic_dt-v1-0-7f11df3a0896@amlogic.com>
 <20240312-basic_dt-v1-3-7f11df3a0896@amlogic.com>
 <1jsf0vephv.fsf@starbuckisacylon.baylibre.com>
 <9a38fd52-5eea-468d-bd7c-29a505503268@amlogic.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Kevin Hilman
 <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 3/4] arm64: dts: add support for A4 based Amlogic BA400
Date: Thu, 14 Mar 2024 10:26:26 +0100
In-reply-to: <9a38fd52-5eea-468d-bd7c-29a505503268@amlogic.com>
Message-ID: <1jcyrxi2l0.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Thu 14 Mar 2024 at 16:08, Xianwei Zhao <xianwei.zhao@amlogic.com> wrote:

>>> +
>>> +#include "amlogic-a4.dtsi"
>> Could you describe how the a4 and a5 differs from each other ?
>> The description given in the commit description is the same.
>> Beside the a53 vs a55, I'm not seeing much of a difference.
>> Admittedly, there is not much yet but I wonder if a4 and a5 should have
>> a common dtsi.
>> 
> They are mostly the same, A5 include HiFi-DSP and NPU, but A4 is not. And
> some peripheral modules are different, such as SPI and Ehernet phy.
>
> I would like to wait for the follow-on chips to come out before considering
> a merger with common dtsi file.
>

No, Please do it now. There is no reason for the community to review the
same thing twice if the SoCs are "mostly the same".

>>> +
>>> +/ {
>>> +     model = "Amlogic A113L2 ba400 Development Board";
>>> +     compatible = "amlogic,ba400","amlogic,a4";
>>> +     interrupt-parent = <&gic>;
>>> +     #address-cells = <2>;
>>> +     #size-cells = <2>;
>>> +
>>> +     aliases {
>>> +             serial0 = &uart_b;
>>> +     };
>>> +
>>> +     memory@0 {
>>> +             device_type = "memory";
>>> +             reg = <0x0 0x0 0x0 0x40000000>;
>>> +     };
>>> +
>>> +     reserved-memory {
>>> +             #address-cells = <2>;
>>> +             #size-cells = <2>;
>>> +             ranges;
>>> +
>>> +             /* 52 MiB reserved for ARM Trusted Firmware */
>> That's a lot of memory to blindly reserve.
>> Any chance we can stop doing that and have u-boot amend reserved memory
>> zone based on the actual needs of the device ?
> Yes. U-boot will change size of reserved memory base on actual usage.

Then u-boot should add (not change) the memory if necessary.
Please drop this.

>> 
>>> +             secmon_reserved:linux,secmon {
>>> +                     compatible = "shared-dma-pool";
>>> +                     no-map;
>>> +                     alignment = <0x0 0x400000>;
>>> +                     reg = <0x0 0x05000000 0x0 0x3400000>;
>>> +             };
>>> +     };
>>> +};
>>> +


