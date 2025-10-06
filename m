Return-Path: <devicetree+bounces-223874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BBABBE83D
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3E1D3BE692
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 176BE2D594F;
	Mon,  6 Oct 2025 15:40:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED5F273FD
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759765256; cv=none; b=aRXbLjngWP1xgRnRxdURbRnFfSDxcKItzgNBp/X9tjNB9KB02Iewr12nahfLts3ZXQcg9NlXwv+eMgi3RX+EXJjIutaBxwqzN64KYId4XZSdR5UJONAgsOiwKRwgja945Kt3yssOSN7rI3f9wS+/NijeejWB/83C/rzdOT5Wo9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759765256; c=relaxed/simple;
	bh=dSnfb3yL4QKj2jW1vkztCLpaRi4oy5M2m+qzcux2G/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Px3Pvq/MKYsquexcV9eb3v0M5WvGbYhha9qwrA/oC5NjtodBaJghPf8QAE4a7lym7g37y3WjD6E6OQmuZll7l1kmxLTaDJA18Evc0TTjsAaCuh+hbH9Q3ChndmO2Leqs1G4i7mIanpA304Wj487K0KXOE3+0igkljq6vNuWdN/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5d42137abc2so2989935137.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759765253; x=1760370053;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+jg3+SSfQDF+38T7p3MLG0Dd2g8S6PQVTqm3cXu4YzM=;
        b=Fu7b5VlZZArI0uqAN0RZAkldvBIXO6n33hrUcXNCtWiuUXcxes7PKtCpIxo21gCMHL
         b2hG0zVkztoWJ4dmVF7PYN8TG37QMJSrZXTxOsinqirxrD1zOaFbJRZLE0AmBHpjF/fC
         SUrqO23A0xGgv+5EZ78o/pVW1/9w2uxTv9g5MmtbVBZ7ZvZVzfjfmbKJDC2R3rYm3MML
         9U0fzMQz1dLmLEWYRf5EAo8gF5TMdLPkb/2tR4IN3KjqsvLa6v8n36TuiJrSTOtJBDSn
         NtNUHNOIg5QQQvn2KqPwlW17cGsSNUO420xVEEM7T8EzykGUjiJZmwZqaBeBNokhABjS
         XIIA==
X-Forwarded-Encrypted: i=1; AJvYcCXm9ZgwP78T3aypZ3x4jJyrs4bWUh1DfSjtonBSSHhsbow4ZWZ8uOOQfyFdPxJrNukveAgfPFHVqCul@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5hW4pz2xXM+jbUzxCC/FM1V98AWMfK08MmmKDr/hOwJkkN0ea
	O8EYggXAWGN6in3yRd42gkHjM9Rc0C5rAMP8Jr83xRmZP5KF0t4akuOVM35fDk93
X-Gm-Gg: ASbGncsCr7U4xzSte2NFPc5C3YBLN6lWISlrRrwKg5pOdXjlpWQJhvj9GbAlIyz+5B/
	dXQET7r2zM8Jg0RJJ1K0svcnafT6Y4mcHj7HznuVLba5xf7bBEJ4JkjIUowd7c0IqU4BDKd+co8
	PXOY9Gnm28mwsNYm+yjoD1nBPxWiNJtTI3XLsg4r+bHoGdPwztVRucrDBlYKhnzSooEwHHRX7qx
	q/aauhD1WA77nHQx2lO5ogq7PC0rZd0B0MNVGA9o/WTlbYCflnMINfZiwXaBP56azdpZUqMdfry
	YpYb1AdoXAosAeVM8TphBAkbvOrOYNv0fAg+KHOx/NBQK+cfME34lP1cUU18rajknhVYpBbPfLI
	OU7l8X1eQHCVn+htInASfdN1ViBu3y6jECFBzFWRGitEaL2KJahb/2FxWh74l17aLTn6v5YzWjZ
	xii6xkO2gYNHR4PlYsaTgEk0bQ+litswAx6A==
X-Google-Smtp-Source: AGHT+IFGDwHBkkvMH49c8dM345QdHRmHNeWR0vdMnTe+EjGlzv0McO8qLSmxM1KJhwZ+k5VULtSkPQ==
X-Received: by 2002:a05:6102:14a2:b0:51c:77b:2999 with SMTP id ada2fe7eead31-5d41cfb2f91mr5489571137.2.1759765253004;
        Mon, 06 Oct 2025 08:40:53 -0700 (PDT)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d3861b29sm86280137.4.2025.10.06.08.40.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:40:52 -0700 (PDT)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-554a7e98e19so84514e0c.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:40:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWhm1CWzaQVzNI+oNDCNIrpI9HhazhuJQsgW7ly8pVK5xdLTeZkHTrIF55m4s6A77fNfFIFECDeL7el@vger.kernel.org
X-Received: by 2002:a05:6122:a12:b0:54a:9433:2aa9 with SMTP id
 71dfb90a1353d-5524e84454fmr4377149e0c.2.1759765252536; Mon, 06 Oct 2025
 08:40:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-19-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-19-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:40:41 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXpFwHG9S4GxgxiL1Ko1C1rOaJvwF7xfZuW1iebtXisqA@mail.gmail.com>
X-Gm-Features: AS18NWDaUb8AOYs4DT3elfKKXvYE7OVBQf-2MkbfS-R2J9UIcx8cNKS7mb_zZb4
Message-ID: <CAMuHMdXpFwHG9S4GxgxiL1Ko1C1rOaJvwF7xfZuW1iebtXisqA@mail.gmail.com>
Subject: Re: [PATCH 8/9] arm64: dts: renesas: r8a779h0: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

