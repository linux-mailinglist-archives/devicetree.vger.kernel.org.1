Return-Path: <devicetree+bounces-264295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIMBO4v9imlyPAAAu9opvQ
	(envelope-from <devicetree+bounces-264295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:42:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBC211903E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:42:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E232303B5FD
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26190341AD7;
	Tue, 10 Feb 2026 09:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MZwFvb4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7029A341AB6
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716546; cv=pass; b=h668JVnNtIzVO4iekD6y35nTf74g+ta3qO86NOWo7bWXlHsg5XR6Uz4UIjuWyBZoJxAnbgDg3rojDzbcrzSe2AcowBAGkFe4utVJhcnh2xLay311yZBkaxjYMNn1dPIqhtoQ6rmA/znYMyhy4yuRUL9UNLjyiPRMGk5YHXDVvyc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716546; c=relaxed/simple;
	bh=oOjICXJg7ZpifL4ZDE4Mvkawuzo2HaLZVgTlYB0pvHs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rP4Uh7cGs63XcJdMhmTaa2JFGLcjfIPhiOGf+iYHL+CFCjAKbEVZ7BwzLJ6jcyaNH4hi43w0DFl8ALpgks/2eXwtf3WuhvlniONlCzC3YOyu1vgty57yLLGNnobGe5IHLpVzkBEm/XHQKAc+D7F7kGUlCEJlXnBFk7R7hdSdtL0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MZwFvb4z; arc=pass smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-436317c80f7so1804995f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:42:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770716543; cv=none;
        d=google.com; s=arc-20240605;
        b=ghQvEgSvyoE1s7mCoWHC+xhDvI92CdjJQcFAGKKhR18CVI9LQHDEN0KjNBisVBeaJF
         3tG6aGrWLYu4orRSGALpIKnIBXMXRC0DxKEfbogoA1tgK2Ai5+9lHL/QX34FBdPLsoUW
         hVH1kFgibiaJTewsCJhg3Hhsu9/aMidXaUMcM7vYOIBsWcf2H5iUWtrpw+popg4kzhRr
         YYQO4jRQWyTAigU8NfvbrfUxztZ+8rueF19Bq3Lc08ql6ET/11bnbi6bWKSXQT84/cA7
         ByrL6fiy0qJKwWk+ULpi0FwqK9nB6oAMpRZgJmkIGxBog7q9u0CoPc+CB1auZKPL13RR
         /OiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ze1c4tMfcpX491+6mPiJXsJlYkup8lMt/xtrcGpqjuI=;
        fh=JR4zEEobrd8x4CihdlwThDj3+4mhmk9aGfHQmeW1usE=;
        b=R1Sta9q692amT8lhxXN9IHnB8ggsGEfeeLq9qRPTkgC7mNiS8NN4ItX9s4boOSL06H
         aA8V9cbhHqLCYLXOWIokk2v1MHyUOyIpUgk7NoJkiEC1SwpmIKofMhnSHNVCJ/4jA+Q0
         ws3ZJWdI5PltuVsv+nIjN78HThhVuAbogMAibrFNmnU2jPkLphicye6+X30hqHhghz4o
         FOiryH40I7zIUNr2owcdJE4ZlcRK4409Mvgaleq1V061UYSP7CGA2E7ktBf0fpTcIyf0
         zOZywG4BCh02vF7u4pWf8T/81fzBB4i13dhUcV5+brB0/L0y617ef3xjKq6vvuGLZ2k3
         pTvw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770716543; x=1771321343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ze1c4tMfcpX491+6mPiJXsJlYkup8lMt/xtrcGpqjuI=;
        b=MZwFvb4zWxnfekjl+a8fsLfYtrscT0ebMy+djosDK9zMn1NLXNNuNkeJQ+YZDUZQSh
         tcLsWoxPOHXM5b/VVpDIbtS9/eMQysU7DEuHttnRlEIfhi72G94wQcIDA7I3fwtUs6rj
         nteoasqj8yMgzfcoesAhg58ZN4/uNGulmZC/d67iSwERAp7Mt+Jkxa2JWURr4iEkYGFy
         oWBK9pnh/KpCD9NvHu7tDrSq5ISoB9FqNFpd0X2E75oWHDjPuoLdvUe22FRymBGnvtBr
         cQthSGiuHgb/OH0zZ5bRLvrG3MUTNNcN1zPQOw4y/lRDOibeI+JZU3YRdmS7oBTm9slr
         OHQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770716543; x=1771321343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ze1c4tMfcpX491+6mPiJXsJlYkup8lMt/xtrcGpqjuI=;
        b=OKHOUzcwpML9z7IL1pAacoH1IrQXVraKXKhkFC3OdNnvnWxRXZpjB/krRgG7bxFSe9
         bYXSZYT/uNmRGPt0qgKLOocne8SOJIhYH5kxxnJPslzQ6ruKyMmiTXgn9sh0dHobuCww
         fWpxLwTBDDM8Fovn7beKE096VHTfgfTM9ciNz6l9iQRzxfOHFY5NKHJ2JKVue7/GnZLK
         1Ob8gaIt+zrYlbcO62+gzTO85uGU/Z9fKWZfsEoG3o0XHpAG2Y1x7MQ2gIP7CGY6SgtC
         9qfoEkvQ36WQITCkliwZzFvGJ40aR6Zshxw12IsTqfU6TrwqgBhwD8aDvf8P0X24ruL1
         eqZw==
X-Forwarded-Encrypted: i=1; AJvYcCXT5LJ1yi2LrD4fy39u/wV3K/J8C3+zeywYEWt7Xby1Af+2g8NKvtOkfh8KsT8eVyZD8GDlZHj0hUX3@vger.kernel.org
X-Gm-Message-State: AOJu0YwkD3442jE0tZassn8DEkYKMNgOGzxU96GUOr7vfQy0pPfh4hIx
	AbnDbntT4T/grqCgAK8z1QRzDXkCHv407+LDN1limVLah7xqzOsSgYWLcSYIecVgeIi4pov4BKR
	HSLobFtqCFouZuRvTJzww11zZe8hZJuc=
X-Gm-Gg: AZuq6aKnJuRayVqGZZNdwYhgroR4dA3BcECdObv4jg+703Tnm1tewDmOUsD9j01KJy5
	VY9TASR/6RBeU7YUedREbItHQF9Ax99vy7Fgnp9rKKXglc8DliOLQLTIgsogNKqU8eIbXIdtpYf
	MY/PIfPueGSWITnlwHagEau3hA3OHwjEiqxlrA9c00raPReotfNAd8i7jyNhvzbquzdlre0XtlP
	w3M8j1bXFpaC7kgP/OQnTEEvOqHUFTJ+X00Y1IPgzPctZjTc5IynnrbAaGg066LaR1UFSYB7qEx
	bJurhjyB
X-Received: by 2002:a05:6000:3111:b0:435:db9b:5881 with SMTP id
 ffacd0b85a97d-4377a1f2a30mr2055191f8f.25.1770716542552; Tue, 10 Feb 2026
 01:42:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209104407.116426-1-clamor95@gmail.com> <20260209104407.116426-2-clamor95@gmail.com>
 <20260210-hidden-swinging-galago-fdcfa3@quoll>
In-Reply-To: <20260210-hidden-swinging-galago-fdcfa3@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Feb 2026 11:42:11 +0200
X-Gm-Features: AZwV_Qhn-R0xjZTEGY6wy39uV3chiY2pUKepim55rxxDwQzXQ4tGrjUlByAc-JY
Message-ID: <CAPVz0n3Pzvzt+LmOH_peCtpx8DP2-GiRv--6-ppQUaa51AXRFw@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: misc: document ASUS Transformers EC DockRAM
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sebastian Reichel <sre@kernel.org>, =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264295-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6BBC211903E
X-Rspamd-Action: no action

=D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 11:25 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, Feb 09, 2026 at 12:43:59PM +0200, Svyatoslav Ryhel wrote:
> > Documenting an I2C device used in conjunction with the EC on ASUS
> > Transformers. The main function of DockRAM (the name used by downstream
> > ASUS sources) is to provide power-related functions, such as battery an=
d
> > charger communication. The device is exposed as an individual entity
> > because multiple embedded controllers can utilize the same DockRAM
> > instance.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../bindings/misc/asus,dockram.yaml           | 40 +++++++++++++++++++
> >  1 file changed, 40 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/misc/asus,dockram=
.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/misc/asus,dockram.yaml b=
/Documentation/devicetree/bindings/misc/asus,dockram.yaml
> > new file mode 100644
> > index 000000000000..0cfde619ba01
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/misc/asus,dockram.yaml
>
> Not a misc device. Find appropriate place, e.g. for EC or docking or
> laptop devices or power-related.
>

Why not misc? be more specific pls where you want it to be.

> > @@ -0,0 +1,40 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/misc/asus,dockram.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Asus Transformer EC DockRAM
> > +
> > +maintainers:
> > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > +
> > +description:
> > +  Dedicated i2c device used to provide power related functions of the
> > +  embedded controller used in ASUS Transformer device family.
> > +
> > +properties:
> > +  compatible:
> > +    const: asus,dockram
>
> Way too generic compatible. You are not documenting here all ASUS
> laptops/devices dockram. For example this implies dockram is also on
> ASUS Vivobook... or on any other asus device.
>

Asus were not so generous to provide more specific data, they call
this device dockram in their sources.

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
>
> Device looks weirdly empty. Probably you have it only to instantiate I2C
> handle, so what you really wanted is i2c-parent. This is not a real
> device.
>

WDYM? it is a real physical i2c device located on a i2c bus and probed
by i2c driver just fine. Maybe you will deny RTC being a real device
like it was done for example for max77663 which now causes a massive
issues since it can occupy different i2c addresses?

> Best regards,
> Krzysztof
>

