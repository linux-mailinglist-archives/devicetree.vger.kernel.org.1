Return-Path: <devicetree+bounces-247853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B12E0CCC2A6
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8577F30133E8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC13534B42F;
	Thu, 18 Dec 2025 14:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h/qIxMC2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7FC34BA21
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766066754; cv=none; b=DJnHYlQZIVJEGY7EPO6KGbqg48xBRGTLaSWzByITp9NBhq0DXKenYN+Ox+8y2DGh950nS2c7tabJG/MkSow0CR9oiOsvLA0io4qzJOgAH0Bmlhh8UbTTprTlO+nBq6m56cV7i1I+SpciYzQrWEZgUOhtNggqI+oS3cSueChG5gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766066754; c=relaxed/simple;
	bh=oe8k3SKrzfjiRl4HNxM0G0cKAJDNwwM7iKwrLxI73QI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yg6DTtXFTC+sAALOUGPJYWmdIqYjMmsPU6EUPiQinAfUFuFZ19DW70TMKlHrfZPqXWEKncbLQgPYB+M14dVkGwjqucpove440A2UMbsfh63P0XZvZEhMNWRfuof2y3A0Uw/8a+fnfspTe/+5nPgwOieo4fXUOpYd/gA3Tufhn4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h/qIxMC2; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4edb6e678ddso8829581cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766066752; x=1766671552; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ltmK9xpXSaIRz3pvhRTJSdN7AZMXyRyfcfKgFOhGZkg=;
        b=h/qIxMC24f1X9+jjvOeTgQuM2vV3SnzNTjEFUJlphDXU4wU4JRzSrPgaT91oEN/LsT
         JjYSDELUUWp7EDY2XqgSzVMzu/symHpmNdt+vQFi5h8RhVrS/dBNWYz6cQSAw81qflDS
         EDKzoXx72RNj6DwPiD3L5P27oUoA1ShkblCnFikcinattQLNdHeyWmlD/HgR4BY4M+nD
         sSrM3PHX1LgPGbwPvwc0ofI6JS0lPOUV3qoOkM8/Bt+VJy9jRuihiv9i1SJah0HtZwwf
         CR8RgeUdza7QStlRCgn0LspfoaQG756fxolpf6GxSeK4IhDLdGixKiVspP232ul0exgX
         s+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766066752; x=1766671552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ltmK9xpXSaIRz3pvhRTJSdN7AZMXyRyfcfKgFOhGZkg=;
        b=WQNOmv4IY8BnGf0s6UBl59ZEiGqtFkVJsbySqNpQpiHfZ/eV/yqLQ5lfioQde3YwTJ
         QQhfTAtXp7fIeiv1GOoIYbn1pptvWDaXPmCBm30KHdvPLted1vM3rqUNgR9aY7GrRi8F
         YbeOpqhVR/PHyLH7tv7qmMOslSj8hha1AnwWoO8Y7SIDq9IbPnosdvN3FY3fcZj2wea1
         rMRldg6eTzT6O7d/uGMwN5ACkGFrWtPS46EpZVxR0xxfHsZQRQ8VTn/JFflaJ92ZOBGZ
         aT7gJkd8xbzoQCVirLmqUGM22Zp/aSe6sGMRZGOnZdvj77e9x0Lernitm+dtcS3MulW9
         Fzfg==
X-Gm-Message-State: AOJu0Yzqn3JV8910La7bRMj1pkcfUoVSFTUT3Q4D+iPwE2CAqLTN6Yzm
	bo4daW5/zqnTYdhOY/abnZKDKpztxC6XOLfnqOlw4WgIjzm5QbeJx00siZofChqCV/fUulit66j
	bCaKZvN5kOj9t2FRsIJ2dNOxhot0bZ5A=
X-Gm-Gg: AY/fxX5gBpkd2x8z2hIJR9ea/leT3ksNHBJlqENJfRozZ6mPjkR0bjJywWkl2voewGT
	17XqbmP0vXJl6Y1i5R0+00USmX5H7rOfxlAhv2J6g8BCQ3uwObCeG/QN6KnS3wMdIFSAcH+yIwC
	rgmrSQ9YExM9uhOIC0rcaF0dCZuZSLhL6ASfzrmctRoPEsaczv3pushvj3nNVhbHSzkccPowpWz
	VXKOpdPY/MpySG3lvlZpQLANhiyG4fAVKrnqcb8w2usXizM2DhuT8+GIE4zcr+eWvLZ8hVNt+jH
	JM05kI9OMH/KeUuIUYRCS4F17s4=
X-Google-Smtp-Source: AGHT+IEHaG4sTwzH22c/ZckVsDWqoLw43GJHfQ60VdybglqFIrU9y64fZ28TTU627IQMx5MWOzC0Peqta/5kUNVhrBM=
X-Received: by 2002:a05:622a:24e:b0:4f3:565b:c52c with SMTP id
 d75a77b69052e-4f4a68998f7mr11781131cf.39.1766066751883; Thu, 18 Dec 2025
 06:05:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
In-Reply-To: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 18 Dec 2025 18:05:39 +0400
X-Gm-Features: AQt7F2qXR-Ldb2gzOSYhMd9ao4yiFrifIbHOf6R3C3iyK7IWZa4Dc1eeoJgW3oo
Message-ID: <CABjd4Ywc-L0jvXwk253MDZwgN3srY6WQ5EhoKZ6wb+Hae376_A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

On Mon, Dec 1, 2025 at 3:35=E2=80=AFPM Alexey Charkov <alchark@gmail.com> w=
rote:
>
> The NanoPi M5 board supports pluggable UFS modules using the UFSHC
> inside its Rockchip RK3576 SoC.
>
> Enable the respective devicetree node and add its supply regulators.
>
> Link: https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_2411_S=
CH.pdf
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
> Changes in v2:
> - Describe UFS supply regulators
> - Add link to schematic
> - Link to v1: https://lore.kernel.org/r/20251127-nanopi-m5-ufs-v1-1-0d28d=
157712c@gmail.com
> ---
>  arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 27 +++++++++++++++++=
++++++
>  1 file changed, 27 insertions(+)

Would you mind pulling this one, or do you have any reservations?
There hasn't been any discussion, but it looks like a pretty simple
change, runtime tested and schema-tested.

Best regards,
Alexey

