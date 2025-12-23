Return-Path: <devicetree+bounces-249155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A1DCD98B0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 665953015375
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AD56254B1F;
	Tue, 23 Dec 2025 14:04:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023C222CBF1
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766498688; cv=none; b=QS492ogdZgvPn/onoWSqIEgK9ou1GRnw4yDSA0Tnx55uTPaegVTvmP+E3jBHkmDsR7zMwLfTiqv7podxkmxnuzZRll8ui4pHF4wZCwmP8lPJcQY8BqooPfvf+r2NsIzMP81iQaEwivnno/5+79FaT9FiCuw1SovY13jwQT5O95o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766498688; c=relaxed/simple;
	bh=+jtPilWYFm5ncAYTgsqlqGBVAaL3UvMzNugfZf9EGfM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I840B0B8IbqDf01Zch20GzXrKMgp2lKhzV4HQXSFVS19Rx7/4GNCosNy6xMCnbKQOSKWNVjY3BONrKzRi9/ffCmb6RwEFoAAgatv4o392Q2mH3AuowNCDqAfHLGMPyEfBGssNhsHcaGmfqssA2vJ0/AaK582sDF7+zQhkOSTJVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9413e5ee53eso2884157241.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:04:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766498686; x=1767103486;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKvJk7e7tJ7TSRXYxuvnx2VLhgvs9PdFoo0OZwEpm8Y=;
        b=GgXdo2BiQuR/h5Py6f+7SduB4SgNS+qVCCW/zjN8j9PJ9IdvXMi62WDvPX6jKxkSia
         N7aV2hoK6/XrNtjcD4PhxUg7Fy9UwFzWvDBdFVg9sqKLG14pvk/UIiE/FggohWEjkOpC
         BJpIYxNJN/FhK+J6zM9zJ+9Q5K1jdNCS56iiHsSkisXxEP45WwGHfz/c26mT1DlBseSb
         g1pIVjsQEW8sIqgAeQVkuf95G6QJ4PE2ISOgjUaJJ90bLFoPuJeh/GCb+IDmkFAV5io2
         AHhPteb5iaOwMt712cH5yn32qmBBr4pSZqbAg+Bnyst5MJafuIK7to9rzJnFwIrdafiv
         pGAA==
X-Forwarded-Encrypted: i=1; AJvYcCUpJhMqBF9ObzTQiiUPtw83xfRq78BQwL/p2g88OQ6mwOwo6SXTddLb6NRY3oTBboulORuh7rcSxoBr@vger.kernel.org
X-Gm-Message-State: AOJu0YyNTjY++y9nVmiSa+iEcKpDpkrjs/eDbpbaCJ87aR2SFCYsykUP
	sWi7z3cUUuerXaZYGzVzUiR0WyzLq9NuVwlZsyOfVhOY/7ZI/gdhpHcOSZrVTkpoU6c=
X-Gm-Gg: AY/fxX4UWTY0PntM51iLY0w44gLUt3FHWJCnLf68SU4dn6ydThdU78VSF/elL9HD602
	dCyP6hsEJG+paITPWJWji2LqJwDinlxJaWiB5YTDOofSFWy1ZmsUMqB8aqr41ZWgdOtCizm6u06
	ZzoefbZjeap+41ijVeYCuziJkT5/1xDfDKL9q411cCA257zewJ+Nn1Va1bZqT54HYo2AXN675Y0
	hvM9bPBimp2IefbDu8O7nG/V1Q+vmTdgH6OVkOWDQR6RR0NubJRX7ZY3WuVSZUDONmy4edHkh9z
	lDufUDJ8Pd8CAgufyGLI1/k62Sw885tSRoy9H0xaMjYaOx1Ptj1dT88BROSD7YA3L05OAE3x6K+
	cAySgts0zoFOe0bAkfLVzr3pIe6amfNgCNXC6VVlDrMK+czkZmQ4ehrUFlZO3zjWbnuVQ6UlF1y
	YEDxKoWtlr8Rbv47Z5MGhZTDPhJnYLJC4voWWcJWmVOUFKt+X2+QZO
X-Google-Smtp-Source: AGHT+IGgOwDFLj2Y7xKdKZtVJmVe5aqjMHyVMA7uaklwb7jeaIiLkT5s/48HlciBsNtPV007LIRlaA==
X-Received: by 2002:a05:6102:160c:b0:5de:6dc:22c3 with SMTP id ada2fe7eead31-5eb1a851c6emr4757810137.42.1766498685286;
        Tue, 23 Dec 2025 06:04:45 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aad0b7bsm4379708137.8.2025.12.23.06.04.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 06:04:45 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-55b302b8369so4020344e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:04:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXeBq36ei6mP8uPRwUQYmZuJmRhc9DCZ3NHu9PgdgKrvnF6D3IU84essRsWTvnV3W2zxnAmias87mC1@vger.kernel.org
X-Received: by 2002:a05:6122:50d:b0:54a:9fe8:171e with SMTP id
 71dfb90a1353d-5615bd7271amr4851900e0c.7.1766498683563; Tue, 23 Dec 2025
 06:04:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215034715.3406-8-wsa+renesas@sang-engineering.com> <20251215034715.3406-10-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215034715.3406-10-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 15:04:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU-VrUZMqqsm3pncBe2uSeyWf4fhHYvSFZAR7-ZYpvYEA@mail.gmail.com>
X-Gm-Features: AQt7F2rWqSOe9yoJJys_EHyj7yyYop8naN2ynk8rs-UVLuhu64ORSSQGQUuxfgM
Message-ID: <CAMuHMdU-VrUZMqqsm3pncBe2uSeyWf4fhHYvSFZAR7-ZYpvYEA@mail.gmail.com>
Subject: Re: [PATCH 2/6] arm64: dts: renesas: r8a77980: Add WWDT nodes
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:48, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

