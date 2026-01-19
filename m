Return-Path: <devicetree+bounces-257109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D82D3BBFE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 00:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D3AB30286CB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 23:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4602B28BA83;
	Mon, 19 Jan 2026 23:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs+jznJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C4527A12B
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 23:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768866317; cv=none; b=YqmITdX+oDG62YvhmhyAqU7sQ+htyLv2JlhPgNBgfOMiC5BRv8p52R0KBcmHT1Z39bl+nQSCgyJgBUSjq28tYL4w3NwuRNMfBLBuJxBGKzDSwNUQvyvIm469lRhq/A317+Bnt7pNXjeGPPeAabvisnoZMsrULH2My4GJ7RexZ4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768866317; c=relaxed/simple;
	bh=/GJynEOLKSv7xkKVwHivTDhJGXb+Yk9wy0d8DLe3Axk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SdekWQC90E+DbWYiCkYGDQ6/a9uDSLZyuVRkFTAA3wsxklGDgmsIo7Kkz/9mkH/BnsiFnrFTyefRogYqDC8xIeFOHZ6aFb/w/vw+RtjWT3eTK8Pxo/S6JmV1oYRWFSq5ZC8fev215/KPNY5fw6uTVEyUrAIjb/sUcfZ6TK59ysM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs+jznJ7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5C55C4AF09
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 23:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768866316;
	bh=/GJynEOLKSv7xkKVwHivTDhJGXb+Yk9wy0d8DLe3Axk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Cs+jznJ7D/LinvIIi/HnoTSXtHiYT8iQgq8Hah/JjoitqhZTuosyynT4/YkP7VuHB
	 KUpLuOrcxglhpxR0wnBjTchSzPaEjOcmJW6L2Et8zxFgsVmBNiMdWJBTJ9XOCR3kJa
	 uwIP5R8QKupKR4Fgp6xqloCt4sHh5CivxwpPf9lXdau36QOK1Q4MO7JxJLs2COVAg9
	 TPpQZUDCIiJ6vLwcFE+S1ePj5e5HHMmrBCAspmAr/MXg4XGuykqb1bc/AekZRYgBKa
	 nTnI4bO56HZSIId3RwTKTnBqGu0x8+tbe+jheb1u5j+an2sSnebHpwB0qM1zWMGKWL
	 eviRvOzzyhOiA==
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-64472c71fc0so4150301d50.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:45:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUhtnk4qEUa0JxgFn3fTXORoPwheu91r6RKl8hQTypeo8BsmzErIyUfth/o/NenhZdqUvsIIjiiH1zz@vger.kernel.org
X-Gm-Message-State: AOJu0YwX8dKaiDcj5M0ouShGWI2Bg+f7KdOlJHrRx6oDoLF7Fvc+ieY3
	mol/8oVYrffrM6GjnulCeCML7d0yePlQuUoVNLlx4cLQKr+JQn9xk80sWgRTENfbon7TtSmEfwv
	ZGZzYGTImBJy6WgtNxoJZXi6czfjJ9vk=
X-Received: by 2002:a05:690e:d57:b0:644:7398:6677 with SMTP id
 956f58d0204a3-649176c5edcmr9915435d50.11.1768866316022; Mon, 19 Jan 2026
 15:45:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-rearrange-germproof-3e3096cc0da4@spud>
In-Reply-To: <20260119-rearrange-germproof-3e3096cc0da4@spud>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 20 Jan 2026 00:45:05 +0100
X-Gmail-Original-Message-ID: <CAD++jL=i5o5JbqD_7jhFY5cR-420Vb3hnNXv5nrTd6-FHon5Dw@mail.gmail.com>
X-Gm-Features: AZwV_QjAUjnSzmlLmheKmZxyjX0zc-vt7I5JC5j7vG1h-pUwzK5RrmS9BNiifTw
Message-ID: <CAD++jL=i5o5JbqD_7jhFY5cR-420Vb3hnNXv5nrTd6-FHon5Dw@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] Microchip mpfs/pic64gx pinctrl part 2
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 12:04=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:

> v3 here, with the rfc dropped. I've still got the property checking
> stuff in my todo-list but not tested it sufficiently after the changes
> to add generic string properties yet.
> I only moved my drivers into the microchip dir, I'll come along and do a
> pass on the rest if you're happy with what's here.

Looks good!

I could not apply the patches because I have Johans patch removing
the default y in my tree, could you rebase on my "devel" branch?
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/lo=
g/?h=3Ddevel

Pls make sure patch 1 does not re-introduce default y...

Then I will apply the first 5 patches (patch 6 goes to the SoC tree).

Yours,
Linus Walleij

