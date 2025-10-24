Return-Path: <devicetree+bounces-230673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F0AC04EAE
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:01:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2545188E9BF
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642E62F99A8;
	Fri, 24 Oct 2025 08:01:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7B52FABE6
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292906; cv=none; b=mK2T9V6a6+UIrxTZdpUeJUsCRRAe+8nxjjHdOZ0gHqz/a/WdZKnlRHX1/JufRYgbMRaoX1n2kWZo+a/gcy6gBaawXR9yehelPqT8cZS5MEH89eJ0HKlAURDHoAe/m4NUfYuuRClksMMkcAxiWURzsSuVYx8I9xiKBYlvviOZQzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292906; c=relaxed/simple;
	bh=haXerQcA3HaYtUIl4/PZ1i9/1Px3bakR91vnPlzpbZI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LvJwnXeXO2ExNaIOfBEEAn/9DTa2Ym9mNE5JCbdeFarg7eOedyqzRky9gfd8piTATza7qyojIhBtpfetHdFYuI0GJP96PrfciSPVzuEvTfQnwpzW7ynoUfvF1CH5V7Lk3X0xwJYzBagl5d5g5ZjXaXnODryAiRGW0qY1yN7XzuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5d967b66fedso1142692137.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:01:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761292904; x=1761897704;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mbuokl4czKvaoy+RAtT8vLd0ny6Fv6b+IGMo/jRBfrQ=;
        b=Uqh1X1Gt7cHY7Y2yq5dhA0SNGTjMJfwVfYNePOYmgssjQSXAA4ENsJ+XiqI/h0pR3l
         DO9FH7M7bYjbjfTBPRA1nrxAkmemD+Vox+OVB3hKKJXHEvAg8sYpHtcew09sGFtpdGnI
         hFbFbPnKmS6H5rJiaAaNj42wPVfsGd33TFNSsCL2/QE7YrYCqvORypFRb4vynw7Y6e52
         bQrp2LOAu241kJ9JvM6R1Leey21U7R8R+wWFo/hDKs5oWr6415jQtwl2lVK4Pe1tBcVI
         OwhqOtThG1U+leFDwFGOyBSi1Vpy4NzBvvB8nwKjchn+IFtp56EaumFpsltzal2RAJxS
         2l/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWB966AG6LCiO6/7J6VtqJ8I5YVIw9E9dNWg82MJfoJzN56fuUSDK0R/KtFUPTamzYNBusIzc5FrM5g@vger.kernel.org
X-Gm-Message-State: AOJu0YwTppNOvxAk19/k2p+yP/HjJTKGkOqohkQT432sI/cyraWn7zi/
	TurqLEoDcTDYsEWml8Rn8FXbnyxR/gpV16pWZ0c9tYRNu3t1nxVsND+4XaIZvaBQ
X-Gm-Gg: ASbGncuNerpw6CV0+CGgs/kZ7jRZ49a7Q9hIwYyiB2nI4BJUFhIu8aeikGTwGHdjBRm
	74BJwlKXK/D6SlzSdu8AqV3P8A7rhI6aNvdXmXNNgF6axe+T7eKy9q/BBveYa/IwsE5sHkf2VJG
	CbIQw7OGHK+CDSVMMzxws+WMC+6YwpwC4EZbPKcQ8V2JGZmO8npY3HX0Q/0fhIOMBXyqDQKcuH6
	n30XZ5EMfMZIC/w2X/AtuyvVUiswATtNI+AHFlQWzD151qAsAC0oTDI39E7Qtqu2ddnh4lGiWr2
	9iP2/yGQ9QE6yo4lrLyS6D8f3k3HGDjRNsfYqazx+lh4cvV+c73MA+esmk/HU0AgJOCOGiDZPTM
	EAMvSwZVnlxjmT36Prl9e0a8mhlaKvm3HAS3wy30oHanRzBiDSmfc5tNH9hiuvqqrZqjGf3gpyf
	alF0Yd14c3Fvj8dINBJk8JzZYh2CrZHG0tRjqrNQ==
X-Google-Smtp-Source: AGHT+IED8GTYU+b6fou9RKK5ggxQjVAB859p+Je5GaT22BWoXZMng3d2aHhesWZcESWkGmI2oPj6jg==
X-Received: by 2002:a05:6102:3582:b0:5d6:155c:33aa with SMTP id ada2fe7eead31-5db2e479ac9mr1853517137.16.1761292903654;
        Fri, 24 Oct 2025 01:01:43 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db2cca25a9sm1804698137.14.2025.10.24.01.01.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:01:43 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-9231a251c01so874883241.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:01:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVr8iyWzV7YKoCV/z89vApXQY+iXdgMkDVM5fBbShNGcBugZuRK6dRyDgsHzldy14Nbc5MoyIGqfWFl@vger.kernel.org
X-Received: by 2002:a05:6102:c49:b0:5d6:5f0:3f88 with SMTP id
 ada2fe7eead31-5db2e58e682mr1680224137.35.1761292903035; Fri, 24 Oct 2025
 01:01:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87frb8n7kl.wl-kuninori.morimoto.gx@renesas.com> <87ecqsn7jo.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87ecqsn7jo.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 10:01:32 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUCz6OZYbKR8izDRe3=dz_yVTj9AhFmHG98WETaeknmZg@mail.gmail.com>
X-Gm-Features: AWmQ_blRNb9opWlPAtdUuV4F0M67z94Nk8rxY_eqKk-OMWvzPSxvxuGJgirtXu8
Message-ID: <CAMuHMdUCz6OZYbKR8izDRe3=dz_yVTj9AhFmHG98WETaeknmZg@mail.gmail.com>
Subject: Re: [PATCH 1/3] mailbox: remove unneeded double quotation
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 24 Oct 2025 at 08:22, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> It makes Kconfig strange. fix it.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

