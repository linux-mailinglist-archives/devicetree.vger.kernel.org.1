Return-Path: <devicetree+bounces-267437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LueAVVbnGlHEwQAu9opvQ
	(envelope-from <devicetree+bounces-267437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:51:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FC4177559
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C86C304134F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C90242D60;
	Mon, 23 Feb 2026 13:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mn6By/yF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D8F22D4C3
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854288; cv=pass; b=W+cq/jF3GL4C7pSLnnjE078hJjJTVgcHZ2ojgTcUzQlQLoE95KMGqy7eQyL7PhLf+5JNLlXf1hKTpWEk0GPXdKUvg6cnUI6BEKiogl2qCOZnP7izDrH5KWiM+cfpomRQ4QsgtzjEsEMZHZ3yOrR2WVC812CcmL8yQQES/QAU+c0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854288; c=relaxed/simple;
	bh=sR1JFSsAon01OtvSAsV6/RGrd106y8rHwXlJpuS8MH0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P/bJ2L1cLq6gw8gpLBr70iwS81vsy9TRM6m6U2ByHkZa/Ui9yHh/QYg6qjH0xbIXpp9UmElmNLjWej1cSuYBNgX71oM+6eMs0SyV27L7OKRrbJY5LMzi/q9bUUMAhZnmy11J3izh9nAQWYHHhOI6q5DkUhCD36D7uygGSGbH2QY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mn6By/yF; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so4120403e87.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:44:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771854285; cv=none;
        d=google.com; s=arc-20240605;
        b=KPYr7gFA2EHwZUFrOBT8YP8kxmdxqqbWixT90PH3KSCRXaTnKxf9cxGnebWI0N7loG
         751B3Wmqjbhk/Mzhu4l47EXWqH16xh0kBG+vdcmhzsjvvVkjJElI7wyNcVE66N9wAa6u
         znm+nbEFN/o8V+pNRfhzlZ7DrCXfkFcc3vDKaY8L7w+y+rCZYjlnfxKvehWrC1WlMv/I
         j4UvqBHxU0VMac4rXB0cmK49XMHUd1+0TCGeQRRK9PmUIJbSM+8E6zikwV34UzPFTqt0
         sU8q4zla3L1fsAvko/OFOYUJ3R5GMsqYpIJeRJpwJJY63r18Lhuyzm9PUP0cHEfstMhK
         dxoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Fhetx7uwtFJRgRkUexEhKn5KeWaKODjWdb8CIbVt7HA=;
        fh=FksOYN/9tlMXiBmjHeZ5y94IsAC2tY/UOX8ZUwFeqe8=;
        b=Fb7iaZhqOwe/e8Cnfm/PoLMaKkCE1fxZCnal/dXHeRIWlHhKstqtC8OiVxYLKEflU+
         1FLOZ4/ASE6sJn2Ki3Ue1IlOTQIFYCYhSs7aahtPeA+F3oDGI3/M8ehhGoEADoDbwPRf
         9ulY1/cz/dCOhrs2+/x7PHqN8fkjuEWV3DfNG5WSe+3IAqnZsIWs92aTh+H0C2YrtKr1
         CaIF4EGJO0q5/TiA1gk2sUzMMI3V2qf7MPKYueWWtX+3VaViHwbfjnB8EyA2xUfLBvC0
         zauJ9Wivqrl82HoD+dc852nObeVHFVoFNVlNQ8Md7s+XeDfo2AKLwjgF8Hw6qLKUS3n4
         fYEw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771854285; x=1772459085; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Fhetx7uwtFJRgRkUexEhKn5KeWaKODjWdb8CIbVt7HA=;
        b=Mn6By/yFk66UzcpBhl82x6Y1icrzzwKx9TUqEq3avBMnSHH/WPGJyCzaC3X+5e5n2K
         7bDTmcVGAZib/lFAPpQS4zMhkeXu1HrYYx1cv3XLXC2baXFEJz0XfoQAvyESmb3L+kov
         m8dOcBWKh0Nd9Dk0z+OBiGcWj3EDk5E/1l49nKJqzfTmM0RsHFeSxMB2oY8IyO5gUP3i
         9tFtVAJdHs0MvdjgqSktkuXY9C5WkZah8ldRFmKDb+zeQaNPVhQ1wVnpYdTyKVqJFi0z
         k0hdwI1KdLLql/L472glJMnAZ1CMcfcaaKq/2ndxHwGkyetsnWfyB5b+Zi5aQxebeWze
         YszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854285; x=1772459085;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fhetx7uwtFJRgRkUexEhKn5KeWaKODjWdb8CIbVt7HA=;
        b=GP9uvxHjLja2KbWsyDsUibEG9kFylDNKcSOIaRAN+LDdFx9mE3my9FcH0bY1BWoox7
         NEwngvarmjgHdunavTT0KJjlu6OL1ss/Ox1IWfgYpCS3Id/4eiSvUf7QWV2OtoPftC/U
         +AC/ZrU6tLPeZo9i4BDUat2MNCjsKcxbTXr/YkPGz4RPp88G5X/6SjykXosiSV8b9RF2
         JivTiJXNevMtpwyLtP8pi9kwngaNYEwzZVFH4ji4pdq3TZB18eqH0hiY9L+sMLGHacLa
         +DcHc6wfXe4E4SkpoY8eEVUnNHL9AuMF8WCXhUIRK4v9dmTTAv8eHcXQH/FNjN6kG/O8
         gZdg==
X-Forwarded-Encrypted: i=1; AJvYcCXk2LM1VbGggjCyKpDpOw/1iGB/8qm4hWn4eFnMPJ6bQibe8/4TxBLX2cfmLhSgxBaG/7JXn1AIvGoE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3sQnXns0QSNca76HcK0GLJ2FnbszaKz05SXx6Ufi5wnuBRrMY
	IO+4k6gZGj2UX2F8AkxDq6lVy5izs+y99Z9XvS+oLHFWLx2JBciV4hVPjyVPKh77ItBIC1i/74m
	TviOpYu0oUtlMdK2SsJsGSIQ6GQMU5GwFiYilDyGEAA==
X-Gm-Gg: AZuq6aIZMtZ0pc1jht7DyNEcM+FjM/ctGYIQ/XG/s/0JQaqhDySz+jUz9TYWl3MYsCL
	xMSaJcLlzHIox5o7bijMj1wG+Zl19EJQha/5AWMYRiSJ2MlVMzLxMRCuvjvxhbS4WeDjRP3YMPQ
	AofqbYnZSyRKmuyKRHuF/cDldMxtqTc6nrRUoPk/memRsm8UfO5+RiJl9EaozcLe8XfKuKoO+rA
	XgUvDXJcfAgYGmHtQRkbxrU6dighWOp/Nx0nDHS+nBBDCgseTkUkjmfnQTxq9WeiuSFUSUJc4iV
	ZnseHOTv
X-Received: by 2002:a05:6512:318f:b0:59e:63b7:585e with SMTP id
 2adb3069b0e04-5a0ed99f1fcmr2755602e87.36.1771854284344; Mon, 23 Feb 2026
 05:44:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com> <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com> <20260216092914.kmvl7aep7dantcsd@skbuf>
 <20260216162406.0121dd91@kemnade.info> <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
In-Reply-To: <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Feb 2026 14:44:07 +0100
X-Gm-Features: AaiRm53IT_Xzv6_ZjZsPbjTua3wzc0_3fH4fOJcUrcKMz5LLxYEEUcMyBCE8pyI
Message-ID: <CAPDyKFrtTaJ5fqqbGrE_K6SAdTZYUfp-BycGjtWs4SabwBysKA@mail.gmail.com>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
To: Josua Mayer <josua@solid-run.com>
Cc: Andreas Kemnade <andreas@kemnade.info>, Vladimir Oltean <olteanv@gmail.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267437-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kemnade.info,gmail.com,linux-m68k.org,pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,baylibre.com,atomide.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,solid-run.com:email]
X-Rspamd-Queue-Id: 45FC4177559
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 at 13:44, Josua Mayer <josua@solid-run.com> wrote:
>
> Am 16.02.26 um 16:24 schrieb Andreas Kemnade:
> > On Mon, 16 Feb 2026 11:29:14 +0200
> > Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> >> Hi Josua,
> >>
> >> On Mon, Feb 16, 2026 at 08:19:27AM +0000, Josua Mayer wrote:
> >>>>> In the future, when you have a series with cross-tree dependencies,
> >>>>> please try to think of it as individual mini-series for each tree's
> >>>>> 'next' branch, and specify clearly that you need stable tags (to be
> >>>>> pulled into other trees).
> >>> I don't really understand how I could split my series up to avoid this
> >>> issue.
> >>>
> >>> Due to the fact that one (and now two) drivers implemented local
> >>> mux helpers, to undo that an atomic change must be made tree-wide.
> >>>
> >>> Meanwhile it must be avoided that while the mux core helpers are being
> >>> tested / reviewed, that any tree adds another driver-local mux helper
> >>> like appears to have happened here.
> >>>
> >>> Note that my patch-set did go to linux-phy@lists.infradead.org list, too.
> >>>
> >>> The second challenge for this series was that mux framework is being
> >>> enabled only by drivers Kconfig "select" - and not possible by menuconfig.
> >>> This is e.g. responsible for being unable to test =m build with arm64
> >>> defconfig - and lead to it only being detected through kernel robot
> >>> x86_64 allmodconfig.
> >> To avoid this, a combination of developer due diligence + maintainer due
> >> diligence is probably required.
> >>
> >> From linux-phy perspective, there will be some automated build testing
> >> (which did not exist at the time of your submission). This would have
> >> caught the 'hidden' devm_mux_state_get_optional() call present only in
> >> linux-phy/next, when testing patch 2/7.
> Excellent!
> >>
> >> But, to work, the build automation needs to be able to apply the entire
> >> patch set on linux-phy/next. So expect some pushback if it doesn't
> >> (hence the recommendation to send a mini-series to linux-phy first, and
> >> request a stable tag).
> It would help immensely if there was a way to get the patches renaming
> driver-local conflicting helper-functions very early, before anything else.
>
> Would this sort of patch be acceptable in linux-next now, so it can make
> it into v7.0-rc1?
>
> If not then that mini-patchset would be the first one I shall submit after
> v7.0-rc1 is released.
>
> Then I can treat the actual implementation of the devm_mux_* helpers
> as a second standalone patch-set.
>
> And finally patching all drivers with local helpers to use the new global ones
> can be patch-set number 3.
>
> Any opinions on this?
>
> > I do not think that is at all the duty of the patch submitter. I think as
> > long as every dependencies and side effects are documented, it is IMHO up to the
> > maintainers to decide how it can be merged best. They know best whether there
> > is any danger of conflicts in their working tree because that is an area
> > where people are working on. Especially this patchset is around for months.
> >
> >  In MFD where it is
> > more common practice to have cross-subsystem patchsets, once acks from
> > everyone are there, MFD Maintainer creates an immutable branch with a tag.
> > The maintainers of the affected subsystems pull it in.
> This seems like an option, if I can get the patch-set (or a partial one) ready early in the cycle.

I agree with this approach as it should provide less churns for all of
us. Especially since the changes to the consumer drivers here are few
and trivial.

I am willing to help with hosting the immutable branch (unless someone
else wants of course). Once all acks have been received for the
series, I can set it up. Then other subsystem maintainers can pull it
in if there is a need to avoid conflicts/build-errors.

Kind regards
Uffe

