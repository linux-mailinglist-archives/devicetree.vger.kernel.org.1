Return-Path: <devicetree+bounces-245943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8224CCB6EE7
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 19:42:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DBA43017667
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 18:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF0FA288C20;
	Thu, 11 Dec 2025 18:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1cQrlcy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4FC26E710
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 18:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765478574; cv=none; b=U6Pm+664SDuWYpC0lk1WdgrxYdIPtv3h7CqQ+vBYUiygl0IvlHukTrxQueYPWIq9Hy8nJ0Nr4GN0+iF6O0aEtUYYFqq1uhJnKXa2HO/4GOPAYRHPPyATi767mVnd/4Uz/KbOjp3JUNJfMM+OCI/I5Flr7VVw02n7rgM6lxjeZpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765478574; c=relaxed/simple;
	bh=xde55l1+l063XLIdBkYxC3zt4ii+GgBNTpUoXkw8nGQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iQa5Q7UobeCIUjb1C/hnZMVo3erhXLKyjGIk6DFPMUweiZeMsiSLRE7pMurKBdAA0lbX1PPWf7JHc5etw/BEFBU12xSTd7cl69CrAFTAbYTo/sRtogP4HBZjOyM7Cmv64RtGGZyy+M5b+bvJsKMkrN2vDX9u2U6vk+Zx6sGLz2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1cQrlcy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FD6FC4CEFB
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 18:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765478574;
	bh=xde55l1+l063XLIdBkYxC3zt4ii+GgBNTpUoXkw8nGQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Y1cQrlcylH5RW60wSmlNSGQvi677MfNH9X2UECZKuuGrBFyZNYPwrvhPYbp7I3iC6
	 Fm0JuurXVZuKf/5gut3Ctba9qlHJrokeUOfEc6yApp5jDtkZbWCMH2e+PWqjvHRx96
	 6PaDgMiJchLrbf4B31+Y0g2lKgd88WMeDOzCmm+J5sHz8Z+tCTdXp04Ai85F1uzoQt
	 TOSZzUjKKjqUIfKWi8LP79gU7xmaeK2Bf5BEZn09FfW66q55bgXgtAErNuffJ+SA3G
	 lKcONLlzyOVY4BbQ+pNdQD2wqASH15MQUZSaghX8EiHvRLCDy9IJTp1Z6Knu/v7z4j
	 d80pRYrpDoCSg==
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b73545723ebso74659266b.1
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:42:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXJg9wCcpVvnJtgum4NPZLwRDQLJK/b8RzrNgooDZBo8iU+rRn1CaKhM07/UlLzEj1mSFGLKP7bnbuw@vger.kernel.org
X-Gm-Message-State: AOJu0YzfVCaW5hELAiJK3my5VMlmV4+/7s3wdHNLD8wDsM5Zw6CUvw2v
	djJ3+amu7yuuBjlGM6RGGlKuWv+iT6VBckqqO27a976hYrK2c9HidVUVmIQbyZ776jMx0mLvCGO
	RwQt0PDRKgQgR9edSDkXvNS3xf3nPWQ==
X-Google-Smtp-Source: AGHT+IFpmaU0LcryYHssF+cowN0/nMLDb46BHPTQJIXNPRiW6IO8ZNGX6e8APIIJ+Jyxyhkd4VkX6j+L9z8nATjdLnM=
X-Received: by 2002:a17:906:f5a5:b0:b40:b54d:e687 with SMTP id
 a640c23a62f3a-b7ce84c41f8mr740618166b.47.1765478573074; Thu, 11 Dec 2025
 10:42:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 11 Dec 2025 12:42:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJg4aYGyd49UAAPBw+FGpmGxV5JkdkXp2FK_7Gt+7DLZA@mail.gmail.com>
X-Gm-Features: AQt7F2qf3K0rkVXOm1iy4rqcFXVI0LVf2cqClY1Ty4vWkJyrAnEhQy1pz5G1wvc
Message-ID: <CAL_JsqJg4aYGyd49UAAPBw+FGpmGxV5JkdkXp2FK_7Gt+7DLZA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0 alias
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Andrea della Porta <andrea.porta@suse.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Andrew Lunn <andrew@lunn.ch>, 
	Conor Dooley <conor+dt@kernel.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	"Ivan T. Ivanov" <iivanov@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Phil Elwell <phil@raspberrypi.com>, 
	Stanimir Varbanov <svarbanov@suse.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 2, 2025 at 5:15=E2=80=AFAM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> The RP1 ethernet controller DT node contains a local-mac-address
> property to pass the MAC address from the boot loader to the kernel. The
> boot loader does not fill the MAC address as the ethernet0 alias is
> missing. Add it.

My change here[1] is going to effectively revert this. The RP1 stuff
needs to either be an overlay or not. We don't need both ways.
/aliases don't work for overlays. I suppose that could be added as a
fixup when applying. The kernel also assumes aliases are not dynamic
and uses indexes which aren't present, so even if it did work there
would still be problems. OTOH, if the bootloader might use the
ethernet controller, then why would this ever be an overlay in the
first place?

Turns out digging into RP1 stuff, it is a mess and needs reworking[2].

Right now, I just want the warning gone so I don't get further complaints[3=
].

Rob

[1] https://lore.kernel.org/all/20251117211503.728354-2-robh@kernel.org/
[2] https://lore.kernel.org/all/CAL_JsqJUzB71QdMcxJtNZ7raoPcK+SfTh7EVzGmk=
=3Dsyo8xLKQw@mail.gmail.com/
[3] https://lore.kernel.org/all/CAHk-=3Dwi+ge-gtCg+iLd6dgjisGchjtsKY8AXG9tX=
GOxqVv8Fkw@mail.gmail.com/

