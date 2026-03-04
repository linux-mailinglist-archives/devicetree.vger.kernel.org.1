Return-Path: <devicetree+bounces-271285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCgSEyOxqGkzwgAAu9opvQ
	(envelope-from <devicetree+bounces-271285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 23:24:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 519192087F6
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 23:24:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 581A6304C69A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 22:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 792F938642E;
	Wed,  4 Mar 2026 22:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UKtK+4Jo";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Mtt9Oa9W"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214873806BD
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 22:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772662894; cv=none; b=SFovudJdRlbkZ35KPlKfmxnB0CefECaCZBIrCx4sYKR4m6slEGwtFk/97D8DoAThPk0tbD152JW7CcD5aVTukpchQgLkWiTihlzObdtxLE+0fUfCgdcXk0JhXNc9yuRdRcxaglXhe3X28eZEhXLWmPZNfyf9ox21i2aWxXEwUXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772662894; c=relaxed/simple;
	bh=ZnLFRJR9SgstqYT5jTSnkzolgMIZQT16P4bRyPRE5n4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R9EeHhm62Yt+Hzn1hUkplsM9GW8N7MCrMc8gzuaJDYtVIxr9B8IT+OC25JAw6kelpPO9fOS6DEp7kvs3kJYme1TCnqVppsO3y4PSqbHmm7rqWVG4AqyBQKlOEwsfVu35Wkk9OWMN8nJn/PnPmTuOanyXzD/+TVatQM4Gwp8fCvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UKtK+4Jo; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Mtt9Oa9W; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772662892;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5IdMjdarsoIwJ3LjCSMsVj14yfAGd7U/YMfplj+8xe4=;
	b=UKtK+4JoS01AHYroCMplOawvl7soYdW3isgl8yMpftG/MbAAHmagKy3x3L967Tkpw71Woe
	z8qSnlmMC1/PwW0EkW5AeWRzK6+2vaylonLS7F86qiH8nVHjCT5IFokFHJ2Li8eEv13Asd
	iRvoWpq+eED/EHFCHymuBu7Nq7n3NVQ=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-eMZO3UyjMO2Cn-WBS8GTdw-1; Wed, 04 Mar 2026 17:21:29 -0500
X-MC-Unique: eMZO3UyjMO2Cn-WBS8GTdw-1
X-Mimecast-MFC-AGG-ID: eMZO3UyjMO2Cn-WBS8GTdw_1772662888
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3b6b37d8so4156492385a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 14:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772662888; x=1773267688; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5IdMjdarsoIwJ3LjCSMsVj14yfAGd7U/YMfplj+8xe4=;
        b=Mtt9Oa9WFD9SJyxZHJt5YU28HPP68SCbO9xTv93FX7Srswa1xmIQjLk3+DnG9sw3mI
         +PhNSjsy3a33Tf9YmFz4quCTUJWLHEI/4+4KCngKKMIUoe+TOZyCpU2ewuF+T2WH0Ak6
         OEsyLtiUgFgFEgKFR1S/nnIIujJE81MLcPfIoOFDr5tUg7DLANMF1JAKs+mIV1NH7dKI
         KfGzWcrtGkifosT7Vb4wZh6fSLdLOu6xDmegUzwbQq+blcYq5U/M/B7un3dCu9IJ96wz
         yRquo2iqMJCvgL6QkFg0j5sOkrQX5t4dQTUn9oayWe9c5150YQ5owE078LF1UA4T0Avj
         bWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772662888; x=1773267688;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5IdMjdarsoIwJ3LjCSMsVj14yfAGd7U/YMfplj+8xe4=;
        b=KZlrxLGeH9hqvub55t52n0o2Mr7JKzbvY7ZEKZwnmlCnByPPNrztvaGK87oNw8rg+d
         +FzFNI/3/mDD3nQT4gO+YHJi0zl0VwyWBdA6e+Z7TnN6naK3Kh6fMnmtDu1c+dHyGCjk
         /1JmYuDVD9waCk5dRmlakxj3jLRbVQ1YnGyENZpuQp2sEDgBuEqzAuVQ6D0heiPDNu9C
         PTMOsrm4xRZXqazrh9P00Ob27w7MAaIWvUUSKmx4l5KvGlSEqwEDLigUIl59Fn6ZyZon
         wkg7lkQJ+MQaz8g1SGBOOo3x6EL8Lgl5GCvvXtZDMidCKf4YfIGz/WKcPVFZWI3oHGZY
         aCGg==
X-Forwarded-Encrypted: i=1; AJvYcCUvxCcBC7uY5w1fZVPHo9lgbH6U4rtbcEW+Sq6EGSnSlGxcXCl8RTgzsET4kdSnI3tvnZGoCytmLDXu@vger.kernel.org
X-Gm-Message-State: AOJu0YxNS1PxmJi3GOR9zahe00Y6vsOyZ8kydJThM3Vs1vWP+SjlWRx6
	ygo7dE4zeU84nzTrMlfkU2m4OTHRZ2pRZH6NBA1ceDZTK0eqM9eiX9j3ntQiNaoFcHrXiy0i9WF
	/b+tWhdAaDPLvHKKntkXSv95jPxqFUDAmZjeC9vyH7KRMd0KfmXMx7DkjMKNQsKg=
X-Gm-Gg: ATEYQzzwmdzV225uxvsXl1LsFOsYkISeXTRCVW3CbKESloty3f3QAfw/NQxxtpL/rnA
	nGOMznGEvGjs+OIzZI4/lkWrvQA+35Ux/b11YKzTsRceuKKSGuUNz+S3xohhDKr2bh8T6d28ggK
	BWDunQA3/AqQUukfjvjsts32thLrjpkSaGzJ2Lh5mtEt7NtuNqdFsBL5vW6HR66HbXlV28Fc0ix
	Fe6sweqAoI+5XJogEsx1r55VlM8r49XL6sBDt7Sxv0LCEXFFZwcqqj84wuA1vuF1e55pNhBPhWu
	CIWZtWJPv2U8zbcxzjbNiShcNvdotSLw7H4qdRA4/4Gez5+Y2d19LKwtoj4C0Q7G5khJj3b0e9O
	3E/iDS0bHkT1KubytmzU/
X-Received: by 2002:a05:620a:472a:b0:8cb:4d46:7a4b with SMTP id af79cd13be357-8cd5afcce10mr459514385a.81.1772662888523;
        Wed, 04 Mar 2026 14:21:28 -0800 (PST)
X-Received: by 2002:a05:620a:472a:b0:8cb:4d46:7a4b with SMTP id af79cd13be357-8cd5afcce10mr459511385a.81.1772662887989;
        Wed, 04 Mar 2026 14:21:27 -0800 (PST)
Received: from redhat.com ([2600:382:7705:162f:3db4:e16a:e5d8:352e])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf66b9d9sm1740582885a.12.2026.03.04.14.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 14:21:27 -0800 (PST)
Date: Wed, 4 Mar 2026 17:21:23 -0500
From: Brian Masney <bmasney@redhat.com>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	joel@jms.id.au, fustini@kernel.org, mpe@kernel.org,
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com,
	agross@kernel.org, agross@oss.tenstorrent.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v7 3/3] clk: tenstorrent: Add Atlantis clock controller
 driver
