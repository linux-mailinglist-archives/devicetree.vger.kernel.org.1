Return-Path: <devicetree+bounces-222459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E109BA94D0
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:17:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FB0E3AC146
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478BB3009F7;
	Mon, 29 Sep 2025 13:17:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFEC42F068C
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151841; cv=none; b=BRfUEN0lv2T/H/b9QOnCpJgC5fVw+NWwluZF9XtrO/HMIk5vzMIbJVbKsq/a0tJYZLMWPIaqmtrlJPaT5jm9QnU4D2hink+L1162m+W9vE5uU7/LusQwem8zOWW0FKsVqnv6DhayqKytAh8RvUHUejI6v1JfM6gSLVCX50Ns2xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151841; c=relaxed/simple;
	bh=wANisPC5z9cD4GP8SLP+vUm2YJjz+htvFrIhAJVRFN4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oAxU1KiiutrrpWPYFimax7grdHw7cT1aD7jfcGNq1OzAw1FFrJvCv/IzLn3ldSmOirFYtSWgc14Fhz2n9t6QH8D/kFL47eYzTobHMAoi44dIpDmqwYyD5NePFgRdGAJ+GnmDK9pnv/VA6ukaM6txSizWPkIPHKpQmFhR+/8zQhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54bc04b9d07so2044292e0c.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:17:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151838; x=1759756638;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=id1UL4XMXXh5ORipw4ImulCQ1+I9qnWpIF3nvWEwJ6U=;
        b=aeo2P+IYjYKdX2t3ddITYRHbFkIF0Iq7+830qNQvkwXcx3m2LmrGTFmdSVkPgWYqal
         FKBceACEcteR3NdLcgQxDsYm1vqp8Q2tGsMxtwRB7ddmRfO588cXI+McJ+rSPwIPJmXO
         IKQWOO0sfCfsS/suB8ZhZ3CpqJ+F+i2EbRCIwYmFYF5uKfZODToGlLRywo02gE/f8MD5
         hieKS1BpGIorQxRBF2iuWCKF2S6waUmsiXUlDOoxapetoZ+JDydMSTyqD6nMo2yG29Be
         Y3bEMFCGetVeTL263UGuRlMMspgARGI+59nkio6cEAhZ2RqjSevvgNuDrgJlkQsXMS3T
         0Mpg==
X-Forwarded-Encrypted: i=1; AJvYcCXae5y0/2xIsfROm3lTGpTQo9yDgdZZ5YQ8vM+gg7F+LvCRVFd0Y7bG44xlje/LhcoTFnd88ruZBZl7@vger.kernel.org
X-Gm-Message-State: AOJu0YwC2drPtPg0buAr5f5cbgYM9yJHekDjwpguTdQNhawGUQLzfwe6
	luoV/wbtmZUY5g9asr/2GQy/jFglIPgn38mpJISu/8RbOxF3Y0iWZrh0Hupgbvz6
X-Gm-Gg: ASbGncttOYhfzvLC+qv0ccg34iy0P/07omA4DwmaxRNPwjG0Y4otvXzi+GYQT2TO6hq
	b00sIBLLTlBeW0ZoGkGCYe/9F6aWmfCmjPi4GJ0aIgihgtq66XC6fSIx6lfe8dkSFqjKTYLKGU8
	++uoUPkhuLc7krhSAr9nq5TbcYmqXKlvbDmf3Zi7rAPnhcsBJq+gYzmeiB1AkFq5D17EjGD2B30
	crlsmRItaAOCH4y/xkG0DxZFLZUanujj71dmtAcGsZDih/ZGT99Hw9BqiO5HCfGNLIKEFjGbl0S
	YffuXYcmcUQVax5mj3BaM2YZO8qh56/jZ6b4/nwEFviz8IvBpt5pIkEZg7gBDIXZzodHpJoTdnG
	X97deCxEPg9rRkyGpiS+DRfKnMRJSrwhaOIQ1D7ApGwaCb28JZkMbeyTDMyOGBSZUoc4+9hWyU4
	g=
X-Google-Smtp-Source: AGHT+IHni3wjKtFFdu0XdGx6LIU9szezaVaawgeJRgwZ9d9icGJKmDrbtewlhdcybwwXsdo2WF9bYQ==
X-Received: by 2002:a05:6122:91f:b0:54a:a048:45a4 with SMTP id 71dfb90a1353d-54bea23b2a1mr6469231e0c.16.1759151838372;
        Mon, 29 Sep 2025 06:17:18 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-916d98d73d6sm2385828241.15.2025.09.29.06.17.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:17:17 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-54bbe260539so1858273e0c.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:17:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXEmj+TbV0JBnisCqkSHlROf9Prm9z5sQHKQmHsZXmDv4E9afVyThelmXUP25uId16lxVsHKiukdih8@vger.kernel.org
X-Received: by 2002:a05:6122:2020:b0:54b:bea6:a20c with SMTP id
 71dfb90a1353d-54bea1ad915mr5671972e0c.10.1759151836994; Mon, 29 Sep 2025
 06:17:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-19-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-19-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:17:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUOG4be9HPgPoOj0xFhG4oGrrfs3=piXTsKD8dqeDh+Ug@mail.gmail.com>
X-Gm-Features: AS18NWA5bb57MOYR0sdE5zoJQUT8eGbxG9NrpGCCjpPsHgiXFut2wLNA1tKcaXk
Message-ID: <CAMuHMdUOG4be9HPgPoOj0xFhG4oGrrfs3=piXTsKD8dqeDh+Ug@mail.gmail.com>
Subject: Re: [PATCH 05/12] arm64: dts: renesas: r8a77970: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
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

