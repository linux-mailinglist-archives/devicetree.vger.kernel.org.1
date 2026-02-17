Return-Path: <devicetree+bounces-266294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFNmEgj2lGlzJQIAu9opvQ
	(envelope-from <devicetree+bounces-266294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:13:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C70C151BCE
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:13:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73701303C4E1
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3619231282E;
	Tue, 17 Feb 2026 23:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="eBOtkI5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8904E30AD1A
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 23:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771369972; cv=pass; b=XkboKLDUI8F+nkwm9H9eZbYv933EzDciKAMQTatm5FWbh+Az3ZT4ghuJbnCvAIBAbtHN2s6u4KROPS9Ne/TVhszFjLvtR9j9w6nkTu1xEnz7rbU5UjtUsizebnpElfJ8FQsgwD2375Eb1iUBoYmRqoOg17otwPb/UKn9iIBowM0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771369972; c=relaxed/simple;
	bh=TFhE/3nm/eNuFUAsYaPzWXKDQdMXz6mmhFERgmch1Co=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jpKwqCELogEuIJJ32wo2TIs3hJC31sxvzjHqZN3y2sd2oVu6AU0KXXV5op3qcOE7oR8qip2aKmrgCz9RxiS2orNOo6NxGO2QmTYO/vAD1xmblQgcFa0mWKV/hooBVt0V1zDBoqBUHu+wE/N5FOJlgcms5b9Ew/kavXA+5vO+bd0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=eBOtkI5N; arc=pass smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-797d3864d89so22829117b3.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 15:12:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771369969; cv=none;
        d=google.com; s=arc-20240605;
        b=a3Rd6K/k+f6osag/2vY2RNhNE+oNhtfAUEUBVdYPvNG7KaKg4H/EEhJqpWYGGM6IPZ
         zyEFXnmq5Fb739h62Q6twbCk5JQYz7z2AHb/27kJsgIP7amF02leyZLCrBN4P/njkkN6
         TelSCn+mJ2/1LERkvwRuLdYnKFPloT756GlO9Mz2ZSVgXP2dk2v42VpMSWI2wk9lHLI6
         vcA5fiTYJQFQ6SR2wcnySdloDFZhoNNAAtHvYaevlQctzERfiNSZSiRHa9FQH3A5JxTR
         KgKzN2tXlKD7KdEU90rfxg3m+zkc/IKxKU+ql7xY7fvQAyREwgqDyUTlViVOCxyzssCG
         V/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zP/wT+ORYJYEWXPTfGliwdU0mYdU90fsImuNVpM/pjY=;
        fh=Da5fFdUgpB8dP4ROkIBHF8HKrIJXrgHXveQJwbkXuBk=;
        b=Xa9nMwW9O1kX/vEVjjjkJGRS+ii6PdcoTmXnLMZYn5JX+jsnDqO9bdmbCY9iw65uiM
         IHu/UDeA9iBHFLwdJztTdObmNkUfcGt3ReD7kwF0ke38JkmS5KyAB4t53Rf3TI82DCnL
         KPGZh6SI1kZM8YcGlZVDwhMJ0Pr1ULMok+cC/V2rIbkuDdbKb+/dtloNBKDsN5hHpNxm
         0ejvw686b8kRIB8CloVvGNWAokXOZsqyqwzYHJhuZg/VqZp8Jl0IyqYKMmmgLyGs6JHf
         SgRbebFoqwsToTQZ6VrPMPdIA6pZo6ZZGYibaIhz4ZZVtUwsMwAHuPAK4lQdtOuwjpte
         j6HQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1771369969; x=1771974769; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zP/wT+ORYJYEWXPTfGliwdU0mYdU90fsImuNVpM/pjY=;
        b=eBOtkI5NwGtuPM0kfDxh8ugWBSs2gLKi3k1y2kgGsbl/cVJVr2ELxRWkV0RGfA6ssw
         3bgYYVbukRhhY+aSzyWD2d473gCJMEe965cBU4CJFP/1hx2Fm+S9aOUxX2/+1556LFPC
         dAf5KIgnf+Iib58tDBMgw4fmwhmyn6lYxNERbaMJxnfXkR4jm1FipQeOO6Th1r3todYU
         RYwLwAEwMQPXLwD7xttzDP+OkRQVXE9/JbagcukcuFbqRgdrSnR8/NynznrKz0TGTj9K
         a4KGgsqAMW/c7l4WvPFgpZAy/aph+ezx0kat3b+XNcN6L/+gLdErIpfA0s4Id+9xT1Ym
         mRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771369969; x=1771974769;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zP/wT+ORYJYEWXPTfGliwdU0mYdU90fsImuNVpM/pjY=;
        b=MFce+5lD4MKHeV1o7LMqF8Xv0uZiCDCmzDMByfiwRsrFFCHSmtI6rWXyMM37YCOHz/
         kG6VTVawpLYgAqVfyoPjBypVhAPwkJweOFcDghd+3EoIrhu9GrB9aDklvN5BUJ7+oUDC
         bH9TrtUuX1GjhKNvGYzrKk+OCpB45I/ypEgSe7Tq7KFM+8zaemjYLyEM2auxsMpQt6or
         u70PIY5THSjehCFP6Ng1KmnL736Ww22WhPoolT5gP9QOB/OE16Hkc0qT0RMSYUIXCjsB
         P2Rj/oMjli7trmyiuzzkLgvTjb3S+bsa+xwfq+PlMDLhx6nVqnRuSWPgUEzE9i1FNGxm
         3CZw==
X-Forwarded-Encrypted: i=1; AJvYcCVJnGauYDHGoRubdFw2P5HwVCYtSzIlc2yuS+FcXaepTUUGRyvAjLxGKIGkALTFowFG9Wl8cW3io2Zw@vger.kernel.org
X-Gm-Message-State: AOJu0YwdcSqQi/r+lw7tBjwqlVVYqTyFgXt392/6mJ2QY6FjS8kMrMNP
	yIrf5IM3ROdoFt+eOIJ9V33PCnG0jCZQQCFsCFXQg15if1NG95XMJRP5qPUxh7wuFmWLReCSeaX
	v87qsMsnauIFVoQFxvRaI/enMUAbJOLM90dMoOHKn4Q==
X-Gm-Gg: AZuq6aJbfzDa4YRWyVIavzg9wbryWCfJq3P1spiFTJUFkFjjqjbcbM6+/qntUM5RPqR
	GjG+4SVOLHTjxcFHfINsq44WLYYi4yrC7RxcX+JpT9R9TmwFs9cpYKqo0egVRrvs/cdz/XCY4Ci
	nh97lBjG56cBgzX3AExS1Inj/U+gHy0sVBC3J92n+LQ+OXOKrS4rvJVjfRfjY7ObLQDYSFwbM2j
	92ntMTOm1UIWfV3cYMTe2EExrJothvTqzIhenB30nawXmxW19xKXQXzGQUX6xFsr1VuqNfxDa54
	Ji90h9oB8dZQp2lGUuKSXmzlhasc+AyXalrd9SBjOkQmV0DUR5YucnWI5azB6gkKffe6IMWA
X-Received: by 2002:a05:690c:dd4:b0:794:77da:aa40 with SMTP id
 00721157ae682-797ac5cdf09mr105123407b3.43.1771369969517; Tue, 17 Feb 2026
 15:12:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
 <20260216-atlantis-clocks-v6-3-cb46d6a59c73@oss.tenstorrent.com> <aZST4Yywv09u65MP@redhat.com>
In-Reply-To: <aZST4Yywv09u65MP@redhat.com>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Tue, 17 Feb 2026 17:12:38 -0600
X-Gm-Features: AaiRm53ZgMX5zL3OnOXtCGVJ3U5aMlR3Ss87ookwvkWmf5kHgzV6nQtkNYJPn7M
Message-ID: <CAEev2e_XjxD3kHbOxVYwbf0Q0cwEr96dSQ3hWZE9eLdgeXhs4g@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] clk: tenstorrent: Add Atlantis clock controller driver
To: Brian Masney <bmasney@redhat.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266294-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tenstorrent.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9C70C151BCE
X-Rspamd-Action: no action

