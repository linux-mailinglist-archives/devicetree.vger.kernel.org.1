Return-Path: <devicetree+bounces-311814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m2raOTTGL2r0GAUAu9opvQ
	(envelope-from <devicetree+bounces-311814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:30:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 450D2685107
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:30:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311814-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311814-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F333301BC0D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A3A83DA7F2;
	Mon, 15 Jun 2026 09:30:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8881B3DA7FB
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 09:30:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781515821; cv=none; b=VJGD43uDwDNYOpvBKRLmw1col77r4ul2i203pTjhazHFq0xCRMXX7KBHc3Jf12RaGZ4Nt9imUjXWwu/B6dbETcT7c1oYUzSGVxwJTKT+ytq7O6ZksAZSx8vTxOIQrOtDfOdtq+ZTNMcCSzPUor8Oer/Ca0Gdy46yNoT5YEfnvGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781515821; c=relaxed/simple;
	bh=cokh81Cx7W15QrHxXBRjalQp7kxTMzsuksUx0kqLiGU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IsozHZNJPuE+eXJqBAresnvQfoy+25E3IG8cKiO+M93RhfQzgUaZwypTKt1KMbmD589nJUibVDNuzz1KyR/407Pv9yUdhU2A9QXOxFBr44W4AAxjn2Gyn7Isn+draJnDOvr8neEWr+4TgXm62QeUc9ObBVHkj2KYb3sHCXwbFBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.169
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-5175eab3a93so25724241cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 02:30:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781515818; x=1782120618;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ekHktY4/Tubvm6BgE1BfS1UNgz1F/icrKZN3pNx8f0Y=;
        b=J3DFUk7fw4o/k9XqjMqSbd/09fvGHRw6YEtv6NHSRc7tCzjK93TtWuYwWPrRbSN6Om
         ZC+g65os8jQgSCxgerihyOwvgoSja5Mjzd2D6AibDDE0/7UIJB7eFpWdyChtf/pGHiUQ
         npwBQqHsbnvXTTMR6O9sbFJKyjC3KnhMq4Mi0kujEhC8k0HMXDKvpBm2KT+mJqz4xFsj
         2V6QXXTZuBw65fo33GPh5YtJYy6HdZjhgCXGc+k3OPYlAAA6c4NxKMJOvhlmPqlcfDb/
         b60IX9U9coFFDhadPcDcj1+0Eh3ZlKnal2ZZk0gdTk0vhaMqMIypBpKEXzXZiR904NBD
         5CeA==
X-Forwarded-Encrypted: i=1; AFNElJ9aA10WwwNa/22noWACnDzdRr+ekgh2ryIX67vy8o3LSL6gOB7RfgtsNuM3Tp5HU5K5EzReU/WcopIB@vger.kernel.org
X-Gm-Message-State: AOJu0YyldiIf4sqHQjfsY77Bev39491Ioae5EUd2ryxQ4Tj+Dcif2H9f
	k7krXGxO/AiA7HYYwC5L7BvTdioAoZ4y3dxeWE8mZdFn74OUpj2lorJ8ITRvjjhD
X-Gm-Gg: Acq92OGiia5W9Mf3uPnyDYbf7cNE0Pq1J2XOoJsEopCCLqNUMFvY4kmJfSVQFIkUvrj
	3b/KHD7nM2Rh6su9dx6Kvqn2NfslQSDKA1PYt+8hUCsN/L5R2Udb39Wm+NlW1mUdIh0LWtFmCFs
	onQIMQ3RWxkeK9AozWIy6uSAx44Lx5pnsdpJ8yzkasGptYccfqnmMWKl3MBN/Pe+GPQXC+2+7Vb
	EyNEDt43hiKrVkLiKowBCm+6UAaOW/k1WQoOtPwJ7FJgH5qEcLVUQ5dsCcnZbcWyz8coidX1RjD
	D9w9HQmbj7SBxFp1MZGHWfFFFSi/gWLSseBx0GD1G6aHv22J5dIfNGbH4iqwEhmG9Ts78ZlXDde
	wviZ5f5Eqh7Ev+100oM9cWiKb6ff6C1eKuJb4SaaX/T6qqlYe1OhhjM+OrUhE6t8KIYnNcqi5iB
	QUc4XX0sN/Zzq+RjOeRVBXa9lbaprmyEzhNTN82Safad+L6F8b7I4eLMC6awQKfl8O
X-Received: by 2002:a05:622a:894a:b0:517:8aa7:4aaa with SMTP id d75a77b69052e-51953552d55mr112568001cf.39.1781515818080;
        Mon, 15 Jun 2026 02:30:18 -0700 (PDT)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com. [209.85.222.178])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-517fb6442d8sm102109261cf.11.2026.06.15.02.30.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 02:30:17 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-915b5ce94c7so337732585a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 02:30:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/y9cwvF5/KJUC5lUyFNgxzgl/iWbiSIcfgwNdCarExG0zPHUd3STO0GveGyI8LP+oTE3O5iZBc0/uu@vger.kernel.org
