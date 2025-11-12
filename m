Return-Path: <devicetree+bounces-237749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B73C537C3
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:45:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7EA0135C185
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841E03446AA;
	Wed, 12 Nov 2025 16:34:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA38342525
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762965256; cv=none; b=CIj76++kYRIyv9h/TDhTDyQrQ/wN0kiKUfhp+VpglFxUfJugBTZ1J+fLXyFtIgZ2DKhmXSy3MUcYdOWMK6x9IgPW5rZOOuyreixCI/NUqr3WRVXpAoGvkNy4Z5tuNAixU8it4h2+kfe5SLgkJndPNv/lEbfrCpKS4a+ilxhYrKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762965256; c=relaxed/simple;
	bh=Fk0J+zK46wIQApbBjlvq2ChgVdufMM6T9AYTaAjGlc0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qr27Q/QlxFoEmm8W3a36NlzxEMyP9jHK/Y8HuCslv/dXEqgNAGCkjQi/WDPpZknWu6EIkd2gRz1qk6ViPfHrxkI9TRmowWBP6m2xm3yNmgB9wqW3jwlxP36Tl8i1KeqRsuOlxAtSPaUWM3YuaNFQkR9y1/C9AycFrvtXqU3vgrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9352980a4f2so357770241.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:34:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762965253; x=1763570053;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IDEEJFh8t7UvWDMq1bo6nlPggBAlwU9GoyBV8Ur7xmw=;
        b=bc2UBQ/1az6dvTQl0UhBWQClFGdk3NGp9BPcl/eC/9pyphV8AV92kxyGbpZq0b6k2q
         zG/Rh8qyJ72Ox2B+yPSaKZpr7wvi13d2iYRskTUgMaoQE7K3Hm++pbExvuncyB0Q5XlY
         UWAJo1S209xKLHfz/4atAu4Za/GDFeKTuULOxGa1gBE317tLNKCTkp4SmD0+jpWxqJ6X
         oOxizmBjJxS2vRHWEFZWhom/nYOC8p1ndVeSzU3NAYjAtQ7xFD7YC5qxg+o/Qv5cAYz1
         0eQPNP+D9XosttQWYn2Gjy/ua+dmF+nhr4HUmhloKUFzHPrQ5Ltm8IUQQMGV60Aa0jjn
         bXkw==
X-Forwarded-Encrypted: i=1; AJvYcCX93/hq6YATfkchA3ZEDCmfq7mU9bmgy7WiCSHAEsttci4OstSWnrou35RMJ2YSgpQYqDP9b32N31A0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw39XU4rqHHkV51wN02/rHg3fOrqipQYEJ+mK0NJLcaCKlvsfW+
	JUYSJ99HY/14TA/aSOLK/56+dUKuFF2W3mIu8hcTp6lbOuKA9WN5KwZ5lx29/2ac
X-Gm-Gg: ASbGnct6frOyjkhAq8N0ZJJVwCvRMZgmv628dc2xoBVAZd3lcwPf8kYreJ0Zk0xcnhC
	/XDvSV5skD4pX1H5RHm7W0RyFtowx4sKV7GpG/ArVs92rZlBIMFY84w7fWtUtkbkMDLKiRxdfhx
	noBNJhOPTx3fW+sJdQNYZTGFqodYmZGYzdVRSf9DVJHLjpKeyxuOta2gL/0JmquL0C2EMjG4gMs
	Vmf8EIvIbjCjUZE9bvGlxXPhqHs6a+QbybxMjw3zAhD/PaCEGwaTecmrk0NM05X6FqCG1wC80f4
	PAURs8KNbxiplg8eeAfAPsQhLeSw9Kk4w7Onk0VEpqUrNyTmaULtUWRxuvHU7TcDEBsf8V+Xdd7
	0vWW8ta1m4ylZxWRrEqid7xlK1s4a27PCYUcWOwB2LoKpG7IEeg3Zu+5on8jgQe7AGpx5zR/8mb
	+cuI4lbqRzJzsu/8tXcQYGxOU/2crvJHKgOEFmIQ==
X-Google-Smtp-Source: AGHT+IGlsm3aZ3MF43a/HOMVWODDzlqR2pD0W1E2TJxfTfMwyB+svkDT2U+lBo6uNriu/FLKY+BH9Q==
X-Received: by 2002:a05:6102:374e:b0:5db:db1d:e1cb with SMTP id ada2fe7eead31-5de07e2b8f1mr1240872137.21.1762965252372;
        Wed, 12 Nov 2025 08:34:12 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-937428c06b9sm2615425241.5.2025.11.12.08.34.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:34:12 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dbddd71c46so416712137.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:34:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVNx7ovZ+6pE/EC8rcOVzzCfDZ1OVlXCxEMTaJNkcEUo2bUsbGNpvdicasp0d66DHkgB0zYQFdm0etn@vger.kernel.org
X-Received: by 2002:a05:6102:508b:b0:4e6:a338:a421 with SMTP id
 ada2fe7eead31-5de07d0b089mr1033465137.6.1762965251527; Wed, 12 Nov 2025
 08:34:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-9-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-9-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:33:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVNXqVXsDuMeExFn7AozDKu9GD99XMk7ux=Zuw4qvL_gA@mail.gmail.com>
X-Gm-Features: AWmQ_bkkzAqLKDG_QzADFeNR5gEvcuVzXh2HazsgAbVtmvpBS87jteFgQs7jYog
Message-ID: <CAMuHMdVNXqVXsDuMeExFn7AozDKu9GD99XMk7ux=Zuw4qvL_gA@mail.gmail.com>
Subject: Re: [PATCH 08/10] of/fdt: Use dt_root_addr_size_bytes() instead of
 open-coding it
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>, 
	Baoquan He <bhe@redhat.com>, Zhen Lei <thunder.leizhen@huawei.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Changyuan Lyu <changyuanl@google.com>, 
	Alexander Graf <graf@amazon.com>, "Mike Rapoport (Microsoft)" <rppt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Nov 2025 at 15:38, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> Use dt_root_addr_size_bytes() instead of open-coding it in
> early_init_dt_check_kho() to improve code maintainability.
>
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

But please combine with the other patch with the same subject.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

