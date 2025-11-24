Return-Path: <devicetree+bounces-241675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04728C80DE9
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9624F3A72F8
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C2530BBB3;
	Mon, 24 Nov 2025 13:55:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63CA30B514
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763992538; cv=none; b=tJL0bk7koFskVN6RwkIEkhFq5uaozXVEnrPi6pP8fT3xUD2XUORKnVGrdz99zHM1aVSjhd2ddhkc2tV1/ElPU5rrFZGfMEQXvR64hxGlAMoCvHGkfiPy+l4cZU6GSeK4wokTWYrv8wmlPtlzE6Lb3TurKSekrAuaddthifBKZuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763992538; c=relaxed/simple;
	bh=UStbm3HgHfGEo+bNWBz85MQishezH8QlRkqUfexN0RE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MWPYFYeykGHsx5baC9Zc46kyZzY5M0/OsdpqSu+l8qPGtd0kihcvNurnKu75PVRZZq7ixPeDyWA8iCYnM2v+y1FZnjGGk8vUGqolpTNxofMuCorechsZlMc7PddKUCRjtdqvD4Xxf/jvq1JJpzFnx8Aop9B0eW9QQo70mUn8ig8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-937262a397eso1215658241.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:55:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763992536; x=1764597336;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HM11Xlk4Z5iSXO4OvQf65Y5sqEe2guzTTzWRD/5vobU=;
        b=V1J7WAmFiL8jTelWIuvERBG1zmrTA4nMO7BxEijgdGybL0kAYVTbZz1JBo/c/IZwyp
         2wMIX7mzH233VdkI1GAcyMEcBCwgKdrIMdzJ8bbkmj4kR//ki3ptVaFg5TTEv0MchtC+
         WQV8GoHbJR+Gp/XP+w0jic/rZPbBhL7yXnldmYGB7fRHdHkT3hgNN41Ix8hkSjpiNdwO
         GFJmngxJI20PSbwEAKtd+5BN5qfwTsRqN7mb5EiT+xSPOgUrx6Pws0jjkBNH7yT/seLu
         PcsDrkzMIwnhmyU6PdDLmeNl/BZr2NwF8QsQSavAS2VpRXTYRMPAmszGVEecPuMfN/oC
         Tukg==
X-Forwarded-Encrypted: i=1; AJvYcCUxMx/ELr1mIOPzJJL4aa4THTXcDxabIvr33irt1QGOewOjp7ge/Ys2Eb1U4u6UW/0MwjmPLpJaL3Zd@vger.kernel.org
X-Gm-Message-State: AOJu0YyaxgKcpRnsIuYYhz5mj+Yzcx+ya1Zl5rJ4lGRyy1yHSmhF4Zc+
	R5RT/Bgf9dQKsy5lJx2RQia3pHZtalHqDfrBRDJN62n7yBVDppf7aRM0uyla4crI
X-Gm-Gg: ASbGncs4bh7xOSMYBc/CuVNNYYlN0zmTmZ6+z4LOOBHRyu7aozX5UcUZqm6mod/QErj
	wCUbRfj9xRbUos9rnzzdjKsR8GCUBUE4zBL7Wi+RxLbbY1WwlWz+pX3S66VzUD/j0gb0CX76siQ
	oc8esITn4+4k4COTdmYy93iDUri7tshyHsWFJGWMkOAYuYkmoXlqw4O5CNYSL162LGAqzoJJmC/
	HD+n6y7U0dM+Q+PFfZ02Lh5/roM4ufGWUJqGr/995u1zzuuakFbMx3UWELczx0SxvGWQ0Bo2skx
	a5LVJb+Yyro9y+0zaPy4HSH5ppDBHG2ZMFhrjhgb6BC/7c3hIkSCKc4v8EQw5/VHhMiTOT6I7Ay
	F8q5JDwPKdm4r9g5tNbrQRoSTgPsgkNBqe1oXi0zkzGolAYCmIQjv6sgMgttzoxSmWiaKh6NXiI
	/MzAq+ZGXPq6F4XcLcsQg60pr//yP+HCoee3PgRr9D3CZRemSL+sTp
X-Google-Smtp-Source: AGHT+IFQFOzRk46qJxWUrKicFWmQ37vWnFEeG0LZd8fBhRvSG8KjzUiDYtG5Hv/jCa7Zr7tITaLVew==
X-Received: by 2002:a05:6102:f96:b0:5dd:b32c:66f7 with SMTP id ada2fe7eead31-5e1de1efe02mr3058023137.13.1763992535588;
        Mon, 24 Nov 2025 05:55:35 -0800 (PST)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com. [209.85.221.180])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c56519bffsm5396108241.14.2025.11.24.05.55.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 05:55:32 -0800 (PST)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-55999cc2a87so512713e0c.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:55:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUyWA9siX8sLvjF4At73G/OEyjxqluxDoRTnzF1rAMTGBelKMJ3kZaG3C40ayH/ZU4CzA0w4OMfmcP0@vger.kernel.org
X-Received: by 2002:a05:6122:1d51:b0:55b:305b:4e3f with SMTP id
 71dfb90a1353d-55b8f01e2ccmr3399105e0c.21.1763992531823; Mon, 24 Nov 2025
 05:55:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251119110505.100253-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251119110505.100253-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Nov 2025 14:55:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWEgDtvrSx+VBjLEUOw6hdM4Gdn3s35xYzxFdHagh9jhg@mail.gmail.com>
X-Gm-Features: AWmQ_bmiizvJ_N1SdR_SB7mEOyqHWDCaYII4sQV_aHjJP3yLUXdP9XtykER4-h8
Message-ID: <CAMuHMdWEgDtvrSx+VBjLEUOw6hdM4Gdn3s35xYzxFdHagh9jhg@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable
 USB3.0 PHYs and xHCI controllers
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Nov 2025 at 12:05, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the USB3.0 (CH0) and USB3.1 (CH1) host controllers on the RZ/V2H
> Evaluation Kit. The CN4 stacked connector on the EVK provides access to
> both channels, with CH0 corresponding to USB3.0 and CH1 to USB3.1.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

