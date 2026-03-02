Return-Path: <devicetree+bounces-270144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PtUHnW9pWn8FQAAu9opvQ
	(envelope-from <devicetree+bounces-270144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:40:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD541DD0E0
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:40:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2943130EE183
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589643FB043;
	Mon,  2 Mar 2026 16:32:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989782DCC04
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772469145; cv=none; b=XVtI/ox3KZ6l6TXs1LHt+ufraURRbpwOQfkiSsUWemQpGHRmmu7yjb7V558mPvyHnUtvdqZBo6TStdzO4bFcYPQkYsoQBQircPIGP82WdCWRWZzB64jLsTd/7yPNUtqHt1HOK2wpa6nGyMF+3W3B9sgAm8mQMC9+n/zVEF3dsoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772469145; c=relaxed/simple;
	bh=ZN7ZYA3vRUNHHbGnPhwCvGjNZJR0JyldjOBVcI9neHk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UQ8on0MrDQBPsqbLpNLk8emAhEIH9lNNKLouyAcBL2tWcR5bpAORdbOV4Y/6hdcucx8oNdB78ZirlpXzcnF8mrE/tDC01MPgQfLOgTCUVEFQjTBMyB2VS6KTCWHmi2LrFPIhcIIMoXi0xLrQloYP+sy1gm01rO0NtD/7BWIPnFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56a8a20e6e6so2039641e0c.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:32:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772469142; x=1773073942;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32KLibA2LnxuiBPJQhexbcq4h5vz7CZtFSoqgdy1YZE=;
        b=FWDoUUROAl2b94mgg6NxXH4r0SRX4ld+OG0MAf9w5zbx4hehAvFZqTi8ja9ggI7o9k
         tajeb3kp5QwEQYno22xqE5z2MMP4op8JNrg2bUPQlkCVNiOLtBowKJPFOOj7iReTkimx
         Kz0fyJesqJ6aOGnCiRvkRB4g+b64R7DyKMRFurDUiNdz03CRlUMTM9R7ec/ymCWgj5s5
         Ttvxcp3gqMHTJSU8Tjc8Q8fW8o2uLoiqnhpmLMcDNF5TMUmCL9TZbHwZCMenkEZyJJQD
         jJMUYvwbUljvIxsRxyRiPX3iY2mc/c3MYcRWMwEhft1y+jrwaqDicjrWuAkZSveIWQZY
         hJKg==
X-Forwarded-Encrypted: i=1; AJvYcCUf3FjdFtGOhsa7MMFEemNXFMJBsrjXR/ks+Crzu+Ka5+Jy3b/A2rk6GXvhXMt3iVgkdDt4BEh1QCwg@vger.kernel.org
X-Gm-Message-State: AOJu0YwfPDaWF0hFKcRehq8et/uJab+wf7+Jv0/d8ZpNlVpvuTJnvIzc
	H/I4pzSErPFXD79h7vTBGpSHPYC60wkRW9wlwOX7J2eHsnUM6ra/8cJeVimOTIeO
X-Gm-Gg: ATEYQzw/ofmILdOWJEzM71YsdNStSxWiJzTQLvA9LO5CCDpycCB6v8eceb26m6a1HnU
	z3Eg12M66hbc+J+ckuM8PrF9a6wDIpwmHMf57j/ypGdAw9Z1YM9GAS07BXc/0Z+PBcok7agR2oc
	g7O5l1BV6zD/h00umisNjBhLm87kicpDiROVGv5Dbz2nj40LFV7tnfVo+GFkzYkH7frJy+TfVtn
	Kiqh3D+d1YKcjX8+nJWyNZCoBpSgzkOru2bKV/JV75wEgqIFX5JkK+rsWHJtvmENicIJ5AtvL3u
	t+TSyUBJHif/BOgol2L35QXjT/jY7EpEtpdzKclinukTZiBst0oFK8Ev30OkGm8/8LFe+q05Ghn
	7hzeZCoduPsRprmvWDUqtpAA/gyCZUBnMMDIU0TQnhIgLOY3JYIIgU+oRydEOhqf99skNTt/bXt
	STwSR5cVaJM3TEPK68FBWo4b8YTOv3025Sln5YApv/wZbiji80fnaDHEhIG2Ks
X-Received: by 2002:a05:6122:791:b0:563:4a88:6eb0 with SMTP id 71dfb90a1353d-56aa0a4fbf8mr5357513e0c.5.1772469142369;
        Mon, 02 Mar 2026 08:32:22 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91659421sm17187113e0c.0.2026.03.02.08.32.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:32:22 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ff1836b4b5so1158880137.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:32:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXj+1Fn2SrkMXqT+CRYfpRojJHW7HMH6IqvVCIxYe8snb8Hhpy0uMx89yWXPOgWQHr0fxePaw1rNlRH@vger.kernel.org
X-Received: by 2002:a05:6102:a4c:b0:5ee:a1e5:6504 with SMTP id
 ada2fe7eead31-5ff3257ef76mr5247593137.36.1772469141709; Mon, 02 Mar 2026
 08:32:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-soc-of-root-v2-0-b45da45903c8@oss.qualcomm.com> <20260223-soc-of-root-v2-8-b45da45903c8@oss.qualcomm.com>
In-Reply-To: <20260223-soc-of-root-v2-8-b45da45903c8@oss.qualcomm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2026 17:32:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX-rdzLhOFEJYBXzCYX5jH2E1=ydGWKgNkD0Nqx-tGr4Q@mail.gmail.com>
X-Gm-Features: AaiRm53oB2X0Qg0vbG2fw10FsfcqVt_uYNXkS-NKRd6s-Lft2nvlJyc42VLB5T0
Message-ID: <CAMuHMdX-rdzLhOFEJYBXzCYX5jH2E1=ydGWKgNkD0Nqx-tGr4Q@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] soc: renesas: don't access of_root directly
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Frank Li <Frank.Li@nxp.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, driver-core@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: EDD541DD0E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,pengutronix.de,gmail.com,glider.be,sholland.org,nxp.com,vger.kernel.org,lists.ozlabs.org,lists.infradead.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270144-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.572];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Bartosz,

