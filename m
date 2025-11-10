Return-Path: <devicetree+bounces-236743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A36C46D71
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:19:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE8E9188FCC5
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0C73115A1;
	Mon, 10 Nov 2025 13:19:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4162F747A
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780764; cv=none; b=P/4Q8MmAp/Y5L1PqkiP+v1g4rZDmiylQUHM+Zv1LX/1v1AUe3fpNEjpPjYxacSlq6TYVc9hboQkJE0euuqt1dz6I5CHlUUFIixM5DLZtZRlIiSGvNbgwW6m+NyZvO09SiWhaGmYc1ny8jFiMY1hdeW0KZ/PctR9SdEMLo0aAB+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780764; c=relaxed/simple;
	bh=wA9BCmDruypxe3smorD0vULZ7Tgi2Cly7mnUgeAvySY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nSUXzbwPD7PePVqlzRl75sJ6GnQajbF/XeZfB44P+aeq3ngWcVxGpId2SYvwNuhAYLW3b9EjMkhfsGBVvBtOH8GDHRiO5Gjsv/oSU9PWtoao6NgINbEizRIkqs74JtxJkaUCS/UYUaU+V0qsGHGsIlDg5o4U02O9CSQu6siWB7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-557bf688086so678887e0c.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:19:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780761; x=1763385561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7x+CI2dPjKNXpWEkjlBqw4SucojwVb7aPiVE+kUAJGs=;
        b=ISJhOPWnU+D6VWT9ac7rEp7KXXNUwFw5E/z47B28pwES9lqCNmbxQTghKLlWph3qsN
         nr7azdQAKk0915CvpGCVvbs9ZjuxChZJIHLj1PrVQ6oGfu5k7I0yg835vVQsHECH49l/
         LgnoWxk0r+T0Av6Wh/L7GCa4JW0s5lABFhTeNxSMcuUUKEcjYjYNuuwaBOn2zD5hVr9G
         z5Fp9oghs+tJe1u1eUncvHYdDlu3rFFFzaB1Gdue8AuyF7ytlP824fFzKCG9aQlHcLAF
         dEU0ru+feIqaaX7VElHnMhtqY4opRFHhmx1KxlujD1G59OclWJtYvoMj3NpWwIDX0/rh
         K97Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2meVvwt6y8eb054rsVL+V5pXZjp3hXtNv4SLOACUWh0FM9cT+gYdgX2jvUZxBueJOaCyx/QXbLAy7@vger.kernel.org
X-Gm-Message-State: AOJu0YzDJ98QBLTn7I5efuhrdypMJMszfVZuIv8m4anmxTDmjGz5fPfe
	Fyxm6mE/DNmDJC68xhDs500qAQjZxqRbCRrr0YMUNeqpmiWX+MTO19bPHc5Uw4qi
X-Gm-Gg: ASbGncuES+fbMBaz7Cg1KUE76/GaxHqs4cTQ6Ml0HTRLHgjdGlY3JtEob4WzpzLSOhN
	FuxXPCeq7lXJoB+o6otm+6DphB3u41IcyF4j0F+RRPlis8MGoWneVRKp1gnRT72KD89+LsDf48a
	K/jJqT+6/I4koYGlqmaS2RczdiRQ708oLPzM+f2iwQW4/Ay6PdhA5YziNEtvUopgS5CZFq3lFps
	beo+1mO4eV6wDpcX2PnwZUBqnEeOdxv5O4dRA/izZ0CnSjmB8qqfXZ2PNQ/FCgVP7xeXbfiIqAo
	d3+1jlU458ksgl/FLe/spWePOqoWhDrgvFMosw4EB4jHOkQA48eYV48e1KMI6auoINajuAZ/7h7
	MKooqmvhzwnNa2Ayo091MW6rmA0CITWScJtFE9fFSIaEZoAP1QBNc3flG+eVTq+pkpPlsjg4wAV
	vMpDwUDXWrMqLXCC7+wOJ2n9tp7kfNryzItJkLp2FK3QpSg8s0
X-Google-Smtp-Source: AGHT+IFBPhtd58mZcAZBLJyC3bKxxEccaVgWWjuOqgqZZ629OlJFUt1i4FuqFSj6w0KIJv1vfRmapA==
X-Received: by 2002:a05:6122:8c0c:b0:559:6a70:9897 with SMTP id 71dfb90a1353d-559b320f2acmr2306482e0c.8.1762780761485;
        Mon, 10 Nov 2025 05:19:21 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55995863f11sm7426024e0c.24.2025.11.10.05.19.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:19:20 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5db1e29edbcso995737137.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:19:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTIRonV4zhMjv9QCoLPgcIuIKPfWLxnTfa2Iwuv8Wgsw2+sv+qWldLedWu55hy9EpAQ4/C/N6x7UDU@vger.kernel.org
X-Received: by 2002:a05:6102:549e:b0:5d5:f544:a88e with SMTP id
 ada2fe7eead31-5ddc4814e83mr2563556137.35.1762780760163; Mon, 10 Nov 2025
 05:19:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251028165127.991351-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251028165127.991351-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 14:19:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUoGQVhdy-h6B_6_z3-h03GnNz4AhpS5i0WJf_oAPNktA@mail.gmail.com>
X-Gm-Features: AWmQ_bmIROBItvdVM9xE3_P83zJy9BKTyQeGOqvTNjEHYV_SlB5kh2Ov6vUy8Lg
Message-ID: <CAMuHMdUoGQVhdy-h6B_6_z3-h03GnNz4AhpS5i0WJf_oAPNktA@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] clk: renesas: r9a09g077: Use devm_ helpers for
 divider clock registration
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 28 Oct 2025 at 17:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Convert the divider clock registration in the R9A09G077 CPG driver to use
> device-managed (devm_) helper functions.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

