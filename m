Return-Path: <devicetree+bounces-228988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E4BBF2D61
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BBC918C1506
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE41332EBA;
	Mon, 20 Oct 2025 17:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TDAJU26Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D4D332908
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 17:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983175; cv=none; b=VgviNs8V0dU9EjD6ho7WDhMiExYyoJWt1cCq9FW68U/4SYsyKlNz95ro+35Yh7cZtIBbM5dQ9CfFsCAF3SQCaCUmXkknreYwrwokZM7k3z65waPMA86IbZ4uhk5+5Cj2pRKWtKAEp9rrp0LJHoGhXvXLSLfdpHjBy63D6ZtxBMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983175; c=relaxed/simple;
	bh=aUreeKtpN2WmnEqKckespxLIC5wGlm6WN8+84n04a2c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GkC3b3BuG+s+JdbSIkdW/suiE/+J4hM48jrtVnqK0zxm3mBN9vh4/1/RQk0b1iG4lxISrHzJR3aVZcq0gG9tfTT5xFlLuJyWW0tXxt8mUPhmpKvE/RWhjDSuRqDv4ujMEPngFor7HCLLzzQgNyUILJgiVTf+1+pdgyt5tn8sL04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TDAJU26Z; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-427091cd4fdso2086396f8f.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760983172; x=1761587972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aUreeKtpN2WmnEqKckespxLIC5wGlm6WN8+84n04a2c=;
        b=TDAJU26Z1JCMKfmUGDyMgFDWfG/BKzVyeythVxkCiY1UImv2QpnNdy+eFtyd9iPHvV
         mAY9DNLERY5mNX/qTEjZT7JT9A3DEKVoJYEgpStEjf7nz4GPewjBhLLvbQZPxTrL3a2e
         WA4RCHzI4/bPWZyQxVm+PD5BM4VYrFOAz5xMKi3B+NIYMeY9tIF3gU7tTlaDb9HfY2ht
         Heqmi5HMQmlquHu+lpFmtBZfGTIggDmjpxl42gTzV4y50+jVxaQB91o1SAjcKZ/inJlz
         UHMxVqZlqZb5UnGZZp7alNSrnMTaDxuqSXH4kt8Mqcq9DKt4pyoD8wsgr3NQi44cduiR
         mE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760983172; x=1761587972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aUreeKtpN2WmnEqKckespxLIC5wGlm6WN8+84n04a2c=;
        b=UDpfZfsDd5YyRpOsGf44NhpWIxiq1yJpTW2fRlFNWJ5SgmueBjmiUTH4kINSt4xHrD
         AsAiwBgHAzjJJCvS4soOa+eldJ/3Omnj3G3zyLHObfjvvltuVrGyBC5hq8Cj5rN1iUMr
         O6GKpLytFloSeJi4t1hVuCDABi8/LfnmCowBIbZbYrGryZ8gwbBFtwgSqULPkuEU+utR
         teTasoP7ma1oYKoASXIQxmYsuKM/J/bgrItBi3wTHi+BEqap0DP8krTDwysDjoai7oDH
         XKRWz30Cl6iS+CIHEYaijU5AhPY/7SXSlx+nkUay5SYArTVBQxc/SdkWHh6gF4fLciiO
         dS1A==
X-Forwarded-Encrypted: i=1; AJvYcCVTxKo+VSrm2Yn4pbGamU2TkVE6/AdpIcItL+zwPEWpBGUDwP8MVqAe7uTAT6IzQ4NroGuKoBqKw57n@vger.kernel.org
X-Gm-Message-State: AOJu0YwXK8yBXyHXbuc9bjhTT8+NWSJypVZFuIYzOuks/Pb67eQmnjdz
	B36VUuK/gTNn5L7LKXAhh88gbgnCETIKmbOh5oDEuGI5D48ZnkjnQ2bV
X-Gm-Gg: ASbGncv1RpFmkuKr5ZIWHZKL35V1sHKGVxySyOklJm84FuV5VvkaB2g3YMFWWRbLCKV
	j/ZwyyR18oPc3ztzfPi1OieBNf7V9gJ6cXrcHiIfT4cVblg8K39XnN0iz473gbYjl2EXFidj/jq
	n6+HM+tvR6oXI0IGiLyi2ySwseKZlX4+xM41aVQHaQLhQ5MIQUoD/VkQGZUthXfIvfnvTNQbuOe
	gb3FMI7g2DrTl/05YK8ltyu/tX66pOc1qpXCX+oQ7r6Nle6OajCXxzlIK0279GzNAbzvQZNDeBI
	I+0K9HRuouxj/pdH0tcdIaMY5esdhs5XQlisMf698Zx6Wpa5B6T/eljk7pl1TAdIk6gN2+deJNH
	bO82z5S5yoviIi147dYbqFGr4mzsM6ALA05xctuBp8Kjt8kgZ625KjAFmlxLsm6sO+d6W9t7/65
	6Znhg8uGLn5PqcEx+wrMZmLjnhSR7vcOAdeiIUeJCGwAUQ5XPgaIa55G7NpzVz7pZcUAg=
X-Google-Smtp-Source: AGHT+IHtpDIuvy4/yF6LdQ4qVWSEOm8AetCbAHS/ajv9TB9bfuiRLOt0expo+wltP4XyjrMHK3544A==
X-Received: by 2002:a5d:64e4:0:b0:413:473f:5515 with SMTP id ffacd0b85a97d-42704da2b6bmr9352936f8f.48.1760983171751;
        Mon, 20 Oct 2025 10:59:31 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f009a6c5sm16822163f8f.28.2025.10.20.10.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 10:59:31 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, linux-sound@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 09/11] arm64: dts: allwinner: a523: Add device nodes for I2S
 controllers
Date: Mon, 20 Oct 2025 19:59:30 +0200
Message-ID: <3906069.kQq0lBPeGt@jernej-laptop>
In-Reply-To: <20251020171059.2786070-10-wens@kernel.org>
References:
 <20251020171059.2786070-1-wens@kernel.org>
 <20251020171059.2786070-10-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 20. oktober 2025 ob 19:10:55 Srednjeevropski poletni =C4=8D=
as je Chen-Yu Tsai napisal(a):
> The A523 family of SoCs have four I2S controllers capable of both
> playback and capture. The user manual also implies that I2S2 also
> outputs to the eDP interface controller.
>=20
> Add device nodes for all of them.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



