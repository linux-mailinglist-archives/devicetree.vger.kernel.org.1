Return-Path: <devicetree+bounces-224954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A2BC92CC
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:04:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6BCF4F970D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A71C2E1F05;
	Thu,  9 Oct 2025 13:04:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4C02D77FF
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015056; cv=none; b=ki3D7OYbfYWV8SGYmixc9yDGJCOzGG1PPJFv6j733ugKcQIeYlpbngBEP7jkjYF2w+uBWigcHYfM4GsboManxCnTaXRL+Vsvgt4ezDYL7o4uGL9H0wBVbuTodfWVi2pYLdLaacyIobf2egzOh53d/zyLk3SxOgQbmTRjAQm6z1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015056; c=relaxed/simple;
	bh=lK0YRiXmrbwdKZ8P7SUBMaJw3qsSLA898PoG0gyE2ig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SAL873tjsolZ7ByUPXMUKVx5nGOGJViIYbRNTjj10VOwwUHdnQIX1jXSVKaU16mp3jiggLQOF4KjOItmJbMgFZr1L83eKs+E63MqmIb4E308fy/ORLJD8A5OieyRehdw+m7KeCaMH5Ct0wvqHC+Aupn6UrOfhwBr8yhUkNb2fh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-528a601a3cbso1368487137.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:04:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015051; x=1760619851;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F57hbkLvypADnVAMcMK58RQc/+BVGtUmwttvCSfbYq0=;
        b=kNO2PQwg+F5cmVuvb61DotkH3Sn56F4zvHLssCg1DXuceGPrrlpvDmFGpcFWThNCTO
         hwH2YwC9gKEWMQrsyBmLQCT748NcQjn5EQltc0XaF94fkxbE9xXlTuzJGZUrjcjabf+0
         Rsl6uc/PPgpkB9Gch3CWY65cTTc1qBuL9sJdZBqKrIN/mARAWpC+2OXrlfEPQum9Hg7j
         nI4Lc4Qx6NS7znbK7NjyZ5m1tZS6uVpqZb8YFqCBI9RxMMLzxLzQ7A/6mBHCRAlzBsJ7
         YU+muXhoiLqheU3fmzf7VfBt2G18AT9WHOy/ER54RBMgyaAnbDdYuJKGeYvb6Nd8Jp2J
         cUOw==
X-Forwarded-Encrypted: i=1; AJvYcCV3hyt2pe0+Zdv9B89terct1Qb580c6IK9BfgGihdPRYIc8/EM5UKYfk04tm7NaqZLGco99XRTBKudV@vger.kernel.org
X-Gm-Message-State: AOJu0YwbAziRB44gIS7TEzJ+D96zp/Bbefuc0IXeEU100RDcOdCYhmtW
	Zb3bTAqqNuro7v9hvsctrUaPR+1wvzD8CYeJLIy+9hDfW7uQW9w+Qgxe0DDWn8HG
X-Gm-Gg: ASbGncvhiJLrAZslbC2AoPcgJlJQuXhx4cnD+o2YXYMsmOcXhK6XLgr3b4Q9XtpGSZn
	NAogOsjRgccLPWsCKcawuNsPBddjysA5eVi85ukGqQqdNM0ybi5FQDSTKd7nIVGvkxKLNZwkRzG
	8bt2nZMUELXf6B8o53XvfVnydR08e8JvBSA1lHP4WbhQkK4CF92CKb9NTYpnka/ZXkNMyd2KRyt
	lzKqTIzytKLTGNYk5BEFJ6dt3QtV6lcQcKBxZq15mkOQjJEQXN878wJrG2CFAm5WNuFMPjs2uNT
	iaSsUFPIkjZ2zPOkbQmydTdfjwPE3IHEGN5ZkOjPTGBTP+EsznHaPfXkLKEbrgdjhkA7UEKcg8E
	LtW1D4/LxBfjr8jYe1IjIFv4+qbVroKEOhE2uDhqj+jYlmzJ0IidkwDz4vSEAjEnDXqed68LZ7U
	q7ln+2Hkue/wBL1HiB+XQmRPYCmfy03Q==
X-Google-Smtp-Source: AGHT+IGZB6HdRTAlFpnMaJPoqcO11LJ370gU5X4ULP5XmfOc1J2PpZcIh+h5MIDPMVdG9TJk4lrZXQ==
X-Received: by 2002:a67:f154:0:b0:5d5:f6ae:3901 with SMTP id ada2fe7eead31-5d5f6ae3d90mr346062137.18.1760015051208;
        Thu, 09 Oct 2025 06:04:11 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523ce69b52sm5275534e0c.12.2025.10.09.06.04.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:04:10 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-528d157a48cso713371137.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:04:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXoOjew6HnMqkh+o3w/uox0vSYIW6RbmMk8O3WSqfijFeWuuxLYA7xUY8fCbPmMwSdjk59CFqdrWmRE@vger.kernel.org
X-Received: by 2002:a67:eacf:0:b0:5ca:714b:2dcd with SMTP id
 ada2fe7eead31-5d5d4d8caeamr3851246137.10.1760015049336; Thu, 09 Oct 2025
 06:04:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009104500.69787-7-wsa+renesas@sang-engineering.com> <20251009104500.69787-9-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251009104500.69787-9-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:03:58 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWT5ErgNr=N0VthHf5f0AEAfsfFPWUSmhoy30QjZL=cqw@mail.gmail.com>
X-Gm-Features: AS18NWDUSk9bq9sp_OYBrerwfkIBZEZZxc3nmI1ffEo1gqmpf0UUhuXBoL8iw8E
Message-ID: <CAMuHMdWT5ErgNr=N0VthHf5f0AEAfsfFPWUSmhoy30QjZL=cqw@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: watchdog: factor out RZ/N1 watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"Rob Herring (Arm)" <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Thu, 9 Oct 2025 at 12:45, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the RZ/N1
> watchdog to make handling easier.
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>
> Changes since v3:
> * added tags from Geert and Rob (Thanks!)
> * enabled 'timeout-sec' as the WDT core handles larger timeouts for us

Aha, so here is the answer that proves my assumption was wrong ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

