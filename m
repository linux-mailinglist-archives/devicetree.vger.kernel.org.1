Return-Path: <devicetree+bounces-238158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEEFC57E34
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 11760352D9F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9645285CA9;
	Thu, 13 Nov 2025 14:18:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDFA283159
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 14:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763043534; cv=none; b=GDZVR1oQezoUVB8/J2EAnE5MpklvmZC7UvxwkEJaUkWbXwAxyAqC3n1tYpkxtlJBRpbjbZtSho5FfcoIVpp3r702V9gXLkhiKa34hSlng4Hj684+Wk0fSu7QyibQWl6wgguyLOp6Pr+8KFbBh5OLVBVor2yzPtuLNAZqpkuJamQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763043534; c=relaxed/simple;
	bh=SglwgdJjdXgtbcGuhBd+z1SY8I+c9+nx3fEEJ4chWEg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YtJFecT0AMPcYrVNyD6xAUSwMDOLceHSL4N8rb+cPeG+Yse5Y8LkGvXEkXz/bRCRmU8LFD5m2Km3fOnxLtAMovlUoIBMxTNEiCEMy7NxuyR3/wJU1txBSv1X8hdDYXoMYfS+OCfF3WWXMCK/o024UTq97I/sjyD68qVQMX1pYqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5563c36f6d4so514332e0c.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:18:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763043531; x=1763648331;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8lsBSIAEUPRTn5OJ+c8R/u4+S4nJOhGwxwcKm3MB6tI=;
        b=xA/uT5l2Bl+EMJrP85+B4+Z5BXu7Am29lr9sxRO/WRRq6wsfOJH+YUf6poWhcR/Pn6
         g0wf5HGPGkfYpkEmItGXpAck5AHddUQMoA91QvoLivX+VeQOgP4/sN5h5pjxJ8X4qdy2
         J4gBrxKGyJifX/wj2UslDAXpj7PgWHgWNq8pyPJy/3qLmnfCRt5E4mRbRN6vHP0RwgDw
         JnVflmMDBsOhoZmpTy4ipoQ2Dv5/ZMqexrFgm6I1uiW1vCVZRwBEPIFI1H2NliXFrjsC
         shN3ylp7R8dlsiVdtCbUjwQbGHAVWMX8cSepSFu5ArvfnvLKyNu0dXMHygJsf6pvQpnP
         wOpg==
X-Forwarded-Encrypted: i=1; AJvYcCUqn1veXh1PwEkQnP9XPGsNWkTTKGeO1JZuSY7qMIIL6LblkIvFD2OVoyA/o5tL8p+9FHq7fQKkBPIZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzAkAQXRKpa8DwR55wndvZKCJYMtR2buzc5i9idNuldgeuSE3s7
	5mFi5m72D+yFwAmo+SiH+OdsM01cD2zkKCWvdSHNwDJRW7+9ngSsW+DgnIC4fg4/plY=
X-Gm-Gg: ASbGncvty7EoRGKf+WxlA6vnMINo9mVV41oeDQwvb5KHo7kafVkiRoTIvpFOEwN1qwm
	ww1vkc10rK4jypjkQseuRlTsacCMjWj5zaD5bcWgdHsAK/fqa7cfAeSWkxJiEmi5hxl4qftOf0M
	uZdY4sTZqWUsBNurEMKDG6cApvBMa/DCHz4cfDFvvIiWLKZdNSdoVd2AiMRzrIAPYbufjfcb6vh
	gheylmfGfhH7Wl/xrJd3NXYWFR8pF9J5suee95s9Cqa6OgoF1Ufk36aPga5puubqXO7XIjtrR/A
	YJvqlXL/1PFg633PrJ54fUlJMAECCy8qm/0Owdb32DnUhrLtusVHeEecAYMvXTyC5Vq3M5zbDJG
	HhBqRTJt2dtMYL5chquUvPk/PFafVhhe/AB6BSki+3rKi0vw83QkmAvGiML5HvIUZhLyNRftKFl
	gDfjgaz1Fh6fiEFoxrCjE2wtYCNdyuhBOPb33dOA==
X-Google-Smtp-Source: AGHT+IHsB10PriQClXNFMDnbnNYzGs+msMbZ2FVbhOCzuBrELUMJcBS4bJTURQSCqNLo35AJmXx9rg==
X-Received: by 2002:a05:6122:20a0:b0:559:96be:fd8 with SMTP id 71dfb90a1353d-55b0d00afdamr1266684e0c.2.1763043531284;
        Thu, 13 Nov 2025 06:18:51 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f46234fsm700265e0c.18.2025.11.13.06.18.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 06:18:50 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dbde7f4341so1501376137.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:18:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXp2w9OJDzIcPecRHqLjtRnY2U151+NDbiPXkPsdpuSGkR+Qok3Vj+mcEBE2/iYJ6R/PdtetMioAi9f@vger.kernel.org
X-Received: by 2002:a05:6102:b0b:b0:5db:dad4:840 with SMTP id
 ada2fe7eead31-5dfb41e3b61mr1262190137.12.1763043529716; Thu, 13 Nov 2025
 06:18:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251107210706.45044-1-ovidiu.panait.rb@renesas.com> <20251107210706.45044-4-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251107210706.45044-4-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 15:18:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXr+pdZuYM0b1p+hZAjFMR25t3FV8cGWSbqRnTk118TPw@mail.gmail.com>
X-Gm-Features: AWmQ_blZmrYQK7IiX68T9lKCtdQnRgn565V-vW-eTn9Sd-DrKbAs0Z8Z3RjSLgE
Message-ID: <CAMuHMdXr+pdZuYM0b1p+hZAjFMR25t3FV8cGWSbqRnTk118TPw@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: renesas: r9a09g057: Add RTC node
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Nov 2025 at 22:07, Ovidiu Panait <ovidiu.panait.rb@renesas.com> wrote:
> Add RTC node to Renesas RZ/V2H ("R9A09G057") SoC DTSI.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

