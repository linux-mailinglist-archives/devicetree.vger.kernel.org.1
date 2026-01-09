Return-Path: <devicetree+bounces-253283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D9DD0996A
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 13:26:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A23F130A3AD9
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9705735A95C;
	Fri,  9 Jan 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="yOQ5FDo3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6B035A952
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767961234; cv=none; b=bMr90sZ41aBAn48S/km3ZHNOxzqXycuarRcjH1tkBPt87m3GRsIsGSn/FOODVDP87htCTZWD+cJwOprvkCvDWq3f6RgoKG2Y8cTRM4EaSNrzD3tkgjr5VRumxdJ3MAlkgnKEWNRcJ09ifN90Alx+nD2zdVsdGlZdAPABulfoxcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767961234; c=relaxed/simple;
	bh=iZMXxod4+roZ3ZATUDhYNOynA14pD/OOmrS9JayfZjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jeu0WXvsHhZzIVcFzA7mGLD/+pvoDu7YVrGOk4dTIE9GaRZp8ruJISAXS/MxbskvBmeoolXeuaiJdgzEjjCtgkxmLVbeRabkSzLJfcI0bGts+zoPpc/zxjI+V2rVjZKRpT6bqfCrXQwqAUGRTum1jc54Bi2iKQCeWybPFhuYtus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=yOQ5FDo3; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-64669a2ecb5so3598449d50.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767961231; x=1768566031; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukh2GBiqrpSOrFovoNwBAt/J/QmgBGkcNbLsTOHoYIQ=;
        b=yOQ5FDo3jAsZd8Y0UdH4QmSVbKfqRlefFNag/4CAiRnZ/LYRDMVqJNUwHuwn0F1s8t
         XpRk37PsOKwM07W9tgoOdAuX+B0RqW6SVyUQsqi6kEY57RecGxj8kD6aVVO6A6Rd1DQn
         f278MIcqVOMz0Dw27exsaVhcuGxTF4Xe9H9IFTSpHvEuGxY6zHgIECgasis9NA2Movec
         kfKUpKfHX8YrJ5RKMr6PXGwWU17X269TG4ltn7vbmXrQ8Ybs2xiIEd7X9NHrFVx7hc1n
         ynGZ+a2wRMkJ2BX7sRr0oQNMEZWD3CmfyHs7oLPHM6DSLe8V9nVpBWPbVwqM+oqN28zC
         SB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767961231; x=1768566031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ukh2GBiqrpSOrFovoNwBAt/J/QmgBGkcNbLsTOHoYIQ=;
        b=oTmk1c94aLDwgvU5w6Zz0JB12hmkZJ6aCZ0zTrLlRaUHLh4ZDFdLjC0UkRAgm0EOme
         n9L3m4tfW2lvCA+Lh0p2rJd9jT2x3H7ufBec8q3eLNc0jvQUpYsbaWax5QRqPuQV1SDA
         SKXp0hIWG2YlP5mmDHmOMNfAE2lqsxRqlgLXicF6Zjhm2w5hZdNRyizO091r+l/UoPQ8
         IJ9dVdNHd07wvVuMLNAqWNRkx7Dd85C7M0Z/VfoEU/zQ/3p/hOIyOLTwuC8lroDgytTM
         8f2uPySJm1Sv3+uTvaKFJiWvBm1pUSJ/B0C+OdB+uwgeqtVV+LIqCVK0bZQuEodaHoaC
         NwgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVCdHIhjhJdGlr2WtVhfUYXeqYxInYs+CwqirZf0Kw1I0dw1WZxB8U+jojncURTYzCXu33kQkSsxOC@vger.kernel.org
X-Gm-Message-State: AOJu0YxGrrl74MOCANEXv3ZIAGqA38IcPDeVolTYNEqEs3scxnB07yZm
	KumgQ+sVU4U2rFoh+YQsWFcF8RMpquQaMRoZaEXtZcl4ccak/mx7jETrGwvmCC6rAq20jOYoyqo
	C8ifsj1oXUxfMysZ+LOU2izREmSAwCQ8W3Ep7oat4bw==
