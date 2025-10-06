Return-Path: <devicetree+bounces-223871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A4474BBE800
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:35:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D5CE1897F17
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848D82D7DF1;
	Mon,  6 Oct 2025 15:35:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA22283FDF
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759764925; cv=none; b=QwDer2zw78mLaVFxvWO8vL4kCy2nE+IYx41S1G9ipjmIyDhYBXL27RloBozTEvlsQmUlWsBOdGLIpucXCqpDE46wizY2dvf/WR1yQZlqq8trujh5e9G1il0/7Hd7EgesIIX8fnAk8n65qpyvO1uOuI/iRPMpin9eWcznj1lg8+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759764925; c=relaxed/simple;
	bh=dSnfb3yL4QKj2jW1vkztCLpaRi4oy5M2m+qzcux2G/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dVdqPHH0aC8FxTPM8/rQGa3SbcVxHqG+Cz1eA94Bkdn9gWY401yBJ2WjjWqyfro3RTmQ7RZ2iXyLCG16iGF8zuSVeZZ477u4lEQiashEImgbQeJ/9WtJFvsIQdk36YLD9MP33K6V3pey7Te85Eyd/cgQ8eeGnuq/okpj306WcJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-8fea25727a9so1487904241.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:35:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759764923; x=1760369723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+jg3+SSfQDF+38T7p3MLG0Dd2g8S6PQVTqm3cXu4YzM=;
        b=Tm3b2pfo0/SqZLsq1xBRKgs1nHmvQR+0lyR+9d/lsq8gIgUULKRIDAZkQVAKQteqQn
         lqa6tOxp6H4hQEzjgY6/J6w3GT/7hl43RfPBLU5fjySrX+GNcJVYWVURq2OvR9XXtiCS
         75oaGC7zRBVhNKJ8CYznnnIObTMlwmfqLTuhd+8k22Ov/sV345VmqtuCFt5RVcGliWx8
         jqKVrAe1Em2U2vzizqWNGvnkNQqWQc2aWg8zraOjDr8ZZKxHiS1oswQO44EwLWm9CMiS
         KridUz9k9uGA1CceA0HhhqBI1oVVFQStYltXJ3mcY9V3O/CR3a/xxgIyIgbyB1ikYgI3
         sOgg==
X-Forwarded-Encrypted: i=1; AJvYcCVK3Fh9okJULvkZjxMUz+toq/NaKsTMJ97FRliLE6t55UrlqB7gSUK6n+CQqCNtRAtTrwQOo9sLr4XR@vger.kernel.org
X-Gm-Message-State: AOJu0YwrH0UZFuttwX+8oXHgwxYkXC5ZIgzSxTgfABEp4IMyzAFFATF3
	YO1gZPP0bcKeikY3utKJc8cA3xoRnkJ3Muc65G11BJawJGjCCXfWkAvioPJzxhFZ
X-Gm-Gg: ASbGncvduCnLKx2sfqeJhCEn2c9eQInl+//BMH7SrKAdKLAjab3uGakh0xpRTZxoBqZ
	FTKjiI2oOmjJjD4NRsYTpl5hnPlP0Vpbqbpldej11T1ASXGxxyrCF7E1CNhxUG0lVtL6U9hoIx/
	hj0j4p7iL+Bs2MzxJZ1lrJWyIUSrs/zxaNYKSf0gwM4OBS6xz9jaev114V/ds1tta4jhXzJjk7Z
	O4hc0A33CQ72+R/F1Dpt3WoBkaU+nUdnfiOfHo2DSkv1Rlv/G2wTOAAtMxyJeDohavvskw7naWg
	ZqEg2SIM8xNb8Dgy/p2CEywQ/cISvdnRUtApuSZ4bGVSvok/Bgx6fxyivv5EsiZ1WSNp237QWPK
	X/5RyCWfxjun0LRKtu4kCWomI7LoOtBGyy8TmyybopeCrNTZiFOuXuhBcZsiEQCELmeq59zVzVC
	pvGYZIXJbC
X-Google-Smtp-Source: AGHT+IHm5zIDD8xZJ7wafN8BUPNsqujqzANkBgZcmtPdqnmzwc1FmLPLECQCLHxVWavgKHKOxzgATQ==
X-Received: by 2002:a05:6102:161e:b0:4fd:35ca:6df5 with SMTP id ada2fe7eead31-5d41cfd8d72mr4382937137.7.1759764922491;
        Mon, 06 Oct 2025 08:35:22 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d383430asm82167137.2.2025.10.06.08.35.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:35:22 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5d128733742so2200290137.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:35:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWPQ+xUyEm8nEA90hUBV7g5EVWGBrH9UYAdSZhi4fHXl403ZmtBRSIm+I8T/ms0AZSwRHgg3LZ2yxFK@vger.kernel.org
X-Received: by 2002:a05:6102:5793:b0:54e:76ce:8fb5 with SMTP id
 ada2fe7eead31-5d41d001020mr4224388137.9.1759764922078; Mon, 06 Oct 2025
 08:35:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-16-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-16-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:35:10 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXwhsYjHvHPjtGWmSJTp-Zu_5ZNB8P5dqYED-iR1XRqUQ@mail.gmail.com>
X-Gm-Features: AS18NWDaGoDl0gW_ZVX7-GNkRqZENsT-45ppIcJcSJ-FeFiGnUMc-x4usiLGAsY
Message-ID: <CAMuHMdXwhsYjHvHPjtGWmSJTp-Zu_5ZNB8P5dqYED-iR1XRqUQ@mail.gmail.com>
Subject: Re: [PATCH 5/9] arm64: dts: renesas: r8a779g0: add SWDT node
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

