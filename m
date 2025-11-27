Return-Path: <devicetree+bounces-242804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 266D0C8F4D0
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BF6BA34469D
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34223370E0;
	Thu, 27 Nov 2025 15:32:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3919D337118
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257539; cv=none; b=QtyUU9dDyQSNtSgE65/KuMGpsDa+lxrgXTHLpOPbLqR8xZZWtD1mrPYD6//z21BZYXEMhwJQrvTrZ+6M7gL26wjkTZJULYX2LI+QEtII5xc/Rl82ZxEuQuyDQlidOhl6Xjc0qCy4reRlN43SC8/naywEaKcfP8QvlhTevbRhJdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257539; c=relaxed/simple;
	bh=sHl5pwlmEItohvFZHZI1KjlDkMBVN2T/fYskflBGJd8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OaDIkzdBdeFNKEHZdfdKXbg1Pa0GL7lwmfe2CXnrm4MMsFt1NNdlP9DeNlZ7TR0Xr2Cs0gn6pxavkG5jZg641OOBI2jrz5o10Xd5jb0CCCU4rVNbaeEUqEWkgPlg1iV/MHPfGni79cg8qri3gbaN9uZuQ8dp7p7aRU/qWakkeiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dbe6be1ac5so343447137.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:32:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257537; x=1764862337;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mrz1X36yjHl1z7T/FMljFcnnUdnxdHtX5H28vUmRBT8=;
        b=m1jvFa6Ssrf7lak3dtk28RzG7kpeLkfCnb+ttGuP8kh9f0Wxu0IP1M8FZ0CHHMas6a
         Pq0xpwHmvaopkvg/uRauecp6+ufUDBEjx7DicbS0M25xIbiOU7EfuY9yq5S5p7L7nNmS
         YhURNPogArihOBgeI7Vzat+LiqukmuAHGDG2m2QMKHReOjB9Pozvh4aGZ7X6I5784jMJ
         BBU/Tug29Lo2dSJSpbP99/ZtAAQ2X6sPSJxMqFnr7hB+eckF8GyLOBLntG3kgmWoTaYw
         cbISPn+KW8cImd8Z7CMYs1sJbrZPodYgfU1dQXC2okYfHiBhaXJZyIgjRabn6hb8jhqp
         /5Qg==
X-Forwarded-Encrypted: i=1; AJvYcCUtLIBesCiXa3YXrcVPPabUycGaFdGYdbYIPJuxyPK5xg6187aVH/SSHpDDHGqO0MSlNVKnWlDfq8i6@vger.kernel.org
X-Gm-Message-State: AOJu0YwY7RtB8sUi/v3L0tkMh1mSGfK8hybQb/7JOE1t2seBhDFHDBFj
	2GCEyDjp6AIuc+EZfnBMWaQeSIzVrTu0L6oi/+oearNIaD31PSqvhgyu4G3uGEaV
X-Gm-Gg: ASbGncsoDyTR7e3t/So/w5XBkLMkZiPi+dxAdwx/b2R+PKMwXinIZobAxSEg9fCBg81
	en+MQAXUU/k3hpz8b1MCv/GDxYNfBK/nNRH8E7df6V9nZMNqXUDy9NREY7MYgslzJuLOrucNOSd
	xbND+SLHyyfn0NRpg4Y3yeNKOUiAWbST7aTa304Zq3n92Lpg74B7vBkseTnS/lzLIOw4+2UO+2F
	UPZBqxhfbJwHYqqihSlGNIfBmOjjf6UFM/PXYUIJk3fBUieOUElO41siHWtokA70gK+Sx6FbNOD
	3ZjdQU+hOT/9+TKCZvTVzr7Cj4vuLGuuzHYjxmXcMrEnugHwfKtSyUo18EPKwgJggGMvdlm5TVl
	LuvPGDUdsAVn/wybVQJ8lM2jFrIg63f2FKtn9Bsp6p5VFKIPcgygkj/1yeB7peQ2NXfGU5cUVFq
	0B6hbim5AHKptwciDiV5v8STCb3pWx+LemDGYB9sPU2QSPsyUJCdeUxPOrVLY=
X-Google-Smtp-Source: AGHT+IH4WzPZrOX9EvRdKbkuWn16fPY2wIRNA8IsO70hXPQ+3qbGY6i/nijeATKAWSJg4w1AflC3ng==
X-Received: by 2002:a05:6102:f07:b0:5e1:82e5:200b with SMTP id ada2fe7eead31-5e1de3695cbmr7632766137.30.1764257536794;
        Thu, 27 Nov 2025 07:32:16 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93cd76939c4sm713069241.15.2025.11.27.07.32.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 07:32:16 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dbe6be1ac5so343432137.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:32:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXiDTkDSYF9qXlHF4Q3VOq95TcJ2F7Ue8+5mqRncz3S5EbXpXJkV48+9Z7I4WIXDNzvvBBjRf2hMtfp@vger.kernel.org
X-Received: by 2002:a05:6102:5107:b0:5db:ef30:b74f with SMTP id
 ada2fe7eead31-5e1de0c07b0mr6881793137.8.1764257536406; Thu, 27 Nov 2025
 07:32:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
 <20251119143523.977085-7-claudiu.beznea.uj@bp.renesas.com> <c24nuqtczt2jxekl67boramlgullnxftwjfjlwcjjnyv47ykwc@tlpojiyzdk6r>
In-Reply-To: <c24nuqtczt2jxekl67boramlgullnxftwjfjlwcjjnyv47ykwc@tlpojiyzdk6r>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 16:32:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWBG9VFJsm6mMAUDev2d_+2xta74PwN791_NV-=rZhyHQ@mail.gmail.com>
X-Gm-Features: AWmQ_blQk_Z_QzvT5Ty6xKUF9xdppK3UfiIhR9w996WFFGRzUjAlrY7O8yUugfs
Message-ID: <CAMuHMdWBG9VFJsm6mMAUDev2d_+2xta74PwN791_NV-=rZhyHQ@mail.gmail.com>
Subject: Re: [PATCH v8 6/6] arm64: defconfig: Enable PCIe for the Renesas
 RZ/G3S SoC
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, bhelgaas@google.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, magnus.damm@gmail.com, p.zabel@pengutronix.de, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 06:55, Manivannan Sadhasivam <mani@kernel.org> wrote:
> On Wed, Nov 19, 2025 at 04:35:23PM +0200, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Enable PCIe for the Renesas RZ/G3S SoC.
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>

Thx, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

