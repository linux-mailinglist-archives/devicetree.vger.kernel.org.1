Return-Path: <devicetree+bounces-222466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED9FBA9500
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA6D13ADB81
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9AF306D48;
	Mon, 29 Sep 2025 13:20:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50165307496
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759152051; cv=none; b=E4JtsneJOiKfeO11I8YbsvRx/6CmdqGkPHVEixPSPxWcMM8+gIvY/jwb9AWaUeGXc20wIibg9q8B6PtG32dBNuyutRx4erwFR9aqdNo0zRJDUPnqbjXwrlRubaNIDN2D1Z5PXj6MlBbFYhiHRq4EISTbhJmpy7XOJU/LHUxTzxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759152051; c=relaxed/simple;
	bh=4pV8YivL9vh8JtsmcWV3a8thAYA4hLibEwTGE1sy/J8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kdI/YYxhFcCkO716HkaP2/p1ugSBFLmcrkKxNmzuoMYsLyFuVDAFlUTewWPQk3J9YxoIPmh+T4DoCmZa8Rc3PSmE/4YKrdi8f0gE72b8qKE5vD7YabVdYZmzbwdv8VauCct/W4EYF1pUcbqo2kfJHNtnElLDn6/6d859yMiBzz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-54a786ed57cso3612244e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:20:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759152049; x=1759756849;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bMaoRTzU0+4eWSSSFd2t5oF9VAMc19YDTPl4HIGvMIA=;
        b=lWIqyW7l+AKp8BQD4kzmR9dITyQPdXrGRZ6789nMIlHHxQTfNHaKhsM0k+4V+hpGVC
         C1a+nPOZbu/RCQ+WQ5WnNhl4nPCoCjBNybXurxWH6IavYbBL1ZSDfs/oHgz5WM+jMxha
         safmo+ztZN2Xyaw/NiBQiyooAXvrt9B9dNcaDnPXTwAht7Awobb9gXkg2a71BQ70k+FX
         wDrHtRNP3dcafU0PyMS29u0yEiW5VTzfabSaB7QMF6S6KfYdhD+k2gyULDKLrcfkTVpz
         yF22pbdNx2JqeRMEIXD/pn+pnAzIr7PQRFenFtLfxqyXMVoNcRkB8oCZUEiJksdu/I2o
         GaPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAFPrFh7qsyDHMZeO5vQr4nIm5H7K+Oiofobi50NZZdLgbuCpBAv/xGvwEcXxRMZcNsuc9ognS9KN2@vger.kernel.org
X-Gm-Message-State: AOJu0YwXPZCFb8gLpMu1YbWD7p+OOfyqMUaxoDS07+lL6Pg0URxGDCiP
	/IRzT5vhnq7ASnWqzhFrUuiOXvlpEcnHnEi57WcT92u22Hmjb116UPdjMguFyjqW
X-Gm-Gg: ASbGncuFjFU/KVDbGEuKO3HNMCKTX4byScLbYowG+/PITFwXlUqzr4tPpK6TpERDm0X
	fJWUzGOG6YvyMX9EaXxlhNgvEVSgr04U1fpQXgVaF4s2Ws+lWaaCfGYrEJL/1gdrYwY+0kwgSaG
	7A69avEpc0y3bh3GjmpQzu6Ipe0JR3/5EDspLdYQnVCuHFcBF/SYlYE5tLXQfqRT0yaQog41xUe
	nV7ap1kzhgMNwdmRA+3gAJCU2cjTqXwvn6MpTyfeLrVX4YuLhSAdJaX85fy92zJ9cdn4JcuFBJu
	6rJ8FNcOnbvP3FIy+h1HqwsQtrdgzjRDKI/Ms7ZfMDfr2CiyQR3qXmYK3i1Epde0h6cYi5g4hcV
	kEMj/jWqRGy5lOxFZyJAkP9fWdS98TpYvE9FEOCpnVqhDr82WcBamjY21PfF/SVjv19nhVPAXPU
	2de78q2TpIKg==
X-Google-Smtp-Source: AGHT+IFQjVu4n+/cT9Tr9V3z9bUk2KBktQBFGLlKRnF8xC9ymqwTQKEpWtbZHGvwrXPeLB3DpaoiGA==
X-Received: by 2002:a05:6122:2ad4:b0:54c:da0:f70b with SMTP id 71dfb90a1353d-54c0da10679mr2180052e0c.6.1759152048747;
        Mon, 29 Sep 2025 06:20:48 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-916cff05c4fsm2290387241.2.2025.09.29.06.20.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:20:48 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54a786ed57cso3612219e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:20:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWe+Nye4G4m5BDFtp5XcixXBVeG+Mu5Fv7ChMFCxylHkjc79IL/su0ylQuMT47uMG05/ZLyceFtB6WZ@vger.kernel.org
X-Received: by 2002:a05:6122:91f:b0:540:68c4:81a2 with SMTP id
 71dfb90a1353d-54bea359bdbmr7288656e0c.14.1759152047704; Mon, 29 Sep 2025
 06:20:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-26-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-26-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:20:36 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXxHEp7C4SwdoQ=irnAvYhbTvqxZnoQy0zNFoiYgSDFHQ@mail.gmail.com>
X-Gm-Features: AS18NWAE4WaE4Sjn24X5zyjfh4_vHbU6gOxCAAJaFd5Q9uzhwvIt4sDUo66WHTY
Message-ID: <CAMuHMdXxHEp7C4SwdoQ=irnAvYhbTvqxZnoQy0zNFoiYgSDFHQ@mail.gmail.com>
Subject: Re: [PATCH 12/12] arm64: dts: renesas: eagle/v3msk: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> V3M boards. Sadly, it doesn't mark the node as reserved, so this is
> added manually here.
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