X-Gm-Gg: AY/fxX4YEB63GZD4WvMtAfSiMXYBBODHT2mPwIwin3tH3ibCTgN189mCUlNms1WOu5/
	uVqYaZHjBMKdo26B7xpLfm5H+5+jekhc8AgTJVNp0G8QWjxMHvr1CTrbEtJo74VTNQ+ImU2ctNY
	LrUV31DH9y/lxjcRcBJlp3fjbmAeOAVePFVbXDRWebwZ6FBThJFEMrUPfZABzivoWT5Wi0VDzRk
	4Fcjb2BOz0YMvof79D9vlh7zi2QkgzF9QhF1zAn/rC/VUFqwWT7163mh0zjk85lXFxN121ITQEo
	QFJQcVmn9FTxm0vumWUPr/ddFO5eCgTG+nH8zbJmy1k=
X-Google-Smtp-Source: AGHT+IEhMWcvDM1SrRQXH+l+w0IiP0cunz8wXS9r5P4Z+auaz2lvzOyrhy9URS2jkNUL58e6LoB0ZIxYLGgtVQF/jg4=
X-Received: by 2002:a05:690e:4008:b0:645:527b:bc25 with SMTP id
 956f58d0204a3-6470d316484mr11391255d50.43.1767961231358; Fri, 09 Jan 2026
 04:20:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260102-02-k3-pinctrl-v3-0-30aa104e2847@gentoo.org> <20260102-02-k3-pinctrl-v3-2-30aa104e2847@gentoo.org>
In-Reply-To: <20260102-02-k3-pinctrl-v3-2-30aa104e2847@gentoo.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 9 Jan 2026 20:20:19 +0800
X-Gm-Features: AQt7F2pX-qHrvIy9ewuvaqm_6fzKWfdXRjphTDvJYELxE1h4Qxa4FZfMO-nJbgI
Message-ID: <CAH1PCMaXW4469pFRGC+HcixO7PGLQpKKJ_Z5VEhHUMdd3DNWTg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: pinctrl: spacemit: add K3 SoC support
To: Yixun Lan <dlan@gentoo.org>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Yixun

On Fri, Jan 2, 2026 at 3:04=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Add new compatible string for SpacemiT K3 SoC, the pinctrl IP shares
> almost same logic with previous K1 generation, but has different register
> offset and pin configuration, for example the drive strength and
> schmitter trigger settings has been changed.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---
>  .../devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml       | 10 ++++=
+++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctr=
l.yaml b/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml
> index 609d7db97822..9a76cffcbaee 100644
> --- a/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml
> @@ -11,7 +11,9 @@ maintainers:
>
>  properties:
>    compatible:
> -    const: spacemit,k1-pinctrl
> +    enum:
> +      - spacemit,k1-pinctrl
> +      - spacemit,k3-pinctrl
>
>    reg:
>      items:
> @@ -81,6 +83,12 @@ patternProperties:
>                - enum: [ 7, 10, 13, 16, 19, 23, 26, 29 ]
>                  description: For K1 SoC, 3.3V voltage output
>
> +              - enum: [ 2, 4, 6, 7, 9, 11, 13, 14, 21, 23, 25, 26, 28, 3=
0, 31, 33 ]
> +                description: For K3 SoC, 1.8V voltage output
> +
> +              - enum: [ 3, 5, 7, 9, 11, 13, 15, 17, 25, 27, 29, 31, 33, =
35, 37, 38 ]
> +                description: For K3 SoC, 1.8V voltage output

Should one of these be 3.3V? Both descriptions currently specify 1.8V.

Best regards,
Guodong Xu

> +
>            input-schmitt:
>              description: |
>                typical threshold for schmitt trigger.
>
> --
> 2.52.0
>
>

