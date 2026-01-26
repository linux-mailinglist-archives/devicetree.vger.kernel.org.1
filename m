Return-Path: <devicetree+bounces-259573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LdwN32Sd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:12:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1868A8B4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:12:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C6074300623C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BC92DB7A0;
	Mon, 26 Jan 2026 16:12:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F702D838B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769443959; cv=none; b=K54J/OZVu36maO72TsnjiXPJTbFByW9J1/ioyxNx+QX0ZYqB8rjD/MOcwIuo+dhFcmFfWmQjDVwhhoBVMDgVfOJ15pPvP01c3ghXUBYG04QoJv8bUPffkRGio9em+tfI696pgUiQwYMqzwIKZATUe4WUchuVFsL4SwV6/k+Ot08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769443959; c=relaxed/simple;
	bh=ZVEYPIdz79RWr1ln7aRsRkIDCN/em83Z6vA1u5GyPPI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QMoMtbYTia+RSeXAD5Ag69QQKL3DwRKVZgBr3vHXc5qX7RefWlUwZeG6rxQJtTcLiMhzwF9Mzvsz4CLN9fM18VR/BnXHSgeVcO1tmbat7+BK9QmYXxCyk1HelNawT1gbAIf8QnkXmBuBdOc0f3Qho4cOA59IdGW88hnSxha3TYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-94120e0acbeso2727487241.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:12:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769443957; x=1770048757;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qznwophNIFvx/Vkp694TKOz6iGJDGxAq1XnuuR3raPY=;
        b=ntOMPceJquhgEmcP/N9LIo+7IGN2au5claAYRU11iiEURKd7HS7MFCY1uG88H0Umdw
         3m2feHyuRmSNwgIoAXq3nMEIaeEGwJa9TMkupcQA+HxIh5M9YCVDpuxVZLGZnqbnCyGc
         VnvU3HwdsP8/IeBTMQbcaDwcTuryvrKLqO0pCtpgJCbjJeXOk9Sd02JZXeVSQV5oAAVM
         7K5s1lcoCT74zfR14w0CGzEIfwFElbfMyvjg3k2I7bblsYoxsAUhLsQyG/onHj7pEZzF
         BphUOq4mXUsstUHdxdR69kcmoXkyw5G2Z6YTKKpad2zMknmmIiFEa+cWjuaW76vXnZNb
         yefA==
X-Forwarded-Encrypted: i=1; AJvYcCVpNYCgv93LjWTMsfnEEDoA9lGJkfe9BdriAl4bwYyxUcFH4xEPOJIe0ol1hS8ZpVtozT8c6DQGOJmI@vger.kernel.org
X-Gm-Message-State: AOJu0YzhS8TeTQFLcoXQ4XSjWJ49T66LkMbLIHPtTEnAeTq5AfFd+XL2
	QQheGzqi/60KlnuxaWPRVe/eubPE7BO8iKxKgusaIzYFRe5Bp6Czj1Z7srnF2fh3
X-Gm-Gg: AZuq6aKmdRk7ie+nd+P72GCplIHtn5d5N73K+qRe2UvJ6t1sy0WcvUBfe46fj6cU7MQ
	GjMHMfhJn/0/2XJncYjtwF5gIDRp7CCqOTK7CBz4bXD9LwUJZo5bkc3ZrVmXkcs3sTbvbvCQLjQ
	HZHaDu5+qcdHwqjm3GUGNqTsTliBR8ZfQZ4L9tLwB1XmxJpDY9TcQRrJgfIYlbJM3I4h6//6t38
	UMeVzrF11N2OJMenEZAVY6C955G7BNKvuZMTHrWXrKbrBvUSjuvs7avoQAdRgqvJR1Z6GCu0V49
	zjUacZeaEdj41GtA2WU0O2g/oSpMFWu+paq8nodsRa6XSsCos084g7OyvMznJCUHYNgOjsMKpQk
	NzRbPSR8PY/D1Qq5kq8CPrIwGF0FPYBxDXD9knirAEy8oelhrjb355BZih2sVAKPIAoscGHB5uI
	vPxoP8VDEA1Acl9EdKQV2FNiTO6wGxJey593a5yTS6Ue7rGdfs
