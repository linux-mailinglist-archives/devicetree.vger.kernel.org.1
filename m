Return-Path: <devicetree+bounces-235692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF9EC3B7AE
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 14:56:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A93FD1884368
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 13:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60C7335579;
	Thu,  6 Nov 2025 13:56:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53392334C25
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 13:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762437378; cv=none; b=b7QP382fmfShCCkm2ZjuMHKPdJ2T4+Tocdcc+R4ZI9yj4zha4LVBaMApHZ0Nxln3McN/GNxWVcL0gsWWW1BNyB5T17uyQG73D3yUlt/rgQfDDdz51lwwnf4GbkNdKw4GOXXLC0gZgSXefMJKoqaz/oyS1uT4ZTChzLbYP5encMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762437378; c=relaxed/simple;
	bh=Nb3p1gTky9VLu5X2fI37eQDtW0ejW0klrb32kdSV6RA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UME5M0WXzu6XNFfDWvmDqZ5WBJKLoKo5PqU+lSiTnNPQMWJ4TBq/Fg6SSDSsTYVqGlq1sbPiUyA/not3WSyvvNc72AxDuMjBrGPM2YIHsBZKZjjGM3yQdyDo5wJZ5d/LQuaAUqKin6pt31PsDzhy8Z3aAqN9fDXu6t2J0tCkZ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-5563c36f6d4so681396e0c.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:56:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762437376; x=1763042176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q4yuPcnMfQtBgtQPnkkk1N/Kdj4fagyAFwBx7OzVvoo=;
        b=XvH2YImR37xrfghOxNcgYt+3TmuSbEmVJeVBErtYDQWAgbBpDO+9uyUkFlgZ28XB7l
         IsCi+aeollt2bQfS7fGCP7h9nJTalIj/XH5Uf4VI/6oAoMWn9TfOpTO8f0DitsKkwPSS
         KK3SS8ZQtXDWwvdlhRV+Ec9MsVS32L2NoZ/erWq+LA7gOdOMkg+Pq2EE8Z8HBuHk6Rap
         ABqzlg+bUmJzSzAQwpsd8dYEFvOBjvJo4452wEeIN+DQi4tPzIezAb8fYNyt+JWv/KuE
         ew6Ers2PqKwIRXydzEJGhDUnoivxqOVXv4Jno3mw4XL28TfvO1+OeyB38Kxk5jOZxvfT
         r/7g==
X-Forwarded-Encrypted: i=1; AJvYcCW1vvYqiu4ah/Ko5L2/WVWRceVaTDdaYJKk6KvYUH8/0uHyVJAo25h3otFVBiElqER6qS+8vnIFaqja@vger.kernel.org
X-Gm-Message-State: AOJu0YzrM5o0dtnT+TXkvjDz0J7cZs0WF7tDHFneta1aQdecV+bVNqo9
	LpeHImnn6l9C9VjxG6EdU1VFLINY3+CZ4OnsSyBOgkDPM7YdBHREu1eKZH0s1/mn
X-Gm-Gg: ASbGncvSNdEWA/hgKHXibbdrr5KQOHcOZ5m98yBGFYCVvThbpqDilQ+fhRp9NR2UkaE
	v05TGve45b7wKcIfWYQSsGnGg1KnFHpAzsa0FL3TvidHnCZPI5rOvgbpqDI2wwKYzK62cO/iFT4
	btZm9Hjx0w7bKst/ueTrbBrwXQ2C+RAQ9M3KFg5eOtdho9+5uPeldNkN9GtyljaimEK5zSWg4pt
	qd4mCtac3rWZG5QotDPzfI/X6AYxNL5XvNlgrsZLL1iHlNQMFXdUIpkRbZhWUqKFm4OfU7aFEV4
	80Kd84oc7GK1C3vmtJOH7YmJ89u9kanK4oTA2YT79OgaIACspyUwYSw98B9/nsL7/2VYTT61r40
	jvpVlejpCOlKBd0RGlggYbRB4phRkLpgpopTv9PWd2Vg8sw/Y1BjZlK4ynX/GgcIQmIuGzjLgDE
	D6LEBG50jPSK+KNF2+h1hLuQ7j/MehK+dfuuujzaJkWw==
X-Google-Smtp-Source: AGHT+IFR/sizWLvonopAEsv9a+U567j9raPoT9TxVutbbqTI7loxs2EZvzdzIocs70XVhUK3/QvCsw==
X-Received: by 2002:a05:6122:8c0b:b0:559:14e2:9fc7 with SMTP id 71dfb90a1353d-55994b05806mr1299387e0c.0.1762437375933;
        Thu, 06 Nov 2025 05:56:15 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559957fb2dcsm1348029e0c.14.2025.11.06.05.56.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 05:56:14 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-5598942c187so1192369e0c.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:56:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUpqBDoEHMI8lBmndH77YYm9pU+tINTWWX8ObyEbiqj+wvzp2pq/QC7LWSTQTKVG5c5B/DEoc+ALByl@vger.kernel.org
X-Received: by 2002:a05:6102:50a0:b0:5db:de8f:3278 with SMTP id
 ada2fe7eead31-5dd9fe53cbbmr1029811137.10.1762437374166; Thu, 06 Nov 2025
 05:56:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105232737.1933437-1-niklas.soderlund+renesas@ragnatech.se> <20251105232737.1933437-2-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251105232737.1933437-2-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Nov 2025 14:56:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUzK5gMh8V4hjYcfC=H3kfcEeCtJfATr_cmupgqg8xXoQ@mail.gmail.com>
X-Gm-Features: AWmQ_bmbsl231GCYVdw4Orr5ai-by8fSvYdIEmo1Rdt2iWJzgxM7V8AP3oPqN98
Message-ID: <CAMuHMdUzK5gMh8V4hjYcfC=H3kfcEeCtJfATr_cmupgqg8xXoQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: img,powervr-rogue: Document GE7800
 GPU in Renesas R-Car V3U
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Nov 2025 at 00:28, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Document Imagination Technologies PowerVR Rogue GE7800 BNVC 15.5.1.64
> present in Renesas R-Car R8A779A0 V3U SoC.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

