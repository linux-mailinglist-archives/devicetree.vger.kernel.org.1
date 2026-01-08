Return-Path: <devicetree+bounces-252955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 19711D05951
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 174E4314E6D2
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFFF42DC792;
	Thu,  8 Jan 2026 17:37:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C192DA769
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893849; cv=none; b=Y7NjjBO1Chkn3tkyYnnzIv+BYV3CmMB80BggZq9l96AKJzN37sMZbrUYqMj/clZBKsAVIEKK0MVmaD960xFfqwen6End7Z0+u97KkR1zJE+bxTXFMT6JlxVeoETVnYSKa5vEsEGQg7E1My2WERXLp7+wRUSlVH6SGShIZhtGB6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893849; c=relaxed/simple;
	bh=kxt8Z/eOzDR8QTdq82tH3tFzi/nv7joHVar+2fJEnGw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TcX49II1RficaM/B1f6XqUt/9cUjA9WtE6Zkd/ZxPo9nswHZ9uLxTWIeNVLunAHlbDXuBaNYaSgIx4xgupsLbrmheHDVytKcPR+GBpfZV+MTc/KTFQdxFUxN+ICbAR6v5fwQbuGfoZDs/SjLaJizDjpMqNnHMDjag9GM+9qx0Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94130b88642so2123954241.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:37:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767893847; x=1768498647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iuLxhRuKEoA1AJQlWe0gFW11le5QfNFd2Qs+Txydjh0=;
        b=V+kloQCQ66d6G7NucQTNSE3+CoJyhlQyXUUP9KbqMKkhVmz6vP9tD/z/Vr/kLRMJZB
         A7ocWvkTadzZ9UnlfezYNS+Bn8RgU1PN3Dhlv8HPQUqck47AIaDfPGRfZJ6NmUmwE9p4
         JbF+jsbrMIXBM6Mb1qpY5EyRPhcaz2Y+qp0eBrah4w33wlXFq+3KL7LIywQDdHuxseQ0
         CfhZtWgqXPbYagPFcEGgUaAuWUwa05BUNprkFuhZ9WNEGjx+Ov0pgNwk2YVME+XviaUr
         S7CG1FGyBdMrmgZ6syhEaScuqUFTZEmBv5O4xa/cJUdMtbE93ADjMbNNhC6YQPw47U8T
         G8BA==
X-Forwarded-Encrypted: i=1; AJvYcCV8nQM/FNOl+vN7KcRVDLz/1O9AqTWVDvOHiuFLP5zVCsQxXZ/8cJGRAe1XDxYVmBVM6tS58vDI/Hs3@vger.kernel.org
X-Gm-Message-State: AOJu0YzTL9byECQv5dutJvrq/D/DlP9Su611ggdUm8lAfFzOSp/fD3wQ
	enjmSaZBEuSk1cYZc1eLSdK+eso9d4QOKuaMdJ6IyQMQTqP41OHCQxdIfCnJmvUK
X-Gm-Gg: AY/fxX4/5dsyx21JdKCzcIFn+z6knO4Vgo2cgHDhhjkIeaw81r0WrjZOvcb6smKOaWo
	CCA+4PV9RRZDBdSwQg/HHUNKKkyPNbX9AJW+FYmvsVkaGjOjqkkrFyA5eBT/up8bS4oRh/N8MWV
	IlwlWHg6c4yphpXQkoJF70RA1QK4iOu1YZY1qxlStWaO4oOFnbLtIyDHkrWoqFNkwoEAOv7m0ep
	0PRP7jDW5Z/GWBdW9mATULk6/feVeMxaJkm0Y7ZAluO7c3hJs34d6BBDP2WanLNqiroeVobJDZ5
	4MUAenNriGa3Nho7nQjx219DFEfqVJ73WsN6mNkmpphzdTIpOTs+UoHvaqidcutsOFEmmitTtuN
	Wecsoj8Z+6kUa1Jj6E+4xt20G7V7+wvpXowaSeTvszzOBpZPdfCfC1s7Ya0XU6Dt2jvm0ffppDR
	D5EDcvLHo4DBt+/BlgnaRr+z7owmpv8JVHKFKKCVxOeXNpj81G51q/
X-Google-Smtp-Source: AGHT+IFZMj8LBo2YfSWlgIoRqyuwAHPGK3TJPXqB5lRhwrb8nH82FzF/xRsQZwmldyaAtIWZ9JHgwA==
X-Received: by 2002:a05:6102:f0a:b0:5db:f0fb:2708 with SMTP id ada2fe7eead31-5ecb68585cemr2593235137.10.1767893847221;
        Thu, 08 Jan 2026 09:37:27 -0800 (PST)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ee9d013b3csm2377579137.5.2026.01.08.09.37.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 09:37:26 -0800 (PST)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-559748bcf99so2505495e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:37:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX5WVImh/GFHHpTpvkfZtQ91lQXgOt3rZXNQVRAwsCAzqCL/Pvc2xW7a8WKK++2D4v6mdH8Xc2oQYXc@vger.kernel.org
X-Received: by 2002:a05:6122:8c8a:b0:559:7077:9a8f with SMTP id
 71dfb90a1353d-56347d6c262mr2090206e0c.5.1767893846038; Thu, 08 Jan 2026
 09:37:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-6-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-6-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 18:37:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXPjK_+skP+3Z+Z3azGbbjX9QdtyMDzFY1dyMMG1iwvTw@mail.gmail.com>
X-Gm-Features: AQt7F2rvp8fYlEdhIV5AAN3wwbhpTmRyBGJFshTlAJaOf6DVMaGa6UOwj8MFm7A
Message-ID: <CAMuHMdXPjK_+skP+3Z+Z3azGbbjX9QdtyMDzFY1dyMMG1iwvTw@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] arm64: dts: renesas: r9a09g077: add GPIO IRQ support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Dec 2025 at 16:03, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) SoC includes pins which can be routed via
> the ICU to generate interrupts.
>
> Add support for using the pin controller as an interrupt chip.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

