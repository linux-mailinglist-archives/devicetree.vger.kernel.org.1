Return-Path: <devicetree+bounces-221792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B931BA2FD8
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 10:42:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEA6E6257E5
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 08:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46BD726E6EA;
	Fri, 26 Sep 2025 08:42:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CD135950
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758876149; cv=none; b=kfI7UlAUuJRSbKTC24xEaJ1cQKtucDTODuPCXmEtg7HrRFU260B0Bm3Uw0jLM8UjipyrsYow+o5GCes5BWtkk6ZpFi8TxtLhqfcKsvCdoCqLMUgMwYnizUPUSwHRRZsBkUtsRKt3a+HOm0VleAZfxkU6n8ElZJ6ztM+1AfSbwQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758876149; c=relaxed/simple;
	bh=muY60S22DsoASRG4FiJe6ip1iEMaWWa1UAMLJoMoDx8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qWVBZwWAWBK+qmtkFvwvxbyT2oOqZ5sFDTvVhViZuDlArrjPeclTErRVU0/ukUJP8pQi9MIWU7m+iY2sGlLVVjlQ58akx9WK0ldLjedb9Z7HBV4C8ezJEqmTdHlErV3QIZzWYFA/gRuUkZBoH6pXtVWOyBwhjGoH2Z67R4e9QQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-905b08b09f5so631679241.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:42:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758876146; x=1759480946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hh5uxEyK6OvB8UynZ99mPLkC/3fYPS/LIg1UGviPL70=;
        b=cTehWl2Tvi7of9X19cT5avGbYaz77NVNGvdN/HTQWzMJA38iFl5VObczXBIkAv5Vi1
         UEQM1mqYVuLccXj6Vt0EDtFbxaskOKQVgzyAM7pE7MpAlUDJMYbppVvY1F1/oxCM4RvI
         WJsd3Zh4rRedPxh77fv+WTbBzVJv3kLoClCKE0r94SVd/yha0U70nQSb/kHOZnvRMY12
         wzz2EAEt30Bh0U9oMOwy4MghTCxKxyxuAkkzN0qPFjEhX6iUqBc/O84gb5k7+ja5gFkY
         Khn6ypVKOSjYnIG8PBznneCbMvdFwiqBrEZh2cq2LshwxxxDEyp7y4LgMXogpj9NMhKg
         poQw==
X-Forwarded-Encrypted: i=1; AJvYcCWvnuzMbNfnoBs+KyaijcxEljT2pnXGY19xWCadG6K5VJogWZLx0Hh7wm5Jo+KfIfju29xwhO4T3qrk@vger.kernel.org
X-Gm-Message-State: AOJu0YyhbraIHDMk110DOy8VzaYdXN8nrgqfiae7A3Hy9G7P/MqZG5U6
	mtCxd+t6ltnYYZ3T9cXzNazjKb4lo8gnwgjvntqsFpBk1cP/OC95s6xbCKg2B+yz
X-Gm-Gg: ASbGncvm7M8aeFac7eJEc6tKJJENqHtKGWjAyQg91if1aWdDxOtqB/ZQQB9moeMIKzl
	Et5i/veKNpCMrNAXozB8U4TVkbpAaCWMpUDSLLh0s0KDBFMRsSMD7CZftVzUY5XIxsdboHF1Yl2
	KD8DyneJFZuZYsBdP0rhcBevdYWGKlJIUdUVxF8jQ7I6R6juwB7I3kffW44wpS22Cf9MuPm3XN5
	TtzUB/OC0AfG0zF3zVLN9M/NzYCJH/btQkt3zSU3JLCbPzJrwvbCfTSSECczvlrr6fswOBIJk5m
	Em68gSnf8osYxHjaTRQuqTWKIh2ftvIbK6741iwiNypBCBlIApB6zrDfux2I0nH2nMF/hjiQ/as
	SdzleTVCwo6qmLtA7Mp4WHnHDJOFnfk+6quPHZbFyJrC5aqxotFwb6UJh4KK/E0k6VS4e2nQ=
X-Google-Smtp-Source: AGHT+IFeRcJ4t75smP6JgH1VZ6tf0Lap70tnwhZhdVeKN9y3GiQjr7X0RwiejwCT9gTMiOtYnksPZw==
X-Received: by 2002:a05:6102:b0c:b0:59d:c33d:2ffa with SMTP id ada2fe7eead31-5acd1c83640mr2702580137.35.1758876146342;
        Fri, 26 Sep 2025 01:42:26 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-916d878c126sm818508241.11.2025.09.26.01.42.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 01:42:24 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5a3511312d6so795475137.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:42:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVrb2YO8Ufwrt4fRgwcUhfXw/+YUmiF+voADccHs2qJL3dZkgr+gs3jY6Z7hwSRVr0TJHaqk82/UBFz@vger.kernel.org
X-Received: by 2002:a05:6102:41a4:b0:55d:cfa5:9d60 with SMTP id
 ada2fe7eead31-5acc6805581mr2527265137.12.1758876143956; Fri, 26 Sep 2025
 01:42:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250907161130.218470-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20250907161130.218470-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Sep 2025 10:42:11 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU+X47H=_7y8rXGkXU+wCXq61LgD_VyWw-quq3O0KBzQQ@mail.gmail.com>
X-Gm-Features: AS18NWDJaK7VikVNhpA9q5HvjdDy559ovF-XoDoqQf-Yk5Qz5FJG5_rrh8fqJYk
Message-ID: <CAMuHMdU+X47H=_7y8rXGkXU+wCXq61LgD_VyWw-quq3O0KBzQQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: renesas: r8a779g3: Add Argon40 fan HAT DTO
 to Retronix R-Car V4H Sparrow Hawk
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Sun, 7 Sept 2025 at 18:11, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add DT overlay to bind Argon40 fan HAT, on Retronix R-Car V4H
> Sparrow Hawk board. Fan RPM control and full RPM on reboot has
> been tested.
>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> NOTE: Depends on series:
>       https://lore.kernel.org/linux-hwmon/20250904202157.170600-1-marek.vasut+renesas@mailbox.org/

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19, with the one-line summary
changed to "arm64: dts: renesas: sparrow-hawk: ...".

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

