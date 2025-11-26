Return-Path: <devicetree+bounces-242552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F72C8BC05
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 21:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 221EE3A5A52
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 20:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80D0133DEF7;
	Wed, 26 Nov 2025 20:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AhEfGA74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9662BCF5D
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 20:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764187368; cv=none; b=DpyP8IdoDr+hsO5AVKa730OXL5u6rPGR9heTjrop4QP4WR8DCf3yIwv7LCer6aA/8ksx1vkImq5b8vrSw+U7pdbM6URONFusNmyaqmuXZzD1xqyQdiQtvHxhgXDybcvGfxy/sKZ7oWQmzw05DLQvsUnQIeH+38WTOqkevKxMw0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764187368; c=relaxed/simple;
	bh=io2b3WP5mJSrzoPU9P3LKCt9DN2B8GXCdJ4X44P7TU4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XyW+WPYjrxoUQ/zSivgZiDNqOhgHKZohEtk/yb/+OWIIhalTI9NVyPVncqbhPU32anX8NxXCp8TSik+mUWRVENQS+UPG1rUIR0n7GSihF6fx48bMZDOk8h4dFHuSh3gf6nM84nACbotl/NdILeLNLfXA/8pknKPrvnUVXe6eHWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AhEfGA74; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b3669ca3dso99182f8f.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764187365; x=1764792165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=io2b3WP5mJSrzoPU9P3LKCt9DN2B8GXCdJ4X44P7TU4=;
        b=AhEfGA74+WtLFdY7FUEVVqG/COqUjj68ANLx3nAvKOy3eGB6YdK2IR8pdSKXMx0UB/
         zto+FrF2N4GVjCURo5ZE3v++mNOCXPdqt08VuHNhEWisIHjlvMo79+eiX2R7H3pLFKKY
         ZtZ0v3Has5Hb1Ek31pYuB3E/0YH6evR2f9n1f6H/9WRyEh1lgulbfWwoTpe8zRRrncBr
         zsXFppqoke0qHuTdFdPQ/sMXa+OgqdiE9ad+1+tVp8BcmPgGqh1e5l/xp0bTScyDCWCJ
         0uZ3VFuqs4D3YtqnL4ldYgMnfxcp34k3sA0d8wMwfTIaI3Er9MI+jy8+Y7L+BaEbCJ6X
         exVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764187365; x=1764792165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=io2b3WP5mJSrzoPU9P3LKCt9DN2B8GXCdJ4X44P7TU4=;
        b=Z13u2OjcbJR786GH0zKNfG51EYR82IH4CSrdNGdIPA3lZY8EWx/rbISFO8JLY2w5IE
         CmPoKWg4mondapF2vjpxi1TKzrBPUONt7SsCGghvVL9omPHRbVXB+5Z8DCZrP07WFLXw
         EMfsOgYHx0QAJkxHC5W3EnRmfukFPB5zAICCYU1SWSvJ1oT8jcu14aixji/9PcFk7xAg
         78cQIArLCwTs/LExHGfygkjcxmrCe8qvoyu1i28qcyrw+O4JrVwharrExneK8qQA34DE
         iYqfpYHmuTSz0pIynlVpbei0s/8tP84ijtv8uP6ilo3yXTrnCsTJQDrUp+bgE0tbHSue
         0+BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWw9iLsP02RSlpNBVgWw8c3u2giO3BPnCIf7vDshXnQFVWAfYdQOmiaHDQeQZSmvjDcrgL42dOXdI4l@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/1nYnfXlDRRUa5A01AOG2RwDiGM69IuFUMGSvTGFpPC2l6sJ9
	si/rwV0HH2qnrMx2aeAEyWJrhn0eg1Wh1q0ytHAJj8PumBXJHqr6C+2tziPCbBH54K86fmvjsaI
	QmoEdSdnm+GAwjalxFbC9qxgHwE+NSk8=
X-Gm-Gg: ASbGncs5Sni1V6V0/qwhF3AavrReScfkStsAtJR1Pd9tiHTVhy7VItTUoQewFohLbrq
	1KKdDJKX6l34FB5JLfH8L1+P+5sNqUIhs7Y6P3tB3kLEVqHRjEsZ7KwZqcO4YyZ2YRngXRVoVt3
	1HgeVF9zdScVgTOsQSsLLJ3ZpJmDvKWYlfiohHNuqA0JlMb4OElG8OJsboP2EcTURHCTmBkkNLK
	hhj5LBbAClLc2cDJoUZUsgO5YxdTNVKpexvs5IDVo4PyOJRBiR8ksvPGX7SwPhMxQ9GubCGueGp
	RLzW6EDkCYJTsffW1GU2uzSGIFZJ
X-Google-Smtp-Source: AGHT+IHhPTLf5CTLCoQ18EsMIZtWnWzd5QhbLVXWFL+PMuHp5nvUjMTQ/DYhFP88GSmklCKy+nnqz6NENwZFNXmLY3I=
X-Received: by 2002:a05:6000:26cc:b0:427:9d7:86f9 with SMTP id
 ffacd0b85a97d-42cc1d19d6dmr21241880f8f.47.1764187364909; Wed, 26 Nov 2025
 12:02:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-9-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251121205546.6bqpo2bn5sp3uxxu@skbuf>
In-Reply-To: <20251121205546.6bqpo2bn5sp3uxxu@skbuf>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 26 Nov 2025 20:02:17 +0000
X-Gm-Features: AWmQ_bmTU2niYWdcaSdZep0i6gskfGJjESBHVN_mhWxbtBqTU4OVzxNhhj_FZfk
Message-ID: <CA+V-a8vH+qCgNti+dHVXqfa02-zMnbUKw2gScWyeuh=EhL8HaA@mail.gmail.com>
Subject: Re: [PATCH net-next 08/11] net: dsa: rzn1-a5psw: Make DSA tag
 protocol configurable via OF data
To: Vladimir Oltean <olteanv@gmail.com>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simon Horman <horms@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vladimir,

Thank you for the review.

On Fri, Nov 21, 2025 at 8:55=E2=80=AFPM Vladimir Oltean <olteanv@gmail.com>=
 wrote:
>
> On Fri, Nov 21, 2025 at 11:35:34AM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Update the RZN1 A5PSW driver to obtain the DSA tag protocol from
> > device-specific data instead of using a hard-coded value. Add a new
> > `tag_proto` field to `struct a5psw_of_data` and use it in
> > `a5psw_get_tag_protocol()` to return the appropriate protocol for
> > each SoC.
> >
> > This allows future SoCs such as RZ/T2H and RZ/N2H, which use the
> > DSA_TAG_PROTO_RZT2H_ETHSW tag format, to share the same driver
> > infrastructure without code duplication.
>
> Again the twitching when reading the commit title. I thought this has
> something to do with the "dsa-tag-protocol" property from
> Documentation/devicetree/bindings/net/dsa/dsa-port.yaml. The tagger *is*
> runtime-configurable if you implement the ds->ops->change_tag_protocol()
> API, and it's also possible to trigger that API function from OF
> properties. But this is not what the patch does, so it is confusing.
>
> I think it would be more natural to say "choose tagging protocol based
> on compatible string".
>
Ok, I will update the commit message in v2.

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
>
> Anyway I'm not reviewing this commit until the reason why you added a
> new name for this tagger becomes completely clear.
As discussed in patch 2/11 the format fields vary, so this change is
needed to support the new SoC.

Cheers,
Prabhakar

