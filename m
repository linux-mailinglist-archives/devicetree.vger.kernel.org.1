Return-Path: <devicetree+bounces-135934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3601AA030E8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B97C7A16A7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202361A3AA8;
	Mon,  6 Jan 2025 19:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FnkXz9kf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5958B1DED58;
	Mon,  6 Jan 2025 19:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736193062; cv=none; b=eWRaBGkRaMCtyUSGmX8QMQ4p8+gFOO58E6Urs3ondLCLKEYkZLLIBXW/xjj4g9Wb/prOgkahZbXMFnYz3Z7GQfzEUHzIBX6tdnKYVMdUy3FxJBO89amA8iqeqpUDpymhdP7U4lxhOY8RBpVCnGDuiP5UA97s6Oe/Hpbu4Y/XYrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736193062; c=relaxed/simple;
	bh=GoAdSlQ53RsfhU1nVMs7hQ56NBJFi+aeYKbM9eWk0js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C8kbBxVYpAZtOI5SEjCjqk9RUarwiAyLAllF1pNbVAB+Tdjw0tAigULkhZz/Hq6LhtJVjJb9i+9YnKRgJv2Jlg9TpTgdhVB0kHeklE98f6WOq1iNb5Ja8qnJVgmrUAlNH1Fb5CGJCollbJX60lK21uYPB0ugkWAL87L2Z+Hn9wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FnkXz9kf; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so14818072e87.3;
        Mon, 06 Jan 2025 11:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736193048; x=1736797848; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qGMHgXg4FhW7JGenz3T6xLfvKVPDR9iVCkZIU7+YIF8=;
        b=FnkXz9kfddj64gAiIVRsDhjZxj/AjDoitxICA5IO4m87gazKzyY5fQbGKCWshvpxwL
         FzyKE56PsGMAq0YHIU89RzNfOeIG0kRwtf3Z0fKK6dw0VOBAt2BTxzNp0DN1E8D+2C5I
         sO0I1g9TjdMeyE4Wx0OCpLTPzaMEVLKboAfvZdW0bRKu/j5TunLMnlRuF7zlBKMNj8TZ
         RMSGmTonPDLu1PyhCnozNwt6PhmB8kKQObt4ixUJfBO4yRW2L46byTLudCNPCpgWkEdH
         QMWg88YcYolNrXheqNG9pkKHEOsLf3BnXns2HoND3oiFrDF9T2DVfJfy6jEXsLHJU6kS
         jfZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736193048; x=1736797848;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qGMHgXg4FhW7JGenz3T6xLfvKVPDR9iVCkZIU7+YIF8=;
        b=m9P1s7AMPD/Xz1RZlTIPitB+DR9TJ+nkt/C3xUlpPrfREoxJcNAZ49QS4KlN3NDNBf
         GzvuE09SOobStey+/iEByujoB59+XqsK5Prw+9IJJjKXeZYSk4F7f93dPh8+w5BcodQ7
         vONTRyQ6soRNquDFoNTviilzAUCgvXfz7deWtZVeG5Nd2whHju45Anfv/BAbhstec8BH
         GLSS1SaUinZBAGPEYHWDOGJwMuqob6lMmPg+YrLmblTIpmUF79eViimbx4nRMg6+qwtQ
         fyhWJYeHd+gP6i99k95MyrfgkNQvPxwRf4t9dP4VJoq7R+iKBCPk2vtUZJzSlCVLHsUB
         w29Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1t3tQsOFKE/IwcHO3tjByRyBNXjzEDB1wPj+TclWqtMZ7XdwpGapt+dxQuHHQ4eZSwmujJzgrqCVxCfYf@vger.kernel.org, AJvYcCUFo4OAEV35HS5I+8Zo7k++FbfziXFB9nIIo4gdko7JuHZ9jxCb4fjS8bewD7EMi72Yy5cYih40XRP1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzbc+nJk3ozMBUCDQ+lt+biXoTxSS5tK5PZB/IildNGJoLax/N
	XkXQtmzK0hUX2S6pslIRNvUiYQUCzSdi58LgtWAyroupXVoab+gYvK479jAJ
