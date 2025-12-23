Return-Path: <devicetree+bounces-249070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EEBCD8FF3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 278453038F4E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8695633122B;
	Tue, 23 Dec 2025 10:56:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E394032F74F
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766487400; cv=none; b=qjH7SnaCNF/PENyQ5WkqY2hxLB6iu5TjbOg90zvRS3OuyH/mTxyyr4qUq4jeJyK3u7MkkUuDfmlGw4Z4Abt1XRd+1InmsFp0jk3Faenq3g2Brz6XWSGWjKSxFCXqC6ef+JRVecsGAHzx2m8kSJWMC30Knwc8cuYLpZl5XCN3kSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766487400; c=relaxed/simple;
	bh=yQ/KlTeL5Decmmu1SKc7gcsfNHpf6gQrnUfnqrhq6iw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pcK3d2O7PMQVGPw/SDVge6UhScH1xefRC+pdQoscNZhStJv8zRyhPGRN72nUTByIy071eM+FyZ5rUHg+dw6nVkBG+iaRxrgf/yIrn4A5fF2c+Kileid3JAcDjxvMtT1ef7kbnXyfim7kF81ZYy7YqDesT3RLWYkOYbaEIy/QZCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5599688d574so1314644e0c.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:56:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766487396; x=1767092196;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zU7dalQeL7dwIKkdA1xikLJ/9Mwypfr0NJiO4a6Ox8k=;
        b=ulRsjaYe2jCLe8QOH7yP0gwzwlc53Meex9AYEwJabU6vHyWJr1anBzAuQ43nbsgWvh
         V6NeP0ZrxEa7Liw9kaI++Md3uulR4PYfmG5FSxPy/9du/U7wL4c/kzNlWUCqrpKOzrXJ
         HfBLDMCnozu3t8LEYueO3epnJFb9xkYjqosAM4LMkwOxTnOUvx4s6tGnUpvhNS00aOgQ
         BeBC8DnQai3D1Pkjep8sgGqagW70D6Tbs75tfIvr3//8VnTVk33RlIbhE93HpVrFYT6m
         RQTnSwijYIvxCUiIw9J3C7Y2MBWLlhxs95gjk92+uPHDZKlnd+vpLOgRimj4S31a1gs6
         YKpQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3djaFso2pkiXyFEIVU3Zykds8PzH80bYioFLZ/wnVPEELqzrJpRGQhEahWJzlxZCqLnnGwwDA17qS@vger.kernel.org
X-Gm-Message-State: AOJu0YwI7xdf8bZpucWYrbEsTo2LQR/wM34XVFYxaOQbn56xOHjRFyLr
	nuDiGq2NA0obMSy/YsbOwRLHODhy1JBBZC1cYWfQZ5fbXTJoUrepL72PQ55+JZqN
X-Gm-Gg: AY/fxX7n8sytJxx1wfUtZ7hJ5oMP/mRNJtDSlJ9jaUJiyaX2a1G9cP1jGEoSH8+ngCR
	mIeMLKqoCEQ5ZEKJLWw/wTrewCk4y3ScgTQpEORVzuP3N+/9MekJgbKO3kTr3MCAMA3VC+vlocH
	Paxch4IKlJahiv7R3b9oZNimoBCyNlcJ/scgKmD7w7NhDD2z4pNshbLD6x/bdawtMOasB9oKHxE
	SAjY682Jhfk6XcrPftkWX9/GhSp+JlyDNJHr3PXCMMFeWUNGhXEWE7slZXh18VF1flA5VDSVLDQ
	tmpPeJTtwjWj3+7SqOdUoF7NPaD+uu7//cbvRRLbjuB30mUUVhu+A8vRqxZDzxs0C6NF6UGBD0n
	+z9ROF5/YOCrs/H5Cj2seyPduIcKQTaPWqFyerWS95XF1crNxBnIIHb0kh6TIlqDD6vkTgGh9nw
	/CT7VtRLvOz5ppm0OH4eUesIwC52AsDo2TnYUAS3SEULQZCKEk
X-Google-Smtp-Source: AGHT+IFA2PiskzYXdTVTEgHy/4m5DaSdhWclcHq6FcjhUju6923Eh5c5l9Pn3LkChz+dH5w7g+QceQ==
X-Received: by 2002:a05:6122:2a52:b0:557:2551:7e9f with SMTP id 71dfb90a1353d-5615be820f9mr3483620e0c.14.1766487395716;
        Tue, 23 Dec 2025 02:56:35 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d16c900sm4261547e0c.22.2025.12.23.02.56.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 02:56:35 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5de0c1fa660so1471683137.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:56:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW4SsCB6pWbnsWQVZtyIzQlbFy+7sw4maSrXkBkWYmFyf5X6xgb14UvnV1X3NEyhsP+qM0DVVbME2g7@vger.kernel.org
X-Received: by 2002:a05:6102:4487:b0:5df:aff3:c41c with SMTP id
 ada2fe7eead31-5eb1a805812mr4210372137.30.1766487394797; Tue, 23 Dec 2025
 02:56:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101072951.2681630-1-iwamatsu@nigauri.org>
In-Reply-To: <20251101072951.2681630-1-iwamatsu@nigauri.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 11:56:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX4XXJOXu6n4=jnAb2Wdw_Xmx5HmnH2c+FSRL0azE5OZQ@mail.gmail.com>
X-Gm-Features: AQt7F2pMGUmJFhpra1kEeOam54oQrSVzhKpcGV8lDUVFASDyGO5bBUIaTFjbEJs
Message-ID: <CAMuHMdX4XXJOXu6n4=jnAb2Wdw_Xmx5HmnH2c+FSRL0azE5OZQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g057h48-kakip: Enable SPI NOR Flash
To: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Nov 2025 at 08:30, Nobuhiro Iwamatsu <iwamatsu@nigauri.org> wrote:
> This enables W25Q256JWPIM NOR Flash connected to XSPI.
> Additionally, this adds fixed 1.8V regulator node (`reg_1p8v`) required for
> NOR Flash.
>
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

