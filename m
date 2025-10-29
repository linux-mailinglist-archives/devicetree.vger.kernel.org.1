Return-Path: <devicetree+bounces-232787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D84E9C1B7D9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 98F8D344C2A
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA4D2E0B44;
	Wed, 29 Oct 2025 14:58:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A60B2DFF13
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749909; cv=none; b=Qu7BRA43qIdMEuK2+ocJThYBFlsjR053nCyXoUltV/xOgLiFTrrDG/tj82qx/dZeXFq4fZZeEkscnM/XVxktMdFyCOgMQeSigIcC9CNtI8zFHHM08lVMduS2cxuHJXDGae6SpqvmAjZYmFovfCbeln4h8+XFutph7FCnlMc8AV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749909; c=relaxed/simple;
	bh=hSYrwqd1mkixtFP54xQA+PcDnrci1mz4DAuMcvpZcs0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r1J8+gfJ6kgbdcXRBBg57OPISSxNONMjJnbdGqEiG/IPD5HSfanwjmOjoNEVM5wG4t8cP5SXuKR4CdyEDhXtpxhO+N8Uzw/7YDIaOJPax1PrroF3BFHCbaa1f5wyUe7Kr7coMbc78BY9GU/VpH3CXppghqCnqYw8LwqBM5D0tF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5d5f8e95d5eso4700471137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:58:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761749906; x=1762354706;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fd/ArEYxAAEUYhnoA0Oh/vNlB/6p6wwqYSN+YEbBwcA=;
        b=cS0kBBc0107ATz4gPGuxabeZM65C1Kopye/kgFi59qbNZMxkUXZI8+1D4QdNYG0lKX
         uve7daQlHwalq+MdPPv0KBdy9E7hrhlPgf7lucliQpuARUVIR30qeRtRLxqmvXHZyOtA
         piELudwo//0EsaCsFIEcfSI+5FzC73rD96FJT/uh1Ma4EWXu22fnYOp/WQ5BWHbnky7A
         +xGbQVoX1BZb08o/tdAvatQ+dSRWuLuyPJ4McccnJ/QWa9NlkFtm+BHsrfoqUp/JtyYT
         LqLhn7Ld57viElDuU8X7IzfIqndWQrRf2wNqEmY/99zEjN1b/dxE9SAEn0RO170MUdmY
         pWkw==
X-Forwarded-Encrypted: i=1; AJvYcCVhv+bwB5dUgQH7l1f9yhvMJM3/WGsqu/7vItaSQQZP0GCnGZjI2SdR9la5GrkwLPFkcmEosJye3qBh@vger.kernel.org
X-Gm-Message-State: AOJu0YwTmiaAhr7io1YWtuWWxWCaAG0aw2g0lxTrIgV3yyPXCLFq40Kq
	ZxMAlwDSIsv5mDG9b1q5DtnpdTZ813MBurhcJ8XUtbx1uTQpp9mwRWlPNbF2Xsui
X-Gm-Gg: ASbGncuobfs8e7tSHhLtYwvxG/aKe9z6bL6iP5IzVmG3aD9VMbzo00oXZpd2+E6xRHZ
	L5Jq/BOvRLjqaSXUnOzpNgJTmDuWBrKTqCaKd8V0bUvMP9o4G0WOdvI1WX+nLZmMHWxSVltJ71q
	sGiHRqLXQ5wfXDPpxoCMuotTXcJYrSccpmGjAD/Y+zDBH1j16IZpiLFaWmqCKuwlVZQlK9R7XlD
	3IUEIDGaPBmqtsxRTWKq1Hglkv/wfaGxFlZUchKvOAlWbS/SyfY9pLALvwUaTin95Yjhkcd7k8r
	Lh4xaataWgVQArhHTVTkuz4dj/ywxh2TcSZmRhX5tj3UyWOvu2mPlumGvBkY0cLDuhmhGNMeqDI
	2kORoQqO/0D6SGMaitAs9Und+8ThqnfvwY88DMnPpc6JLuQlsrHHJruZNoOBDF0Hf4qhkoCOm+2
	zft1KC4zF/GUsZzHfmbsCROGOPULwaK6AMi28U2FRmwFxJSQ3Aj8+X