X-Gm-Gg: ASbGncsEajRDW4lbWuzwLF4cGO2RE6CsoVjiVBiM4UZYWV2V6zct8hhWvLjbZiGAwFE
	4wKNkQ5kUQmmfznRfhkt9Rzc0Eb+aft8WHzmcihRwtQ/B0Ebkue6XLvcFwCDsb6LVsipLjnplUD
	hLQyyIrILOgSkCEpJAPmEb5Z8Cuie40/0rypumAdRKWDSlPVNxBMG+jlV1j7LCpQDLchq+40zMv
	OnMKkR5PSm4zVE6DozPr2arqA8RlSTqoC/vzTRWZEEF+SHmIwYFb272DNYWUbVzanA=
X-Google-Smtp-Source: AGHT+IHZqnO4VP7PrpLiYbkIXyeiZ8I28sisp22+YN53akKHQ23zEpc9KpH45aTzGIXW+qUh3UQM1Q==
X-Received: by 2002:a05:6512:6d3:b0:542:28b4:23ad with SMTP id 2adb3069b0e04-54229530096mr19882871e87.16.1736193048213;
        Mon, 06 Jan 2025 11:50:48 -0800 (PST)
Received: from localhost ([2a05:3580:f312:6c00:1b49:dfce:283c:7307])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5422383203asm4984082e87.258.2025.01.06.11.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 11:50:47 -0800 (PST)
Date: Mon, 6 Jan 2025 22:50:46 +0300
From: Andrey Skvortsov <andrej.skvortzov@gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	Martin Botka <martin.botka@somainline.org>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 3/5] mfd: axp20x: Allow multiple regulators
Message-ID: <Z3w0FngmguvM8u8P@skv.local>
Mail-Followup-To: Andrey Skvortsov <andrej.skvortzov@gmail.com>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	Martin Botka <martin.botka@somainline.org>,
	Chris Morgan <macromorgan@hotmail.com>
References: <20241007001408.27249-1-andre.przywara@arm.com>
 <20241007001408.27249-4-andre.przywara@arm.com>
 <675489c1.050a0220.8d73f.6e90@mx.google.com>
 <CA+E=qVf8_9gn0y=mcdKXvj2PFoHT2eF+JN=CmtTNdRGaSnpgKg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+E=qVf8_9gn0y=mcdKXvj2PFoHT2eF+JN=CmtTNdRGaSnpgKg@mail.gmail.com>

Hi,

On 24-12-27 14:34, Vasily Khoruzhick wrote:
> On Sat, Dec 7, 2024 at 9:45 AM Chris Morgan <macroalpha82@gmail.com> wrote:
> 
> > Using git bisect, I found that this patch breaks the CONFIG_AXP20X_ADC
> > option which is used by some of the battery and charger drivers for the
> > axp20x PMIC series. My current assumption is that the
> > devm_iio_channel_get() call made by these drivers worked correctly
> > previously when the PLATFORM_DEVID_NONE, but now it's not working
> > anymore. I'm still testing possible solutions for that problem.
> 
> I confirm that this patch breaks the battery driver on Pinebook (and
> likely Pinephone). Reverting it fixes the issue for me.
> 

git bisect pointed me to this commit, when I've investigated why
battery power supply stopped working on PinePhone.

The problem is that devm_iio_channel_get() can't get channel by name,
since consumer's name has changed (from "axp20x-battery-power-supply" to
"axp20x-battery-power-supply.4.auto") and axp20x_adc has hardcoded
consumer dev names [1].

For other readers of this thread there is related discussion here. [2]
Chris, do you work on another solution of this problem?

1. https://elixir.bootlin.com/linux/v6.12.4/source/drivers/iio/adc/axp20x_adc.c#L176
2. https://lore.kernel.org/all/20241210224859.58917-1-macroalpha82@gmail.com/#t

-- 
Best regards,
Andrey Skvortsov

