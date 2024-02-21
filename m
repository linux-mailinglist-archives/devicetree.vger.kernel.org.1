Return-Path: <devicetree+bounces-44129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2C385CCE9
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:48:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7356C1F22312
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE49817D2;
	Wed, 21 Feb 2024 00:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="yojhpeu0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37834468D
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708476493; cv=none; b=Cosjcqi5Z2VvjsOpDJVYe9dEfBn0GZKMFLSnmox/ZqTZ53c1UaL+97okl6Vr6hizBa2DZ8w9Vr1HFHZjZmVzy2+svgdGyUP6l1PTwg/Xa5uGl+iEyYn1hRZFKotm4FJAPt8ioN4y/lH0oOO+V7f9lpV3uD0t1+4x+RV9z6RTd5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708476493; c=relaxed/simple;
	bh=TAyHqIh7nSfAdd9tVNUMVeUz7n0RsJ5mQARd3J5Z7o4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZpFrFUc8jtE+5WjzLCBobFXRa5XUanlhdLacgS5oscgAed7A6kxTZOWyHCiHJmYxLRqgnzWAj9TvV4fshjuiq5L0pSMigAHp9VvH98Q9bFA/C3AzU0j1a3Pcw/8WovabN2V6/1dSlv/U6Tp20Zu7meRcwjuVDail4PL/AUManms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=yojhpeu0; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1dbe7e51f91so38535ad.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708476491; x=1709081291; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ugbs7Jg6VHvaoDcjZWVoK1eM0qfrHvcJKgPX5ZJOhD4=;
        b=yojhpeu0pFuyYppauTLZdFtb8sig8N2k9kllzwMQEgYr8+tYpqK0w1f4mZSbmadL6J
         fSsYu2DF3duD39sfN3pWRn3QEuxpJN5mx6M8pFHmm4iCnzfCqoOibeZDBsdlsAJ21daF
         RBGvrF8EwmcDQH3/8Mi+IXjuWZ8W3W3Ld/CPa5V6Ge5FxUuV9MjS12HOl8mVlmiHKbRE
         7TvEzm+DBFazxRgoAnDa03eHXfEU0mhYE6jKxa/GIanmNYxWwVdD3oGj8s8wKj3lsE0d
         z0zrUFM1GIdNjWz3M1lDWaCkGjobIxf2emMFFK7seedyfhTw/SIMdAOOOPrdswXxNlDa
         vl2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708476491; x=1709081291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ugbs7Jg6VHvaoDcjZWVoK1eM0qfrHvcJKgPX5ZJOhD4=;
        b=Q70M02JC81Q4zG2rVH1Z9AMAHombNKicHQDXDaYaYsYD5dNSYu1MHsyEEl69qHDHV2
         J6pZQlRE9LBJZ9Pgt3whot8HV5Z3ECuNyckIs18BeXZPbgxCTlJbo6jgJSPbkc9P+SBC
         Tn4aGxe+SS8zsXHJWsHvP2UOn5k5m/k0dNAbtr3yMiE7Z8vLDAuuiZ9Coesx0xNS17d0
         RkfOiRev8SNlonTIFGKiLWtPwo8vJfnZqcorzEtm06AQSY6RMLEO9oQBt+sDzxs+wml9
         bnVwFMouXD6VKx8oClDH7oT2xT7Mo31Yt8uKCalxC0T3EYCu8Y+IAjgMuTl+TygHsUr4
         SqxA==
X-Forwarded-Encrypted: i=1; AJvYcCVrtE6nM/8XWoeE9h2plZY8DrTuw30TzF6Hyu6F/dGj1V2H9WBumQAwy3jR2EVejzo2phvApVilaCT0L+RgBGhIebgCG2KlII+5Rw==
X-Gm-Message-State: AOJu0YyCVKrQiwBsWjfpZmh61A9fGNnStQG0LwRVCsaTIi/mHTNTiMj9
	yPr0rjBXHx3CuCV1I9JIV8KO3LNWnbhoZ9v1FkbZ9OhcKjz9PjistJ3HhjHEfOipfGG0i0pArzt
	W7948M1e+UXk31UOhq7MzIbhFg2lmtn+3yiVZ
X-Google-Smtp-Source: AGHT+IGmomN+J320UJO3BPdb9kM8qujnyRAtdlS/NC9QqErQiwpvTPMbYWYYmX0JdfQqBKahJXCssDuKBj64fFUkwww=
X-Received: by 2002:a17:902:7207:b0:1db:de7a:9122 with SMTP id
 ba7-20020a170902720700b001dbde7a9122mr104606plb.4.1708476491323; Tue, 20 Feb
 2024 16:48:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240207011803.2637531-1-saravanak@google.com> <20240207011803.2637531-4-saravanak@google.com>
In-Reply-To: <20240207011803.2637531-4-saravanak@google.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 20 Feb 2024 16:47:35 -0800
Message-ID: <CAGETcx9eiLvRU6XXsyWWcm+eu+5-m2fQgkcs2t1Dq1vXQ1q7CQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] of: property: Add in-ports/out-ports support to of_graph_get_port_parent()
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>, 
	stable <stable@vger.kernel.org>
Cc: Xu Yang <xu.yang_2@nxp.com>, kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 6, 2024 at 5:18=E2=80=AFPM Saravana Kannan <saravanak@google.co=
m> wrote:
>
> Similar to the existing "ports" node name, coresight device tree bindings
> have added "in-ports" and "out-ports" as standard node names for a
> collection of ports.
>
> Add support for these name to of_graph_get_port_parent() so that
> remote-endpoint parsing can find the correct parent node for these
> coresight ports too.
>
> Signed-off-by: Saravana Kannan <saravanak@google.com>

Greg,

I saw that you pulled the previous 2 patches in this series to 6.1,
6.6 and 6.7 kernel branches. I really should have added both of those
Fixes tag to this patch too.

Can you please pull in the patch to those stable branches too?

Thanks,
Saravana

> ---
>  drivers/of/property.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 7bb2d8e290de..39a3ee1dfb58 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -763,7 +763,9 @@ struct device_node *of_graph_get_port_parent(struct d=
evice_node *node)
>         /* Walk 3 levels up only if there is 'ports' node. */
>         for (depth =3D 3; depth && node; depth--) {
>                 node =3D of_get_next_parent(node);
> -               if (depth =3D=3D 2 && !of_node_name_eq(node, "ports"))
> +               if (depth =3D=3D 2 && !of_node_name_eq(node, "ports") &&
> +                   !of_node_name_eq(node, "in-ports") &&
> +                   !of_node_name_eq(node, "out-ports"))
>                         break;
>         }
>         return node;
> --
> 2.43.0.594.gd9cf4e227d-goog
>

