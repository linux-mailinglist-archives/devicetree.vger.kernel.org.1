Return-Path: <devicetree+bounces-224962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E987BC93B4
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:17:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8DD874E3D56
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686042356A4;
	Thu,  9 Oct 2025 13:17:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91F6F9E8
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015841; cv=none; b=SH+Dxs1zGP1LjMQ8xtmn2OWlOPHDDm4C6Wo+bsMIO8xv/rb625djD9w8IfGk+RPPaf3KEVLfey5TJVFbuIAPQ8J/qSbUbkB5GZWbPSxJ5H8e5F1JohOeiTDMnDexTMCE+WtvZvlEDqE9ZYgAiqjyhSUwed/OwuFQoi0fSxLfVDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015841; c=relaxed/simple;
	bh=fy4GsUvEqRkI/Ft6pLFNEsAJ9bVUkKA/yCVuL3Yg9xc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HVSGE71x7ai4HQvKFbzTTbWlr3p9nJWqf9gnmeEF7kE9J5N/ny0opPp9OH6R1B/+Yj8Vh/BEMULCAikqyuIkUCWzfEM98vgktJp8r5G6/bxIwpbDsGmJB2xQ7N7yvHLEYBcoeQSDnyMOT+GuBBIeR8TGXLik0HT7j5xF49JNF1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5565a83f796so875020137.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:17:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015838; x=1760620638;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PfSYnMo7fiy16p3PhjUGaXAHnchMPw7K8V1O2OsfiSc=;
        b=ewlDzsiy+NeNVYh5Bd0XmwD6ICfc4qKcnFqMtF/5zt9uwO7RNms0ZyWkZww9BkseXV
         fcdg8O92XG+6z44LRMV9A3wVfytt+tjI7eumUd7Lc4vr/sLzrHizENeD9iJwdHq03clT
         y7teBdB3WVrInapd6dsNvlsDkGeT5UPvviwphPEJyrZ5Ua6goFWrn2P51zdfmXlXsPP1
         WkiuASoxNwQ8IpTRWFd4a028wFYTXr5oZtbPQB6zeiFTeABAKFhyQ4Z/n1dH1qUJiIkQ
         6p3plyLI1uPJ9ldPZINjBLeovuIY5wezrIn1mJc+S/K9HotrwsQHnKSn754do9zZsi7C
         tQOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGupDZBv2AKJDqc5MI5w98AosfZaHHNsk743RhXomB5NIBKpojuQ8qbee/LwHGFg3FmEUax3ua7AHT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz00doXDRI8QMs/wjqSDyE0eSE43eSE0XGP7U9+iWiwsbRtoYis
	Ny9N7HNDsE/GBC+zHjEhG3zkzWtF95dIkDrLR+8yV9vi24/V14Cyv6L7uAVptSMA
X-Gm-Gg: ASbGncugIx3AJiG0IirVOkHzXwQq8WnrtWNsJZQntBg96ZaeUhFTWQGjEymfmEcqNae
	0Rv0dJCeaisaJhzFM3vZWYVwes7iI+Lgmwkl4v9RPX3k0Byn+J3HkLtabtgseKGUV6cdxJylcxe
	BvqWkNyOaOFbQCXGchRbnziPy5VA30CPjr9VudtQAV2h7W5+763ZI0S56MKk1rnOot/l0Jm6ORZ
	m2tHW+erOw4ZmsbbnXsDAQaxWb28eZzvcTzwNHZdxL0e1CfkD/8UjtyeU8Z+q+spGPk5pqDmC5g
	OWLU7J21upV2wSgjDk7KNKcXJ3Z8gRHtPTgFzU2JmTvaPUsrrjKq90RQD0GLJoUkWfg4NUHl3fv
	ZywccQw6KxnMuigwS3Nq628SBO/yQvaoTRgyD6TXvrnG4e53JR34wenQRkMv/7Eu8uDC9/1R1AK
	36z6Pus/n8N3rPG1pPtPw=
X-Google-Smtp-Source: AGHT+IF1BE0SdZUteFxkf1r+CLkdYVRFtIRhXqaN+0pPpmAV0u1gHbiHKaNdaJp2FAOhvDaF2W+m3A==
X-Received: by 2002:a05:6102:6211:20b0:5d4:1499:99a4 with SMTP id ada2fe7eead31-5d5d4dd9e42mr4651751137.13.1760015838378;
        Thu, 09 Oct 2025 06:17:18 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4d83c45sm4825153241.4.2025.10.09.06.17.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:17:17 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-8e286a1afc6so711827241.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:17:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWqzua4cErWAOHGEJuBSGP8rMWC97su9x1tVGliCTI/TAqKyKoRcrAccvBERjZIcuDZevrrqtd35XoY@vger.kernel.org
X-Received: by 2002:a05:6102:1a06:10b0:584:7aa3:a329 with SMTP id
 ada2fe7eead31-5d5d4c81309mr4270060137.4.1760015837455; Thu, 09 Oct 2025
 06:17:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251007121508.1595889-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251007121508.1595889-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:17:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWiyQjab-zENSnJsb0F73ApHK5pvA8ZiA1+1pB8_wzyOg@mail.gmail.com>
X-Gm-Features: AS18NWAB-kAJIRsXlBWFwb-rCqWpfJug0iWQY1NUZ_QF1SbJ4tlp4bCFSXh7Wxw
Message-ID: <CAMuHMdWiyQjab-zENSnJsb0F73ApHK5pvA8ZiA1+1pB8_wzyOg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: renesas: r9a09g057: Add Cortex-A55 PMU node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 14:15, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the performance monitor unit for the Cortex-A55 cores on the
> RZ/V2H(P) (R9A09G057) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

