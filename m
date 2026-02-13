Return-Path: <devicetree+bounces-265264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMl4L4XRjmnJFAEAu9opvQ
	(envelope-from <devicetree+bounces-265264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:23:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 765D9133800
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F79F306F955
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F4D20E31C;
	Fri, 13 Feb 2026 07:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="myyQa0+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095412D47F4
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770967415; cv=pass; b=cUN4U0WsR6kZr96oKFCMtGKOygb1J78ZzrLM6LJ2ya7jae9fvaGHdFALED8Q0OUKu8wqMwkoENOKJ/sPsyR3lQMTEGxEtdESka7ct4VjEthtfzD3CWrDivsg1wI1mLFSv2QwS4r3WqH82BlXSxCun2neETRihHZJrNWmyIHFmvk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770967415; c=relaxed/simple;
	bh=MmyEyVaUK0nInRHofYHUBo4aN8wM9mt3v+WrEEIMH9E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D6RBpzYcj6y08e0Ta1qY2Sy+ta+4O3Cp+kUleS9UMkEd++RtkcNecAfMLPnnrXqXsWAHps1DfbBMpBaCSE8Kas2H097Jaa8q5tISSLRN/JPkuWQ0zrjKtwMis0ylBNMXUZP59tHgTMqgTTdc8V9f2wcoRC67huBP4cY1QVNlTpA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=myyQa0+0; arc=pass smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4837634de51so202255e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 23:23:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770967410; cv=none;
        d=google.com; s=arc-20240605;
        b=U3nzA5rOq5ScJsiQLYPPr8pgMJ97j+vEbH7s2PEiYxIXTeawyWA9BnilEpmXVuaOWD
         CQ4NvoswvrR81830Ash6KU345/l04XXmx+2bfbxCiVLPW5DtyOomRS4pNCAKYDpxYhgW
         VY/aUgKrrYUenv+qO7hDe3zK51xKKBMdlEMmyjYow5g1tskVaOYBMSLsWlkkwsLripVm
         /13vMzjIrPgb9HCQaPoQGSDVTD7xdMi8xRQospHg+5NqJa71pq/2Rg8t3LWshxZVYJEs
         ZYJ3tgJZO6T5VsERD2UtkdinunbwaEoDw7VsoVrQXEni54t7v/4VKxSPgmKx/OIg8Y4i
         0wOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VBWGvgMwD89B2tOYl/7fTry4UgR0kuVd41YN846Sbf0=;
        fh=eglbYWzJui5aEkMjW1TTXiDE4LQhjUji4U7qH/wdUBE=;
        b=ArgwckymhDu+RNobWTLbE82Z5GSPNX3KZQvlBgze3vcZppvMrvxC/L+75R0wjZJX8I
         U4DPYiwDi98xLYh/t2pR1oA2viWMJqiK84t8fkl7O+TJNYozFkfhxQ/ezNVJjgnH5OgJ
         MaIHYWN1jbIW+BAmMS92atXykbijS+IOVJBse0Z8PIaeXXJ/Kb6Ik4gCE4kqLPfCfR9C
         6WEO/4Lndapcigtj6ZERS72Qp2+fttzwhEk5P7w0A5GdvB3vu+BW5niRefcMW7h/ONbQ
         /YQnzVEb1xwMCIiNgiCgV3jnp0/HrtQ5JjfKMn7a000JSQJUNOiYdoAHmpCk7mR8B7sr
         VefA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770967410; x=1771572210; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VBWGvgMwD89B2tOYl/7fTry4UgR0kuVd41YN846Sbf0=;
        b=myyQa0+0cdZ+6BCDWQ9XRyfq36ArqkIuxg3T0B0e0k3KTN7Fxgoza3JurNqt2hIZ73
         Z8KwemYutt8a8dmsYEa2cW5TON/PySdU4wGeWtt1jiX+oI8PKGY0C21vpyywSg04XAnM
         cAZkTinhBo7tp7ijknJZGHWS7qK4EW+9jQ0UykLEXXpPrW5XASJwMPNVDtBJm5zFeuCw
         kg83RWB/vx57hGCKzvOnJgXA/b2Xa2tWpYcQqB5NPd5nYEUK9CZ5Ff4uyOJdO5K2Oth6
         pVkInJIEja5yeUvaUK+jxWU4C5HbQdUhXNdKsMBGitLgviYxiCARAeZew8gezjZNy5vC
         iYCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770967410; x=1771572210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VBWGvgMwD89B2tOYl/7fTry4UgR0kuVd41YN846Sbf0=;
        b=NF/Vj+7vdGSEbmW1djiWcrcFOXI5JZ8Cj9CRcQVPDLtbioVwAyyLzrXjQSLn+06pIS
         tKxkZWHmP7sthm+EIUfWaO+HWBxrWmDVJcpK4tvIINsWd8YSntbE5wxcQm1zKeqrkvNJ
         PiQOR2Sf8rdBD8UkmS/OhsOo34SizFtlCOy4W9rlb9YKq2zVLG74jA7yefk8XY0qNhWl
         oNnQSSRovf3+4UT7gp5Utw33fe9H1J5mYF3YBDveAO28SSv/smd80p/SFpRS8yuSR7eM
         aB0CZbCFQ+Ragcm/g1Xs2sv6RCF9zJSDyWa9h80LS5iAfbl0qy9YUDl1vC9Tyq2nvXxk
         68BA==
X-Forwarded-Encrypted: i=1; AJvYcCXWtZ6uGp2jrRhUr2A10apQCtuyi7mQ72dkiQGFJPNZHUre2PKjVgeoLwxOcN85XYFtfDF32i9rJqm5@vger.kernel.org
X-Gm-Message-State: AOJu0YyYGFsyPdVOQd6gXqGyZOfwsIQwTlqKcfmVWepbtMd7w3jk/Sgg
	MxQBzEMBX7USMxUDiEvC1FlTItXk4IwfoaFub9/37vPiJrUmFGcCt7md0GTEakhEuXAAextBqTE
	KJeEqBnNkv9V97zBezO3OFJPcoxNNRIQ=
X-Gm-Gg: AZuq6aJdU7pyIOyTIJaOZAZIGDmrEe0AT8Ynmz8ugLheyGuxXgb5N4zkNgnCIYjULCs
	gohdjDfv8OdnK4LKWPCZ7xazORWnnYM+3ShLFIBd/aJ/D5FZ0iElyReGAq8zPi8iNFIv7US2+Z6
	9pNEYqUmoj+pd/AW9LNf2zu0YIpI2KU6+xycSN2EjXd//HgdJXz8+VAU30mzkYtoDyLn02WgKp5
	hny0UghCrtv2pIV8orU49H9lr24eqL9dOLXq6UdG5o50hTH25Lz7HXvECInHmlAiGZkOlHhLXFU
	OAtplPbV
X-Received: by 2002:a05:600c:314b:b0:482:eec4:772 with SMTP id
 5b1f17b1804b1-483710962c5mr18176375e9.32.1770967409817; Thu, 12 Feb 2026
 23:23:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206172845.145407-1-clamor95@gmail.com> <20260206172845.145407-9-clamor95@gmail.com>
 <20260211212016.GA3910589-robh@kernel.org> <E5BC797C-4362-4C75-BCAC-7C32A51C4725@gmail.com>
 <CAL_JsqLcFAP7oP0KzLp7DfcCpz0DjsjoAW3PcfnWu2nc-dG1CQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLcFAP7oP0KzLp7DfcCpz0DjsjoAW3PcfnWu2nc-dG1CQ@mail.gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Fri, 13 Feb 2026 09:23:17 +0200
X-Gm-Features: AZwV_QgDJIV6_g_jAAOQ5PvTpgIhruzFFHa64dzcRToVwkVZEzE9kWpIOm1s5Xg
Message-ID: <CAPVz0n3oSpaW4w74Wxv9G_RUhCYX-WsnVexoAbp1tU6rkJ4nNw@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] dt-bindings: mfd: motorola-cpcap: convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265264-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 765D9133800
X-Rspamd-Action: no action

