Return-Path: <devicetree+bounces-242821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 584F6C8F916
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:57:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4D47A4E2C5A
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E0BD336EDC;
	Thu, 27 Nov 2025 16:57:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982813195FB
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 16:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764262647; cv=none; b=gj1qLtgt7SHCT8frAmVPV7/9Kc8Wulgqc8Mr5UOsAYF0cWzJKSjACSxrRFvnpdy2XpSj3btudx+z8FZAH92pijvsTyUYM05jy5rF3fgar8SjhMdswUyyEhdzbJgOYZXxQ28bWl+93trMdWKLw3pfGQS37C0WwtvS/M9uxP8cN04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764262647; c=relaxed/simple;
	bh=+gfTKNQfNxpo2VKd2xmrMmQCdTXG5qIX9w784pwXKcM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IrjJ2CqwrJz3YXD3Bs71uLge176QGmUmQYjxGGgyAFfHGfGp8tdQ6CFCHuEviyWi5J4vE+j961p6V6ZK/a39EiTlaC5FDeu6Y8DxcJqurow6R1oR9t5LjxozAhjq/XRSNNr//+p8+AVET8dHrZr4aC4n1QaKWuFWxsPzlgIErEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5598b58d816so821937e0c.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:57:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764262644; x=1764867444;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TZ55d2fAWB0eCD92XJkHw68sI4LD/Wrz2Y1eABOu7D4=;
        b=jpPWIrtv1yoOUrCIcQ0HFGE8nuTZF8J/ajBGgdCf58DBwxDQIz8CxTXVkbB1Y0Fw5I
         dqGrXwVpIvR3+V3TJHHuSfSbqx5z/QO9+BkqMdPXVNz2nIi0znYA7WwA6PWwye3k8Jzm
         3k1UTiStelmpl7uFIXA61SpzwzuGTaOMRk7X0CQM+EbCofBlenPGlKWKbhPlQIbjNoWE
         T0BaBZ4PBSGZMhP5woZoBAm9V+5Zi1rqfEG7ewk1RiL86rjAENFZOCJZv1N1E3drEfC3
         +MAarv4Pyay8112ygQBm6v4J0OtkHJ+1QCfj8npkYiEWYoHWCIQXUVSv4jatk6goLDO5
         hYuA==
X-Forwarded-Encrypted: i=1; AJvYcCXeS4qddaWC6yaT6Do0wiuNH8oAcHLbasGOReDHD47vlOqW7EFJNy4rmL7pYFEwqAiTRrr4W50+0Zv8@vger.kernel.org
X-Gm-Message-State: AOJu0YzfAikvE/7w+APgrDmkRyE5OPJICVHM/1PGcPx3MdEHRDZaD0J6
	co2D+0eH1j2ux5PlYxXnQ1oOrRLnfxEm75F+OAnNIbNlvQWh652nUjq77WFugoL1
X-Gm-Gg: ASbGncsg0IAVsPuPQoJVyfGPCSvz/F3MVKO3u8soiGau0G69YaHIKIKONbBprL4MgXu
	n8MXIRZ8gKY7BtErbgIP/xVmQTQfedYSwWfKiVlfEBIe54texe/KBKAMqsEXsiYZA6Ucg67Npj/
	pxTwsPr/OoTjF64GcwmkphIwSVhzEvT6NhZGVQn+d0ObN2r+udZSECu9RwNKmK5VZeBToNr+HTH
	XD0OJKA8kDzGWxVfnAqkGIGoEZKFvsnIT/zY09MIKkqazPvWwQSEgsGmYRSRhWnVdTZqMM+z80W
	k/t+GRQuCBxNBgBFPEh7mSYNDXK8BS3ICK1p/eLjTUcXXE1HBqGSl6bZAnmg3NIOOIuOeLJYGGn
	qWu7pbwTzDw71RSZnBYLlryrTlD/kTJ1ccxRdCmN5+pybAeVpAPTxpISP2eb6/v+aQROpsa90mH
	/vemBLgUmh6P4do7lr8E94YORB0rzkUH1fD2WOG+zdjFrbY1WD
X-Google-Smtp-Source: AGHT+IFi1eGt33Nxn7gbuNVmWCSWj92dgaX+0tMnAYsSPeZqxV22pNRlSj53d1o7esQo3ZsbRD1m5g==
X-Received: by 2002:a05:6122:2893:b0:55b:1a3a:aae5 with SMTP id 71dfb90a1353d-55b8f00e3c4mr8301484e0c.16.1764262644488;
        Thu, 27 Nov 2025 08:57:24 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93cd75f3948sm772045241.9.2025.11.27.08.57.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 08:57:23 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-937268fe284so607393241.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:57:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUFkAWfuoVPhbx9Z2wLvmN6RKRyMwit4qZJio73D1ChFmqYE+aA/2F607Vze5lrYruCwptyD4Dr9MA4@vger.kernel.org
X-Received: by 2002:a05:6102:e12:b0:5df:ab05:d84c with SMTP id
 ada2fe7eead31-5e1de4188ccmr9513966137.30.1764262643575; Thu, 27 Nov 2025
 08:57:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125224533.294235-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251125224533.294235-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251125224533.294235-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 17:57:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVn49pFT-0k6AAUS2+rA9eTo91GGUBw5rfhJHZiTsd7CA@mail.gmail.com>
X-Gm-Features: AWmQ_bnLAUFifF_HRIqRZYyMedX28WkVft-CUjCnFSmXOfD1C8mWehuw1FdMd6o
Message-ID: <CAMuHMdVn49pFT-0k6AAUS2+rA9eTo91GGUBw5rfhJHZiTsd7CA@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: renesas: r9a09g056: Add DMAC nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 23:45, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add nodes for the DMAC IPs found on the Renesas RZ/V2N SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

