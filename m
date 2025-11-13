Return-Path: <devicetree+bounces-238159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD8DC57E3D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 05EA035347B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC67D28643A;
	Thu, 13 Nov 2025 14:19:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BF22727E3
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 14:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763043555; cv=none; b=jIVdUiWGh0uSELi/L5pkyHlpjHeIOLRmMffC4N40tcPg9j70W0dYcq7/TbPUq3670CINQyorO/VVHuSbHRX75juvnRNR1Za+inwTohuSRb3rl6doGgdXsIPHv3b2IxrdjkR6bIWkqdQJ7/vAulCaoi+L/r3rxuCsUAZkxkC2ECg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763043555; c=relaxed/simple;
	bh=vJVdsmeHsUXqAeVRdhsj7TQml+wrLBqo7mPbRPjpD20=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V/ATSaAfPtAjri+FlYXXwkUS6igmOijum9M83EqZWL2jQIDmRZ1OHfhKYibnRJ+ae6REEw5PUB+iFDiNKtB8obelP/bo3ao7JJIktMwDFG+ZeGsuQUFhubS5KjQE6djJHuiuicX+nZDWvDTnl4Q/rXp5OfyJt6tayvALhMTqYds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5597330a34fso617817e0c.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:19:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763043551; x=1763648351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=icPVrj3OePZGMuahj/4/ViTGnP1F/ipWE8Dz8LO0Hro=;
        b=w/rbICuEWzZW9vZkkZR8tFyg1NFoGRUwh5lVNqrsQGWDJbgXi0udEDc6L5p98+Iel5
         u6+tz88tnl7r5Sc5wFUD1WZRxxr/xsNhu0W0j0CxjEMQjH7JdE7LV+kHkBWquKQVcdGp
         UVdu7iWAVeNcqNKwS2DGpOpVISnr/Ke4RHVpM5mt7U08zAEK6KVbeWoqwKa5R0oY3S8p
         7H+QtXSK82luARzEuyfjcfBJdE0GffAC4g54AeFV+ooGh3GhMHO/4WL1XQTvDs5q5hNy
         q8gyz8rMsHwlYCUwxUpBkMxClAWnWEMBk7OLQmgQkqT41RuQM263TLpFqYqRi13N7bOA
         fCNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfLe6Mz7D6PCmDM9JORR1tjkQAwuGuyAIZcg3YgBzCuJ5R/Nyw7X1z6r4Zv2HjRYbxWZPY4pjxdZK9@vger.kernel.org
X-Gm-Message-State: AOJu0YzwTSQToHHqo8830VIwwgcZCAFSTGhhf9V9Y/2UnWlbJlsm2uls
	Wk9e/qGH3lw/T6d5yjCtIrqMRZvPPSoqstKxmKVbDmJSlMCR3Z9mKj9J1A0AXo5ULvI=
X-Gm-Gg: ASbGncvNOIZG4zZIYWL7Dce5YTjcvstGTvKr+TJsUKVD6Jht19r5dMyIWx4hMGFAbpP
	vE3IaN8aw+DWNaKMM07/PSx3x1CkzMAITKlDUW03bxJ8RFT9fbd7Z7KcfS06+2NlECKXkkjoy+Z
	DubeUZa1y5Stk0RFJFiTIWfYP22xS+OcV8cGNmH58UZApKEFt1QCyRH1P0JIR1wnP90BqeX5E4K
	fP52rOy1ZBSPRhbiIyIXMbJgklp5l5aDYvUZ5W6sTYu3Q0HhsOGK0NnocKpfSCRgv8vsTKNquwA
	W0C6O73JpATR3FcjOa+USDkDdLfJnQafzZt5fUrK6uYfz67g3R8F9pdAjdLKiropsvqpL8QiJIc
	RBDtXn58r8a0wc7spzNmwJHnhH4UXlr7ZROE7TR5FEwmY2OYzjss0jZZbXzzKAgO+zhAZYaw/ef
	C9TL1VHvmA1oORZoqeXnn23Sov0t8p9GCfuHKAd62GuuGNJHEP
X-Google-Smtp-Source: AGHT+IHSNFVptCcJAOvkKywQKWII438Bs6wrC5c/Rcs+GfQRmf1mjfM011vYNqnuKkhablLD1+plJQ==
X-Received: by 2002:a05:6122:45a0:b0:559:83be:69c5 with SMTP id 71dfb90a1353d-559e7d6bc76mr2848156e0c.10.1763043551360;
        Thu, 13 Nov 2025 06:19:11 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f499b5dsm792670e0c.24.2025.11.13.06.19.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 06:19:10 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9374ecdccb4so495030241.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:19:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWncOIP7OB1aFi+09PSuXfp9ihPLm3uYlKtgQfrSKTxol6ZkpLYXnxUpua/vbWGFfA+GU1Kp23SlTyk@vger.kernel.org
X-Received: by 2002:a05:6102:390a:b0:5db:d07c:21a9 with SMTP id
 ada2fe7eead31-5de07e67bc0mr2364221137.35.1763043549851; Thu, 13 Nov 2025
 06:19:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251107210706.45044-1-ovidiu.panait.rb@renesas.com> <20251107210706.45044-5-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251107210706.45044-5-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 15:18:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVSgpJ3khJGFn9__BW+W+zM+fgrEDFKuAZgQeXyWa6w-g@mail.gmail.com>
X-Gm-Features: AWmQ_bnydjHxg_KvXSzY7Vjv_ur8bfvy2AE8JWRXR2FRDM9SQFjKqTqegYDXS7g
Message-ID: <CAMuHMdVSgpJ3khJGFn9__BW+W+zM+fgrEDFKuAZgQeXyWa6w-g@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] arm64: dts: renesas: r9a09g057h44-rzv2h-evk:
 Enable RTC
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Nov 2025 at 22:07, Ovidiu Panait <ovidiu.panait.rb@renesas.com> wrote:
> Enable RTC.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