=D1=87=D1=82, 12 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 22:19 Rob =
Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Wed, Feb 11, 2026 at 11:30=E2=80=AFPM Svyatoslav Ryhel <clamor95@gmail=
.com> wrote:
> >
> >
> >
> > 11 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80. 23:20:16 G=
MT+02:00, Rob Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> > >On Fri, Feb 06, 2026 at 07:28:42PM +0200, Svyatoslav Ryhel wrote:
> > >> Convert devicetree bindings for the Motorola CPCAP MFD from TXT to Y=
AML.
> > >>
> > >> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > >> ---
> > >>  .../bindings/mfd/motorola,cpcap.yaml          | 411 +++++++++++++++=
+++
> > >>  .../bindings/mfd/motorola-cpcap.txt           |  78 ----
> > >>  2 files changed, 411 insertions(+), 78 deletions(-)
> > >>  create mode 100644 Documentation/devicetree/bindings/mfd/motorola,c=
pcap.yaml
> > >>  delete mode 100644 Documentation/devicetree/bindings/mfd/motorola-c=
pcap.txt
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/mfd/motorola,cpcap.ya=
ml b/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
> > >> new file mode 100644
> > >> index 000000000000..7e350721d9f6
> > >> --- /dev/null
> > >> +++ b/Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
> > >> @@ -0,0 +1,411 @@
> > >> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > >> +%YAML 1.2
> > >> +---
> > >> +$id: http://devicetree.org/schemas/mfd/motorola,cpcap.yaml#
> > >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > >> +
> > >> +title: Motorola CPCAP PMIC MFD
> > >> +
> > >> +maintainers:
> > >> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > >> +
> > >> +allOf:
> > >> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> > >> +
> > >> +properties:
> > >> +  compatible:
> > >> +    enum:
> > >> +      - motorola,cpcap
> > >> +      - st,6556002
> > >
> > >This does not match the only user in the kernel .dts files as
> > >"st,6556002" should be a fallback.
> > >
> >
> > Honestly, I would remove st,6556002 since it is not the only cpcap mode=
l which can be used, hence it cannot serve as a universal fallback. Some de=
vices use ST produced cpcap chips, others use TI and range of models varies=
 too. I guess I have to multiply commits.
>
> The "cap" name goes way back to at least 2G Motorola phones. There
> were whitecap and redcap chips for different 2G technologies which got
> replaced by patriot (red+white+blue I guess) for 2.5G.
>
> Dropping is fine with me, but then you have to update the .dtsi. If it
> was me, I'd just make the binding match because that's 1 patch instead
> of 2. You can still drop it on the new compatibles you are adding.
>

Yeah, you are right. I will preserve st,6556002 fallback for
motorola,cpcap while Mapphone and Mot would not require this fallback.
Thank you for suggestion and for the cpcap's origin.

> Rob

