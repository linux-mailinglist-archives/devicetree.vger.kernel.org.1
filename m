Return-Path: <devicetree+bounces-308806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HSw3L5fNJ2oU2gIAu9opvQ
	(envelope-from <devicetree+bounces-308806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:23:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E09F065DBB1
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:23:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="IX7/i9jG";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308806-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308806-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 17FA33079926
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 08:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908553EDAA6;
	Tue,  9 Jun 2026 08:12:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D87E3ED3CB
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 08:12:03 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780992724; cv=pass; b=pg7miRnA24AXyvLO9MRlT/4jXHEtj3MLPKkTsnd79+f53uzqtG4wCqI4Zwc2tEBLcEeuhe5OyWQAKRzjn/aMUGZ5ytqm+ZhE4hFYg6ubxMNUxBzULJnbYzcQNNF2OME92vSB0/bmAZZclaxn87QRJ8V+PQLZutIPme4j9VKujgY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780992724; c=relaxed/simple;
	bh=AhsPNfeCJ9V0MojTT9laWo25XjBvnNJFVFJi677eOj8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qWvkdojBbHDmMbo353ocYEkpLMDv57rBS4z6dfpXCTjzM0cfUXJZIa6HXBEg8K9Yc6rtQUNeIzvOJmi0FHVetNa7lm1/8fwOcVwNAqtZBdJtVg61g39sHL8Ti8fGQa0upzLT64z7PBhbaFNKrtSxROptqCa/UzCsX9+RP3zx7nU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IX7/i9jG; arc=pass smtp.client-ip=209.85.215.170
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c858014845aso2115689a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 01:12:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780992723; cv=none;
        d=google.com; s=arc-20240605;
        b=X6H9r1VxDCjs7b6Dkmu1aILSS3FsbqG/2hUBniPaGgpbZuJPFjSFQXApMlptREknfo
         hWJZorjoLj2S9+7++MtOJIKA5uwcxJk55l6pxilH8mcDXpiDVdHfwOlUIRn3PRrgsLxB
         XhU+082nA7OA664vXQkzDQvmXkMQoVfayWsfBhYSG6QIJ30OLxIzryxe1tD8/hlyLeea
         FOLm+hJjhW4mTKK8AfmgrnkzCdI23kW6P7W6V10QpX0FEGPPK0WWXTDUciQbLV4eXrU+
         0iNgyn4VROIXMzo4pka4aQWIJ1At6tzSCXZdz2M5uwW1/Im9WBDP/5JdWb0TriXd04We
         idog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IPFHCJ5rJwgEVLo96ifIMbncAZkuI8Dm8EuKwFx00SI=;
        fh=soql9kNiIT1SJBHyU0lCNQHa018hXH+RGFi8XLriIo8=;
        b=eWObnjvQcJ4Kj9oxQU+qTWYtn9RfUaW1urOWY5kGDWQ5iAcQDRmTzUxT5BbyDRjsuR
         jtcID9TjX3yMDeZjLZ9c9ucjr4nffVuP0lmn6IFLzB6bljWMJE2SXZJouSbtnrVhPXIp
         RELdR5tELx1tKBkma1YsZ92S+43+l1qwKRTqJKrLtfz8swWhuhQx6g25xX0CucZZGY2V
         evKsmSx/EbHX1awBONWp/Q9rHi+mVQ+Oe0uwdoHuhlH/FdQwhL7u+3cWQAajoirOYy41
         Xr23DJMt855RFjRqo9um4UN0ps908VoZ3cZjbC1AFpM5XzUvcvgN3s6mVGBXRQTTKf15
         JUaQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780992723; x=1781597523; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IPFHCJ5rJwgEVLo96ifIMbncAZkuI8Dm8EuKwFx00SI=;
        b=IX7/i9jGv8/XlnB1SaApdOLNbvz1pfm+yIU5tcZq74wbZEOVu83VvygBB2xeJEY9Ll
         n8K+BpHEDCPVRTRRNZUc6seOwNUt6SYpBKjJVKLLuiGDnb0AUSnrrpTaICEMmSBer6hK
         ZnrQTbdjbJpZEum+VBDokQWQfyo0uUdEU5C4SuDdVPAwHgRlI5hsvwKa8q4im85vukDV
         WGNqmYsFbTqCJAewONRsUZZQ/68MS7y+zIjHWDUKQXiV/l7fAhMBeJN/2eVQWShPbCXa
         GGV9GMDFDyge1MU6w2cMDNYQ+V8+5jpIum18+VHkAVSJ1ksE1BKUpCO3wwJjgFsBTwdd
         0e2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780992723; x=1781597523;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPFHCJ5rJwgEVLo96ifIMbncAZkuI8Dm8EuKwFx00SI=;
        b=WsfCQxxICJc11xkOPa+rZBFY+laTv8nAJyZB3FRaCoZubBHJZSKBVjGiCev6qGhF5X
         2AGhIGAPrG4nCfiMcMN7yOPieLUBdoSOcZ/rbQFS0EuyG0sNTH6GTP4yU7l9o7PXKprL
         WtYZrcQa8CmXQOpoTEwhqfrO69XysWua1fcBJEIDFTmo5ltL90bwiNu1ZYi8aXQ36RUW
         35b0gFHmOeNYzF/D0Zemyq1KfQsJZ+fBE0ku+yQy3YA49L3V1mvtky2lDxCe100s4d0+
         XbT6FEAE+12iU3yJ2KaKpXUwzSOnzCaU8xC4M6wMq4Y8VHu2bn0xkFkzoZe1j5TAXgG+
         H6vQ==
X-Forwarded-Encrypted: i=1; AFNElJ8TmrplhFWJD/jPXrCiqAakX6+nteZ+HWAdA5nnlURbiEuQRE7ZJya9D++THXplngSVQOX9+3JwF+2I@vger.kernel.org
X-Gm-Message-State: AOJu0YycrZOC9byK8ZmDgCrIBeoACcaL+FXI9h7QjjOb4t6mc+UGwhvC
	iELEeLAZkbaldD3Y+9OXzX0c3uaTwutZVpWE7helXjEczNwf7EjJz9wuTD4XOj43m0ZjdHpRZkS
	ezFHQd+XYIKgLqejCZNGGqsoO3VT/Q2Y=
X-Gm-Gg: Acq92OGNZxvHGLBffwtG2KSwSoP9gw3miq0/7qrPCPi9Y/MB4ZarQsupMf+zMBKzz8v
	aQ9OxGsAcq9A6WTTHJEpUnLBZDTHY/Y06cTQ0fd2I0IZfRJ5wxatDE6NCY4CM+CQ4596ZGiI15v
	48w1hF8aWHMX56RtOxBYWXv0cyrbDjbbLb0TiDy8GXFNsau1zhPLfvQ3TeToCAvfDtRjCh0enYt
	4bJRc6ene0mITra/LPtHfmTMtCLj+Pz4tSFv6zMqHCp+4GUl698a0WdVxNxd5Kuylu0z1jlutgl
	uM5BSROjph1GArgEPcOPfwSrRW7w4tlxbmT/jt7xSnO2cXLifJf+n3tb+4U=
X-Received: by 2002:a05:6a21:a8d:b0:3a2:c9a1:2c26 with SMTP id
 adf61e73a8af0-3b4d39f348bmr17130674637.7.1780992722861; Tue, 09 Jun 2026
 01:12:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609013107.5995-1-phucduc.bui@gmail.com> <20260609013107.5995-2-phucduc.bui@gmail.com>
 <20260609-nimble-guillemot-of-karma-bef5f1@quoll>
In-Reply-To: <20260609-nimble-guillemot-of-karma-bef5f1@quoll>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Tue, 9 Jun 2026 15:11:51 +0700
X-Gm-Features: AVVi8CeUKRnlxvhT2K6w3TvQNEVCC1-hs1J00Q_rHp-PFlql8hF1iJ-ZDEJDD2g
Message-ID: <CAABR9nF6uhEyCo-6cekhKwfm3zkqjXCpj2O8C8Xk=2Frw0arRg@mail.gmail.com>
Subject: Re: [PATCH v5 01/11] ASoC: dt-bindings: renesas,fsi: add support
 multiple clocks
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308806-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:geert@glider.be,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,glider.be,gmail.com,perex.cz,suse.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E09F065DBB1

Hi Krzysztof,

Thank you for your reviews.

> > +      properties:
> > +        clock-names:
> > +          minItems: 2
> > +          uniqueItems: true
>
> You don't need this, it's by default.
>

Could you clarify which part you are referring to?
Are you referring to the "uniqueItems: true" property or another
constraint in this block?


> > +          items:
> > +            - const: fck
> > +            - const: spu
> > +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> > +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> > +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> > +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> > +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> > +            - enum: [icka, ickb, diva, divb, xcka, xckb]
>
> Are all optional in the board design? I cannot find answers to that in
> commit msg, but it is important - you need to explain WHY you are doing
> this and WHY such different way.
>

For r8a7740, "fck" and "spu" are required. The SPU clock must be enabled
to access the FSI registers because the FSI block is located behind the
SPU bus.
The remaining clocks (icka/b, diva/b and xcka/b) are not always required.
Their presence depends on the clock topology used by each FSI port.
In the previous discussion I described the supported clock configurations:
https://lore.kernel.org/all/CAABR9nEhOTz1-0NmCMTbz=-+782Pto0yovSQhBXrXqhLwMg80Q@mail.gmail.com/
The hardware supports several valid configurations, for example:
 - FSIA/FSIB slave: only fck and spu are needed.
 - FSI master using an internal clock: ickx and divx are used.
 - FSI master using an external clock: ickx and xckx are used.

Therefore, while fck and spu are mandatory on r8a7740, the other clocks
depend on the selected master/slave configuration and clock source, so
not all of them are expected to be present in every DT.

Best regards,
Phuc

