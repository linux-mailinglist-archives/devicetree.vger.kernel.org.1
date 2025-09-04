Return-Path: <devicetree+bounces-212998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 411DDB445F0
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:58:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06E941891F66
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5D125FA2D;
	Thu,  4 Sep 2025 18:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VsB1r+8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB302586C8
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757012318; cv=none; b=nEqbPOZbG4Ql+4k6vFEgA1YFXIJduZrTcjwkjcWMkkXzy9KlyuYPgmefEIvHjTVwNMfhIoatqfhtglhheh0g3VpJfNOyo/G//tDLfUHDXT2g0wabPXN+de3E19zVfTVTApMv0dhXsWEq5TfAaCcWwuMEPh2Nv4m9TvS1eqh0MX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757012318; c=relaxed/simple;
	bh=eXvwqhdr5kSofiFo/qxPpUj+SANKhSZFihnmnpGw640=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T1aG2WV/6UUH3f3WceJvMvYchhs77KH+0S8CHx8HSWSwRM4sChSfbSf+JvxkCVPVNteNunu6ZuxUK+kXBg7gkj7vi+LX3HeatUIiTHb4WCf7ajhGu2/54IjrWXGVw70kNKQikE+DzweWAOwogCoo44nsCWPFWOtLZcJyHOW5xiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VsB1r+8n; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f98e7782bso1627035e87.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 11:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757012315; x=1757617115; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eXvwqhdr5kSofiFo/qxPpUj+SANKhSZFihnmnpGw640=;
        b=VsB1r+8nlysBMHPYCxFE4JKWTFG+MiNWatds6C14GZ0SQJq42TilqQslyEJgJuAFTw
         X60QBNL2twwNTyNFzK0BIYP6lsWuWonoWfbeAOgUkttm7uCNz8xX3s/YAvLjZBEpbaEu
         UFWB+0x6gH+AJvO7cxykB+pUS7qlA6FJ19x9Si389r8Tf2mUBSsjLV4/UAS+7hdXMmmk
         kNWAXNBH0Vwq8XGv994jFuVfR3T1IUzpjs0j4iWYdCKoo3O1No1F7dWGErFCm2ksF7OD
         RUQ5hQHXs+I3rrDvKySnrmnOMEB+0/6hwoBVY+qVxHxmGZ7m8DizDmNQDKTYuy4H7qUn
         Xemg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757012315; x=1757617115;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eXvwqhdr5kSofiFo/qxPpUj+SANKhSZFihnmnpGw640=;
        b=bX3h394N4tP5WO7as3SvMAK9AgQos0lt2wGAX8CGpbgQ48+oNZNFvdPoNqeguyW4a9
         5Av1uujoy2aSPH8GcihPPmhOM88haowuljSFz7z/pegKwxsgAONlgR9OTD3kLPCA2RGJ
         vXM4RkMiBN4U0JmwiLDhWuA+1UEtaIj63t56sjVtnC6krW9euubGCni9956AvXqWqKzc
         /KGSXNaOyvwVOSpkvkqIyeOYki9LnPJNzVPF1yWJ0RdbzawoGiw5otfu90ljPZtRgkRs
         nWCI2RyPOKgl18hAF6aROmk8mtNsRm0ZNDbiojPpMcMTUhv7AnO8U8hnBqP3qByQYmAn
         dwGw==
X-Forwarded-Encrypted: i=1; AJvYcCWVhk5ohhhftk6KRnEc1YDucPupTuz8owc0QTgL7UsV0XNkrWiAI76g2EoZ3EeYzbN671YgwsITEiT+@vger.kernel.org
X-Gm-Message-State: AOJu0YxwwG6kqrCOxNPvNG7HvVniJrzdOZB9N3M75X2uwn1UJ4b1M7rA
	xDdzhLXs1h/JxNLG/8V8qmtZieff4k3rMFGi7aBkVlipkL7dc+XDcvOqpcsW9ZN2NCKg24KC+3Z
	UJFqWOS9pzBt6XlHA4sWRLD5Df9mZQYOWRD4Bs0YqWYNTIVxhZYTL
X-Gm-Gg: ASbGncv0bSN+AKfoTq+31aZShtR4Y3ks16Qs+HVe+XVnYWmGOBpffHv+PX9ShBz+CoO
	/c+C24Y1SECttzP7q9g4w54rheTVsD1WIJF0XPl+PiAkldLhK8k5vB6ti/q8PJyzhBk6/V2b4Jg
	PVdcR0EYfvV+fcR3jQGm3S9IJg5LpoAhjBqERQkPo2SSaWoWg2BE9vSBCf9Vte3ej720Co+WxP0
	kEWb9m7f6Pn9oev/w==
X-Google-Smtp-Source: AGHT+IG+D8oTOCZCybe0jTMWAtEyJVHcF+x1RsxL88xvQswzc/kVAOPXSmL8jd/l58Uw6kNKnmcj7kant2xsnzkphIA=
X-Received: by 2002:a05:6512:31c4:b0:55f:5700:5cb9 with SMTP id
 2adb3069b0e04-560995f4a0dmr209732e87.24.1757012315206; Thu, 04 Sep 2025
 11:58:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756372805.git.andrea.porta@suse.com> <7ed0f2779829f4e63b69d8cf5cedda9f849996bc.1756372805.git.andrea.porta@suse.com>
In-Reply-To: <7ed0f2779829f4e63b69d8cf5cedda9f849996bc.1756372805.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Sep 2025 20:58:23 +0200
X-Gm-Features: Ac12FXymNXEWp0akA1KKPpfwK827qyFlyk8eBQbtNKsw_bFGu0HOwHEo76-xbLA
Message-ID: <CACRpkdZAROUdz1SJY=h_dcUiojazO1fYxGJ8X2KEE6ow7oFZaA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: pinctrl: Add support for Broadcom STB
 pin controller
To: Andrea della Porta <andrea.porta@suse.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	florian.fainelli@broadcom.com, wahrenst@gmx.net, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, iivanov@suse.de, 
	svarbanov@suse.de, mbrugger@suse.com, 
	Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 28, 2025 at 2:45=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> From: "Ivan T. Ivanov" <iivanov@suse.de>
>
> The STB pin controller represents a family whose silicon instances
> are found e.g. on BCM2712 SoC.
>
> In particular, on RaspberryPi 5, there are two separate instantiations
> of the same IP block which differ in the number of pins that are
> associated and the pinmux functions for each of those pins. The
> -aon- variant stands for 'Always On'.
>
> Depending on the revision of the BCM2712 (CO or D0), the pin
> controller instance has slight differences in the register layout.
>
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

Fixed up the extraneous label and whitespace error
and applied this patch!

Yours,
Linus Walleij