Hello Brian

On Tue, Feb 17, 2026 at 10:14=E2=80=AFAM Brian Masney <bmasney@redhat.com> =
wrote:
>
> Hi Anirudh,
>
> On Mon, Feb 16, 2026 at 04:16:34PM -0600, Anirudh Srinivasan wrote:
> > Add driver for clock controller in Tenstorrent Atlantis SoC. This versi=
on
> > of the driver coves clocks from RCPU syscon.
>
> ...covers clocks..

Thank you for your comments. I will address the typos and add the
static modifier for the different variables that you suggested.

> > +
> > +struct atlantis_clk_gate_shared_config {
> > +     u32 reg_offset;
> > +     u32 enable;
> > +     unsigned int *share_count;
>
> Why is this a pointer? Could this just be a plain unsigned int since
> all occurrences of this are dereferenced?

We have a group of gate clocks that have a single enable bit shared
among them (instead of individual enable bits for each clock). We need
to keep track of the number of clocks within a group that have
requested an enable, and only unset the bit if all the clocks are
disabled. share_count is used to keep track of this. It gets updated
by each clock. Hence it's a pointer (and the mutexes around access to
it).

> > +static int atlantis_clk_gate_is_enabled(struct clk_hw *hw)
> > +{
> > +     struct atlantis_clk_gate *gate =3D hw_to_atlantis_clk_gate(hw);
> > +     u32 val;
> > +
> > +     regmap_read(gate->common.regmap, gate->config.reg_offset, &val);
> > +
> > +     val &=3D gate->config.enable;
> > +
> > +     return val ? 1 : 0;
>
> What do you think about this instead?
>
>     return !!val;

Ack

> > +static int atlantis_clk_gate_shared_enable(struct clk_hw *hw)
> > +{
> > +     struct atlantis_clk_gate_shared *gate =3D
> > +             hw_to_atlantis_clk_gate_shared(hw);
> > +     bool need_enable;
> > +     u32 reg;
> > +
> > +     scoped_guard(spinlock_irqsave, gate->config.refcount_lock)
> > +     {
> > +             need_enable =3D (*gate->config.share_count)++ =3D=3D 0;
> > +             if (need_enable) {
> > +                     regmap_read(gate->common.regmap,
> > +                                 gate->config.reg_offset, &reg);
> > +                     reg |=3D gate->config.enable;
> > +                     regmap_write(gate->common.regmap,
> > +                                  gate->config.reg_offset, reg);
> > +             }
> > +     }
> > +
> > +     if (need_enable) {
> > +             regmap_read(gate->common.regmap, gate->config.reg_offset,=
 &reg);
> > +
> > +             if (!(reg & gate->config.enable)) {
> > +                     pr_warn("%s: gate enable %d failed to enable\n",
> > +                             clk_hw_get_name(hw), gate->config.enable)=
;
> > +                     return -EIO;
> > +             }
> > +     }
>
> Should this check be done within the scoped_guard?

The lock is used only for access to *gate->config.share_count. Since
we aren't reading that here, it isn't put inside the lock.

> > +static int atlantis_prcm_clocks_register(struct device *dev,
> > +                                      struct regmap *regmap,
> > +                                      const struct atlantis_prcm_data =
*data)
> > +{
> > +     struct clk_hw_onecell_data *clk_data;
> > +     int i, ret;
> > +     size_t num_clks =3D data->num;
> > +
> > +     clk_data =3D devm_kzalloc(dev, struct_size(clk_data, hws, data->n=
um),
> > +                             GFP_KERNEL);
> > +     if (!clk_data)
> > +             return -ENOMEM;
> > +
> > +     for (i =3D 0; i < data->num; i++) {
> > +             struct clk_hw *hw =3D data->hws[i];
> > +             const char *name =3D hw->init->name;
> > +             struct atlantis_clk_common *common =3D
> > +                     hw_to_atlantis_clk_common(hw);
>
> You can join these two lines into one and you'll be at 83 characters.
> checkpatch.pl now allows up to 100.

>
> > +             common->regmap =3D regmap;
> > +
> > +             ret =3D devm_clk_hw_register(dev, hw);
> > +
> > +             if (ret) {
> > +                     dev_err(dev, "Cannot register clock %d - %s\n", i=
,
> > +                             name);
>
> This will be at 81 characters if the lines are joined.

I used clang-format to do the formatting here and it seems to have
picked a line length of 80? I can change this

>
> However, bigger question is if this message should be dropped entirely? I=
f
> this condition occurs, an error is logged here, and a second message will=
 be
> logged in atlantis_prcm_probe() below.
>
> > +                     return ret;
> > +             }
> > +
> > +             clk_data->hws[common->clkid] =3D hw;
> > +     }
> > +
> > +     clk_data->num =3D num_clks;
> > +
> > +     ret =3D devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, c=
lk_data);
> > +     if (ret)
> > +             dev_err(dev, "failed to add clock hardware provider (%d)\=
n",
> > +                     ret);
>
> Should this message also be dropped as well?

So you're suggesting that we just print a single error message instead
of multiple. I can change it to be like that.

>
> Brian
>

