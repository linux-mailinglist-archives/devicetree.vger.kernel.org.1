Return-Path: <devicetree+bounces-224473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 507C6BC432B
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:52:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2BD764E351B
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD89299ABF;
	Wed,  8 Oct 2025 09:52:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D76D2475F7
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917122; cv=none; b=BpdsFcoMeVKeKbPTIqen0mmkXG3YK7ljnQG0DJ4DVHth87EG5yQVPu9crEkC0Ar8dBDZNmnIhGGAkpQ0xBK0MfcOPHKM9dZEvDmHBV17gdEeIyze14a+GJRKJ8o3CoPOb88AbHqBXk2GPo6BAacmilEqgpDDT5IubTDkTB6hus8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917122; c=relaxed/simple;
	bh=QtLPUfR0OllGF3mTP5UJfUxdOHu21qygYWLugc9vnBc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jGN4kLigX337xbYoMzrKpCb2+32XlMu6HoJDI7qktBHXAYxntyBzia5THY+oEwxyaWpMLNI1F2bPAleXn07Dwf3u2hp0jyR2Oo77aQ66IOgIv+EoVjnfWmzzL+2fQxMYNCtxrr/pVEbkUpGckngdXifHlwEqlA6yYuZ28/mdF2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-92cbfab6c0dso4474137241.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:52:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917120; x=1760521920;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GaXRh5obJ3SjT+/k5J9GZ74QBenPB0RZIjICzxWz/u0=;
        b=uqZdzwLVgljgVvOol0m8kUwBtjE7JTkTlmSUpvXYWAs/pFyBciD8vkpCv2sCA21MbX
         EgjdFbgnb8VWFIFejGbMqO6bwDw3U+v41lw8epvQWTutXft2yjeGgkFNoS355DcC/iK8
         kdVDBvFkTXaYsnYEn0+pe7FrSGINwtVIbKD0Hd4KAj3QJyLk/+F77It6oA7QpQ0rrQh7
         BEE5nWPSHBzzZZcKVP4+hxzQLhqKsIv9IYOHvw4ugXye7tX+DOM7N3vapL+SMGpasg+Q
         k47hs0oPEEIbuPDPBmPgOiwpT1v5xC3cvOX50rXsRzCAX1wfmsvHlJM9Q8oMsht468UB
         2o2A==
X-Forwarded-Encrypted: i=1; AJvYcCWMcIuSvP5LZh3VZu+DAWR2DIb3uH1+iX5ICEBVgl7O2aHpvwGdHzdaEJRW15JSprbbaoZOiqtPjjCt@vger.kernel.org
X-Gm-Message-State: AOJu0YycbfoyrU9OzAManXRuQS1jVg/zgCCtubTqKJmsWeRVVmioR7bP
	+7qkvWJLIWKm0WWDWlErJT6XisW2TzDRLhOm/hXyOYC7IZuf26TU5I437R6UBRwz
X-Gm-Gg: ASbGncsKl3CrMqqfMmMlz+CYXMqv2WuqyOTYSK2iSD71uU/1lPIU/QcfMbpzWLkHhd7
	/c7wwVVYrRQmlsu4i7Mrdyp9XxUtYQsxwFZFd7+iXj3m74Gt/tmlIMqWGBSXEffJr3CgCFDRLz0
	RRdc3GoLRMC4ky9xn0nSa/ymDjzQHdjgQBmv4D9NgD3FBlFz+jmokk30Tbg1u48uQZrbe8CnSuz
	xsgRZG1PW9ocW+H1Wb+k3ZyHZeeAEnGzF16fNeKhURwNBqCxmvFJgy5A+pHdqPb0bpIAMbubIA2
	NAmUBXKq4+O8peNL3+L6rX5G1DKQAzcl3TQlym//u/WgwrryCmU0aNdUpvsG2FxYV8J/7svEefF
	azhWsxRsW18jKMLXamFXzdOyQvSBLmW4mix3wDaqC1UVC/Bi5o8uhfMG6BkJbJya/ErWiohpWLF
	7aUXITJvhL
X-Google-Smtp-Source: AGHT+IFFWjNfFvJf/KKbfnnAk8+xmehmuHgEGYHmP+99UOt2DDhP0Wa5GQCZBIHJNEGMM4odMKh24g==
X-Received: by 2002:a05:6102:cce:b0:5d5:d1e1:73cf with SMTP id ada2fe7eead31-5d5e23b0e91mr994345137.31.1759917120049;
        Wed, 08 Oct 2025 02:52:00 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4d83ed6sm4067240241.1.2025.10.08.02.51.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:51:59 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5a2b3bb803bso4167028137.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:51:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU9C+u8UWvjhSKKb8wLHhTUiCjPoxYm87KFTgHJY4XZLXmOFK8FUiYwSx1dacqcp2zGEMEAFMr7F1KS@vger.kernel.org
X-Received: by 2002:a05:6102:3a0c:b0:529:bfd2:382a with SMTP id
 ada2fe7eead31-5d5e23b1d6cmr992407137.32.1759917119278; Wed, 08 Oct 2025
 02:51:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006172119.2888-1-wsa+renesas@sang-engineering.com> <20251006172119.2888-3-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006172119.2888-3-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 11:51:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUATfzL5fJ0Kvki5n8Xa8p68RwAuCm1ayG3SLwuzpmuyA@mail.gmail.com>
X-Gm-Features: AS18NWBHcsodHDDr4jhbkMU-kPE6g2KYhbmfMFiKSoCW3kN2E4jr0bvxNP0kRlU
Message-ID: <CAMuHMdUATfzL5fJ0Kvki5n8Xa8p68RwAuCm1ayG3SLwuzpmuyA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] ARM: dts: renesas: kzm9g: name interrupts for accelerometer
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 19:21, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Per the updated binding documentation, both interrupts must be named.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

