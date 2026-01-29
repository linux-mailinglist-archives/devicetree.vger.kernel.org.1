Return-Path: <devicetree+bounces-260891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGbPNwNge2kdEQIAu9opvQ
	(envelope-from <devicetree+bounces-260891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:26:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B743B05FF
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:26:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 58D8030360BD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5154027A91D;
	Thu, 29 Jan 2026 13:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xop3VeCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB52F227EA8
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769693140; cv=pass; b=TPtpqy0pha6JKomQ7amXgHrUzOCfZYQrDqFac0DfTPE16TsdUPrWV3CAYTKXfl+EDAAcaRY3ops9nQFbOrf0kaANAy748aRzS5KePTj5NmQ/QlR7tUWjiZg8qEAwYsQfILL36mDkqDR2WEMMTrSkk9OsPComeXGCrtila0YB7MA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769693140; c=relaxed/simple;
	bh=irTKlxvC0B/7k9p5rSJ+13AhJAONwpB0xxiLTA9InSU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IB60f88pDesgjlYQQoRL8qn2gtbBK6+v//ITjz+6iFG1yGz2Mt7iQ0n9T6G5P3KGbF2vPJLw+v7O1ille08AnDJPy/y0UjfY+686JTxUoRevMRnmuTtq8O87lbOYtqC/jw1qAEfATRk0675i2Qw9MdRQJGsuvta2SoLUe5T8X7Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xop3VeCL; arc=pass smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-658b7d13f09so1835084a12.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:25:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693137; cv=none;
        d=google.com; s=arc-20240605;
        b=PnzLUwXk8RwfHAI3vuBxd1vV4+pVBJnQS+XY8y2CWg4h8T04MwYV14+NfLez0nSq/H
         2nGd0FS++NRuy8mhGK6Io1Hbh+skQL3P7kWQHOVIs/yDPHK9MI59Wo0g9ikWKd845iUK
         ATaYNiM6Zes8nwTjnXhVSYjMgEf3zc5pXny6C2nU8IMfX+dMCC3uwG+Q6b9ILev68h1B
         etGemixdp549olTVgdzMumb3BRmL8wApfG/kZPiZ5EHfgIDRA1rLmxv5YU2xRJaX8w2g
         4zFpHgdumpUSOltSyGxdDpQwUjbtDvM+p4xHfSqoKNAlizZIV6Y32srItXfQqBahJ/Fy
         D2Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iJI6azVkXkgIfaMxff/M3tZ2LPX3nIaJgPt7XOt8j40=;
        fh=+8exNcjQ7Myz2T/hYL1zfglfZ9gT7NXo1XxeHnA8LDA=;
        b=iClvpGPMroZKBY6oX+DZ7G8cUjwQoarquS/8gwA+63h506h0R3gIsrZHswcgHCV5UQ
         ymW865tG4aTgKbKQ8pmHX40Z8TjfRqGTp7VPmnFHCDmIFdfEBM2qky/1djJfbZfdUfBy
         4epYmte0ZgTFNbqiVIUqb4m294S61iVdNMfu/Tgpu2F76ho1cP/+6nmkLL3VU1rxtVIM
         3NWdy9kASstFJBo1JMyE8m6nv0NOG9m1yRngOK3x4mMBeS+ZQEr7XBv3b99Q7ycGZQrZ
         rUojB12qzr6ULE6oLStTGLpgkGcvF2K9+Qf+YGgiL9IUr8FhQBoSQJrh2YkW7LV596ZC
         liLw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693137; x=1770297937; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iJI6azVkXkgIfaMxff/M3tZ2LPX3nIaJgPt7XOt8j40=;
        b=Xop3VeCLd2o6DWj9pkBAcEQlDlnDEyP2QB6YknCNr8iPKDH3cGQF4VsI+S/k/BGSKT
         25FkiPUIkW4p3wXjQKcjIri65GgbIqMHlbAP0/jO0CZejuI6tqJheTPfEm8FXCcv7M6G
         oVap6TiFdLK+5QcwDy+tAWPtRARr96eVigcq7jxReZTD8aW+kZeWGCFHTTFhKfsrLSyD
         vQTttgG6mPuyWET3nFJ9ygukv3JZcroDqfXVRswptjp/BphsIS3MV760mr5dKU8piLSB
         7m8baPlba5i27fq19ukn+IFqJpP/B7M7zznwgnibRGQwoOnU8Z6ENpfkIxn3qSiGQV5P
         OEXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693137; x=1770297937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJI6azVkXkgIfaMxff/M3tZ2LPX3nIaJgPt7XOt8j40=;
        b=VXAbIGm8Z3+ODYHknLr1syZYuHxK2bQnaY9oy5e0K3vG2XKdFc6w/Ule31g72Uc/vT
         oqSnKttQSA8rhCXaQroQDjFtdcCpqQKEJD7eiK/Wf/1R3eYLWjJGA5vNvVxNIourGMEN
         OoS59wXtwqHXg1vcD5Ss9Kf/dhBepXFTQwXm5iJqF6hTrzfZPS1vYDB2qzFwNe+D+4qt
         7q2iWSzvYGY2f0EjrXvplsup96XKsUj58IrIEPWELZ7XQx+IF+oQufpV3laPFEW5g7Ib
         FF4p4Pmy2AM87xeS11EplJeAe+mz8kV+R6TUq1+EOdOsoY17VGEp8ExatqvCfoZBT9J6
         evwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKp6rF+U6Ovc4OH/pJ+Nbz417M4TcAsnrjIPSDN9UYyUBF9C/eIqiNmXfD76usYY9ixs5xcumFnBMp@vger.kernel.org
X-Gm-Message-State: AOJu0YzX90D2tbfgTlhhM5lXuGu9pyx/ilsUX1ca9kmXrQ+mm/Oz9B1c
	u1xuszZ7oyz7eiq85WpLSAO5zUXTlWxfg1mTcyAQhQCO2U6STLHYKl4cIYo3pK3kfWNPdgw1jei
	SewvI/XeN/S/npNu8cvBzo6eLtp4RfHRVw2K+5S5hNw==
X-Gm-Gg: AZuq6aJ5OyLqMehIEFGRe5oPfT1quFZvGNK/UkAN4W2m0Ulu/OKXaNS/J0mafJffcJG
	eexfQWynb/0HPQ7HMhAS/0K3pRMC1U0BfHqNihiOjbMahlbgEtXmTLPgSHHmOZ9Ep6ri4/jNYQS
	soP8M6S4NDg8NqFlUsGicpdOGQl6TLsqu1Zk6Dv6aulFmEnkBftihdnd989cG/bR/ULnOCmpks+
	JVwbtgcx5BYfVlFOIyH8vqpBoXjEN6sXJqausq1bO0LaWknPFyUFwSz77uuJ79Me5YIeFmilLkz
	V1XIlGorpUiSbybZBjntkrPR
X-Received: by 2002:a05:6402:2792:b0:64d:3b22:a5b9 with SMTP id
 4fb4d7f45d1cf-658a6064db3mr4654871a12.9.1769693137209; Thu, 29 Jan 2026
 05:25:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-5-vincent.guittot@linaro.org> <20260129120757.GA358439@kernel.org>
In-Reply-To: <20260129120757.GA358439@kernel.org>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:25:25 +0100
X-Gm-Features: AZwV_Qhzp9iT1f899kqFHSBaYxaRjfwJBMJyrZuFRXvntdrURTUvSVnGWlmRJag
Message-ID: <CAKfTPtArVxXnAw0F4s03QH3wTPvJ3RRBGf2JQ2burh3v=rS-Tg@mail.gmail.com>
Subject: Re: [PATCH 4/4] MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
To: Simon Horman <horms@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260891-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,infradead.org:email,nxp.com:email]
X-Rspamd-Queue-Id: 8B743B05FF
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 13:08, Simon Horman <horms@kernel.org> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:59AM +0100, Vincent Guittot wrote:
> > Add a new entry for S32G Serdes driver.
> >
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  MAINTAINERS | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 765ad2daa218..888674a308a5 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3202,6 +3202,15 @@ S:     Maintained
> >  F:   Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> >  F:   drivers/net/ethernet/stmicro/stmmac/dwmac-s32.c
> >
> > +ARM/NXP S32G SERDES DRIVER
> > +M:   Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > +R:   NXP S32 Linux Team <s32@nxp.com>
> > +L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:   Maintained
> > +F:   Documentation/devicetree/bindings/pci/nxp,s32g-serdes.yaml
>
> This patchset adds the following file, not the one above:
>
> Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml

yes, that's a typo.

>                                   ^^^
>
> > +F:   drivers/phy/freescale/phy-nxp-s32g-*
> > +F:   include/linux/pcs/pcs-nxp-xpcs.h
> > +
> >  ARM/Orion SoC/Technologic Systems TS-78xx platform support
> >  M:   Alexander Clouter <alex@digriz.org.uk>
> >  L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > --
> > 2.43.0
> >