X-Received: by 2002:a05:6102:32c4:b0:6c2:e290:cc69 with SMTP id
 ada2fe7eead31-71f60e0fc5bmr5388435137.23.1781515508903; Mon, 15 Jun 2026
 02:25:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615-rcar-du-dsc-v4-0-93096a1b56a3@ideasonboard.com> <20260615-rcar-du-dsc-v4-2-93096a1b56a3@ideasonboard.com>
In-Reply-To: <20260615-rcar-du-dsc-v4-2-93096a1b56a3@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 15 Jun 2026 11:24:57 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVxwvDmRqsdbA_ReCnnaDWbzzTKGCXw-64U-bSJfgiy7g@mail.gmail.com>
X-Gm-Features: AVVi8Ceq73VEJddOjmb1j9jjrYgT5rbGI4-mYSdD7C_MYewqPqxZACymjTcgJ3U
Message-ID: <CAMuHMdVxwvDmRqsdbA_ReCnnaDWbzzTKGCXw-64U-bSJfgiy7g@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: display: bridge: Document Renesas
 R-Car V4H DSC bindings
To: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311814-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen+renesas@ideasonboard.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:marek.vasut+renesas@mailbox.org,m:laurent.pinchart+renesas@ideasonboard.com,m:kieran.bingham+renesas@ideasonboard.com,m:p.zabel@pengutronix.de,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor.dooley@microchip.com,m:tomi.valkeinen@ideasonboard.com,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:marek.vasut@mailbox.org,m:laurent.pinchart@ideasonboard.com,m:kieran.bingham
 @ideasonboard.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,mailbox.org,pengutronix.de,vger.kernel.org,lists.freedesktop.org,microchip.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,mail.gmail.com:mid,microchip.com:email,mailbox.org:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 450D2685107

Hi Tomi,

On Mon, 15 Jun 2026 at 08:28, Tomi Valkeinen
<tomi.valkeinen+renesas@ideasonboard.com> wrote:
> From: Marek Vasut <marek.vasut+renesas@mailbox.org>
>
> The Renesas DSC Display Stream Compression is a bridge embedded in the
> Renesas R-Car V4H SoC. The bridge performs VESA DSC encoding of up to
> 8k or 400 Mpixel/s .
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> [tomi.valkeinen: fix the example]
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for the update!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsc.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/renesas,dsc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas R-Car DSC Display Stream Compression
> +
> +maintainers:
> +  - Marek Vasut <marek.vasut+renesas@mailbox.org>
> +
> +description: |
> +  This binding describes the VESA DSC Display Stream Compression encoder
> +  embedded in the Renesas R-Car V4H SoC. The encoder supports all DSC1.1
> +  encoding mechanisms, configurable bits-per-pixel, resolution up to 8k.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r8a779g0-dsc
> +      - const: renesas,rcar-dsc

Please do not introduce new "renesas,rcar" fallback compatible values,
unless you are adding new support for a hardware block that is present
in SoCs belonging to multiple (nowadays I would say at least three)
R-Car generations.  The DSC is only found in R-Car Gen4 SoCs, so
"renesas,rcar-gen4-dsc" sounds more appropriate.
However, so far R-Car V4H is the only R-Car Gen4 SoC that has a DSC.
Even the very similar R-Car V4M does not seem to have it.
R-Car X5H has DSC-functionality integrated in its DisplayPort TX
controller, so that seems to be a different implementation?
Hence that rules out any family-specific compatible value for now.

The rest of the (system/core) SoC integration LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

