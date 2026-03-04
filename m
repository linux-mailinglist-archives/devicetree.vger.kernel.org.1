Return-Path: <devicetree+bounces-270926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKfMDXnvp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:38:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0321FCBA0
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:38:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EA2C308511F
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFA639182D;
	Wed,  4 Mar 2026 08:36:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E60A3914ED
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772613406; cv=none; b=fum2Ds0UVUeQ5JTh97jioAOPYVSpeteXeHumurfMhy0euQQ/79fC+kLoKIdFyRCW21aukL6HrNL/o6axCNWyMHVoJzeFpfbzPjVa5Rxdadoe6g+RwIJGkhLGUvJb9KgUmbj0F97xkL+Pp+f8tZPw1TUn9XvCEJQi+1aw6Wh/XRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772613406; c=relaxed/simple;
	bh=elLmZc1jcw/cKiPUPuBZuwYPvBIc0Ez1uIV9vvssIMI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nw49XwwFvjYNnhWEnIjbV3b3a7Q4xfR/r5MamxcyvjS1DHArsh0Avcvhz5+WUSznlvORua4lJiV1kCO4eYQtidObERg1sFyOnbixGGAhfrtuvX4RMfNhYD+6XxWz3Cp+Zdexq/5nOXx2yrm1mlsrV4yDwpFoabkUMISPOfQ2uqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5688c221fd3so2936902e0c.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:36:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772613404; x=1773218204;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7EM3HBjgEUYLDW4ZlFiTbUJGOP/CBi5VZ79QGeNCuqE=;
        b=h4Hovfq17AuIP0Fj+kAnlFf3KADMNNlhMdSFFiGkWn4tPQi5eK3T1/IGfbsI43eBcQ
         cjC2QMjLgvsBo9vp0eDvAfozkFO5ZafyioD/VU+r/FSzAcpJUCPOV9QgVNjIOOLxRH2Y
         sK8+pRDEqVybeVO2yaDF3WoRxnFZ13IQ/TRsoLlKDiIOILCQzAyaWesd4skS0wpnYfyN
         QTNncwncFDrVRXqe4sKd2BEZRiSAXYO3h7y+sGmCUCiq7XNvHcjuEcJH1eBVDyTnBOu4
         KtHvC2OeAiPuv7RSescJY4JBcEyXpL/18QdFVCMjOwha95P7KgBxybeVVZi2gsxOGek+
         OW5w==
X-Forwarded-Encrypted: i=1; AJvYcCXvzMWOqo1Q4H7+VSuTSpoyyR0Q7E6Btweorgbv7uhLvS2Pb5hlcNw0+BYA1qjht681/6J94gCf/M1M@vger.kernel.org
X-Gm-Message-State: AOJu0YxhhIlORP98fEpt7XG7BaCUpXVG3h2SbczaX5Mvk97LO6dMMHro
	ZiXRB0tI6EGQBdau2iupxwSMi1COo5s1XyLJYaQzyPZGdn1l2N7wuktf5dw5uDlh
X-Gm-Gg: ATEYQzzDieYyD9pMCgMn2TMV3SlvMxSMtIvubBqY/MjFpYmOWHpppc9rEk4mZuKwXW0
	EjTCDPlzaf0SoNb4rox2bXIiVhkg6fxqICQK/k5qGOr5HsoOfhDKTt+9NL56gYtTr60vbt5lIkT
	DWiJY8kUeVjUXRmGtrNZZut2mzPHuVfrJMneiaPPzv4pk3+H3kF65oJQh2QJ5H4Urd+FAY6CQwx
	J2Ad8uJ4SAYEMDqJQvnhZxLK7h7W0h27gqWWi08LFuHBoNvz3a/Vo02dmfHLjlZhgL2wwPYw8Xn
	1G/EALTCW/sZZUpdSkbycWurS9QDSYpqHWiiFjyikKskiUXoo8E0Y0GZd24Bz2Nd3YwWILAwMkP
	EhCtA6WwkOuvt0sY7S7cxuSrsyLXGrye7m/BCzIWw3CjVFicPmu9XPXkG2dhwXfZHTluJy7tRka
	pN5N2yPBJA8g2eQ48WyloAVZnJKvJ9+gAMceXrWxidmvaOoxz9NIks1i9ZdOpSyCyB
X-Received: by 2002:a05:6122:31a9:b0:567:50c7:8d9b with SMTP id 71dfb90a1353d-56ae7609377mr520098e0c.8.1772613404162;
        Wed, 04 Mar 2026 00:36:44 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ae886d695sm1037880e0c.5.2026.03.04.00.36.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 00:36:43 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5673804da95so2856098e0c.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:36:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVFC8ApJVL14jxbQum0YHw1qoeAMbIW6l3XMvk0+vQ++yx8RBsz95UYn8hs/XOwyZH2fmZZdyEkL+HT@vger.kernel.org
X-Received: by 2002:a05:6102:2922:b0:5f5:7721:569c with SMTP id
 ada2fe7eead31-5ffaaa87597mr553949137.4.1772613402810; Wed, 04 Mar 2026
 00:36:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-4-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-4-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Mar 2026 09:36:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWUJ05q1s1L5wQRc8X8h1wGyAkuVoAEmMEEurZSLrHQkg@mail.gmail.com>
X-Gm-Features: AaiRm50D9HbEEWtQYOio6TpUThokdQuGEdJJw5GSvHjNWvW1Lgs1DYUnBt4LkWQ
Message-ID: <CAMuHMdWUJ05q1s1L5wQRc8X8h1wGyAkuVoAEmMEEurZSLrHQkg@mail.gmail.com>
Subject: Re: [PATCH v3 03/10] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Document RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 9D0321FCBA0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org,microchip.com];
	TAGGED_FROM(0.00)[bounces-270926-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.424];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,glider.be:email,renesas.com:email,linux-m68k.org:email]
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Document RZ/G3L (R9A08G046) SYSC bindings. The SYSC block found on the
> RZ/G3L SoC is similar to the one found on the RZ/G3S.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

