Return-Path: <devicetree+bounces-229727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EAEBFB2E6
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:36:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB0651891C4A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B37288502;
	Wed, 22 Oct 2025 09:36:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5FB287254
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761125797; cv=none; b=nh/XDvWRSo03f9HRc0Ad5OjfJ8pB5dWIKyZYU7inY8x2T4KPesuu/56vETAO2H1WQoBEEiMGO9Y8CeLgd2Q4iy/+RB8FMgo9x1hrx88458RFHOa6KESJKlUnKSSkqZQaJuQomi3SrqYUFiuC6OLlCCqTahG/GHo3SbyF/gfrhbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761125797; c=relaxed/simple;
	bh=/U97FWIz/LyKdJ/+ZFKjfhGLMW9FhpjIIYGZMTsBXJk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SLiqr1fPRRXPGvCT/FVB75tKxKYZrFKvb4MVApqF8HwdJt9PiB3GDg0QgSw9Qj06f+xxySolobCGQ7s4Tp/kUEjbyUZHBQxbPAnVnjSkburiS5BtzeXtKnzNxjVsbUgcapD6GBcspSD+v3uxtgPDtklD2NPd50PwF/EVuA6FuwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5a7b2a6b13bso4979588137.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:36:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761125795; x=1761730595;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iC35CdUT3A8sztuK5L0Sfjwp3dV7/QYG5xsuOQkj92Q=;
        b=ErciUHX1BckCFJSN5ONJqtIyxzKSyOhVg9kHoiBeToMTBUAErjtKcM079oddSKKVD8
         5pNEQc/o1CeQ5KujXW8hijYOrU5XzNV/7uXSqnUW2WAFdRvAosfyr58eg9KYoeSz2t8M
         pI5xhmm++Xfmn9W99i4sshmR4p2VV2oApD2ZKbybTqNeTq/Xhvr8bbJKjapWCIc/Pc0y
         7+M+9RSOqXFU8DU2V7Lk5NH4WZ2voukcp7zItP1EW5uz6VG7TXRXKOjFpR9ZfgzM+/tE
         rrBiLSxMlFK3QB4/4XtpG8gm1d4HdELn39kGNr/HmsMwC29F/sbb8Bd9Ut0EypUNINoP
         yb6w==
X-Forwarded-Encrypted: i=1; AJvYcCV42+6m21MA14JZXMMc9hGT963l/tKlCYTakWboBijEvtAybpU2j4M1K1wALgdUAEWhkgKZ4q02rO9J@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz0vmMYJcodSA886lt7LELHRR9x4VPRtLSJxM4Fx5uM01BHMO8
	j2VcXdoFwABVumJWvxGQdVJY+vEWmMmW6u8IMHpRqoLOawI+Y7ef100HTkhGnrOz
X-Gm-Gg: ASbGncu2k4UyFsh187Mz1rIv9auUYNV+LfsjqlIYYr4LrotomnIvKKO3VC3dRdyXPMT
	78fWF70pqaDoRMTBdt9W34Qz7061RRkwZUDEHDFOtcYzfFpLaS+IuzQGJRvfLv7VQpN02yl5bdH
	/ZeZEtCmp14uQ3n47PEvMJUdVVESMTbNKhiPBB4r8vZ2bnsan4FXT/XvIJnBSjF9lkDlO8suw1h
	0SMMDIQBc2jLvo9wbUiTtKupAtCp4qocx9ZIL2ey4ohKKo70JQc9mhi0Rrzbnh7DavKK6ZA5oEA
	+CsTxFBfagFm7tagFku7UqwmDMsCO+ard+ifyBcLJPjmwqCL/pG9Os6T958VAeKbuMiW3abd0f0
	DaO1co6MrDp74OD8qV3QqdYLknufMhr+SetWFAeSR0us9Da3x/huEuVDJRBs1KbavqI339P1Acv
	6Ui2SsLkGD1L/qKHy6hP0twz061pzwWcK3Uz4mOA==
X-Google-Smtp-Source: AGHT+IGJorBDJWpBXhkTPuZOmESd65Z5ERZ12xjk7c69RDAUIvfyLqYAvhiNR1TOFv9Qmby3Sl/hbw==
X-Received: by 2002:a05:6102:b02:b0:528:92b8:6c3e with SMTP id ada2fe7eead31-5d7dd501a23mr6636542137.1.1761125794693;
        Wed, 22 Oct 2025 02:36:34 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-932c3da29f5sm4405207241.6.2025.10.22.02.36.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 02:36:34 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-932e885467cso1475746241.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:36:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVyIPCMmwFWI9DwzqNfjfyp0DfyljuxBCwLYHER+qAHk20PafAKmLTLN8xDE4RJoR3nMPCI0NurBEtH@vger.kernel.org
X-Received: by 2002:a05:6102:d91:b0:5d6:101a:9f31 with SMTP id
 ada2fe7eead31-5d7dd6a12f8mr6743560137.31.1761125793941; Wed, 22 Oct 2025
 02:36:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022033847.471106-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251022033847.471106-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Oct 2025 11:36:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVW3j6BKdRQyNPYoZ8Y6zHgWKocncvOCFRnE+TzPDhpJg@mail.gmail.com>
X-Gm-Features: AS18NWA7snoGhRQxOaxa6kVLMYHHHQNhnIPgqBT0Sy_KqfLK2Lq6CACxKqN_A0M
Message-ID: <CAMuHMdVW3j6BKdRQyNPYoZ8Y6zHgWKocncvOCFRnE+TzPDhpJg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: gpu: img,powervr-rogue: Document
 GX6250 GPU in Renesas R-Car M3-W/M3-W+
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>, Adam Ford <aford173@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
	Frank Binns <frank.binns@imgtec.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Matt Coster <matt.coster@imgtec.com>, Maxime Ripard <mripard@kernel.org>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Oct 2025 at 05:39, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Document Imagination Technologies PowerVR Rogue GX6250 BNVC 4.45.2.58
> present in Renesas R-Car R8A77960 M3-W and R8A77961 M3-W+ SoC.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> See https://gitlab.freedesktop.org/imagination/linux-firmware/-/issues/13
> for related userspace bits.
> ---
> V2: - Add RB from Conor
>     - Fill in allOf section for Renesas GPU, set fixed clock/clock-names
>       maxItems count to 3 and power-domains/power-domain-names count to 2.
>     - Use renesas,r8a7796-gpu for R8A77960 compatible string
> V3: Split up the allOf section addition

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

