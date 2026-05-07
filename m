Return-Path: <devicetree+bounces-293922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPHUGgpl/GkqPgAAu9opvQ
	(envelope-from <devicetree+bounces-293922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 12:10:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B848F4E6825
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 12:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6202C302F986
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 10:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037EA3C343D;
	Thu,  7 May 2026 10:05:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0FE3D301F
	for <devicetree@vger.kernel.org>; Thu,  7 May 2026 10:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778148301; cv=none; b=pUdqq4Mfm/RRfMDZZtikG6lWYczT2FdRc9SVU7cSeOASWDnGQPG9f3kTiU/7HfB0hlInflWC4cEH34c+YQf43xPP6h+3VmgYXvgbwYcp/lUmsvsiURqmOR+XzZSELKO8S/wz0LLJARkJAManIwAtoRqZJWzWLrqP69QV/lYPKI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778148301; c=relaxed/simple;
	bh=QBNlHtLLDp0a8vFoZD5o8h4tPmjDdNgQ6trWUPVrqy4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IblWvkcnp2PIRbYe4hTEZS4tktGsCS/ha01pDahR7qTUVN5WzqzNabLWP9W8NkbmrmTBeGd03i9XGNxLfutQoZLCad1WqnXFavCEBgHM0hiaQE53tsBNPIdbw1BHpidg6vavwtQhPDUvOppF79NjTx1StKsIpM+pIz/6Bn3A+EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-57524e53749so196524e0c.2
        for <devicetree@vger.kernel.org>; Thu, 07 May 2026 03:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778148292; x=1778753092;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9efMTaesRZN0akOd53Z+KOsQbLcKFvwTSfRhpnKaLP8=;
        b=mB+cHhHkzJDwQx++xfZBztAGFLvVEj4ADLDVJTANjowylHvsD1csWseaWuz34GXM9G
         JaNXAwO+m/1NgQUNFh979SXSfm6BIGLD/sbXlP+lu+y+7/LVngEY3MG1GtjIQPpo/A5L
         M9e8tPDl8cH6ZVk1IA2lRMiDC7wmUsYSOLegeMd0YhPRwJ1iuPqZG9cQ28k64ZQyJRt5
         ObnwogFpRbWbM50M23uufM8Vbvj+AeZMvh0AQ2VdAd3D9bjEv2Kmxk8DxneKfpoqo03Z
         UjMTpc1yo3O2PSIXLwZhcXjhGQO03x4GWqbiX/KL4QRrlzEwwlJ2BsAicAhGthJ1Qg7D
         0TCg==
X-Forwarded-Encrypted: i=1; AFNElJ91KTRUopniq8Wh7KVyOC6k7qKEdysxS16Kmhx+qPGiaaNvz9QRn3HC9wX4tTHilHVgleFKSohpmBEx@vger.kernel.org
X-Gm-Message-State: AOJu0YzvIvkK73ZJaBE5LGyto/okPexrwrotFmstwtLW5LutNvjOVZwT
	d9NiOqIi3X8FjXfEq49UcUp6FiOsXK/c/59Xl96B2V9EuiWMXp9AZ+kBCuGp6iuoYlI=
X-Gm-Gg: AeBDievzPrdiNiUW4TSRCYbNDRcjUsXh8KKFjgxp7iRfyFlF/PjJmENQz9PM5JdSam9
	naBgmRPfM+b4t0W3gvrSiRnTo15XICJ5J4L9yEIrkoSl2jmHWdJMe8HwJn5EaVWL2BklLZeDiMB
	a/4rDmX0EB9ToldNvF6VhOYvc3L3SIBG+VQZMcIz0zIZNMZDVRKpCAoZENi9P3ZEIVLjdH3mmlb
	hdXjFv92M6dLkB9zgfLj9bHfBTrJ1zWj4b0bg3rgqn3xrbPhd2TLAt4THvWZ2OvKIuqd+twKlXi
	nRU+HR6Z1Ml1EXiSajnxcUMACeQ/KUPEMqW7BJ76HwNEV1M6fe3wqIJxh0oaL95sCP6KMgB+A12
	8W97Es1y5aU9APrf9dtJm/bLC1wPH8B8nRBmNVHFl04h8sgtxv2bOi71vFRD4fBKV6WvIKgYb+3
	ftj873eEtA3/4N4QNwHP6o+zpjEYGLWQY7UyOvTB6v5if6FEdvUSlX6CKv8KDfKNKXeLvqPBC72
	pgCRop+tbr8Zg==
X-Received: by 2002:a05:6122:4d04:b0:56f:63db:2072 with SMTP id 71dfb90a1353d-5755968a9acmr3515753e0c.10.1778148292468;
        Thu, 07 May 2026 03:04:52 -0700 (PDT)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5749f85940asm11956168e0c.7.2026.05.07.03.04.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2026 03:04:51 -0700 (PDT)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-57524e53749so196510e0c.2
        for <devicetree@vger.kernel.org>; Thu, 07 May 2026 03:04:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9HcJ4T0qBW2TFG6oT0gbLLurfmG+ezEyX4ajQT2NqApNt+rWglpM/gmnwxYxmajuWBBMATtO32hn6g@vger.kernel.org
X-Received: by 2002:a05:6122:8495:b0:575:637e:9509 with SMTP id
 71dfb90a1353d-575637e99f3mr1977950e0c.13.1778148289893; Thu, 07 May 2026
 03:04:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260430125342.439755-1-biju.das.jz@bp.renesas.com> <20260430125342.439755-3-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260430125342.439755-3-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 7 May 2026 12:04:38 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWM3gBS6CO-cQgc6KPSdpwLWwBTynJDcF4HSAs72A+xTQ@mail.gmail.com>
X-Gm-Features: AVHnY4K8a0WnnvU517ZJkdnKHi3kSgA8X-ASA_i7MddMM06qNDSHegwIXTpj4ZY
Message-ID: <CAMuHMdWM3gBS6CO-cQgc6KPSdpwLWwBTynJDcF4HSAs72A+xTQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] arm64: dts: renesas: r9a08g046: Add ICU node
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: B848F4E6825
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-293922-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,glider.be:email]
X-Rspamd-Action: no action

On Thu, 30 Apr 2026 at 14:53, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add interrupt control node to RZ/G3L ("R9A08G046") SoC DTSI.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.2.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

