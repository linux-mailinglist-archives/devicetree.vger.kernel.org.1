Return-Path: <devicetree+bounces-215990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B78B535F1
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:42:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFA8B5C0DF4
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE2B34166B;
	Thu, 11 Sep 2025 14:39:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC99342C85
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757601546; cv=none; b=Ora4zKj5/kv7YIj+H2oUj6yPjUJbuBB09jI23+wtSfLcywAnNRZMs1uqHSf64GIZ0OZkGKWMe6GfqrwvKxWtFK3otapE478Et61SHs2o35Uq8W9gJtrh7HCO1dnPEZAtp5a08/5/Z3H1LO1nP5P2O0AWi+dYJOAu/yrYYim7VXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757601546; c=relaxed/simple;
	bh=VHhlVIuBdaDU+8PEYLzyCQ0H1QgdUb/zU81eSShlOus=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M4jAkwreH8ob2emTtRrltdob0xGWmf84DXZEcChWgHNyZFmfmAGfOeRf8kPyal4eBsBfvVDLruW4qlZndvEPwe/jDU5ZkxaJ272g/GE5cQ/J2MK/nnQjCh/45Um1oNOuOAl6fPuSo0EhJlujS+TWiRxC8x9gQqDTu47X4KkXw0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-72374d6a6caso8688626d6.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:39:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601543; x=1758206343;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hiuhbKCWVVhxdsKroAmlHWewkQOhNypPZ4OriaNJghs=;
        b=jrgDKVrtNd7R6Ty01ytx3XBQhWG3dHJlt26QQMlWChPy2R8nN7RTEO6nbbZswM4QUU
         SWqVPPZG+l3Jz3PpH1Gvf0nJ2uRB5JF0O4EBNZ+3EMz+WIDdm7qnEC+QELvTjoI7C9S4
         R803HuvCpRWgX7YA5Qhnulzz3mG4Qz9+riiZ9x3DgnV+NhRvULtxrm5Io6ziNKB+NzPj
         S1IJoyqi8ZXh+P0YE/THx9y8pESwd/7yPc4qNdLD1SYETqpW/HEcoxgr0LpXj5huEGu9
         ru4l9IiPoPs67DKjEGaGEf7frDPCa9IBc4UHj6bAGCunJ4ZVCNVaF+49aheaE2lxpNxC
         cfyg==
X-Forwarded-Encrypted: i=1; AJvYcCWaO6YeHkDZ8TsRZggetNGntEG2zYmCpo+ALNUa9lnTjgAwAQOKD1deTJFytGh7aNjY7KlWnLn0ehFP@vger.kernel.org
X-Gm-Message-State: AOJu0YzXVy0C/kM/SgBRCLe3r9RwbDkiTtTvOgaJ+pkdkxdjoT66kgdC
	8qnD7+Uh8tiH2GIxrkBWzj4jSkXKKHui2eWgqugDDRQzo6zB4zzZIPPVM6n86jPv
X-Gm-Gg: ASbGncscFSp9NffSSy9Ik8/38pe36a7wfk8/IJKIBJFNU1CRMgjjoTv2HfDdasngsXY
	45i9LuJkK4/l15NDBzauRpCFqh7OTjqF65GJ26vZ/nhkjPWCsmcLitzaTpp5TR2ZzIhaYNFiipM
	q6UaB7dlpyOaF8iegT8Jd+xt7jY+wHDHLWqrjiZqcoEvHKqsqxPydy4UozCRTjdIjLKwwnwnnS/
	XkucYI5ngf5q6EEFIH7mP18YHlxdDMDhqveT3D10tK2YDQPhxwY5DZUawTQDGkhg4LoE4+H0fbI
	ltgEX6CosbURHL4nu1RGKARYIg/KXtfA1m+5Cyzt8urzNoqJluo8sspN0c4iEDGyZlfsEDHnEFl
	KEpcBWyl+WdT66cIa7Z5QYdjbizlNQF7Cxk5pBBKJ3pG08jFN57W11jiSrVPQkNr1f9CzX0EKZj
	o=
X-Google-Smtp-Source: AGHT+IG2e/UKvVHpF4aGzIXeeQ7gUvcL6bff7lNIjX1GyszkjPYgc/2tuodR74WnMI3eyiVxp/dEUQ==
X-Received: by 2002:a05:6214:1c4a:b0:71b:912:c2 with SMTP id 6a1803df08f44-7393ca97a8cmr235463586d6.38.1757601543242;
        Thu, 11 Sep 2025 07:39:03 -0700 (PDT)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com. [209.85.222.174])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-763bdd37c44sm11668826d6.38.2025.09.11.07.39.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 07:39:03 -0700 (PDT)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-80a59f06a4fso115805985a.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:39:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVK4ZsodOnbVm8JpCcipPWHbcOVTRcEdrGpjsePx+jmjn49McTbuCswXRY9wTtVTja3Bfx0zqufA5FQ@vger.kernel.org
X-Received: by 2002:a05:6102:3e04:b0:527:4113:6ad6 with SMTP id
 ada2fe7eead31-53d0dfbd7e7mr5509483137.9.1757601170806; Thu, 11 Sep 2025
 07:32:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250904210147.186728-1-marek.vasut+renesas@mailbox.org> <20250904210147.186728-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20250904210147.186728-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 16:32:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVMZ2rexeLrJsL9CNh_uG+1eHJndG=bn8K3_yRUNURXqg@mail.gmail.com>
X-Gm-Features: AS18NWCyQKXgN_PFlTPOYFuyv0ojGKrxYAZJ8mJkuqXIyr4JRZyFSZyPUiP0jDo
Message-ID: <CAMuHMdVMZ2rexeLrJsL9CNh_uG+1eHJndG=bn8K3_yRUNURXqg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: renesas: r8a779g0: Rename dsi-encoder@
 to dsi@
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Sept 2025 at 23:02, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Rename dsi-encoder@ node to dsi@ node to follow node name pattern
> in Documentation/devicetree/bindings/display/dsi-controller.yaml .
> No functional change.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.18, combined with the previous
patch.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