On Mon, 23 Feb 2026 at 14:38, Bartosz Golaszewski
<bartosz.golaszewski@oss.qualcomm.com> wrote:
> Don't access of_root directly as it reduces the build test coverage for
> this driver with COMPILE_TEST=y and OF=n. Use existing helper functions
> to retrieve the relevant information.
>
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

> --- a/drivers/soc/renesas/renesas-soc.c
> +++ b/drivers/soc/renesas/renesas-soc.c

> @@ -468,7 +469,11 @@ static int __init renesas_soc_init(void)
>         const char *soc_id;
>         int ret;
>
> -       match = of_match_node(renesas_socs, of_root);
> +       struct device_node *root __free(device_node) = of_find_node_by_path("/");
> +       if (!root)
> +               return -ENOENT;
> +
> +       match = of_match_node(renesas_socs, root);
>         if (!match)
>                 return -ENODEV;
>

I still find it silly to add a call to of_find_node_by_path().
In your reply to my comment on v1, you said you don't want to add
another helper.

Currently we have two helpers in this area:
  1. of_machine_device_match(), which returns bool, and tells if a
     match is available,
  2. of_machine_get_match_data(), which returns the match data, if a
     match is available.
But there is no helper to return the actual match?
of_machine_device_match() would be fine, if it wouldn't cast the result
to bool...

As there is no cost (binary size-wise) in having the helper that returns
the match, too, I have sent a series[1] to do that. The last patch[2]
is an alternative to this patch, avoiding the need to add a call to
of_find_node_by_path().

[1] "[PATCH 0/7] of: Add and use of_machine_get_match() helper"
    https://lore.kernel.org/cover.1772468323.git.geert+renesas@glider.be
[2] "[PATCH 7/7] soc: renesas: Convert to of_machine_get_match()"
    https://lore.kernel.org/10876b30a8bdb7d1cfcc2f23fb859f2ffea335fe.1772468323.git.geert+renesas@glider.be

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