Message-ID: <aaiwYxQuoptMDbBk@redhat.com>
References: <20260303-atlantis-clocks-v7-0-415c9dda086a@oss.tenstorrent.com>
 <20260303-atlantis-clocks-v7-3-415c9dda086a@oss.tenstorrent.com>
 <aadhd3LwZQPkT3A4@redhat.com>
 <CAEev2e_hxUBQjVdxisqBXHQRzspQq6dHT0kCZHUW-6dEyV4faQ@mail.gmail.com>
 <CAEev2e9fEsFqN5b4sAT9cbjVAvJEPvqxoqy74e5mG8K10xBQdg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEev2e9fEsFqN5b4sAT9cbjVAvJEPvqxoqy74e5mG8K10xBQdg@mail.gmail.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Queue-Id: 519192087F6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271285-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Anirudh,

On Wed, Mar 04, 2026 at 11:53:38AM -0600, Anirudh Srinivasan wrote:
> Sorry for the follow up, but wanted to run something by you.
> 
> On Wed, Mar 4, 2026 at 10:40 AM Anirudh Srinivasan <
> asrinivasan@oss.tenstorrent.com> wrote:
> >
> > Hello Brian,
> >
> > On Tue, Mar 3, 2026 at 4:32 PM Brian Masney <bmasney@redhat.com> wrote:
> > >
> > > Hi Anirudh,
> > >
> > > Thanks for the patch. A few minor comments below with some minor
> > > nitpicks, additional places to use FIELD_GET(), plus some suggestions
> > > for additional regmap helpers to use.
> > >
> 
> 
> > > > +
> > > > +static int atlantis_clk_pll_is_enabled(struct clk_hw *hw)
> > > > +{
> > > > +     struct atlantis_clk_pll *pll = hw_to_atlantis_pll(hw);
> > > > +     u32 val, en_val, cg_val;
> > > > +
> > > > +     regmap_read(pll->common.regmap, pll->config.reg_offset, &val);
> > > > +     regmap_read(pll->common.regmap, pll->config.en_reg_offset,
> &en_val);
> > > > +     regmap_read(pll->common.regmap, pll->config.cg_reg_offset,
> &cg_val);
> > > > +
> > > > +     /* Check if PLL is powered on, locked, not bypassed and Gate
> clk is enabled */
> > > > +     return !!(en_val & PLL_CFG_EN_BIT) && !!(val &
> PLL_CFG_LOCK_BIT) &&
> > > > +            (!pll->config.cg_reg_enable || (cg_val &
> pll->config.cg_reg_enable)) &&
> > > > +            !(val & PLL_CFG_BYPASS_BIT);
> > >
> > > Could regmap_test_bits() make this a bit cleaner?
> > >
> > > > +}
> > > > +
> > > > +static int atlantis_clk_pll_enable(struct clk_hw *hw)
> > > > +{
> > > > +     struct atlantis_clk_pll *pll = hw_to_atlantis_pll(hw);
> > > > +     u32 val, en_val, cg_val;
> > > > +     int ret;
> > > > +
> > > > +     regmap_read(pll->common.regmap, pll->config.reg_offset, &val);
> > > > +     regmap_read(pll->common.regmap, pll->config.en_reg_offset,
> &en_val);
> > > > +     regmap_read(pll->common.regmap, pll->config.cg_reg_offset,
> &cg_val);
> > > > +
> > > > +     /* Check if PLL is already enabled, locked, not bypassed and
> Gate clk is enabled */
> > > > +     if ((en_val & PLL_CFG_EN_BIT) && (val & PLL_CFG_LOCK_BIT) &&
> > > > +         (!pll->config.cg_reg_enable || (cg_val &
> pll->config.cg_reg_enable)) &&
> > > > +         !(val & PLL_CFG_BYPASS_BIT)) {
> > >
> > > Same about regmap_test_bits() here.
> >
> > These instances have it reading 3 different registers (unlike almost
> > all the other examples that just read one) and testing bits across
> > them. But I guess it should be possible to use test_bits here too. I
> > will update them.
> 
> This ends up becoming like this.
> 
> static int atlantis_clk_pll_is_enabled(struct clk_hw *hw)
> 
> {
> 
>         struct atlantis_clk_pll *pll = hw_to_atlantis_pll(hw);
> 
> 
> 
> 
>         /* Check if PLL is powered on, locked, not bypassed and Gate clk is
> enabled */
>         return regmap_test_bits(pll->common.regmap, pll->config.reg_offset,
> PLL_CFG_LOCK_BIT) &&
> 
>                 regmap_test_bits(pll->common.regmap,
> pll->config.en_reg_offset, PLL_CFG_EN_BIT) &&
> 
>                 regmap_test_bits(pll->common.regmap,
> pll->config.cg_reg_offset, pll->config.cg_reg_enable) &&
> 
>                 !regmap_test_bits(pll->common.regmap,
> pll->config.reg_offset, PLL_CFG_BYPASS_BIT);
> 
> }
> 
> We can't use a single call of regmap_test_bits to the
> pll->config.reg_offset register cause we need to check if PLL_CFG_LOCK_BIT
> is set and PLL_CFG_BYPASS_BIT is unset. We end up needing to make 2 reads
> to that register.
> 
> Any thoughts on whether I should still be using regmap_test_bits here?

If it's not looking good in practice once you implement it, then just
fall back to the older behavior. It was just a suggestion.

I haven't used this yet, however there are also the regmap_field_xxx()
helpers that are also available. drivers/clk/mstar/clk-msc313-mpll.c
uses these helpers. I don't know if it would help to simplify your code.

Brian


