Return-Path: <devicetree+bounces-139386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FB7A15939
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 22:53:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B1953A737B
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 21:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2469C1AA1D0;
	Fri, 17 Jan 2025 21:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTeJY7ei"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F064571750;
	Fri, 17 Jan 2025 21:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737150802; cv=none; b=iswEapauEYzVsX15YK3bhPBjWn445AS2s8bIgnblrfY7ihQX8fJ70hwa0EbD8zkVnwcpbJVZv/CGutTQ1X7IjgnEhS5AatER+7rhnggjKoC3T53uFW9P9/hiptYZrAKQ5UpR6SkA98hW5DMeGcwfwUtTi/4Xu+ZY/sNGuqWAQEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737150802; c=relaxed/simple;
	bh=VW5EyfFdiwwuLumv4qmz2SIBbEEyifpOA4x4vJSJnOI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oH8WlPGdBMaz0K7K5t2AhD9I1kC+8bNlpaOmGKNXsNZ1MVVHbObUGCbm7CVQbxoHoc6l7oQj5OXt93U9fHaoGcYum3KwcL29HPeKfSLIOnv6B61trb9IBI7dQc1GPZlZmA6vEUrGlUf+1pb0U3sn/5LVcQY9Zr6w0KyHujsI9Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTeJY7ei; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53A76C4AF09;
	Fri, 17 Jan 2025 21:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737150801;
	bh=VW5EyfFdiwwuLumv4qmz2SIBbEEyifpOA4x4vJSJnOI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BTeJY7eis3QPTHOrIqrCUqPaZKSgRO45l8lvl8bmx7p0FANWbtahXXsot+G64UvXf
	 yeDzTB6sPrMj/SwvklROwdM88T2IOCoJNmVdbY36TGxs8ljLRZ2u4jt0M9Ip5xb1yY
	 8R88hqHYhWXRYgC/oW0vXmPw0Dbsy35YvsvFsWWAn+mvQusJznFQwgp7h52ds4A38u
	 CIAzA6KacWg+q0wH0dJtxULE5o1XQ5YSzLjdMo3Au/1ATL174wgjShlUN0RSJLxoD/
	 eKlVINLBpnV1tUTW3C7/Awphx3lfLKhuOBZ0NE7tgjT/FWNOhmiV3a6765pNLIwKb/
	 sl8lr+rbheSCA==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54026562221so2518456e87.1;
        Fri, 17 Jan 2025 13:53:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUyKXFQNPm0ihdNn81HyhvBpZlAg3m2s+oAdzKIvnM+VjcqHCCojnefigVKM2tq0NpaV8OWH2l09ual@vger.kernel.org, AJvYcCXgFW2OnAN3Ha9cSs4aPgnXhrowf+dTGWofhaYLEP5UF9Qfmk58paQvC4tBpBC4twc3bddWgxLDr5wTr4xh@vger.kernel.org
X-Gm-Message-State: AOJu0YyUXsQekR2jbvQnEDwBaqpPLkgEKWAha5YwAT7vqzBT/up4uJvP
	De7nXj8by3+fzJqZR3Ajxkpzi3X/eA1ucVIrrVZHRnnvHm/ky4ApyhMG7uUuXC711bwZyCa+PJe
	0T6kHbps5w2RgNZoRUg9S93iOrg==
X-Google-Smtp-Source: AGHT+IHaU1I94JDdQh3feZHpzfFPRJXXC5A4Hok1wxyjaXGDCJg7IdNzuWujIr7uz1tyy+76i7bsZqcdYD7FJPrR6bs=
X-Received: by 2002:a05:6512:10c8:b0:542:297f:4f65 with SMTP id
 2adb3069b0e04-5439c1be350mr1718121e87.0.1737150799671; Fri, 17 Jan 2025
 13:53:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <875xmizl6a.fsf@igel.home>
In-Reply-To: <875xmizl6a.fsf@igel.home>
From: Rob Herring <robh@kernel.org>
Date: Fri, 17 Jan 2025 15:53:07 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJtJTCv7_VcxfXU8sYPgmXGNu7OCbHWJ4t55RFgb1U2sw@mail.gmail.com>
X-Gm-Features: AbW1kvbNrUoWsyD6xho-P-IFqdqZFIx-qVsYXBVwZXGZEVJ1kqBEIKuqaOXT0rE
Message-ID: <CAL_JsqJtJTCv7_VcxfXU8sYPgmXGNu7OCbHWJ4t55RFgb1U2sw@mail.gmail.com>
Subject: Re: [PATCH] powerpc/prom_init: Fixup missing #size-cells on PowerBook6,7
To: Andreas Schwab <schwab@linux-m68k.org>
Cc: linuxppc-dev@lists.ozlabs.org, saravanak@google.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Michael Ellerman <mpe@ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 13, 2025 at 11:19=E2=80=AFAM Andreas Schwab <schwab@linux-m68k.=
org> wrote:
>
> Similar to the PowerMac3,1, the PowerBook6,7 is missing the #size-cells
> property on the i2s node.
>
> Depends-on: 045b14ca5c36 ("of: WARN on deprecated #address-cells/#size-ce=
lls handling")
> Signed-off-by: Andreas Schwab <schwab@linux-m68k.org>
> ---
>  arch/powerpc/kernel/prom_init.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Acked-by: Rob Herring (Arm) <robh@kernel.org>

