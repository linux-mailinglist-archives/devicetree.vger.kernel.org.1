Return-Path: <devicetree+bounces-257838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHpYAn6lcGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:07:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBB854F10
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2BCBE8C368A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801AD480970;
	Wed, 21 Jan 2026 09:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DKd1FTCO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024B1480961
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768988930; cv=pass; b=AYyUUIB9K7OCthxLwQTKmI28IYhOXpyIOD3ha4EdUSnxQtoXEZQLg5yKo6uhd7Aeh6sEzfNnpfRQBcCTreXVvVr/brPGHzA/HHBGceTBU60KWnU6vqSGZs26IvAJQlcgmSUULyHZ8gPgjKvkLguGHMCvaMglyEsoFax2xHAllqI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768988930; c=relaxed/simple;
	bh=olsdjkI57G19OOQVq1JESSEQwePdLNpA5vX41DpQCG0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j5eAtliFtjoL+1qDvxvhG7cwoGevNRMU4inltUJTfEhJ/GBAZDX4PUJYU9DqxChfUxazYD1etaN23N5CJgN6DcW31qitaY95iREXfM8H/qnX2KC0nL4FKQvqvDWejHO37iNLQPMOfztiHqFTTfKXKiQoKC0lj6K7C/4FWnEbVE4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DKd1FTCO; arc=pass smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-121a0bcd364so8231920c88.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 01:48:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768988928; cv=none;
        d=google.com; s=arc-20240605;
        b=LH9eTm+RsWntt1HrvEmAGMstItKf/0MIgRp/JueedFtrEeftVYHVn1yTV+wC1Kd7sx
         NWxShoZkEef48dP9n/kH8inHp5FWDQZSvUSapqthTYu2+uV+4fciUtV0foVLfB1BTBv2
         P26nEEki5kxNIOF9qW3UyINybvWxRKzgZansAlY+JmKPs8JzwwL5uXZWXvP/rifLZ+pU
         8dWKDEmHRT4xHR03OeC87jM+6gQn5OaVvIwcXHUiTX7HdBl0RXNSycAHo73lTwfVpQ4I
         1jprjJ+sHrSqTdwKCWuuYDfR/Gir6cGLdwOb9zN1edvPP3k1LqU+wa8wU3j02Qug7Lia
         eGvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GSHGaIsWZ0YnveCWlqyCPygExtYlmBkZI3k+7sIdigs=;
        fh=rKABcHclXr1mGYK8S3GXKy/dvycRAiVGPdS3wavOQnw=;
        b=dWIlodAr+HnQl30/QxUt7TGLQAksrDB/PDzoDJnRRjoeCtbAM+SAFL1X2msbf95rzV
         8pzmioIsT2oVTUP9ryctyETRFYmg8TPmdP8GsOzG1PYLA4lnM2s1coevZ+b2NUzENVZr
         9AOdtj9I+VTfItiTvjFrvJecD6YMEvo5wJhe9fAcFoT5F1OpsM/aWyZ52CEG9R56iebP
         g7ZrMpSIzO9eWhQvl0TXiC7g02KOIcqnbniluGwUr//Q3rKOlAK7p51srQ9MQpz6Al3a
         B50XJvpuyDcAaRcDW9nPm0gmrl6Ur9J1z9iyiH+JUWybjolZYJqhRu/SqXKo1XwLlgxL
         /hiQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768988928; x=1769593728; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GSHGaIsWZ0YnveCWlqyCPygExtYlmBkZI3k+7sIdigs=;
        b=DKd1FTCOnbo8B6SfJEw/+Lo1EPuN2mDZeBD3bvlLH9a7pjdnu3UEPZxf66SrcAjVAJ
         dlT8qRo0f7nkR3IkiZHpf/ppoWIaCiugL7W2LEFCiRQTPMa6QQqDKw0zYcLl6DW/SUl4
         XSJ0uXtmXsUyuDO3J8RW3Xl6Cin7XLeQfR1az1rknNaYu8L8+odPs0RH56fxVXoHU+JG
         zCNzANxCRAycBuFbLt5iP728CDKe5QhjRr/FlrDhNoHPJAldSteevhB+atltVKy9r3H7
         2NsVZEslLh8a6iuhfKTMEF9VNeBZcO5RuGwYLL1TqPtDnuTDG3Kt3lof8kMsvvjzq+We
         SdTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768988928; x=1769593728;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GSHGaIsWZ0YnveCWlqyCPygExtYlmBkZI3k+7sIdigs=;
        b=BQI4VKSEe9wx/VlWXXmCr3/VqPJyfNm0wRpGWjRGu6dxgsol6ou6PRmKRS04WwU2R4
         DcTc1nxwfTsCNKz8U7a+xOr+1gK0IU4DMab/0Nn9h18/B5MGAoJ/aM3Li/MCKYeiK65R
         BUKEJPV+EMcNN6tGF02tFYQ05Vlvz84JUAux9npKrMhwF2OtKlru0oxemhw4kx8N3UWU
         qLFDw13V3jSCLMnyuKaKA6yvEFrZXpdwoGISWtDNYv48lzbiXkDChILDuRiQvV8O8WNE
         qNtH6QYyJc5854APK5t7t7/nrZsGS7Jyu/svIUaB94fZ03VJ3tkm47BV7NXAF3Zu9Rzo
         PD3A==
