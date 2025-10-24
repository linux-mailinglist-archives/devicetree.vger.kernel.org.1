Return-Path: <devicetree+bounces-230843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D96C065F7
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 14:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C21E189559C
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5B931A7E4;
	Fri, 24 Oct 2025 12:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7vKGXvr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589E631A570
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761310640; cv=none; b=XkRPYKyHZXFr4z4jlhFeSZg/Z/8tFdHPtjYWQZMV8xNPcdcQCVaIdaXpjDtt1PEVD4TEfK6mDrf3Vn7BCcVYzrh4B4FOddti7E0IeiOhw4IXFG9ghj0IDYuuJ0r50xq4FUCTJJBppqpTCntg/UKcCs2FYHqxW55Z2pfSpi0ZsFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761310640; c=relaxed/simple;
	bh=w43e+QlZdQmKwK0WwzV45od8QgS90X3R1HuChndYRNU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RTS565z2fAKWu49GejeQ7MQFdoOwVp1jRAdkYWwFCEd0BzY6bElm3P8amKgomGkOFgeTKCwc1drDHpQULqXFgnC2KbtW9kyhv7qE7zj0N3bCSQo/GgzvJQdVCXmL5DTCXiyn97bCIaAV/BrgKCkqWNQjNA1EY2QbS/+R2jPuUAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7vKGXvr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E696BC116C6
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761310639;
	bh=w43e+QlZdQmKwK0WwzV45od8QgS90X3R1HuChndYRNU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=N7vKGXvrIwsEcL8LYaXe+Idu5GFx9G+MPSzBjCm3F+XKeQ/AkRdIFn604uGO5Ov+e
	 tbQGisg4qYJwOxGgKmzKIXpxdE4fd1KqRj4+X2e6JOKNqDtyhJvMMP+jhGHVxGxUBC
	 n42Gs6k+tR2xyVYZG2pQNp4HlwwPnETbsZFVnsleyxe2sdV/+8ibOUk5HdvQMccJ6l
	 6VUjbdOThEW8LT7Eant/K8QCWDsZr3NSNFQvKLSJ/dlbBn2UPgMGIgOUIwVLmZ+ygM
	 oNbuqJapDxJ25F0t9pbdk6ehbJAvIx2AOEEe/6CRf52zw4aKrR7DHNWoKFR26E1pyq
	 ETFY8vLE8vpoA==
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b5c18993b73so356263766b.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 05:57:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWI7qAqLrnKfz4vlovFxBENa9mp/1O9PuuRdBSAep7F6Z+pTvjCon4BP+BV/SPab0aYBW3gDaUuem4l@vger.kernel.org
X-Gm-Message-State: AOJu0YyrX/rHkgVfMSyUVr6rIstesS3+f5vhLMTrirWHJkkq6IFkzxeS
	2wE5SjLWA8JidkALIcJDu2WmM2C8gqa9rOlJ6Qv7Wj8zlBrK5HbHncZ8du/iBwzVLrYilx0pW7h
	sudk5rBRrohsDPMRbiiNDGkaRdIkovA==
X-Google-Smtp-Source: AGHT+IHh5suIyKi2/a6p6jnvAxRrhKapRHrucXCdXDo7lA+mwzyKdrN3WMHHH0HrCXafUiFCmNBmxCFId+oNLHyt0b8=
X-Received: by 2002:a17:907:9815:b0:b3c:193:820e with SMTP id
 a640c23a62f3a-b6d6fd81362mr279581666b.13.1761310638467; Fri, 24 Oct 2025
 05:57:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023-of-max-reserved-mem-v1-1-cfecc7a2150f@kernel.org>
In-Reply-To: <20251023-of-max-reserved-mem-v1-1-cfecc7a2150f@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 24 Oct 2025 07:57:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKtGMk8JQJR37i73CMnqtdoZddNpnoVhmyE4w1qUXnRhg@mail.gmail.com>
X-Gm-Features: AWmQ_blpVjwS8YZW7FtT4GK7wAS3BjqWug4q84M2hmG46UKvrrjyRoZLikdpz1s
Message-ID: <CAL_JsqKtGMk8JQJR37i73CMnqtdoZddNpnoVhmyE4w1qUXnRhg@mail.gmail.com>
Subject: Re: [PATCH] of: Make the number of reserved memory regions configurable
To: Maxime Ripard <mripard@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Eric Chanudet <echanude@redhat.com>, 
	Radu Rendec <rrendec@redhat.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 10:35=E2=80=AFAM Maxime Ripard <mripard@kernel.org>=
 wrote:
>
> Some platforms register more reserved memory regions than the current
> hardcoded limit of 64.

I've already NAKed a kconfig option for this before.

The limit is now 64 dynamic regions, not total. The static regions are
unlimited. What platform needs so many regions and to abuse
/reserved-memory like this?

Rob

