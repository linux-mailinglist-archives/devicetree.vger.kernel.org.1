Return-Path: <devicetree+bounces-271304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aK+cHqbEqGlZxAAAu9opvQ
	(envelope-from <devicetree+bounces-271304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:47:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A272091C5
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E1793083037
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 23:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A56837105A;
	Wed,  4 Mar 2026 23:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="YdS3VQIo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B625135DA50
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 23:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772667822; cv=pass; b=G2eDO5nWcIx2SFBo9shFJVLXdSfhhMytz77+SYHDSvbO8CFd+t94Nu0+1VzvW9R2RRZSCS9qO34EjZwudMfh8Wxa4t35VjPYgqJzCNINRSHdzXieFZ72Qgw80p5UmVbBnAG6/Wk9fJYNyxKdPyzDCy8E7B0s1dE/IrZvxXWHZgA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772667822; c=relaxed/simple;
	bh=liAMEsOY+3ttBSYvExcPovT+V1g7cYkOMKIYUBzjg4Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JKHTOwRfB7+Uhy/kL1E60yCkhwQM3eTEs05QfV5NS/FnR2vv0W9Lk3ue3/D6+dKtiDWC0SvtdXe65vgESQWO2zCN6d/ZBew8oP4qHd+Xv9M/Nr2VaRNap69Rf4TSmzkf4QnQSI7GQhJ1DNvPCExeQovc+WJ0WVkiRAHF0uEw0ig=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=YdS3VQIo; arc=pass smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7986fb839f5so64808337b3.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 15:43:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772667820; cv=none;
        d=google.com; s=arc-20240605;
        b=anijW+GOKdFMFRRboPz8T/l7HXPzjOUdoKxWCCZTIvCWEuQ5+yARgLHo4CdRy8OEvS
         2dhpvYwY2sgE+UBHeq2ATruOd1FAA9ZDkqQURRdDN4Na1vjF+Tw+M+gIRtliZ17KEqVT
         WZT1X//rvrPaP1l1AqSdKkEZ8bleOfmD/hXWbIOu5YlgfJNB6Aijt0489JKlTyl98trA
         sMmfM3KZLgUK5j7n9KoGtP7t8S57Oqm1QljNkm8hyrwNQBRZcLK3urNQdDc7qi9oDLJI
         KBJhauO5C4MNzE/Nfxlxb/rQsurkGn9pcMVsK38IwwfuzBv113GYhEEu7znPJ23InJm+
         5mhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=th9Dubm5MZo7OqHj9TXvS+R0ZyOofjALKbBnj/rhigU=;
        fh=WEKhFZGavYx9JmMSnq9TpaUlK+R/gPXgfNsjq43gAkk=;
        b=E7VjZHzthZs/Fe14hwDA/O9DEU281zG5WeuvRZln0fgFRd6kA0kdGCpKR7FPN2g8EJ
         p9rgb9atuUFn60CxIimsXV2IrgB8ymFg56LuFfcVyQTds2lZDzBzrMELuI9tb3thnhnd
         TSmPPTZrYbEwXbvuomh/EDXgpRMqjAGvaVL0JoD42krj11XHKbBJOKQEGrDGwj6p3ySK
         obSIGjrTsVZPo0QYYV0mLRy6t1l93Q1r6+jBusU2y7dP0Zf70a+weJP7G+so8RLLxNSt
         cbq9aNpg0dAkR7KRm/qxNsdxloQtx0ilZ+sUWoWdCG5ZW9zE695nh2PkiuoNUGHSPKCk
         lzSA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1772667820; x=1773272620; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=th9Dubm5MZo7OqHj9TXvS+R0ZyOofjALKbBnj/rhigU=;
        b=YdS3VQIo6+idAZgjb7Jpw12eYSvYy9oPgoadWR7a7Vhm79uOZns1IwWi0CYtbYJERS
         4SGQtL+AdrWzv/q6Cel/orH/+kDW5uLMC4037NRvfZv9Hl6Ht5dJtwjCiYHeMjhCP5iP
         M7lW6GAdP7ZUUOfzIW0+zJqB0ULOv3GoyPO3abEFyISaQ8YHIzvf9z1shyVBGIJn+wx3
         5v78F86qRSLFHqF6bqkr7cI9y4CnkW4ix6dVMUsAHCqBcks9kZ0eW5YgBH8uyZsdfyzc
         rlI4P9Eip8yqvnbAAgb/tP2AAGaJTie6RUj1YzT9e3uI1oXeKYVdkbiJk4lN1Bi6xHRh
         NJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772667820; x=1773272620;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=th9Dubm5MZo7OqHj9TXvS+R0ZyOofjALKbBnj/rhigU=;
        b=Ea++QfyTm4kNwfGfjWOxzYxMOLMUPTd3Y/AEL/Etr3ORBNoRThmi5K8/FwpPBouxln
         tLhU3DSg+qg63r82ktj52m1SHyQLqbjAXm2FEzbdpa6SjOkHiPblwLiSky8k5HZKLUhR
         W/nVYTVbuujEm7YSrWhcIu9lwfp5VG6K/WmSK1SQnUvZr3LNh6YvtZfCbLW9bG4TdycR
         n8Dpw+lsVa9nw8lAPR5S7edOS5ocTG/FIAh9Sfbi16tqgdmepzZ/Q/S007TOk7+jzXY8
         ZbTKwLGKNVWR6kzukrIfyhtiW5sIyUfqi2hi53qTu6a6PW/+bUgBn+TwG0mYiOK9M/po
         KlhA==
X-Forwarded-Encrypted: i=1; AJvYcCXQdcYIbt/8hMHRaKrUF4s+WtlACAMCQ98S3Zbw1tNnQZTvlsXYn/tL4AupWpLFl1bXvIZlA4d0Fn/X@vger.kernel.org
X-Gm-Message-State: AOJu0YzUXalWp0uY2oj85+VYzmnZ56B2kyOraYPSfF6RTCfaGfB7c9G7
	u36oHS+SwIX6o8dsp1578NlyAcJn7ot+M9r7YOsqW3Z51u5hb0trKmfGHAPZe6EV/wzzK8nSZQJ
	91//dUF+gpFmv59U8RnfvjzNTBw8bHpay1bg7yh8IeA==
X-Gm-Gg: ATEYQzyK7r98EhgHQ/LI2LKvPQdfbg+GRCVfjPpSzM9wQQb7Ls1pNVAWPzFSGeqn4mf
	gHSYS6Apv+yMSeRyTOA9XBmYM7mV5VyDRNlcQvQBlwVApwZkf9FqT2Ux/0EvY4NbQ3/RgNI0xAW
	zuv1D+8IjZyRoSnlF9qR6JXFmKC+ccoYGZ23PXp6USUwmVXOrrZUogqynE5fLOX3Zj1PfALUCKO
	rgrkgMs3+wZZq4g7juip4I1qXHU0BIFXP7rPN+mjkuE+0azb1O2w/FLlvyQpgZ1xZZ7tgUKxGxs
	jhHKrn8KWBWaNfZUVk9+C7U5jMphfvrc5UR9RaZz+z4dlEgMt+iHFnQjHXhsjHnlcD1mh+zt7GZ
	9LzR6Kz4=
X-Received: by 2002:a05:690c:64ca:b0:798:77ee:cc0b with SMTP id
 00721157ae682-798c6d250a2mr28157897b3.64.1772667819690; Wed, 04 Mar 2026
 15:43:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-atlantis-clocks-v7-0-415c9dda086a@oss.tenstorrent.com>
 <20260303-atlantis-clocks-v7-3-415c9dda086a@oss.tenstorrent.com>
 <aadhd3LwZQPkT3A4@redhat.com> <CAEev2e_hxUBQjVdxisqBXHQRzspQq6dHT0kCZHUW-6dEyV4faQ@mail.gmail.com>
 <CAEev2e9fEsFqN5b4sAT9cbjVAvJEPvqxoqy74e5mG8K10xBQdg@mail.gmail.com> <aaiwYxQuoptMDbBk@redhat.com>
In-Reply-To: <aaiwYxQuoptMDbBk@redhat.com>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Wed, 4 Mar 2026 17:43:28 -0600
X-Gm-Features: AaiRm51XS5TgJvKLSFcENIB5eXoLABmGDu_OTsDM4l8lKFxkTWPNl6bFP6Nwjco
Message-ID: <CAEev2e80Rs1gO7-cUCRaJiYGbhMMmR8V=X=9hHQ4AFoLLiFpMA@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] clk: tenstorrent: Add Atlantis clock controller driver
To: Brian Masney <bmasney@redhat.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: D6A272091C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271304-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,tenstorrent.com:dkim,tenstorrent.com:email]
X-Rspamd-Action: no action