X-Forwarded-Encrypted: i=1; AJvYcCXxrRRBKg2sGswqKLxMGzB4ZNo/Do40lZYgZyBwdIbCN/N51sa1FJuqsjMX1UkztV9GhOogLiCpbFtS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6QDq2Bmo7V6nm6J4fSbVkUYZYxCDqI2uY2PdkqQ8kavkAHCS5
	ZawOVV+QZLshdj9KytTIwPUoAzsfu9RxDd5ku3Tidsb7mShHFeOC2FYnUka6cToRGUL/2uQp17H
	VXe/Y3tCnYtwzAXyG33gEdFozeqLGzLk=
X-Gm-Gg: AZuq6aJmrcQhyNP+wGhgOOMHP8+odbpsQIi7+rDj+VL9oQlmOSu+in0JNuXa6dcX9sj
	c6TZz/lirwQoHJP6h0tBKS/dtE42W67tr15jzUJc397qgQ8n8tah/Tnx2dfuNXLxwKb8xCmHOyM
	fLP+a7OKpCFuSnloJmEfuma5atGyuSW4o762HMCjuhg0PsM5I73EtVXerjm7sbnTmjOH+QUFadB
	7Ra9aRQ1SWaiuvASDGdnyzGuwo+NohP+QKmn72kt8EqkgAqEZ/nGS5lGWD8/yjtcvlJqFQRAgvS
	QydHQkFnA650W4XkPa465xI9hyQW1EmVG7IXyPdJHDgIKTX+yeTaa6jZ4KktF0YpN0Xgo4EkCf0
	wYU43TOou4A==
X-Received: by 2002:a05:7022:1601:b0:11e:3e9:3ea2 with SMTP id
 a92af1059eb24-1244a791beemr14456344c88.49.1768988927959; Wed, 21 Jan 2026
 01:48:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120102604.1989725-1-sherry.sun@nxp.com> <20260120102604.1989725-2-sherry.sun@nxp.com>
 <aW+ullwMtDq0RpNt@lizhi-Precision-Tower-5810> <VI0PR04MB121146CD3EDDE9C4771B83A939296A@VI0PR04MB12114.eurprd04.prod.outlook.com>
 <2394637b-f85b-47b7-ae30-f7ac2be49c59@kernel.org> <VI0PR04MB1211472ABF4E87D0323D5713A9296A@VI0PR04MB12114.eurprd04.prod.outlook.com>
In-Reply-To: <VI0PR04MB1211472ABF4E87D0323D5713A9296A@VI0PR04MB12114.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 21 Jan 2026 11:51:27 +0200
X-Gm-Features: AZwV_Qjqfx2U87Bv6XKadV2LQsP0YlPiUuwembG0uAps9TrGxLQ9lqFEOdimBZs
Message-ID: <CAEnQRZDCNXcAH7kBCPLJm2pPrJ9akXX+ZMW98H7MO8Hptjp3TA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add i.MX93W EVK board
To: Sherry Sun <sherry.sun@nxp.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Frank Li <frank.li@nxp.com>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	Daniel Baluta <daniel.baluta@nxp.com>, 
	"dario.binacchi@amarulasolutions.com" <dario.binacchi@amarulasolutions.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, 
	"Markus.Niebel@tq-group.com" <Markus.Niebel@tq-group.com>, 
	"matthias.schiffer@tq-group.com" <matthias.schiffer@tq-group.com>, "y.moog@phytec.de" <y.moog@phytec.de>, 
	"josua@solid-run.com" <josua@solid-run.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, 
	"primoz.fiser@norik.com" <primoz.fiser@norik.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257838-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,amarulasolutions.com,ew.tq-group.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6EBB854F10
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

<snip>

> > >>> +              - fsl,imx93w-evk            # i.MX93W EVK Board
> > >>
> > >> Is 93w 11x11 or 14x14? can you add suffix to keep align existing one.
> > >>
> > >
> > > Hi Frank,
> > >
> > > IMX93W-EVK is the official board name, it basically reuse the  i.MX93
> > > 11x11 EVK board, as described in the cover letter and dts patch. I
> > > prefer to still use this name (imx93w-evk) to keep align with the board
> > official name.
> > It's second case, previous was frdm, with the same argument. I don't care
> > what you prefer internally. You must align to upstream and all NXP boards are
> > called soc-foo. Not socfoo.
>
> Hi Krzysztof,
>
> The soc name is imx93w, the board is basically reuse the i.MX93 11x11 EVK,
> so do you suggest we name it fsl,imx93w-11x11-evk or fsl,imx93w-evk?

As per my understanding from Krzysztof comment this should be  fsl,imx93-w-evk.
Like soc-foo not socfoo.

