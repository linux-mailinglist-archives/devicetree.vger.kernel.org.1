Return-Path: <devicetree+bounces-252384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F094ACFE38C
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEDEF3083637
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5102132E757;
	Wed,  7 Jan 2026 14:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSajJKcO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44CE32E132
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767794971; cv=none; b=DKzoAvZkueWWRz+vzyhBUtxXUUOsJJK5yeycPJ+lS/pVLQVIQShjYdFS8xDrVVc1EM8gWTE4jTV4VX8buhcyAo3kWYHlikPxLuzKUEW4C2wZCYpWfdGTUXOZ5TOrtqrtwhA/o1lrCmaM3Qq1sV5/J475ekurZPVA34bCA+g19h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767794971; c=relaxed/simple;
	bh=o+CRaV666z5N98g0zrWQ+oTRAL2ghObwdkDLLmds+mw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iSUSzJlrXPOjrWUvpFooXkFZYCmjqxkrZA6dAX0sRZT26hyYfZVEcFZ8uhPNbBFGFNf/0fBfDQ9gr3cHC7hdgz5wLEF0q1nFhcx3YcHjk5QPB0T+4iXwiV/tl+AubTANqxrDEHJaO9bJ5+aFFXNFcYTDZXSJSBrzwNAidv8Y72U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSajJKcO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07027C2BC9E
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767794971;
	bh=o+CRaV666z5N98g0zrWQ+oTRAL2ghObwdkDLLmds+mw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hSajJKcOHxA8J5Y0wAn05skwFxXmnX4EYWVGWxLetipW/3So/QjOUsrVfCobcyfwB
	 MsUA2uZES7hihVEBI/gpQxUHjC1ZawOY20DzGGNujd3hTZyFMW1CWIkNzdETQxa2qN
	 OtKMEHq/giDxmSqitcttA+62toeQxlHSXWbaaw9GBIsdDYi8hhJHCt3FdauvGNGifi
	 jJc3nNM59kg5vX7WsDlYCyARecgNC6uNscYHz4Xl8kfwwH5mdGFy8imG/Pt6uIJywb
	 n4LwAtIeFgQfo9GuR1JXitvV94AUQ5e2M4CFGZJ1XsAITf29zo5o+W7UjDlUJ3+AHM
	 U75/l7g7EbQsQ==
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-79088484065so23858257b3.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:09:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV5p46rXSzKvqeoe2W/GhQHXZ1XNXHx5un37NbPS00HeqQ8WWTgTpWIXYcaqVhOr6f13iUZ+5cK7fOG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0pPNF55mpa+TrZ17l8VIYOuPxRFxxVLJkHqSoLAuj5520uSYC
	OlygP8iCxCe6Xw/szddgBrWgZ6F0RcYQv+Mf5ZNrAIFG/TtqM3FZi5qdCyOo4OlYyvExgbgXrsF
	L2Ep64E1nQVcvH+hh42wrmBE2sz6DLIE=
X-Google-Smtp-Source: AGHT+IGVJM9u88lYk0P1zu24w+D9Abmp3Tgpsp7039pR3VGD21RawjWoaVZAeFtTaqSswOj71vp7ze28kyoqG0dQd7Y=
X-Received: by 2002:a05:690c:4910:b0:78f:bede:57c0 with SMTP id
 00721157ae682-790b5758118mr54075567b3.23.1767794970275; Wed, 07 Jan 2026
 06:09:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260102-02-k3-pinctrl-v3-0-30aa104e2847@gentoo.org>
In-Reply-To: <20260102-02-k3-pinctrl-v3-0-30aa104e2847@gentoo.org>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 7 Jan 2026 15:09:19 +0100
X-Gmail-Original-Message-ID: <CAD++jL=9n98C-awde_ZQ_OmfDUsbmcNsgJcTfcwsYghgMZHqmw@mail.gmail.com>
X-Gm-Features: AQt7F2prYO2wsLFjbT7JVZq2qxObPCjIw8OX61DKF7WP4Vo2QsoGwU2QDnedbJ0
Message-ID: <CAD++jL=9n98C-awde_ZQ_OmfDUsbmcNsgJcTfcwsYghgMZHqmw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] pinctrl: spacemit: add support for K3 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 2, 2026 at 8:01=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> This series attempt to add pinctrl support for SpacemiT K3 SoC,
>
> I've removed the RFC tag as the driver is tested on K3 SoC.

Patches applied for Linux v7.0!

Thanks for your nice work.

Yours,
Linus Walleij

