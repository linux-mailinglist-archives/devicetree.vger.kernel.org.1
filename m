Return-Path: <devicetree+bounces-249122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDABACD9634
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C19503012DD3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D3B335553;
	Tue, 23 Dec 2025 13:00:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D812F2910
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766494836; cv=none; b=JLcWlglmvbfZELTVVPYovowaKak6hMNrjfopHZu62A1uqWtCqGuyo7aO6GXER9HiNY6CuCKBXI91BQHuMwNkoaI+/GmAQoodWQLHFTEjYgfTzlGDpQm0/qtaQfe6hTIHVD8VjAzehhhIosNcBNZ/OAntxpJPUQQJphmjGZf5N9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766494836; c=relaxed/simple;
	bh=HEqsK9Z5r2vHLwE1iRzi4qqy0StklJQS/KD1cB0QMWI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BQrbH9yLfdiKJjuImSM8h5LVSDgHdAaAOm6EPUcv/BiCe81pKR94tXfm2I5DjToAww9BGe+G6LlOMFmt+qaE+IM53LVxhWWtwf1d1G0w5rsEtupScN+FVQsBC22j8/rzmynbWAwNLhwvaqG71++54WKmfMKAkfya4cRI+kegOdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-559836d04f6so3315403e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:00:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766494834; x=1767099634;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/MpJqkv6JnZsSqSn+n7d/g2Gjy+SF5KqOdVd8mQ0/c4=;
        b=YJqhsoVrWM4WS0beuoccufaHpx7KsX4tMFeZ3FuRV4+yxnEhf0eP4LdjaPuadsM4J6
         QiGDHF3lPAz/j12ykt2y2mtUYT/Q/LxCGaj40f6hwOsXUzZTZ5lJt5OqcJ0N1S6JXFIb
         BwJUsTPcoccJicVN+0i7zepfHEcROHZ6BoIeCblWNXJI80gicaw+kx2Np1JW7IOgqnpZ
         cOMQzrrb5hMCT+KUpBEm9/k5y/TuDcrPlCVW7C58ou0opBTElFZW+XAN7wcfYsJkBJms
         SSEVGfNtG++P1xo68g+eSie/BTD5Fx13EkzxfMygiEebZhtMdADrvnq54Gh4jNClNDSR
         1A5g==
X-Forwarded-Encrypted: i=1; AJvYcCX6lXhkAoiD5N+8s+3ATudn5YnOO1264UEj9hPern36JbP31lQuiM5YENuGdJ35Rz9dmnal0mzeyPOq@vger.kernel.org
X-Gm-Message-State: AOJu0YycsemOPudgNcphLoNXNtBIS5Zhxpv1HOAjwM16M+WeSZt4S45Z
	F5j9BH9YCEA8MT0whKwiK4l0Prd4KdtSjEe2RpWmODv+JT6oLklbumYl3HxmvZbP
X-Gm-Gg: AY/fxX4eFFzu1+4c/YOSvmt99+z2pXCeWLB4q0Cdv+sxaPnSC+lkKinTU9brfCYdjrs
	mSEIts0D4qc1cHtvpxtFKGZUuSHlxJ/FdHw8ZUi8C/joiPEDfu/FbB2GzAN6kAEMvyIJVcbZSmG
	reDERP1xZWmkIFs5HVux0okWk2PA5eKCrlX9WHTnMDpjoTCu8aa3ZKfrNiXWHsQcUWV/35GYNBX
	+jLPgPe+xLKI53hBCbckuyyLmUrLvJBlKeRaUYafpaQyi9V6OPy7tfbN1bchfFvfrCzCZ+X5pvf
	OEKYLifZ9wYVGAvCkG4x4TMcZnTw/WM+ikxdXUJOSLgwNganUSpFtXRLh2OVzC26MZAOFptwDjz
	7tGid5KwW0KNjv4Ch+aVOG4FoJ5blFprsSZ5yXwur08EDho0GtUTdRbRMUbprO/ED9JhJLKOZpj
	D/A/kwiUiakKVKHI0wtUF9Q8Uo4G69LADhJ36F5Vjw9kQ4b/YWwX7jTA2XnJI=
X-Google-Smtp-Source: AGHT+IFebrnb7gQWFDMB68xAI7t+mCDamcY7WB/yOvQOsXSTyF1ZYNGFbmMPhSFg3mbByIZYhkRzBw==
X-Received: by 2002:a05:6122:469f:b0:559:ed61:4693 with SMTP id 71dfb90a1353d-5615be07c67mr4701658e0c.10.1766494833687;
        Tue, 23 Dec 2025 05:00:33 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d14efe7sm4364876e0c.15.2025.12.23.05.00.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:00:33 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93f5dd1046fso2971052241.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:00:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW+JA5ecfCup2ZMs7GvbfI5dplIq+4xbjctoE489/19jQZGEkVSsf1vB5YEgz3UcJGHB9y7n5ieFFb9@vger.kernel.org
X-Received: by 2002:a05:6102:2d0c:b0:5db:d60a:6b2f with SMTP id
 ada2fe7eead31-5eb1a41db7dmr4715689137.0.1766494832281; Tue, 23 Dec 2025
 05:00:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215034715.3406-8-wsa+renesas@sang-engineering.com> <20251215034715.3406-12-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215034715.3406-12-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:00:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUUpVzDCUArY-uQBW12t4dDs6u9MLWbhJ_DnJ_2oUTGtw@mail.gmail.com>
X-Gm-Features: AQt7F2rU6VpMprjhKYPjDPSXdLb4P8LJPvmquWr3BGyDaK-rmr2SKfFLKwRvfzA
Message-ID: <CAMuHMdUUpVzDCUArY-uQBW12t4dDs6u9MLWbhJ_DnJ_2oUTGtw@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: renesas: r8a779f0: Add WWDT nodes
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:49, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

