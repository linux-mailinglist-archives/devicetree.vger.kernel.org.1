Return-Path: <devicetree+bounces-149783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2697CA406FB
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 10:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6DC219C6F53
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 09:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523CD207649;
	Sat, 22 Feb 2025 09:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AQwbxbyH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4452066ED
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740216955; cv=none; b=oMEjc6Ouu+XaXUQn8xsE+yE9w4YT4SZ1XpANMyCFwV+0BLwDoRwYMOJ/ffbT1z4UYfOY0Y4DiKL7/z5E3BWFKcYy7dWLEe0Nfr8QkC269dvACdpewD5pLhru0BpTvrKj5Bmqmex5TQh8Zc0R66qR0cpf39oXD2LBqi/7akeKzqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740216955; c=relaxed/simple;
	bh=tY0toxuyeFkv5yLBBrKxkKw5L2ZKpN3XGwVbVHevqFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u86SZSsip6+VTp1eoRdb/UAIWYIFa3u6pKoOBpnKXAPxCej50bjcQwaJl8ThpOzUqJ0rT2Crk1DZO8mxTHR0l2fEY7Zksn1nifzMNln+xqOnmBxAhewHfCfaiMioIL7/knrauYJS7iX8hUUUYgZV+FcI1OB5c9pFEO4oBqG2fUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AQwbxbyH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-439a4dec9d5so26810045e9.0
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 01:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740216952; x=1740821752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHlH9GRTTu/x712yX9JTl9QV/kQ/7As/47pnB+L0hd4=;
        b=AQwbxbyH1oNiWZAe+0/EcpUm4Xs1b4wKPMDDD6BXOkG46WezQv1YlUCUP1IwitLtEe
         iqNzG53A1AbZ6Bxc3RdHPQ2WIQ531/L7kpbfHmm88ifOb4Waee4/ujseDCAUNgQfaQD7
         5LzCQARl+HFjMhDcySIepknIKSVDk8H08mf8X7VWBeOFtbZuxTIyPpuPmdnY1m882veW
         Dh/YOooDjlyRzw3m6S8raYIt/14R77mNtMbrj72VaH5vOjLB7mrqoLKIn+Wlx83CNVj/
         4OklsAiiijb65TpmANrFViQZcx2W+fgsdt0aO2T5BBJzr4ToOPdyUybV1ou1aZ50/aki
         skzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740216952; x=1740821752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iHlH9GRTTu/x712yX9JTl9QV/kQ/7As/47pnB+L0hd4=;
        b=X7hl4afLOJKvxvMk9Z+68DCOS0UZPAreqXTdKWoJqhbWZ0T0srpIm37WVLDkEfuwNP
         xheRmJJOgNay7zKEduTYPXcHywYR430F2KsuMS46KK7g8rE/d7IGpR++IRVCEVMUFDgw
         EDFMVTOrLjfiIJ2RU3zw9xLnTHUffANbQLBDIxjHwcTRZ8YlaCTYmcwF9+4BNVrSDp2H
         UzSOnd/WhrvwIXqfYt8d53LgcmKkh0l4mPmUNNGOATxu2oHzoVHm0tKfYOSzDGkorY4G
         O6VmYMyqQ5jP1RBt9zhXn+ffyHxZ+yI1aJrR/m5V+YsINWU8I4hKiUQFf8+Fk/POL2DL
         mq4A==
X-Forwarded-Encrypted: i=1; AJvYcCVHRz4THwxiT+dpSwdPj8/PYfLBNH3MR/6DEI9K41xxcCwi7j6vrT3WH2wO67+DnhQL8InoYy+199Bc@vger.kernel.org
X-Gm-Message-State: AOJu0YwEX2U2LGkMpY2rhWYJXNxJasq+LJXjyjA1MZljaIgaF31dimmT
	bNz+XeFh6qGusOAaJy0FvkxmzyiKQ8Lukjtp4b68AqweXbEBBPio
X-Gm-Gg: ASbGnct7+orXDDDqBj4B9BFhOir23NoUH/UPSzWG2dhrP4bJOmvoCrNCQv2onjRdym8
	V35kCAZgK9kQyLcMNLtVeaTs+Er/ewqQwPa1l1VQthW4VOTc15gmP5sCnVp+YKpALPmKcN+LEAC
	voSB26s/AoVDo6SQ1sKKwtg9PpryIDWvbBFMVY5qCed0VvVYxPD0DWEziA0fkAq3JUFPi6Q3FhK
	9C+2vG8VYbGgPEBWAapKNYqod8iFUR6T6d1HVj7dLRjopgmogbhuaI7dsQGpKfxEkEHuRRE183s
	3pGM4is1cMFgjxdZ9R9Mb4jv5ZUCrUtiABDbcVjCSdE9AxIJLroNtiSgnCHAKAALEjDeaOYb/4J
	LmQ==
X-Google-Smtp-Source: AGHT+IF/vk0QCfHjxCD3xQN2FAZ8znHgGm0G7SYedRPknv6M80yqxBaJ4GKJcXeQpUbJdA5Bq/HgXw==
X-Received: by 2002:a05:600c:3c86:b0:439:9b80:ca6f with SMTP id 5b1f17b1804b1-439ae1d7272mr66049675e9.5.1740216951812;
        Sat, 22 Feb 2025 01:35:51 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258ccdccsm25767979f8f.24.2025.02.22.01.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 01:35:51 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Ryan Walklin <ryan@testtoast.com>
Cc: Andre Przywara <andre.przywara@arm.com>,
 Chris Morgan <macroalpha82@gmail.com>,
 Hironori KIKUCHI <kikuchan98@gmail.com>,
 Philippe Simons <simons.philippe@gmail.com>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ryan Walklin <ryan@testtoast.com>
Subject:
 Re: [PATCH 1/8] bus: sun50i: add DE33 compatible string to the DE2 bus driver
Date: Sat, 22 Feb 2025 10:35:49 +0100
Message-ID: <9408152.CDJkKcVGEf@jernej-laptop>
In-Reply-To: <20250216092827.15444-2-ryan@testtoast.com>
References:
 <20250216092827.15444-1-ryan@testtoast.com>
 <20250216092827.15444-2-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne nedelja, 16. februar 2025 ob 10:27:08 Srednjeevropski standardni =C4=8D=
as je Ryan Walklin napisal(a):
> The Allwinner H616 series includes a newer display engine (DE33). Add a
> compatible string to the existing bus driver.
>=20
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  drivers/bus/sun50i-de2.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/bus/sun50i-de2.c b/drivers/bus/sun50i-de2.c
> index dfe588179acab..47c87d51a603b 100644
> --- a/drivers/bus/sun50i-de2.c
> +++ b/drivers/bus/sun50i-de2.c
> @@ -31,6 +31,7 @@ static void sun50i_de2_bus_remove(struct platform_devic=
e *pdev)
> =20
>  static const struct of_device_id sun50i_de2_bus_of_match[] =3D {
>  	{ .compatible =3D "allwinner,sun50i-a64-de2", },
> +	{ .compatible =3D "allwinner,sun50i-h616-de33", },

Since there is no functionality change, just go with h616 compatible with a=
64
fallback. No need to change the driver.

Best regards,
Jernej

>  	{ /* sentinel */ }
>  };
> =20
>=20





