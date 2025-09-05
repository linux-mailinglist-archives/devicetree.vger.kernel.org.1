Return-Path: <devicetree+bounces-213171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80724B44CF5
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 07:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA18CA440EA
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 05:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94E9226CE2D;
	Fri,  5 Sep 2025 05:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LTC40j2N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B122F21ABB1
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 05:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757048771; cv=none; b=RM97YWgwt4dDj8HyDwflouDiLyW+yGySFR3WHhr4RYau1Ts/IZy2GI0I0hPvl43NAWqsizH5o+ucg/IsQaj4VItlUCJHmTdiE0byJ7bs8wVRzNDRA9dFMUUDlFAbrUmJK5Tdt2w4MMkmMvjshcK7Lp9eMUL/mULVwERxGlTelUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757048771; c=relaxed/simple;
	bh=uyMA3OlxBR+8XDI4/fAiYBr3djQIzAJYAC/5TroND18=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n8754//yB2Y5KvetSSpyXBY1OMxNOnDieGeBrnqEzMdp11gX9CTNmaMae5WFlFFXWN3PgrpwUBkJfAFO09ienNzA3Ic0kEjnpw+WA3/66ujx6ljgJl+PlBtofbxuvq/Zh5gsjLrphKkLCsR9jKW/bAmnqhW5hQ6y9uNkD6nMkLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LTC40j2N; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5607a240c75so1845049e87.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 22:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757048767; x=1757653567; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uyMA3OlxBR+8XDI4/fAiYBr3djQIzAJYAC/5TroND18=;
        b=LTC40j2NhJIUbfcfiwhuFTP1F4xtwf13zov2SaNIy71Uj+HZhKA4i1+IL+7NQ4ttpm
         I3l3sTpHRneayPf47ZdQGN936BlRMJUJ8ziIHRvjTYZJr2qZ+u811X8NZP1G8yLD538V
         2H6G9DZLCq0iUkxwAQnnJIJEYree7JYI5Efhk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757048767; x=1757653567;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uyMA3OlxBR+8XDI4/fAiYBr3djQIzAJYAC/5TroND18=;
        b=bcXULtXgkPIfCKTG9KxRyU/PxPbm2hxap1X8X0zAuBAXgH2+n2mNUZSc31f2Y2Hs/q
         wWJSk5OyTSgtmYCDo0mSqtLfHJu60Q4prgY5eZ4M2aBmxy1lR7qeD/hsFMTMAltPgf0P
         Zqhl3NQmWWFCXQV5ay1LkIqn0hQiPnZpAvZzruk6jQF0MCpD2ouXXOWQcIIWP/ux2dbD
         NmV3/hJq+f5l0jtafwzbzn9De0vXQPTTMtAwWe3FMWh4Z+GNfRYbHKojM7Zk5rQgFP1G
         HdKlqPZZ6BeI7lYubKp2NWJVi4mdnyVsgOY9O5fLqJ568humbhnXIAuuo4JpKNRSJWaC
         s9OA==
X-Forwarded-Encrypted: i=1; AJvYcCXi/6GiBp0AZBJwDJoed4+JqHbAxD4826LhI8XJbNHBRVnnyHPwaMDtiQErhMg375E9YrxvWdKuuHaq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7ypCm/jLndOImtBceKqp2a+nLa0JGenyzZT4HKEKNQyNU1fyM
	cKHaBUQbpAZzWLj4IvsX75r0Zw13xhSwHNNevcE9sS2qvYPhRRhSdCCENB6E8fpo7RsBxTQZtAp
	h8d714j6X/4xmJ9bXtVhrVCD12aRsR24JRfcIcAwVZH7pEqGAM7WH0g==
X-Gm-Gg: ASbGncuosP5KPWdTazZZL1sVU1H09Cf5tNtSiZbvw9/7JBEPi0Ukk+Do1KStiPQGwad
	o27nWNDU+91TiExc/S7aupHsQs7RBuk9F4dZDZQrSuJuZCt4Sx920zs47EuJffzD6h/7A4zRbTF
	dGKZ9R47Tazczh5lHlAwXAa4ZBqaBHVBVfbAziYWyvZyQQGghh7tHKcB+AkhtvuOOL6IlNwuYwZ
	6NeKoFmC1q4Jn78TEOglrTigjcmr+kKlWma+Q==
X-Google-Smtp-Source: AGHT+IHJjUpnhP9a9BCpvVLpzZvdmFRUDDu4oemMG1IXcZXVXfUhtp9wpdL0LzSmbU5jtUN4x+9LhikiWu80XNjJGfk=
X-Received: by 2002:a05:651c:2109:b0:336:d879:140f with SMTP id
 38308e7fff4ca-336d87916c1mr56567881fa.21.1757048766845; Thu, 04 Sep 2025
 22:06:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829091913.131528-1-laura.nao@collabora.com> <20250829091913.131528-15-laura.nao@collabora.com>
In-Reply-To: <20250829091913.131528-15-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 13:05:55 +0800
X-Gm-Features: Ac12FXzUw4mCbky5MPiHj8W2ByhD9sAje7rRwu3IY62BkDBlMB6KCGdwR2WWCfw
Message-ID: <CAGXv+5Fj9Hwmk2y_bZhGX0EUEY42tm3t0nTrjtV-sYhD_B-xVg@mail.gmail.com>
Subject: Re: [PATCH v5 14/27] clk: mediatek: Add MT8196 peripheral clock support
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 29, 2025 at 5:21=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Add support for the MT8196 peripheral clock controller, which provides
> clock gate control for dma/flashif/msdc/pwm/spi/uart.
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Not sure why CLK_OPS_PARENT_ENABLE was removed, but it does seem like the
right thing to do, since this block is always on and doesn't require a
clock to be enabled before accessing the registers.

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org> # CLK_OPS_PARENT_ENABLE chan=
ge

Note that I did not go through the bit definitions. I assume the other
Collabora folks did a good job of reviewing those.