X-Google-Smtp-Source: AGHT+IGV743q6Sb/aYA0ASSaaVqm64OD6Z/XEi1wgA2f8CUo2AXkdvqQgHP6MQvH+BBrL07WfZXaQQ==
X-Received: by 2002:a05:6102:5a9b:b0:5db:23db:2ad1 with SMTP id ada2fe7eead31-5db90691fa7mr988523137.28.1761749905507;
        Wed, 29 Oct 2025 07:58:25 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557ddb09e9dsm5493274e0c.7.2025.10.29.07.58.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 07:58:24 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5d758dba570so5532004137.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:58:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXlNOFj/8CprrbXjQpw0Fp4E+mJANzw0ksH8RRSJtpzfXJB07lxchEpwY475UPHLk35soqx0XD2kn6z@vger.kernel.org
X-Received: by 2002:a05:6102:290d:b0:4f7:d553:3cfa with SMTP id
 ada2fe7eead31-5db90606601mr813077137.12.1761749904411; Wed, 29 Oct 2025
 07:58:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org>
 <20251027211249.95826-2-marek.vasut+renesas@mailbox.org> <CAMuHMdV2Kr4WcYRERHCYR1zGAh0n2N3D=LYbRSYLJnRTYDB4+w@mail.gmail.com>
In-Reply-To: <CAMuHMdV2Kr4WcYRERHCYR1zGAh0n2N3D=LYbRSYLJnRTYDB4+w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 15:58:13 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWyKeQq31GEK+-y4BoaZFcCxJNac63S7NoocMj1cYKniw@mail.gmail.com>
X-Gm-Features: AWmQ_bkK_riw2DJ8GdGhH8UFTwbp-0GBHO60gLWdbse1YNVgueoQrpv6rrq65Pk
Message-ID: <CAMuHMdWyKeQq31GEK+-y4BoaZFcCxJNac63S7NoocMj1cYKniw@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: renesas: r8a77960-salvator-x: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Wed, 29 Oct 2025 at 15:52, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, 27 Oct 2025 at 22:13, Marek Vasut
> <marek.vasut+renesas@mailbox.org> wrote:
> > Enable GPU on Salvator-X with R-Car M3-W.
> >
> > Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

(no cover letter, so just replying here)

I am a bit reluctant to queue this, as apparently there is a bug/race
condition in the PowerVR driver: if the firmware is not available,
the kernel may crash during boot due to a NULL pointer dereference.
I could trigger this on Salvator-X with R-Car M3-W after applying your
series to renesas-drivers-2025-10-28, and adding two debug prints:

--- a/drivers/pmdomain/core.c
+++ b/drivers/pmdomain/core.c
@@ -256,12 +256,14 @@ struct device *dev_to_genpd_dev(struct device *dev)
 static int genpd_stop_dev(const struct generic_pm_domain *genpd,
                          struct device *dev)
 {
+pr_info("==== %s/%s: stop\n", genpd->name, dev_name(dev));
        return GENPD_DEV_CALLBACK(genpd, int, stop, dev);
 }

 static int genpd_start_dev(const struct generic_pm_domain *genpd,
                           struct device *dev)
 {
+pr_info("==== %s/%s: start\n", genpd->name, dev_name(dev));
        return GENPD_DEV_CALLBACK(genpd, int, start, dev);
 }

See also my original report "drm/imagination: genpd_runtime_suspend()
crash"[1] on Gray Hawk Single.

[1] https://lore.kernel.org/all/CAMuHMdWapT40hV3c+CSBqFOW05aWcV1a6v_NiJYgoYi0i9_PDQ@mail.gmail.com

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