X-Received: by 2002:a05:6102:304b:b0:5f1:7aad:7c04 with SMTP id ada2fe7eead31-5f576550367mr1544476137.41.1769443957388;
        Mon, 26 Jan 2026 08:12:37 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d4632cbsm2181257137.8.2026.01.26.08.12.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 08:12:36 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-9480a1f77d5so2950508241.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:12:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXYiRihW2ufJKd5BEAi1ufMZYiT2BdWVd5YT4uUtPcMOI/hZg6A6sdkMyaC6s05tZ0g2oebOmw+YXv1@vger.kernel.org
X-Received: by 2002:a05:6102:ccc:b0:5f5:3f97:58df with SMTP id
 ada2fe7eead31-5f5764a857fmr1465004137.27.1769443955874; Mon, 26 Jan 2026
 08:12:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120150606.7356-1-ovidiu.panait.rb@renesas.com> <20260120150606.7356-4-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260120150606.7356-4-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 17:12:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVB490OOVY6B2Y6DORnWoc0LYvafLKAoRSOqFFP_nybOg@mail.gmail.com>
X-Gm-Features: AZwV_QjuRevvHvM3o_QLjPDxA4Vw5PVnFEn2Vv2g6csusKMTyFdOTWDc-v6Wjt4
Message-ID: <CAMuHMdVB490OOVY6B2Y6DORnWoc0LYvafLKAoRSOqFFP_nybOg@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] clk: versaclock3: Add freerunning 32.768kHz clock support
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	biju.das.jz@bp.renesas.com, fabrizio.castro.jz@renesas.com, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,baylibre.com,bp.renesas.com,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-259573-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,linux-m68k.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 3E1868A8B4
X-Rspamd-Action: no action

Hi Ovidiu,

On Tue, 20 Jan 2026 at 16:06, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> The Versa 3 clock generator has an internal 32.768kHz oscillator that can
> be routed to the SE1, SE2 and SE3 outputs. This patch exposes it as a
> fixed-rate clock ("vc3-clk-32k") and makes it available as a parent for
> the SE1/SE2/SE3 muxes.
>
> The 32.768kHz clock is only intended to be used when explicitly requested
> (i.e. when a rate of exactly 32768Hz is set). Selecting it as a fallback
> for other rates can cause issues, for example in audio configurations.
>
> To enforce this, introduce a new helper function,
> _vc3_clk_mux_determine_rate() which rejects configurations where the
> 32.768kHz parent would otherwise be chosen implicitly.
>
> Two new fields are added to struct vc3_clk_data:
>   - clk_32k_bitmsk: bit mask for selecting the 32.768kHz oscillator
>   - clk_32k_index: index of the 32.768kHz clock in the mux parent list
>
> They are used by clk_mux callbacks to select the appropriate parent clock.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Thanks for your patch!

> --- a/drivers/clk/clk-versaclock3.c
> +++ b/drivers/clk/clk-versaclock3.c

> @@ -1038,6 +1087,14 @@ static int vc3_probe(struct i2c_client *client)
>                 return ret;
>         }
>
> +       /* Register fixed 32.768kHz clock */
> +       clk_32k = devm_clk_hw_register_fixed_rate(dev, VC3_CLK_32K_NAME, NULL,
> +                                                 0, VC3_CLK_32K_FREQ);

If you have a system with multiple versaclock3 instances, I believe
this will fail for all but the first instance, as clock names must
be globally unique.  Upon closer look, this is the case for all
other clock names in this driver.  See e.g. commit f491276a51685987
("clk: vc5: Allow Versaclock driver to support multiple instances")
(and subsequent fixes) for how to solve this.

> +       if (IS_ERR(clk_32k))
> +               return dev_err_probe(dev, PTR_ERR(clk_32k),
> +                                    "Failed to register %dHz fixed clock\n",
> +                                    VC3_CLK_32K_FREQ);
> +
>         /* Register pfd muxes */
>         for (i = 0; i < ARRAY_SIZE(clk_pfd_mux); i++) {
>                 clk_pfd_mux[i].regmap = regmap;

 Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

