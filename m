Return-Path: <devicetree+bounces-264099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHTEJrsdimmtHAAAu9opvQ
	(envelope-from <devicetree+bounces-264099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:47:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE7A11331A
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:47:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EA42730095C2
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B69D2FDC27;
	Mon,  9 Feb 2026 17:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kXIeLWjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7D22F530A
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 17:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770659113; cv=none; b=JyeXYmRB5/Z69XWTrTYcu7ejdChEganMK11oyDKuqiajDDth3E1nWS8GTxjHbwN0DhDK/HRpotDXoTOZ/GY57F5PlFV3Ue/GNUW5lPaT0yoA4bjpNOWwE/aMI4xtoiKOYKCwm5De0utozlg5TPcHt97sB/e6YpJFkdrxOKWfjrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770659113; c=relaxed/simple;
	bh=cP/aES/NTJjVDeOefporUKftVqdwwO/cWLa+8v8dHgI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SIH8UKCAG8cyOPWpQQ2v1Dy2Ryq/4QrR/RHWXFu1Sq/AJOGUde3PCf6/ph40HPVgc1oMVX4ancC99HMlifMlnBhXUeSZlrneULPBHp0wIYw0aDvjS1sAUAIVcGMFEflx6f5iC1C0ZCcrB3IDrSdpn5R0E9iEYkvEvPVnHWxjP8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kXIeLWjc; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so40921125e9.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 09:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770659111; x=1771263911; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cP/aES/NTJjVDeOefporUKftVqdwwO/cWLa+8v8dHgI=;
        b=kXIeLWjcKXz1h8eOJfl+yKM/oFMrXsv7l3k0WBurPswbX4ODT/2UtqqGRYaM85shdt
         UV1DhyQgabv9B4appezvMYr4NkNuBlPRagy5mpaszpolWRr+s8zVop6zQ9+giNofhxb3
         Vrvx8XH7/zyD9nq8lxS+1WJ6YhXxVnQP5Pa4JF2NO2F9QnimamV4W/sjX9vqyCNMCeXh
         PlE6VpAUqnxdEU9cI9JplOizDDZFRSclK6aUCYqjegDWZqdQUJ4f2roUd9p+QIkMFOns
         qEvdCYUHtvNsfsXlL+24aIgH9KqBgHc1aViqrc2dIeJQfKsXQEWQAdcTQaCLV2Es55vD
         bLBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770659111; x=1771263911;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cP/aES/NTJjVDeOefporUKftVqdwwO/cWLa+8v8dHgI=;
        b=nTktTOiu5qYtMMz4Ypp61wlRiJhPjtSQV3FmQcwquc/cc2sLv06Lsm2zUqoTGQ/gyT
         h9chM7N3/R/fH3+fF5JX2vuM7F75FhweqnHdJBRGrZzUMLxzRQfsqxZcywOMvqJfUJYP
         RFj0zDcAhn8MC2/s3FE8U31oFcMV5Y1qOAtLGrOxH9DBg7y7b4VLzt9AfJEo0mida3MV
         Xxc2q794Pya4PGtnwtzQjf50F1rwQyTJT1g1IEh82jtYk5AbyQy3aqLz6hsIwoUqLNiZ
         GvUT4Ek8FH+TEZ/H4vLR5EWLnBM50Nq/k3v8q3lvtalUVUyT6tBxgoS8fa+mq+7nm4Jt
         CKkg==
X-Forwarded-Encrypted: i=1; AJvYcCXA4G7+ZUSOcJgBJuHWsUtAUqnTF2cVaug21kGjcbxt14M96F3Vf3y96aIrmt4/9IdMsmAwGwWHzcOM@vger.kernel.org
X-Gm-Message-State: AOJu0YyS8uLerzzDhlTsjzKamcRtD7uomJ9EUoE3UKTnlJCcQtOi1+EZ
	WUbupEZ/fr/aAK8WA84zrBPd7eJqZnXWgwWui7hI22qRcVK/ratEJl5y
X-Gm-Gg: AZuq6aKOiMLAje78wm1HJUJFD5upSX28lmosQ7iSyEyylpj62e/Otn/kX33IX/LN9ej
	08UOri4+mvgC19Ifb5/2z2MxbOefVGq5wCoHJbuFeYAUISiX+NBD2amwUTI9NC2UbFrujBqp36t
	+jjAab00bayG+qMM0qdLup6VgCScicTYmn8hRUbIGqnKjM3oTCfikFgZTWKLQZT+l5D9DHA5Z12
	wy80/EVh1xY10UyQwxVU2sLuA23ASoCSBnXFEXaqksEeput+R31dXKS/YTd8oDVn72dui2zITuX
	qfNCHNK7/xdrOdjamg0cUUaDIIDmn1vN9TfKm9RPGPHwROfZGqM8ElqdnwgR/L02b94JTaJzWyl
	s6JzGvFnpIFu8jN2aK5jQlpqaC+3GIVTDW+PYBi+be6MHfOflDs7foI8lvD4AdWVU61HM3DK+qF
	HNETMpcIDLnbF8Hw8W91zq3ADPxiWipg==
X-Received: by 2002:a05:600c:83c5:b0:477:7af8:c8ad with SMTP id 5b1f17b1804b1-483202264f6mr166657725e9.31.1770659111039;
        Mon, 09 Feb 2026 09:45:11 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5e1a5esm3867345e9.4.2026.02.09.09.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 09:45:10 -0800 (PST)
Message-ID: <10822a56a8d85d0b079a2a17fde403aca8d102c7.camel@gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: iio: adc: ad4080: add AD4880 support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Antoniu Miclaus
	 <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich	
 <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>, Andy Shevchenko	 <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan	 <olivier.moysan@foss.st.com>, Mark
 Brown <broonie@kernel.org>, 	linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Date: Mon, 09 Feb 2026 17:45:53 +0000
In-Reply-To: <79c21d77-32c0-401a-94e2-ba4349a7a616@kernel.org>
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
	 <290f35bcbd2f1ee68333ff65f89b54ec7fbb9c53.1770393792.git.antoniu.miclaus@analog.com>
	 <20260207-evasive-mastodon-of-apotheosis-e663a1@quoll>
	 <b3571244f058133a7a0f3b5ca6ef7dc377e3fac8.camel@gmail.com>
	 <be3808e2-ef17-4191-8c1c-5acb53114863@kernel.org>
	 <6b33ddfce874006bd10e223701802dec52fdddf9.camel@gmail.com>
	 <79c21d77-32c0-401a-94e2-ba4349a7a616@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264099-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4DE7A11331A
X-Rspamd-Action: no action

On Mon, 2026-02-09 at 18:13 +0100, Krzysztof Kozlowski wrote:
> On 09/02/2026 17:43, Nuno S=C3=A1 wrote:
> > On Sun, 2026-02-08 at 10:20 +0100, Krzysztof Kozlowski wrote:
> > > On 08/02/2026 10:16, Nuno S=C3=A1 wrote:
> > > > > > =C2=A0
> > > > > > =C2=A0=C2=A0 io-backends:
> > > > > > -=C2=A0=C2=A0=C2=A0 maxItems: 1
> > > > > > +=C2=A0=C2=A0=C2=A0 minItems: 1
> > > > > > +=C2=A0=C2=A0=C2=A0 maxItems: 2
> > > > >=20
> > > > > Instead list the items with minItems, so the order is defined.
> > > > >=20
> > > >=20
> > > > Also looks like we now need 'io-backend-names'.
> > >=20
> > > No. Just define the order here.
> > >=20
> >=20
> > Things are still not really defined on the code side (I know bindings d=
on't care about the
> > driver
> > side) but io-backend-names is a standard property and we might actually=
 end up using it so that
>=20
> And names do not change that at all. Actually they might make it worse,
> because they allow drivers to fetch item by name which people think
> means "order is flexible".

Fair and makes sense.

- Nuno S=C3=A1