Hi Brian,

On Wed, Mar 4, 2026 at 4:21=E2=80=AFPM Brian Masney <bmasney@redhat.com> wr=
ote:
>
> Hi Anirudh,
>
> On Wed, Mar 04, 2026 at 11:53:38AM -0600, Anirudh Srinivasan wrote:
> > Sorry for the follow up, but wanted to run something by you.
> >
> > On Wed, Mar 4, 2026 at 10:40=E2=80=AFAM Anirudh Srinivasan <
> > asrinivasan@oss.tenstorrent.com> wrote:
> > >
> > > Hello Brian,
> > >
> > > On Tue, Mar 3, 2026 at 4:32=E2=80=AFPM Brian Masney <bmasney@redhat.c=
om> wrote:
> > > >
> > > > Hi Anirudh,
> > > >
> > > > Thanks for the patch. A few minor comments below with some minor
> > > > nitpicks, additional places to use FIELD_GET(), plus some suggestio=
ns
> > > > for additional regmap helpers to use.
> > > >
> >
> >
> > > > > +
> > > > > +static int atlantis_clk_pll_is_enabled(struct clk_hw *hw)
> > > > > +{
> > > > > +     struct atlantis_clk_pll *pll =3D hw_to_atlantis_pll(hw);
> > > > > +     u32 val, en_val, cg_val;
> > > > > +
> > > > > +     regmap_read(pll->common.regmap, pll->config.reg_offset, &va=
l);
> > > > > +     regmap_read(pll->common.regmap, pll->config.en_reg_offset,
> > &en_val);
> > > > > +     regmap_read(pll->common.regmap, pll->config.cg_reg_offset,
> > &cg_val);
> > > > > +
> > > > > +     /* Check if PLL is powered on, locked, not bypassed and Gat=
e
> > clk is enabled */
> > > > > +     return !!(en_val & PLL_CFG_EN_BIT) && !!(val &
> > PLL_CFG_LOCK_BIT) &&
> > > > > +            (!pll->config.cg_reg_enable || (cg_val &
> > pll->config.cg_reg_enable)) &&
> > > > > +            !(val & PLL_CFG_BYPASS_BIT);
> > > >
> > > > Could regmap_test_bits() make this a bit cleaner?
> > > >
> > > > > +}
> > > > > +
> > > > > +static int atlantis_clk_pll_enable(struct clk_hw *hw)
> > > > > +{
> > > > > +     struct atlantis_clk_pll *pll =3D hw_to_atlantis_pll(hw);
> > > > > +     u32 val, en_val, cg_val;
> > > > > +     int ret;
> > > > > +
> > > > > +     regmap_read(pll->common.regmap, pll->config.reg_offset, &va=
l);
> > > > > +     regmap_read(pll->common.regmap, pll->config.en_reg_offset,
> > &en_val);
> > > > > +     regmap_read(pll->common.regmap, pll->config.cg_reg_offset,
> > &cg_val);
> > > > > +
> > > > > +     /* Check if PLL is already enabled, locked, not bypassed an=
d
> > Gate clk is enabled */
> > > > > +     if ((en_val & PLL_CFG_EN_BIT) && (val & PLL_CFG_LOCK_BIT) &=
&
> > > > > +         (!pll->config.cg_reg_enable || (cg_val &
> > pll->config.cg_reg_enable)) &&
> > > > > +         !(val & PLL_CFG_BYPASS_BIT)) {
> > > >
> > > > Same about regmap_test_bits() here.
> > >
> > > These instances have it reading 3 different registers (unlike almost
> > > all the other examples that just read one) and testing bits across
> > > them. But I guess it should be possible to use test_bits here too. I
> > > will update them.
> >
> > This ends up becoming like this.
> >
> > static int atlantis_clk_pll_is_enabled(struct clk_hw *hw)
> >
> > {
> >
> >         struct atlantis_clk_pll *pll =3D hw_to_atlantis_pll(hw);
> >
> >
> >
> >
> >         /* Check if PLL is powered on, locked, not bypassed and Gate cl=
k is
> > enabled */
> >         return regmap_test_bits(pll->common.regmap, pll->config.reg_off=
set,
> > PLL_CFG_LOCK_BIT) &&
> >
> >                 regmap_test_bits(pll->common.regmap,
> > pll->config.en_reg_offset, PLL_CFG_EN_BIT) &&
> >
> >                 regmap_test_bits(pll->common.regmap,
> > pll->config.cg_reg_offset, pll->config.cg_reg_enable) &&
> >
> >                 !regmap_test_bits(pll->common.regmap,
> > pll->config.reg_offset, PLL_CFG_BYPASS_BIT);
> >
> > }
> >
> > We can't use a single call of regmap_test_bits to the
> > pll->config.reg_offset register cause we need to check if PLL_CFG_LOCK_=
BIT
> > is set and PLL_CFG_BYPASS_BIT is unset. We end up needing to make 2 rea=
ds
> > to that register.
> >
> > Any thoughts on whether I should still be using regmap_test_bits here?
>
> If it's not looking good in practice once you implement it, then just
> fall back to the older behavior. It was just a suggestion.

Understood.

>
> I haven't used this yet, however there are also the regmap_field_xxx()
> helpers that are also available. drivers/clk/mstar/clk-msc313-mpll.c
> uses these helpers. I don't know if it would help to simplify your code.

Doesn't look like it'll help simplify things to me, so I'll keep things as =
is.

>
> Brian
>

