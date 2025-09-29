Return-Path: <devicetree+bounces-222462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B61BA94E5
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCF2C1647EE
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7E1301474;
	Mon, 29 Sep 2025 13:18:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB38A2FD7DF
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151937; cv=none; b=osHS9hISGYz9vUboCPJ6D9Eb8ry4LS0AW3BtO4ttLvPX/huDszxhDe3/ecjCEkEz2UUXy4ShQUeAJxyuZ/7BqIbnIUwhz/TcX3alGZ+zo9SPo7IVHsKFPsxjPKNQVKKFIysbOZX1tZglHHnj74yMgdS16htD/VBGQ9kkBmKQf44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151937; c=relaxed/simple;
	bh=brSfkV1bIv9/1CILbq/2c7mai4jh4ZoqfNa+gZIsQo8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T0GJUfumNREnTLaudPb5OZUNDClnHMkemhTSrkAlpwtvK3kdOTZZgYacSKjU2Dlcp2IPl9Tp0hNCKn8B7jcdBtwcxzc4NUjwfmj89ssLJxUrjZ/du4EIIuncAo+zET3cuVvsNDVd2kuYE1RCba0NGqqL7TLVValiZSn/4vjehfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-890190a3579so798404241.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:18:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151935; x=1759756735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4bKK4PdCjP70JiZl5KbDKcWmIOjd4Dbc3wrsn1YnxIM=;
        b=Y4bFbvHfFsrG5wmChbNxjCXKBxRZgKyX+daH9FLEHxlYepV97BIC/x2bSioOjhss46
         CH3isXZLB9StTKGIZxtrDJC+xX9P7NjS/YN5faHlY+Hy/qmTZmhAR7Rwn89vK35OekWM
         FysbSi2zBF92dj2azQCSGsX2/3mrXk8es1dqdCq9M15MzPtMqPprP0BAc7imyJ1T0TWk
         kA8ELcQGHil2+ZgigJVKWUtT/q2F52vztf1GKmaKacn9OENFN7X95bBhL7/WCAFotodV
         IBbRUn2UVKvuieyvCjvBmkiq9b2gzGm7gD67ZO8dZPXVMERWbmoyoJT1SyBmnbOWPoHj
         LPlw==
X-Forwarded-Encrypted: i=1; AJvYcCVf6GrfI5WzPDMC9YC91S2Hq5WVe8hsEL+CZdyHeZ95Gj5QinrbIOe4DqjcMZv6o92eMJ+26bqyDgte@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3VizscCFeCIDWKAER8QhZ2eD6hlJ2nn4X13ay7CatkXgS+LUo
	4V1Zhp1IRsDl3ceXOm67Mw/5cHffXZC4bQN0fgYKmyP7tX5AFS7eJY7nMtXHfQG9
X-Gm-Gg: ASbGncs2g4GNBw3xQmADx60LxDwqng6qJs60W+d5vBYFYfXRnzP946HgT7f07XSMW4m
	dlrbmf8Chkg/2W2fjMW31ZpeXJwQqiFrGo1XdqjJWb8hPHk4ZUp97y48UsRABZYBDwZyTBnK8w3
	hv6z/6QjevESGz3KhN7e+L5xSE/wFMBcQFPLjZFnfZu8fSYA82ptkbRXCPukWLZcLNaGPsHPVkw
	InaGbdOnnm2VUCm8uXKqBRgl4NmW26LCUwBWDngccMIutJchiy+GBiFCHRRMblIn4bQQ6PpA51p
	O+uptfC0PbrgSQ2py3dh2QpusTeauwBTqeFVpD0bxX8Fa5dvMJgpQXbxd+4OtIhOsKU6PLx01w5
	aMf1tm/zXsKr9IhiRsUEKzN8jsp3jUUds9mM73s7jNmz3gAx6bW1Di8Viai61
X-Google-Smtp-Source: AGHT+IHHI7bI3J2kYpYuq/u6/b7UT0vFXzXHoY1D5AbVUTZCvnJL3o+oLOOJHjg37TgmU1WUaQtrAQ==
X-Received: by 2002:a05:6102:cce:b0:59d:ad3:e1ed with SMTP id ada2fe7eead31-5acc4638ae3mr6269110137.7.1759151934579;
        Mon, 29 Sep 2025 06:18:54 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-91b198fe781sm1882829241.3.2025.09.29.06.18.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:18:54 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-580a1f1f187so1906767137.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:18:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWTTShoRjL1rasuQ71rSLHte68BWuh5WEtiKplCENen8hTZ1+xx2Xosd3HcuunsLOl+wl1qYQg0O9P0@vger.kernel.org
X-Received: by 2002:a05:6102:442c:b0:521:7afa:3b95 with SMTP id
 ada2fe7eead31-5acd046d9damr5630463137.30.1759151933466; Mon, 29 Sep 2025
 06:18:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-22-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-22-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:18:42 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXk-O-UBeyiRfdSOrurL+5drQQzpbfOA=g3g8ES7Fr-Zw@mail.gmail.com>
X-Gm-Features: AS18NWBC6nSaNPpPtc_BXwSzoWy5zpF6I6NNMGG1EfJhUcpjQY-yLt3NspXEUM8
Message-ID: <CAMuHMdXk-O-UBeyiRfdSOrurL+5drQQzpbfOA=g3g8ES7Fr-Zw@mail.gmail.com>
Subject: Re: [PATCH 08/12] arm64: dts: renesas: salvator-common: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> Salvator boards. Sadly, it doesn't mark the node as reserved, so this is
> added manually here.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on the RFC is still valid, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

