Return-Path: <devicetree+bounces-222455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BFDBA94B1
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:14:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C62B23ADD20
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A33D7306D20;
	Mon, 29 Sep 2025 13:14:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC100304BB9
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151689; cv=none; b=mhPjcJBXutFKD9AaGuN6iEQoOjYU2erg2ANAvpCI/kTe/iSZo0HfAu5kSMB1qZ2XCX53ZPTN/7T8KlEM9XKeQCacHl1lEgmr2xKnKe18L5jRYUgvDc8A8IGCOnhaYHky0YXtmK9zbrwxUPs280UPigLcugnpOVlwTfIxtfF5p60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151689; c=relaxed/simple;
	bh=/CeoiIO4oEpN9VjHP8HfKiYF99Pkq0Nca8WusPYehew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZEQoCgAJCLjBbEz/v8HAqbFwqnAcetSLXM79Pgnah+l7G3hCIYAY8zo71wBvnXkiplpLA7T1fvf8mUllsSNHmcTRlJiH9Z39BinMRfzZUlxgHW4lDQmzhPtfamYdFGucsLWVYhYJrhQUEODScjntH/MrOTarsKtSBvOUQdbQmDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54bc6f33513so3456035e0c.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:14:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151686; x=1759756486;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WGWKfU0acW/iaFNqPdL/2iourou2d7uCdc802/WdX5U=;
        b=bxAfIhgEOAwQAjcLNqLERYf5cOQDAy0hEeUgwyWb3/Vm61IkRX+6KYY610mPZryzm5
         2crnOiNPA163D6CCwXe3cX4qx3Rxg0NqgsW4CSYXhoCDYa8EGBdwN+Tkx6Y42Pe//3Oq
         17T0b8nSEOq7D800B/dFZiGbLmj5haaH/4ti4LvQ8kDeic3otCVudGcuIBdt4yhfx1ro
         wHlVVcMmtHOKDzpMOZmNj/hv6l2rgtEdWAF00ZjesJvird/K0Oev3QLbGj9n/cDeXx1Z
         HpwhLCnvK6ZKquKX1xpnNEDs9Bc2I6g5eYlJFbuqf7Uf4VkR/+koSdbbEMmz8wwEVD66
         JH3A==
X-Forwarded-Encrypted: i=1; AJvYcCUITVvUUX8u0/FvFegTKuj4VEWSMEuF/3HUakXU0k8scO0zM1/P3iBLy7x4Zm6pKAM+CqAYZv52QW1i@vger.kernel.org
X-Gm-Message-State: AOJu0YxPM2fT/bPbPCfR0D8Cqnyn2LGEaq997WKFRuitJEdHLtQIHgE6
	64qWY85YinezjBusF79fZLekMUjIKTyZGirfirgP/kZEoN9I9Tkmi2ioACpP3HCR
X-Gm-Gg: ASbGncsM8/v+5fJDp6mEVokN9DA5oLEHGCSyGXceXrz3HQTgq71x2VqQ+0u01yBNs8s
	GGuozUZKTVRPRX7pzjv1i8fesBAM9Jlr6TpSr1MF3k66bdfh29fnscBPKPNj0ZrLsFJKnYQfPi8
	Qt1B3hxn2BVU4frO9vueR8lbe3Y2lNsB4++W/JjMBBMjUa1bfg1+4o42+lUQe4TfSOVz9v5G0RR
	S88tcpol25VGz3T949mPoZdDWIuAgTy8XnyXsAGi6bqeb9vKR/VidP75981wcVjX9eUssYokIFX
	vg8Nwvs7aVaXNaPQ00IZDlaJyXDWkY2ZaGvCzbtOLvJY3cMMmMUQad9bSE10psr+WW+xEA6RjHv
	P/nGVl2lXyCuV2GlYKh6QTkqVysIH5OE9drmEZpUzbKrFKEL/z2HcoaJOZVcI
X-Google-Smtp-Source: AGHT+IEK1ibVO4twN9eLHlKK0NW+bFplzQaqoZFc6AnP8mbCzqfb9V70SMamjg9sUXopEPmRsH6cLw==
X-Received: by 2002:a05:6102:38c8:b0:529:fc9e:84ae with SMTP id ada2fe7eead31-5c88b9821bemr1253134137.24.1759151686414;
        Mon, 29 Sep 2025 06:14:46 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bed881e81sm2240412e0c.2.2025.09.29.06.14.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:14:45 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5a0d17db499so3939522137.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:14:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU1Jrx67BXTx6uwQMKTQvssUj0vt6udjDx11VXe6TIbPEYuiKZpk1CZGXWiPDpCi48PlCEdnC4p6bm3@vger.kernel.org
X-Received: by 2002:a05:6102:38c9:b0:5ba:4f5c:874e with SMTP id
 ada2fe7eead31-5c88b982189mr1331189137.31.1759151685651; Mon, 29 Sep 2025
 06:14:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-15-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-15-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:14:34 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVcrHxygr--KQ5m7YkjX6GB+ZfHKTbyboP+B7+pLnaHpw@mail.gmail.com>
X-Gm-Features: AS18NWDrjmLfzPnBy9AB61YOjKBbiuhqpt7e_ezYaZbcZ7esItPUKbOiel4459c
Message-ID: <CAMuHMdVcrHxygr--KQ5m7YkjX6GB+ZfHKTbyboP+B7+pLnaHpw@mail.gmail.com>
Subject: Re: [PATCH 01/12] arm64: dts: renesas: r8a77951: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
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

