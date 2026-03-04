Return-Path: <devicetree+bounces-271167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LvILUNjqGmduAAAu9opvQ
	(envelope-from <devicetree+bounces-271167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:52:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCAB204A17
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 063653084D4A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D01835F174;
	Wed,  4 Mar 2026 16:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Og939dyn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1004033F59B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772642421; cv=pass; b=HX2tp9vFVaqN1deZJKLTLFcZiaEjn7H8lJz/WG5Km4mmfLtTCrVDjNSdiOwj1rzF6Teo89rWOK0iwpRulKExGNtYrXyeBXO0PD+J8Hx6qgQFThpSANI3iwn+4FQF1IiGDZDYLehWfEorfw6nD0iQGGSXZdOl/Rn8ZTG2xodtA2A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772642421; c=relaxed/simple;
	bh=uL43VjEctIxXlw6hfOKZx5Hdui6DUz3CbVGEqLWLTO8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MpIMGblYfKikDwR3tT2xjHtenBFlVbYXHQE0xmNaftQHkKykpSJ6IcjX3z5OQ/OHJTLj3/VNsREL50uLyCesOaexye34HhJwf0NjEqxZ5wvJdWhVZ2HAXDOo2AJmS3Dp32ieUdO1jn61NJNn5ogBcZQdhly4qqurFQCMUvejYu4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Og939dyn; arc=pass smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64ad79dfb7cso6753277d50.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:40:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772642417; cv=none;
        d=google.com; s=arc-20240605;
        b=kjrtQ8uCv6XRWHz+dHs66bG/YMtPCOn/bZ4KbpHD/7C2eL2Iqh8PK0bV8q4/m4aBKB
         YjpJFhfXVHbwQqbH+4MTE7MKn1ue8hNd2dhy+XR+kjoIamwxIYqMRG4zlZgcK8hkj5rR
         tdQRNn0JJBAZx/hc5mTnHgHN1FFrSSz7Nypn+NAat/wkXRiooS/gCerOVVEkrhdBDGZ9
         U0mgU5GiVRrFkwAeGxMjZW+gM3pcEPrgT1exHxcJ8Dh90f4rG6QUkTOsb1xrCNxWUkKe
         zLrAQLOHJ2zpDzKu3Gdxcj9opJwd8eURl0/6Ttj1ENb4T99+w5XSFLASknXM+bGznmyG
         eayQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7EIelfbqraTFDtG4K3GfpmwKk/JIi60v+RZZy/F1gPo=;
        fh=4LF0D/8NRSQ8BaxX0AiZ5eGuFlGNYhpYRIltzJe6uMw=;
        b=Nq+fxrh/P+EIjw14Suu2eimaagywABcuX+U1HJ1qoZhQI4hRkTk9hiwRLtjZ1uC/66
         3lDe4n+CQNWgR/XXdAgVa4wGYCmlWguwBRHmVk9QnLztf9DbFIeVbMy/aifipDcixwPo
         Q01YCzPsUHGfUk05WztGdRqbnJta+IAOhLxxECVYA+pXrNMpRL0sTbVR5PPs9O0YhPex
         K9oZCQym36ADEa1lGb+gVdWy5Jdr7LMz7v5sfVHtNXTQOdoDsIXcBciQ/HyRh/auB37S
         7gAX/SPoeoBJx3btglMDU4hgwH3OSplhk2R4RLpxhh6eh7zZMb+Liw8NVyMagHWe4rIA
         6zgw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1772642417; x=1773247217; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7EIelfbqraTFDtG4K3GfpmwKk/JIi60v+RZZy/F1gPo=;
        b=Og939dyndTym+FaM+ITjAD35MkqVTtCHD45K1NIefF0mcjilsWwM1n+EaiOC7nWHaW
         rG/l0ZNtIuQzk6Bvuke0jh4oMnBKrfixrJWv33UijaLkQVNU2hRSCr+pvCK0LUZECNef
         BXv2AbKrN+v6fTLpR6JYDnfxx8zzg+ian3ONdzDLv9/axDRFEIgMtss5vp2prpb/l554
         SFLPMPEUXkQTFQV4cbUTn9lS5OPcHigTDZf60Fqbj/iuVzzITh6GBeVJA8oErg8hactW
         PSeoBl31v0oTYg26uK82808NnY3NTp2bOT57vukUmbvcjUlb+58jJHWqsgNp8r8hwbVL
         qIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772642417; x=1773247217;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7EIelfbqraTFDtG4K3GfpmwKk/JIi60v+RZZy/F1gPo=;
        b=rnQeSzJYuAU3I2INc8mZUnPD/9qJie+H3RVDivzAkHKk3aRfOORXVNvNTasPhydXxU
         QHehDLUaWgVOrqdDTvMksOLdLka91OxZ55Q26sOlkGbgI3cF31LdlbvaV6SBot3xzTe6
         GTn97Y58tJ4Xez9ZqkgXVHKtU7dxACN6p7wR5mBODRheTbsdPbwdDcgOzQyfcQL1eZ+N
         76W6nYUQQ3e5kz12BZmTBF3xiVB3QoJnH8O6dXx6vW8imC2zoxfwfTE40ZM5no8RIYCW
         BwB+f8QeKvR3rgvklbU1TCOW3o8fCCmY9vSE/bjTWQPQ9GONJD4aTIAMwqBEVkR8fDc/
         bqWA==
X-Forwarded-Encrypted: i=1; AJvYcCXxZpLReSFAlqBmZD4jibebWD2wRjhoslPPFeUiLq1qrjDPPAy/C5ICCeW9VG55AjDfb30Y+/7qmQSi@vger.kernel.org
X-Gm-Message-State: AOJu0YzdKHtHxtaCxIOB0tDsYGMvSbwQvIXSAn5/USWyvOPjOEg2zX8u
	ify0E0pfsAAnOKZJ6r3HIJrHN5WMpFcodeRAeqfxhtRbuHkj7QmQt3sNMXLRaxYHQTiBdtNipIw
	w8mHwm86dRKvWZ9Gjl5bg1IaCFk+JTfHvKafYv2v9oA==
X-Gm-Gg: ATEYQzyqfK+/vYvlVAjd2QHKw8A+XWUVutRq8Vr64UZGB3jmaAbghLfYKZvkEB2eIUP
	JGaVt4nK/AsOQKat6bWUIVL3w7EsyZ00zsgKjb2IqXA1GECsGek7SFN/QPuy9J418f/h5NXgWAW
	+KqEfjBAcJpw/Gv9HUKHQyE8OH5vR/hYRSc+lyUB+a4XZdNx0PuCM+9mXCuNe0HLj4MGUd2qs1x
	eafAEPxc96J+wtkJ94GXpolsj9q4jsBpX6+o4mhmZXBRXcHcjmLKG2Ajhc5xZryQnuB5f4uSeJT
	3oA3fBkA85BV5p85i8leR17I9ZDLLOnok3tYGamOWUk131lo
X-Received: by 2002:a05:690e:1182:b0:64c:c616:c31e with SMTP id
 956f58d0204a3-64cf9b4a17amr1809437d50.31.1772642416711; Wed, 04 Mar 2026
 08:40:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-atlantis-clocks-v7-0-415c9dda086a@oss.tenstorrent.com>
 <20260303-atlantis-clocks-v7-3-415c9dda086a@oss.tenstorrent.com> <aadhd3LwZQPkT3A4@redhat.com>
In-Reply-To: <aadhd3LwZQPkT3A4@redhat.com>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Wed, 4 Mar 2026 10:40:06 -0600
X-Gm-Features: AaiRm50FY6wPHOB4TxURj9oFXJQofl38DtBDhZDZ6HR-WZ_J2vlxwwj0jTHvOUw
Message-ID: <CAEev2e_hxUBQjVdxisqBXHQRzspQq6dHT0kCZHUW-6dEyV4faQ@mail.gmail.com>
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
X-Rspamd-Queue-Id: BBCAB204A17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271167-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tenstorrent.com:dkim,tenstorrent.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hello Brian,

On Tue, Mar 3, 2026 at 4:32=E2=80=AFPM Brian Masney <bmasney@redhat.com> wr=
ote:
>
> Hi Anirudh,
>
> Thanks for the patch. A few minor comments below with some minor
> nitpicks, additional places to use FIELD_GET(), plus some suggestions
> for additional regmap helpers to use.
>
> On Tue, Mar 03, 2026 at 11:36:09AM -0600, Anirudh Srinivasan wrote:
> > Add driver for clock controller in Tenstorrent Atlantis SoC. This versi=
on
> > of the driver covers clocks from RCPU subsystem.
> >
> > 5 types of clocks generated by this controller: PLLs (PLLs
> > with bypass functionality and an additional Gate clk at output), Shared
> > Gates (Multiple Gate clks that share an enable bit), standard Muxes,
> > Dividers and Gates. All clocks are implemented using custom clk ops and
> > use the regmap interface associated with the syscon. All clocks are der=
ived
> > from a 24 Mhz oscillator.
> >
> > The reset controller is also setup as an auxiliary device of the clock
> > controller.
> >
> > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>

> > +
> > +static u8 atlantis_clk_mux_get_parent(struct clk_hw *hw)
> > +{
> > +     struct atlantis_clk_mux *mux =3D hw_to_atlantis_clk_mux(hw);
> > +     u32 val;
> > +
> > +     regmap_read(mux->common.regmap, mux->config.reg_offset, &val);
> > +     val >>=3D mux->config.shift;
> > +     val &=3D (BIT(mux->config.width) - 1);
> > +
> > +     return val;
>
> FIELD_GET() ?

<copying another snippet from below>

> > +static unsigned long atlantis_clk_divider_recalc_rate(struct clk_hw *h=
w,
> > +                                                   unsigned long paren=
t_rate)
> > +{
> > +     struct atlantis_clk_divider *divider =3D hw_to_atlantis_clk_divid=
er(hw);
> > +     u32 val;
> > +
> > +     regmap_read(divider->common.regmap, divider->config.reg_offset, &=
val);
> > +
> > +     val >>=3D divider->config.shift;
> > +     val &=3D ((1 << (divider->config.width)) - 1);
>
> FIELD_GET() ?

Most uses of FIELD_GET I see have the shift and width for the mask be
static compile time constants, which isn't the case here. I don't
think it makes sense to use it here. You could manually compute the
mask and pass that to FIELD_GET, but you end up with more lines of
code at that point

>
> > +}
> > +
> > +static int atlantis_clk_mux_set_parent(struct clk_hw *hw, u8 index)
> > +{
> > +     struct atlantis_clk_mux *mux =3D hw_to_atlantis_clk_mux(hw);
> > +     u32 val =3D index;
> > +
> > +     return regmap_update_bits(mux->common.regmap, mux->config.reg_off=
set,
> > +                               (BIT(mux->config.width) - 1)
> > +                                       << mux->config.shift,
>
> This doesn't make the line that much longer, and is nicer to read:
>
>     (BIT(mux->config.width) - 1) << mux->config.shift,

Ack

> > +static void atlantis_clk_gate_endisable(struct clk_hw *hw, int enable)
>
> Should this return an int? This looks like we should use this return
> value below in atlantis_clk_gate_enable().
>
> > +{
> > +     struct atlantis_clk_gate *gate =3D hw_to_atlantis_clk_gate(hw);
> > +     u32 val;
> > +
> > +     if (enable)
> > +             val =3D gate->config.enable;
> > +     else
> > +             val =3D ~(gate->config.enable);
> > +
> > +     regmap_update_bits(gate->common.regmap, gate->config.reg_offset,
> > +                        gate->config.enable, val);
>
> This chunk could be simplified to use regmap_set_bits() and
> regmap_clear_bits().
>
> > +}
> > +
> > +static int atlantis_clk_gate_enable(struct clk_hw *hw)
> > +{
> > +     atlantis_clk_gate_endisable(hw, 1);
> > +
> > +     return 0;
>
> Follow up from above. Any reason why the return value of
> regmap_update_bits() in atlantis_clk_gate_endisable() is discarded?
>
> I know it's not used below in the disable().

For some reason, clk_gate_enable returns an int (I guess we care about
errors here), while clk_gate_disable doesn't return anything (but we
don't here?). I've updated them (and clk_get_endisable) based on your
suggestions so that the return code from regmap_{set|clear}_bits is
passed through.

> > +
> > +static int atlantis_clk_pll_is_enabled(struct clk_hw *hw)
> > +{
> > +     struct atlantis_clk_pll *pll =3D hw_to_atlantis_pll(hw);
> > +     u32 val, en_val, cg_val;
> > +
> > +     regmap_read(pll->common.regmap, pll->config.reg_offset, &val);
> > +     regmap_read(pll->common.regmap, pll->config.en_reg_offset, &en_va=
l);
> > +     regmap_read(pll->common.regmap, pll->config.cg_reg_offset, &cg_va=
l);
> > +
> > +     /* Check if PLL is powered on, locked, not bypassed and Gate clk =
is enabled */
> > +     return !!(en_val & PLL_CFG_EN_BIT) && !!(val & PLL_CFG_LOCK_BIT) =
&&
> > +            (!pll->config.cg_reg_enable || (cg_val & pll->config.cg_re=
g_enable)) &&
> > +            !(val & PLL_CFG_BYPASS_BIT);
>
> Could regmap_test_bits() make this a bit cleaner?
>
> > +}
> > +
> > +static int atlantis_clk_pll_enable(struct clk_hw *hw)
> > +{
> > +     struct atlantis_clk_pll *pll =3D hw_to_atlantis_pll(hw);
> > +     u32 val, en_val, cg_val;
> > +     int ret;
> > +
> > +     regmap_read(pll->common.regmap, pll->config.reg_offset, &val);
> > +     regmap_read(pll->common.regmap, pll->config.en_reg_offset, &en_va=
l);
> > +     regmap_read(pll->common.regmap, pll->config.cg_reg_offset, &cg_va=
l);
> > +
> > +     /* Check if PLL is already enabled, locked, not bypassed and Gate=
 clk is enabled */
> > +     if ((en_val & PLL_CFG_EN_BIT) && (val & PLL_CFG_LOCK_BIT) &&
> > +         (!pll->config.cg_reg_enable || (cg_val & pll->config.cg_reg_e=
nable)) &&
> > +         !(val & PLL_CFG_BYPASS_BIT)) {
>
> Same about regmap_test_bits() here.

These instances have it reading 3 different registers (unlike almost
all the other examples that just read one) and testing bits across
them. But I guess it should be possible to use test_bits here too. I
will update them.

>
> > +             return 0;
> > +     }
> > +
> > +     /* Step 1: Set bypass mode first */
> > +     regmap_update_bits(pll->common.regmap, pll->config.reg_offset,
> > +                        PLL_CFG_BYPASS_BIT, PLL_CFG_BYPASS_BIT);
> > +
> > +     /* Step 2: Enable PLL (clear then set power bit) */
> > +     regmap_update_bits(pll->common.regmap, pll->config.en_reg_offset,
> > +                        PLL_CFG_EN_BIT, 0);
> > +
> > +     regmap_update_bits(pll->common.regmap, pll->config.en_reg_offset,
> > +                        PLL_CFG_EN_BIT, PLL_CFG_EN_BIT);
> > +
> > +     /* Step 3: Wait for PLL lock */
> > +     ret =3D regmap_read_poll_timeout(pll->common.regmap,
> > +                                    pll->config.reg_offset, val,
> > +                                    val & PLL_CFG_LOCK_BIT, 10,
> > +                                    PLL_BYPASS_WAIT_US);
>
> Should the last two parameters be
> PLL_BYPASS_WAIT_US, PLL_LOCK_TIMEOUT_US instead of
> 10, PLL_BYPASS_WAIT_US?

Yes, thanks for catching this.

> > +
> > +     for (i =3D 0; i < data->num; i++) {
> > +             struct clk_hw *hw =3D data->hws[i];
> > +             struct atlantis_clk_common *common =3D
> > +                     hw_to_atlantis_clk_common(hw);
> > +             common->regmap =3D regmap;
> > +
> > +             ret =3D devm_clk_hw_register(dev, hw);
> > +
>
> Remove newline
>
> > +             if (ret)
> > +                     return ret;
> > +
> > +             clk_data->hws[common->clkid] =3D hw;
> > +     }
> > +
> > +     clk_data->num =3D num_clks;
> > +
> > +     ret =3D devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, c=
lk_data);
> > +
> > +     return ret;
>
> These 3 lines can be simplified to return devm_..();

Done

Thanks for your comments. I've incorporated  the changes you suggested
on using regmap helpers. I left some comments on the use of FIELD_GET.
Let me know if you have any other suggestions. I'll send an updated
version by the end of this week.

>
> Brian
>

