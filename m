Return-Path: <devicetree+bounces-250702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 715E3CEB266
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5E7A3041577
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3E82E92B7;
	Wed, 31 Dec 2025 02:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QFlX6pil"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D982E717B
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149922; cv=none; b=F8+MHgoqQkq2Dq1q/2v0T2ZXgWQc451cNT4NpcRuOHqeB3R+FUcmOBSIeo0lqQmuZu+ZPJZn0NyjYo8ya37DIuS+hBsgtTvRsE2mbs2ht8QRcUY5tIgOcignpBsuy6ERqnNCXJnqQeih3tX69XTKrUO0HyLnBuIQoUMwNvSKAJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149922; c=relaxed/simple;
	bh=CnLEcq00jNKVePBTO01RS8zWx3v21x+9EC1/6OoTYI8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XB2AC+GXBphM8X8Gr2Zsj9+E2cH9pkQBMrFv+fFezc+1beu3nsUcxy/mpN5hMepnyD2sao/P683cFhSwRtz25TGs7wsEGUbWMrkHYw8fHr9Wl/yHP9kHE8mI8QrUdsUHzkY7IKOYZx0GMWVPDpwV2Wx5JDIieJfZIm+iO7mqgl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QFlX6pil; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42fb2314eb0so8087045f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767149919; x=1767754719; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjOF9AP1kWt7dtM4qZ2BnQTZbb0vLZh3HtXtIU2plOE=;
        b=QFlX6pilMEXewhtLdBOq6rm3Y8TRP3H1oL5Yb1+uPuLzO96pKjF0/hdeAWPU68QduP
         KorAlW1l+iMZWyUw5JniG5gni0ItBdwVSnXb2N7LZGPxIVUV3jhQsahcCZDWt9hZpxgl
         lcFlqyc8cV7Rk1nwMlA2Y2ZPQIBagloYM9gcHSephdosBkIN+LqW1KlhY0qUxogDqTtU
         h/mKKeUCrb3pr/owXtnGCztyNtO5ikZ8KMugvN+2HfPplto2cHs3xQ+2dVcosazRu6cb
         s6rYvNBnwxL1WzPycLphO3rwit8iR9wEULoCSJoiag9EUOtKg+NXmVBUQLqjYM18MWml
         EXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149919; x=1767754719;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tjOF9AP1kWt7dtM4qZ2BnQTZbb0vLZh3HtXtIU2plOE=;
        b=lKVCnSN16zEZdZV1+T1VD30w+vuLyCr96OTz2S+wST0ZdPG6SWqYNcr+QdIDHCDxs0
         rc+CUGpgv/dOcuYi2o4K1b8rQrZpaTEFZrDkQpmR43Q+/zcylcXmhVLkS/LxITy4J3r1
         K2ywa1kfJi2W+IJ9M7gerfdI+5Kb0WHY2E+tGzp8DHIK9YI4VlcBV24MxTnnmAlRn37L
         wBQ5YWU+eRCI/boprOZhrYBZFdMvhWjlwasJLUrkiVN6uVOCW3v9ee2lLPlcL/yocm1L
         4qK3nOiwVfMhtw0okdYgzSqY0j9Oyiw0gz6XzkBwk6koixS1cvN2VVjOWVPZiUx0IX/p
         2pOA==
X-Forwarded-Encrypted: i=1; AJvYcCWBjeRsP8uznLT+YKfaoumxxMqbqH7r1u0shdZH2fuBwfwBs+We0b7q3paEYKeHfu5XaI3HOKtWeU1J@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/wf5NXaGkOtLHIUxw2iRyfEYd6nSouEKIlysFAaCYTmIyQWSy
	z1gLLHNqe9pYFUvZcwCAP0ree3aH2a++vN/m31C9D1t0iA5xGSZ2AshVe6TSQFMVegxMVc9zp/p
	bNMD93ukGWNks+J1O9JPxpcMZiZQBwE2KOQKN
X-Gm-Gg: AY/fxX6PielzTTP5NrIpZLFuuJ3nlldzEgVoLwwMOrYP3HTFNausc4wArkPcZajfIqU
	xHFFbDhhdHk/Rezbrq0vLuW4S5yvnHc8Z290bkfDOcjdYOC/plY647u63EsRoXgMEcQtL3IVt9j
	TPnRsbJsMAdFknimSK8xNwuW6yrUJToMhiJx/95ATF8q03t1Wy1AyGcJG+mf4G4V7tLQdUjIPkH
	DdtEWhIMaCFHVNxFqmt2zpuJVw9YsPwlzn88+23S823VW4bM77I9jYMRrh+BW5FswJmy5S1FAmE
	opiAEGEsZyx9Voy5KFx+n+R2YNM=
X-Google-Smtp-Source: AGHT+IED0/tBR9xef6QSyYr/ksg8LXHa3v+MUTMcvi0rmIK6StQUKqxOWmDb2kvsqCq0GK7718Mu28JTd3JN67IAXiA=
X-Received: by 2002:a05:6000:40dc:b0:432:8667:51c7 with SMTP id
 ffacd0b85a97d-43286675205mr16586415f8f.44.1767149918957; Tue, 30 Dec 2025
 18:58:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
In-Reply-To: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 30 Dec 2025 20:58:28 -0600
X-Gm-Features: AQt7F2pDJ_ScaKl1BWdf-T290QF_8Ch1DTovPrz3SxZy6maCo-TigDI5eUGwzL4
Message-ID: <CALWfF7KHyKmDcEL9=mYzfCRWc_cymNscoFdeXr8P2frJeww5vA@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588 boards
To: ricardo@pardini.net
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 30, 2025 at 2:20=E2=80=AFPM Ricardo Pardini via B4 Relay
<devnull+ricardo.pardini.net@kernel.org> wrote:
>
> This series enables the NPU on a few Rockchip rk3588 boards.
> In every case here, the required regulator was already described.
Now that the pd_npu has defined the dependency to the vdd_npu_s0,
shouldn't the regulator-always-on be removed from the regulator? When
the Rock5B enabled the NPU, it didn't define the regulator with always
on. [1]

More specifically, the commit message for the introduction of the
pd_npu label mentions how the regulator no longer needs to be always
on. [2]

[1] https://lore.kernel.org/linux-rockchip/20250721-6-10-rocket-v9-10-77ebd=
484941e@tomeuvizoso.net/
[2] https://lore.kernel.org/linux-rockchip/20250721-6-10-rocket-v9-7-77ebd4=
84941e@tomeuvizoso.net/

Jimmy

>
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
> ---
> Ricardo Pardini (3):
>       arm64: dts: rockchip: Enable the NPU on NanoPC T6/T6-LTS
>       arm64: dts: rockchip: Enable the NPU on FriendlyElec CM3588
>       arm64: dts: rockchip: Enable the NPU on Turing RK1
>
>  .../dts/rockchip/rk3588-friendlyelec-cm3588.dtsi   | 34 ++++++++++++++++=
+++++
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 35 ++++++++++++++++=
++++++
>  .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 34 ++++++++++++++++=
+++++
>  3 files changed, 103 insertions(+)
> ---
> base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
> change-id: 20251230-arm64-dts-rockchip-rk3588-npu-enablements-1e2830d2e7b=
0
>
> Best regards,
> --
> Ricardo Pardini <ricardo@pardini.net>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

