Return-Path: <devicetree+bounces-219999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEFFB911D3
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E19C3BC65F
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 758E43074A0;
	Mon, 22 Sep 2025 12:27:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783B8288CA6
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 12:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758544032; cv=none; b=aB2VEdeiyRU61oMn4nRvigvMxlN7Jguw4WjqUhjw5JG2OJ7X9Ono++8AS6K0vcEy1sxVHkYv+pk2FVlnoGyjQ3ZnRdA1nMLhYUa7HgPTfvCeTl/JLcUgUJf5ae1wwDPZEqYxNlWNZVfwWJnbtxPfj/HfpDezXlPYpuSc+/Qww2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758544032; c=relaxed/simple;
	bh=Snc+y+UZSl01zV8eDBdsBhyJcxmhXXBXe4TCo0P9J+E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q9qzJOaTReJfHXIwA39/Sa6zQnvrFn+vXHhpmhf1Fsaa/Bd34j+qznqvkO81MPHaN8drWbwrwfrtETaltq7z8gBSPVAvywUTLCmgjx7cYPst1sOKXdfJcR+Y6mtOhEwD3zLrOLsj2iIyXskHiZbi3pn0p3WD3ReriLCZGFUgnL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-54bc2d1feb2so97344e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 05:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758544029; x=1759148829;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFl1v/smUWw8zKINq5vSCtKklPR2W7pYT54Z0Y6WQaM=;
        b=ZD2Y0ZxzkbT36apCvK7trOCWizuyEbjHF2eFjgdZDdVdkMRi7M0K1Os7Ypr4vf41fM
         jNaWX0gr8EgDSR75NAucVyirYcp5cU5lU5Wwvu+vH9CUQvz4Vbqnhmb6WR8ZeQar9M5d
         ++WvCzr4Ca8pb1lqe+l4J8eewNVJZjJgcVkRaS5MGIo2RraL5/e+j5b9x4NOn1kx5vhj
         n4L2FHIRdHq5MH8/WDnqMXmEuraSG0j2dBOIQHXdr8Mx2EvbnEquTAZuWLTc51GOe4Gr
         T/9Kfy8OW/wYSuXXX9tfElx1s7T2pEeSUp05Th3wVDUigqqMtRn0qCL0gbFDcdBfpauw
         7uYw==
X-Forwarded-Encrypted: i=1; AJvYcCUviHfDSPsIgzcUysVTONi7wyFN0fR8F3Msi1GJ2QFlggQnMvQd/tqtcZQc2SqT2OyMrN83052JP8sv@vger.kernel.org
X-Gm-Message-State: AOJu0YwGWwXaF8HkyVKJyf5dkqatYx7Ug3FgWMvbPWWf+HpHFB4O4S04
	nA5CabrE6zkRip4Ew3KP1noyL/8RVla9imPVsmiJYXVgJxCWTm71V3NuOudF3wbH
X-Gm-Gg: ASbGncuwP2VagQLOPhS8cfhk9kxgGAGWh5SGu6VqXlKTETG/qS/Q84W7mBeauGchjMM
	Mo+UPBeaUqZOx5DCXmTcxmOv2S9iMOi/m7OaeV1viEr49LKhSTwgHTKGmIXZQTfc6aXcnXinzoz
	HLLBQrVJW6giP/+9aBa6b0+3TyXqbF8llZ2UlVxaIBG7YVDGVgkc2anIL35Qj0OscMGboXl7iNu
	2VeJF4f4hKGoRUbkihhTC7RBhAd3+tHIKKARdL3Myoi3NQhD/ghB6lXl02XzoWU82wWTT0MdDw3
	MU/PbYDqlUktI4rMz0c2adaGBEcHz0+atkVWuAaHLsduaQ1l03oQQuUr4DPUOHFHmYeZ1h/qgPD
	noZ2yy/T8ZFqxIDEajQdegDqFXiUEoJEsGJ2vDgtIltlehVMYshm9UH8kOnhK
X-Google-Smtp-Source: AGHT+IHrGKxbubrUomZ3Re1euo/pZhy60MTRfPO7rpXgRmSTvkOwxJmowWQ1UiI4J6gXW1J4YSsoVA==
X-Received: by 2002:a05:6122:3187:b0:543:53df:f3c with SMTP id 71dfb90a1353d-54a8374d275mr3048166e0c.2.1758544029113;
        Mon, 22 Sep 2025 05:27:09 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a822372cesm2127416e0c.12.2025.09.22.05.27.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 05:27:08 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-51d14932f27so1324089137.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 05:27:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVgZBJew4jez4WVxtbs+4WKL4DfQW/cBNKhjWXHmM8C7efBu+kku0nyjIxiepeYnjqhRnV6b0R52D5k@vger.kernel.org
X-Received: by 2002:a05:6102:3c8d:b0:519:534a:6c20 with SMTP id
 ada2fe7eead31-588f5e88e22mr3412259137.30.1758544028231; Mon, 22 Sep 2025
 05:27:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250920070433.8229-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250920070433.8229-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Sep 2025 14:26:56 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVJ1W1njMqx4JwRPqYmzGbaL9b-yDMMypR0Nz=45cUHGg@mail.gmail.com>
X-Gm-Features: AS18NWA_sI1k53sqL92gwsAZWbKQZy_7JBW7AneadV2NTK5uOqji7p-pCXlboDs
Message-ID: <CAMuHMdVJ1W1njMqx4JwRPqYmzGbaL9b-yDMMypR0Nz=45cUHGg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: v3{m|h}sk: remove wrong sound
 property in HDMI encoder node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 20 Sept 2025 at 09:04, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> '#sound-dai-cells' is not mentioned in the encoder bindings doc, so
> dtbs_check rightfully complains. Remove the property.
>
> .../renesas-v8/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dtb: hdmi@39 (adi,adv7511w): '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7511.yaml#
>
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

