Return-Path: <devicetree+bounces-61232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3688AC128
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 22:11:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FDDF1F2100E
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 20:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B44442056;
	Sun, 21 Apr 2024 20:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BftnlgYI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E256879FD
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 20:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713730278; cv=none; b=C0KFqaN1Vj+atQh3SGbs2IdG2MFj15XcbLLq793y9GFBRXaRw0uQUH5ZfOvPSaxCnmGPN4iE8kp3fU4QNXXFDUeGbr9WWTgTLX2hnsyYhJ0rXhZA1BuEKk9ss+nzqikguXt0JCKuloAW5JSpMlRUj7Z7b8MUazCNlZwgwGWn51E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713730278; c=relaxed/simple;
	bh=qqMBfA0N+w7XGWIBhraZ8GVSy/adytCb55VV+xgaTUA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n3TJW5F5RHw7kuTJZiusG2oH7U51q55IDfZS7syuJs4SJfPplVbZc6haneeATw6RvUPzc1vSehQClj0/XtlSZQd8sS/EoVCLGkk7bun0RpwX8CPpxd21r0UrxKNYIMHJNYmCjB3NzvW+t+YMsUCTx/zTnBbf5/WrxV5y7a5AH2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BftnlgYI; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-346406a5fb9so2957377f8f.1
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 13:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713730275; x=1714335075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3RwdqOtr//AaV24LaG86NV9h5snzCvAUKPrjQ8vmFB8=;
        b=BftnlgYIUlsm3wTJ8fG77LCi0wauwqOh432e1YcG7+VBMHsKGi8b9gSxYfu/HRhUUJ
         jXz7Ye1ZOyd1CF28YqfGWu9440hl5d3yus4e8gZuVXE5vwCrzS+jchSZbN4ofD0qLkT1
         PmCEAx5VN2jPWqT0wbhsndHfr+Se6u08pb6vuBSW7YUpW9Atk2+8YldVSCtwDw9BVd2L
         WKkIGJL5B3UYIpT1A1hlxWXJkC4kTZIVTIWWf4jKccqLyuumtA8naJW/0+KO1poF4zip
         gHrw88lvgJduPy7Z6D5JV0AqjZl6XNeiGnPWPn7cLhPDOR9tt4kZtEH3deBu7F3Mj6BK
         AoZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713730275; x=1714335075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3RwdqOtr//AaV24LaG86NV9h5snzCvAUKPrjQ8vmFB8=;
        b=qy0HwHalz/5CddmNzjqraVkRQW8gXNoJp3dBiPmZ+VnoylpLqygn3ehb2AqOJHSZ/a
         b0gkuYqU0ltjc7bPwdNf85Rk80uc4/5MzL7QUmlILp3qtUlOPAPzJFfhNhgiWi/sSVa+
         XCh4n5z8yUSD0h9InKeuYeMApdrZ8rEHwzJsqVylfoKZAlX6aVW6Qfqac124cynWg8TZ
         iVIvnC/nXClSq9ydboslHsFMVd4Ynwo3icd38jdm5pmTXEHonKSr9AiTX3GWQXHmPFiQ
         j5jaagUi8kKQBnp+vi9zwc9Ao203A8KnJmmQA/tRXuhsYZS2UMu+g3ST4/ZbtNm8iU1A
         ri1A==
X-Forwarded-Encrypted: i=1; AJvYcCUrRTrMGUJJhX3uZGsvbGwp8onbZOjpniLfI1btt19oBZ9rZCJQeghZygF3eMAU13ynkq/wn0ikiLAMMig6NOJ/l5IYh9/6acyk9w==
X-Gm-Message-State: AOJu0YxjyASUfUV6seugX+Yf0Z3d0W8WnfK1uogjo4HmlCcud1Gyi/4M
	Xfx4o+qwEgYCTXjdFNmv8LzJQbzJ866omTYwVuoaFru/bLb2nl10
X-Google-Smtp-Source: AGHT+IEqk4KI+7BlHqF5IqUldRnCMFoNl4zIRAo51MUO37B3RZ51InldpXjYE1nGvwIC7tRm4HdxIg==
X-Received: by 2002:adf:ff8e:0:b0:34a:56e7:5cc4 with SMTP id j14-20020adfff8e000000b0034a56e75cc4mr5418624wrr.2.1713730275182;
        Sun, 21 Apr 2024 13:11:15 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id w20-20020adfe054000000b0034a366f26b0sm8488295wrh.87.2024.04.21.13.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 13:11:14 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: dts: allwinner: Add Tanix TX1 support
Date: Sun, 21 Apr 2024 22:11:13 +0200
Message-ID: <13495191.uLZWGnKmhe@jernej-laptop>
In-Reply-To: <20240418104942.1556914-1-andre.przywara@arm.com>
References: <20240418104942.1556914-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 18. april 2024 ob 12:49:40 GMT +2 je Andre Przywara napis=
al(a):
> v2 just removes the premature OPP header inclusion, and adds tags,
> otherwise it's the same as the previous post. Based on sunxi/for-next.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Tanix TX1 is a tiny TV box (60% of a credit card) with an Allwinner
> H313 SoC. This seems to be the same as the H616, just the "bad bin"
> version, limited to 1.3 GHz.
> The box has no Ethernet or SD card slot, which makes booting from it
> somewhat interesting: Pressing the hidden FEL button and using a USB-A
> to USB-A cable to upload code from a host PC is one way to run mainline.
> The box features a minimal set of peripherals: one USB port, 8 or 16GB
> of eMMC, an HDMI port and an (unsupported) SCI S9082H WiFi chip.
>=20
> Patch 1 adds the DT binding for the board compatible, I refrained from
> using the H313 name here, since it seems to be functionally identical to
> the H616.
> Patch 2 adds the devicetree.
>=20
> There is a blue and a red LED, both connected to the same GPIO pin, but
> with different polarities, so it's only either one of them enabled.
> I did not find a way to describe this in DT, so I omitted the red LED.
>=20
> Please have a look!

Applied, thanks!

Best regards,
Jernej

>=20
> Cheers,
> Andre
>=20
> Changelog v1 .. v2:
> - add tags
> - remove premature opp.dtsi inclusion
>=20
> Andre Przywara (2):
>   dt-bindings: arm: sunxi: document Tanix TX1 name
>   arm64: dts: allwinner: Add Tanix TX1 support
>=20
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../dts/allwinner/sun50i-h313-tanix-tx1.dts   | 183 ++++++++++++++++++
>  3 files changed, 189 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h313-tanix-tx1.d=
ts
>=20
>=20





