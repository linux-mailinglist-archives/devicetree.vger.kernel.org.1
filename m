Return-Path: <devicetree+bounces-253724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B13D10DC4
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:27:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40B783023568
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE5532E736;
	Mon, 12 Jan 2026 07:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YNkvQTE4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2083E30CD82
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202826; cv=none; b=pl/7koiHzszSRXOxQnQWgnBebxyhjwFNpZt31L2KtzAgUzJ/Jxj3oskt7Usw1OzE1bQ6+Xcyhv/M1Js1XJotCf20LzlNHpC7Nr2H2GpvX6BL3VNLyisS77mS6kQHuAcmyYWQRiLPDcW33ShZmgQ+iRe2tLmk7m4KKtgDjcDIKFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202826; c=relaxed/simple;
	bh=ncCD7QdAbWZuTJ4VUM/GB5ZidYXAtNWFxqM/DILNihw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sJU4zgaz/GYs06bZfykY3jciFUkLvRFI684i6B52kMBMn0a6y2Q4jCFzOhYSanpZChfotjrDPhu8BD+bZwG3wEJzYfgg0iqx2CE6OXTPEyfsPGq8DHhE8mx4PnDhLsfN8Nd+YWULiXNqj/Ypev/HySgN1P6GlBiCbYlBlmLA2cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YNkvQTE4; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-382f087e6c9so29141241fa.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768202823; x=1768807623; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ncCD7QdAbWZuTJ4VUM/GB5ZidYXAtNWFxqM/DILNihw=;
        b=YNkvQTE41JxnfjdxyAbWzjQZFpliW4AFr8bSTMUpFOFg7b8aPeEi2fCqmvu+2PFMRX
         YSsO0eF+AfecBD4/EXbw8t9S5GAtXy04pbrpFwPS0hTY5eFOtmzX+596CWFa5hWeKApZ
         F+CLZfq5JNm8K/RRTE3uJePU/LI6uwTNZ57HU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768202823; x=1768807623;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ncCD7QdAbWZuTJ4VUM/GB5ZidYXAtNWFxqM/DILNihw=;
        b=eXOoqMgpRwpM93+9wRl06v82i3E7GKxSQIAmJ16FtPqI9Gv3N7WyC10iSRePPpBkzS
         qmvzDtPVPGgEA/6gVkTtm7/S5CANM28qnX2u0cSZItNRnYBsYPXlqIv2Wo2UENxZ8XX2
         vFBFhsrNg8yqLDdf7GKONZzCjUuxLrpXQzspYCCNjy9ciNCyII4DnJWNKOa1qo3bDR8c
         TeaI8UMBiozbfSFf62nyH2DFekMzuNGAk+zeRW+diXbElgKmifvz4CXAMfbANdotDhAf
         JI4n1TyHE9lylJqK1tdWSzBsNpAgxSTxdwDAQ0E1+v8HbktdijpewVXL1Ua8TLY3sJ5C
         S4Zw==
X-Forwarded-Encrypted: i=1; AJvYcCV+SnoBzc01Y5zKKopaGpF+sQpj1w4tJ/2rdzMG8cEKlTBkPX4ADVez1WQme/x/g+a670UmzSpgFYLs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9PabtVFlCtO4yPT256et4T76hhz6xKJ+nBz+FzoieVAdeVxsN
	1v+idBGWsoHXc6BhA/Up6sGN7iaismqQAg1fILyHlVUYoJ2/PL42l86tJmkGOC94PYpdWVlbUfY
	B7rvOgkCvmZZi/Y6bpYofIWMjqbfNIG/o6bhk1o54
X-Gm-Gg: AY/fxX6u/8f+l9j64uUvYkQrLTcNuAEexBwI8uc6Kj5ITNDZs/aG0vMJyUrgRj2CVEk
	SFRyE5BINDNWooZSphX8KhPrnpTtsQey3cMgaCtUKoO3otFsbGdtptERjBHYumEAB9RmRi6n68w
	JovuRLI+YVuJQCyubdHl85uxdqoCk3VXeGswqii2uWXO3gCekqoebLtQl2EBvKiF2TItu8vLvs5
	9QuAA/d24fnmNxCMbeZS1ymKgnf2QZYG6kg86yuT27iDdIL46YE4/whNy0BH+n4Rr5llvX4naon
	j7fAM4pSFfkOnnL6y9TllAPw
X-Google-Smtp-Source: AGHT+IEtdTzShXz4wPeF5M02jtiMqXCbiAjaUDFF6b38x8rVY+o1KK8e4krh8D/G4oVEUwnaUdpjoMM+H1TVs+8ZT5U=
X-Received: by 2002:a05:651c:18c6:b0:383:16e7:9c3 with SMTP id
 38308e7fff4ca-38316e70cc8mr33492741fa.3.1768202823275; Sun, 11 Jan 2026
 23:27:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-6-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:26:52 +0800
X-Gm-Features: AZwV_QhjiYvS3V8-WWKF8DW2GE2PKz9EYPOgwGThAo9U-y6HyA7IDDJVCRyVGDI
Message-ID: <CAGXv+5HmYUcwmXU2DyCEtYgsaJtVaLQQatzU9sUfiPNA0dQczQ@mail.gmail.com>
Subject: Re: [PATCH 05/11] arm64: dts: mediatek: mt8183-jacuzzi-pico6: Fix
 typo in pinmux node
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, sjoerd@collabora.com, 
	hsinyi@chromium.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 7:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Rename "piins-bt-wakeup" to "pins-bt-wakeup" to fix a dtbs_check
> warning happening due to this typo.
>
> Fixes: 055ef10ccdd4 ("arm64: dts: mt8183: Add jacuzzi pico/pico6 board")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

