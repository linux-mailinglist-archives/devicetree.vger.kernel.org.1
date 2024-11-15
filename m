Return-Path: <devicetree+bounces-122192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C56B9CF2EC
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 18:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C03E9B2C814
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19CB3155C97;
	Fri, 15 Nov 2024 16:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JItQbgdZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867A514A4FF
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 16:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731687339; cv=none; b=CLtgv+R4aVepsz/W/ikxWkZlrbsvAYa/zGKntTw9fXBpF09Knuyt48Iex3Og9THVVI+JgPoTnOAtxGwXJUypqh5xLy5VsaJKL7BMnaurrPysTe2Y8jVHJx72f4H3CIgh840eofI7WixBlLlQGezDtGFqNWAvVzZxCDJveoFsBP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731687339; c=relaxed/simple;
	bh=Qf0zb4VfVYz2bFnhNWmndenFn6+Q+jSFdMU6+/qUZVw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pWa2sb7VCXc43aXH4QvAVWp0i5I9esRgueymGEn8n3IoVxOYutg5ryiCeyqzAmdAyysM44drj2fUqlHgpYMekZDNvhwNpbW8YMVe8joD77redHO2s6NEAEf6w4+DsGboAYGaKZPVk7wq7aMl/r5gWLln+ewGYmY9sryA+g5kmOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JItQbgdZ; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53da2140769so2177326e87.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 08:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731687336; x=1732292136; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qf0zb4VfVYz2bFnhNWmndenFn6+Q+jSFdMU6+/qUZVw=;
        b=JItQbgdZTAHB22g6BvUW87BfmalESMd4/5fJrNbz97PYLBYDBSnDkUkOkrM8pffAme
         raXyv1B65wC3fHk/AHgVoYxNpZAja/CoebUEzcOpnWVd1bU5lEBRlhgbEatkpSlESeJs
         1iUBNBmA/3THNq1MDp//XEhz4FkoQwxid1brr2XLGGm8UOsMK/S2+QpQxPgGy2gcyVjt
         22LwS9Id7VpviYD/uIXCM3c+wuKbm/s6jPKxoDbsY8e4oNvu0sTq3X8ZNxcysEW5GnHv
         HfTEkdSTWTtQ4vQVCvulWNozYLzJuWpxKf569EEItS4j5LCUTYrpQsicAn+UsPxuH2UX
         86ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731687336; x=1732292136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qf0zb4VfVYz2bFnhNWmndenFn6+Q+jSFdMU6+/qUZVw=;
        b=pdocDsMmHZg+TFpuNfVV0Pg3Tj1U65ikxZMqJs0P/5hjXxn/Ru9p+WJuxrjyQXGY2G
         Ex9v1Di1WGSfvjUToBaHGAQtL+EouYgVgusiFXl8yX17Fqhk0+eKD1Rug7tllx1X0EX5
         OwSsAXf52hvL98xvm6/Zit5lVmkfA/V2JJYR5wJlnhSHL4z1KSGop5YlsY+lDhzvSUAT
         sL1WN7k5ckaiOVPgH9/rmC2EsWLPqwfbH8KzgoLlEuMYvbbLP4m6Rp2eoF7jY08VYSdJ
         jN36E9oticKs7MYVK9e0Jf23PqZLhnDps0WzHvL1YUbn6vm1trCiHapiv5AHJ7jXyeRO
         t8cw==
X-Forwarded-Encrypted: i=1; AJvYcCVDFR0ibz0EgLhulH3L5yY/M3qLMJ1PiYAKh2LgRVx7Po5KA5IEav4TtxmMAi6kb/tha4ycSWokXlM/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1svy14nJLu//n9jbbq5ELUvtgyiqph3lYkafrLpJw1RlcjacY
	dL88IBTk+Hyr8GYMnpn4qcOSPHpjw1Pvo5VadUG+vdCxudHfeU/V/9+ny2LA7fLOciTHqjJqx8X
	n9XO8JJpfGVjP3x3+vmnvYMuR9exjDN8xCLs=
X-Google-Smtp-Source: AGHT+IEMckUqroiNvqBAubYUa6y/ZYk5x3dY2AgrwbVdsf0BF7y5A7gqM/UNhT4Pfc3C7QURedxq81KHBe0chgKmZ/Q=
X-Received: by 2002:a05:6512:3e28:b0:53d:a6c8:fb94 with SMTP id
 2adb3069b0e04-53dab2a2213mr1563377e87.28.1731687335399; Fri, 15 Nov 2024
 08:15:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-7-honyuenkwun@gmail.com>
In-Reply-To: <20241111045408.1922-7-honyuenkwun@gmail.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Fri, 15 Nov 2024 17:15:23 +0100
Message-ID: <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com>
Subject: Re: [PATCH 3/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Jimmy,

On Mon, Nov 11, 2024 at 6:01=E2=80=AFAM Jimmy Hon <honyuenkwun@gmail.com> w=
rote:
>
> The RK3588 Single Board Computer includes
> - eMMC
> - microSD
> - UART
> - 2 PWM LEDs
> - RTC
> - RTL8125 network controller on PCIe 2.0x1.
> - M.2 M-key connector routed to PCIe 3.0x4
> - PWM controlled heat sink fan.
> - 2 USB2 ports
> - lower USB3 port
> - upper USB3 port with OTG capability
> - Mali GPU
> - SPI NOR flash
> - Mask Rom button
> - Analog audio using es8388 codec via the headset jack and onboard mic
> - HDMI0

in your v1 patch series you mentioned you do not have access to EMMC
to test. I am happy to test EMMC, but I had problems with the v2 and
v3 patches.
v2 dts did not compile and I was getting errors for the hdmi0 entries
like "Label or path hdmi0 not found". I assume I am missing patches.
After removing it compiles but the board does not boot.

v3 patches don't work against 6.12-rc6/rc7 snapshot. The patch that
modifies the 5 plus dts fails. I again assume I am missing other
patches.

If you have some info with which kernel or other modifications I can
use your patches, then I am happy to do some testing.

Cheers,
Marco

