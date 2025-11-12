Return-Path: <devicetree+bounces-237740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 03657C536FF
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:37:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C5FD034AA4B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB224311C3F;
	Wed, 12 Nov 2025 16:28:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38790337BB1
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762964933; cv=none; b=Hr5ENJooL44kyEylUpxasgZ/oqUw6tmDLf5Q/macNGAtPGfQtWy7qRC/jC0pnABv8dCFA3xxwOARl1OPzjcV0F4EhwemJoQp+3vn4GwtCMYMaeDGvVB5XtldL8au8X50+ZzIrUunS8Kl7paauKWW5qrJsBqp+VxXZiwvX8gVHpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762964933; c=relaxed/simple;
	bh=Sk/VdDOjP8jSOytlFi9s9mo2ys81rNWZ2228bwgTL4U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r81/6yrW6PaD8I4krmfMpAOoVcjih51aOfN2e9ju4nKAFlIbs/iYzGlLYD6qi2p3eTmDfmxYzhskRLFmivbU3JAoON+SQhkoXjQuf0/GfDMrY9OZPATS2037oYv3YDdxsQTKD0MWKvn4xbwxo4oG7jlQArNNjLqJG1r/rUSS9qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-937262a397eso341007241.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:28:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762964931; x=1763569731;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sffz3tuaGapQMQeKbnEwNMkk8oLRrGLz73c/pcBk56A=;
        b=J1oEpzR/tbiiy3D7ayAtk9X6nyw+N3kWL0sZihZiDB3l41zBOXVKJzyjG9VLnig4Je
         C/4Gig7RrNMt3i/9d1Fk2vDSO+SkfnOk2pegrqeJ/UxToAqxPDiC7FWLB9qiWf+Yag/m
         AdcnHwalWSA0QyKzMuyVFsVoZaszGVTwrNS/iGEcsjvGjWWKRq76anoTgdH0wGiy1aFS
         MBFTUTgvlRycTRO+5J+SbvGT4xF2iLQXf9Lvs44rEdoFw1UisFHCjJckjDOYNdtFp76z
         +tiQXI2aFzZJIUXhqS+M2pQWmwg+QJln8eRodfUdqF+gsctg4Jvboo7TlQ0O4fo1pKza
         SuzA==
X-Forwarded-Encrypted: i=1; AJvYcCWSaYxpADRE5QzFTUX/n5PEQlRWhtr2EbBN5ewcekK95tDv44FMVxdaJynXBcpERxkR69Z7Fi2x03Df@vger.kernel.org
X-Gm-Message-State: AOJu0YxrL1DEIQs5h+yP0liAUTkFqZ+o3CFOmjyVRRQWUJQ2oQJFmk0j
	ARLv5g1177TdPk1oTLN0hw/zaz/MIJ719HATb+exudaX9L9xhAIqkFyRkhkqOQiE
X-Gm-Gg: ASbGncv9zUcuHEWzgCFpbwSL1cXp4G4miIiBo7y9AoQkXQI/Ei0oOgoTWP1OB9QY7SX
	sdhfii3apFuATZ/8xc0P8qw/DM+9nfO9aR2zAyuPuZBB8s7s3DxcdwHJZCCk/qOxQDJ+aNvfZqj
	ux6GxZbYHYn0CUWp3aI5IR/lCkMXwzQxgWy9YGqnfoJpPLzOk8SsVvTtrZhqnTSw4CxlBll5Ci9
	kDrj0hdiOVY0yBK7QM89YlquO+wy3nwFCLzbSLGr1cetZ4inAXqNPenPWG0lif2kQ2sciAQhX8g
	M75YkEY6MxvJjYD0/nn/Xp/2HTz5ZL1iybpTtHUFpS/zlgsITMqeVUVZiqHk0jJbGmGaSXGjq/K
	vAh4r7se8oqah0TuytcTJ6IJ7vb2Lj1ktbTCkcNGh0pXZpikap7cUovYZRKM1RgYWz8v1MYXqjH
	TGj1DXuTq60RrhsWAoQgniAsNK5jH3XKyDlr/UtdfA4A==
X-Google-Smtp-Source: AGHT+IHnnQfpaMpi51D0pdj/fIo6uKaw+VJriC2SLErSljqGEozi4DU2ejkF9g9hOK0SdgMxTJLk/w==
X-Received: by 2002:a05:6102:d94:b0:5dc:51c5:e3c7 with SMTP id ada2fe7eead31-5de07e2bac7mr1220799137.26.1762964930752;
        Wed, 12 Nov 2025 08:28:50 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559ef0f77a8sm656684e0c.19.2025.11.12.08.28.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:28:50 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dd88eef2f3so396274137.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:28:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV4r77KGwgtI+d/zkIyDWFC8zCVBz+0ldSMBQRo4UukNnjK4fC+2Khq/SNbcQkCt5Wu50gq5UL72rNL@vger.kernel.org
X-Received: by 2002:a05:6102:2913:b0:5d7:ddf6:b3b7 with SMTP id
 ada2fe7eead31-5de07d0bbedmr1183622137.8.1762964930074; Wed, 12 Nov 2025
 08:28:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-3-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-3-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:28:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV_n1XBNkZ+4pYF2RyNn+LWu4DasUgOut9ZJg7RnZn1Ng@mail.gmail.com>
X-Gm-Features: AWmQ_bk4xxmjNl-qRNjNfh_2vFa7asZw1z28h-USze4ilNHopbNHQRytaRHEDHs
Message-ID: <CAMuHMdV_n1XBNkZ+4pYF2RyNn+LWu4DasUgOut9ZJg7RnZn1Ng@mail.gmail.com>
Subject: Re: [PATCH 02/10] of/reserved_mem: Use dt_root_addr_size_bytes()
 instead of open-coding it
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, AKASHI Takahiro <takahiro.akashi@linaro.org>, 
	James Morse <james.morse@arm.com>, Chen Zhou <chenzhou10@huawei.com>, Baoquan He <bhe@redhat.com>, 
	Zhen Lei <thunder.leizhen@huawei.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Changyuan Lyu <changyuanl@google.com>, Alexander Graf <graf@amazon.com>, 
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Nov 2025 at 15:37, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> Use dt_root_addr_size_bytes() instead of open-coding it in
> __reserved_mem_reserve_reg() to improve code maintainability.
>
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

