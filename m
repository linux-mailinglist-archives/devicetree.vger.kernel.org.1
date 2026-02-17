Return-Path: <devicetree+bounces-266184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJbLH3h7lGkfFAIAu9opvQ
	(envelope-from <devicetree+bounces-266184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:30:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC1814D292
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:30:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B456300C01B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC91431A81F;
	Tue, 17 Feb 2026 14:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="biGqLMoU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4280436C598
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 14:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771338613; cv=pass; b=m9nx13jR6DCSLdAuWtsfeJniKAbUhApPrdDBACxZAKgMjBrSHQ+pxOPtWDMSe1gX9LcOnLEk6et0EoFdRcryomhPxP1shK5MTbYa+d+nnfPXXTKoyl8HnZ9kmt/WySwfPxmvqptzavExXeZJcG1ShnTPHQ8jQpD+fsI3NdIhKwQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771338613; c=relaxed/simple;
	bh=xgEp0OxlcQGQ7e2PjqAvPQDJsGSUceDoN/FTA2D933g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kfwHnJIuv02cd2rXo3oVXl6UTdN7J3j9Pa+YJ227HP9w8hgUZOV6MjLEjW3muX+nKiZTq+7FlAiUG4ZwqntPp1aI6CfcKtFxjWwEUdJtLI60dNbkLQ3npw56gVFkdB6I7J0eJXbbswlsB6BYRXf1+Ch3iV1bN4ibUXtjM3i9s8E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=biGqLMoU; arc=pass smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-435a11957f6so3610869f8f.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:30:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771338610; cv=none;
        d=google.com; s=arc-20240605;
        b=gD0l1aeDLjw0SadhSvNyRwHVDvs4pbArtmwDUWyBB7U4I1KUp1HtP2FcTiF+88ORR7
         NRzSMOhN83Tf7j9XFCQDnppptTLPexPOlE95Kunaw1Hc0ryG2KAKX7Gt33p/MhlvvI2F
         RFlAueCE/Fok8Yqwyvtakrl18+4swbK/DzteSqRqhPqJmmGp1TWcfFoVDm6YanPc2Mrk
         g/Ws3Uy56xvG3CZxXZEEP7nHGSqSzsJm6UJLnv/KuQDQjYY3+t0TcSsa1vnCAm/P3hij
         2c7Px1/bbqqItNMNzKvycUKOhugi83HFi7jDtfK6UIO1+Z53OUOYbN9RbwgTv0pC4sWw
         qVVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VEXatnwqoQncMhu3mEDseyvqdEZczrLmCyrd4Zj7SDE=;
        fh=sYoSyFlTrDmql8DKm0lqwpcO3a6JmJPje2s5SAWppYk=;
        b=PoW3gbvD6ylbp77OXNlRAjTzSsC1P1TzWtoi9d74wbLUDegGLxALXW+CG+MqcGzXAy
         HeKspc3rkuyY4Dxf1r62i8G+ukUGgXmxT5E5NHTtZ9l+kNyKjnUleLF27Af5nZQDhJqA
         iT8vBQ/4EKJqWgKbsCwEyDPjC+WNHRXCF6TAsmuDQkkWB7gdW4mRhchwUhoOG+tVlukN
         obeLEf6uV5VEMI/45ZA3uiJtpK3HIG3oblWaQ5IaLmf2BIXNj/iq2tiwIdaY+OM1xHPE
         +gmGJjH7pXBnR/qYo9rXerJSzSfYSrXF93l0OyCNgW0NYaHWqreG12ZZ4EVizjMEox4d
         RVMQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771338610; x=1771943410; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VEXatnwqoQncMhu3mEDseyvqdEZczrLmCyrd4Zj7SDE=;
        b=biGqLMoUinuXrScyEXxEfk4PfQt7PiiEuJlHjTXqzmcLuZrAhUOC7F+aTKrIu3Ro8L
         EIu/ck8AX8uYJ2jc9IuNMAacAXmwnuAcmd4O3s/0t6Pa211MTaIOutHt19aWHcq7n+GY
         TOVmNM1N8SnioBf3bIZC92PsGuLiRMyzRwk2Cv/yzA25EQN4HH2LuwEN9vESne9R4epT
         d2QXYa+AtGhwHopXPCM5YnD24xLB3fYZ/sWRb65b/6Nan4e4Wooumq+GVMSmKR3IcNC9
         B2GU2zbDox2aSRIP/cMTIaVXesmvE4k+qWrxOtu6nxuBUvisuXPplrSkbwlM13YVs6KQ
         YtEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771338610; x=1771943410;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VEXatnwqoQncMhu3mEDseyvqdEZczrLmCyrd4Zj7SDE=;
        b=Jgmc/oVdPe7U9jubhfB0LK4b9Gg93UjVnoruWYGphznHg288Z5GCzOvTpz0uTtMcf7
         UpcOJ5fuphyNug6KnjleOZO5xdhX0QyoBTzsRTYw3cLFM5VpxNLV8MKv6PXCY0OM91Jt
         pJwlXTYi8v3u9qu3GJjfF3yD5Hzad5KcBTOrJwyUOLZl8Brvi63JKH8coRLkg0UQhjG8
         fR1SQdLQDIdecOgRbz8QSGzP8MrG69KxZWCk2uyNM1CNkScYpCBhkvz3qR+4IbA6JuTm
         lvRUPriiEb77U0epczRPmL6phdLmDw0c/m+/UUdz/zA4VB+diTEGDukXVHg6NRWP2rfB
         jGMg==
X-Forwarded-Encrypted: i=1; AJvYcCWYd4U4kcyouzEsnJ/a2IXKByEc0t2t+C1xWrwff6elBXX+5ctKQdGQQOPiGZcIjMtAuzc6M6GOUEa+@vger.kernel.org
X-Gm-Message-State: AOJu0YySnQA9yxOCsv7yDPPu8gdjOePuAp+yyqv99vEl04IsCTWO2+x2
	N1PH/3EFBwATJA8Y3k/lvnVkhDrL/sU/5esHLCH1/GPP2XAFtlmypjdugiGyDLM/OsqwqhS7fdD
	A9oLCHQ+ZXCcnoY+gzTVo7vni5WqOrgE=
X-Gm-Gg: AZuq6aLGKCXOTdf/97h9lkYJpZbaDPg00mS2oM9BLS+r1O8wER8UGIFiDttHb/+kd3F
	+izv31rDBHcNWo2ThH3z/KVN9sn58Sdamkctw2K8wDnGDoSWB7Xo/z4QLL/TK8/VMr8XQv9o1+G
	BkgxcEq154OWuh+5r4h4vii7Sj4vuoFQbnuARXD59sDP4NCL2VDt2XmwvsqNuUgHztBZtf2CZes
	e6WN3MVfZ/D98Z7gs0GNnRe63Cz/J6yT8yiEpLEsjG39XT4zh3eS8MZbrbT0stU+WiNA2jvBksu
	Hb9dhtBQ
X-Received: by 2002:a05:6000:2502:b0:436:684:b94a with SMTP id
 ffacd0b85a97d-437978c9ecamr23859985f8f.4.1771338610325; Tue, 17 Feb 2026
 06:30:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260214180959.30714-1-clamor95@gmail.com> <20260214180959.30714-2-clamor95@gmail.com>
 <20260216-sprung-scallop-de7b64bf528c@spud> <CAPVz0n06+uLCSfY_bYS9v7KJ-hXotye7ej-rze6-Q8_JAF7XVA@mail.gmail.com>
 <20260216-plunder-defense-de11cf56dd3d@spud> <CAPVz0n0-LbTUZBCaO=oN3PpPLpwAqzNo29r687pKY8NbEE9giA@mail.gmail.com>
 <20260217-vowed-botany-b1c47c7e40b8@spud> <55C30023-4175-48F2-BCB0-12EC23C48F01@gmail.com>
 <1519143e-4fc3-490d-ab8d-e65edd2c4eec@kernel.org> <81844CC9-5355-4B1D-AEBD-6DD67FB8C81B@gmail.com>
 <20260217-dig-husked-8a59b6a19aee@spud>
In-Reply-To: <20260217-dig-husked-8a59b6a19aee@spud>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 17 Feb 2026 16:29:59 +0200
X-Gm-Features: AaiRm527JrR1d9ft4Dd7Ae54Z5WSVlmOfX8realrnvc6GC-L9yzztDY8UwpAN6o
Message-ID: <CAPVz0n0u7uhL8_FQFiuB7DrnL++ecbaEKEoV7N2PgTVRBVECkw@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: embedded-controller: document ASUS
 Transformer EC
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Sebastian Reichel <sre@kernel.org>, Ion Agorria <ion@agorria.com>, 
	=?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266184-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,agorria.com,rere.qmqm.pl,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2DC1814D292
X-Rspamd-Action: no action

=D0=B2=D1=82, 17 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 16:03 Cono=
r Dooley <conor@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tue, Feb 17, 2026 at 01:34:01PM +0200, Svyatoslav Ryhel wrote:
> >
> >
> > 17 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80. 13:32:26 G=
MT+02:00, Krzysztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> > >On 17/02/2026 12:23, Svyatoslav Ryhel wrote:
> > >>>> in other words you propose this:
> > >>>>
> > >>>> properties:
> > >>>>   compatible:
> > >>>>     oneOf:
> > >>>>       - items:
> > >>>>           - enum:
> > >>>>               - asus,sl101-ec-dock
> > >>>>               - asus,tf101-ec-dock
> > >>>>               - asus,tf101g-ec-dock
> > >>>>               - asus,tf201-ec-dock
> > >>>>               - asus,tf300t-ec-dock
> > >>>>               - asus,tf300tg-ec-dock
> > >>>>               - asus,tf300tl-ec-dock
> > >>>>               - asus,tf700t-ec-dock
> > >>>>           - const: asus,transformer-ec-dock
> > >>>>
> > >>>>       - items:
> > >>>>           - enum:
> > >>>>               - asus,p1801-t-ec-pad
> > >>>>               - asus,tf201-ec-pad
> > >>>>               - asus,tf300t-ec-pad
> > >>>>               - asus,tf300tg-ec-pad
> > >>>>               - asus,tf300tl-ec-pad
> > >>>>               - asus,tf700t-ec-pad
> > >>>>               - asus,tf600t-ec-pad
> > >>>>               - asus,tf701t-ec-pad
> > >>>>           - const: asus,transformer-ec-pad
> > >>>>
> > >>>> And in the driver add match to every single entry of enums?
> > >>>
> > >>> No, I was talking about removing the generic compatibles entirely, =
since
> > >>> they are not suitably generic to cover all devices at the point of
> > >>> addition. So like:
> > >>>
> > >>
> > >> Actually, they all can be grouped under asus,transformer-ec fallback=
 if that is needed, both pad and dock EC have the same core functions just =
different set of cells. And then in the driver each compatible will get a d=
edicated matching data. Will this work?
> > >
> > >Then what does the generic compatible express if it is not used by the=
 SW.
> > >
> > >Wrap your emails to mailing list style.
> > >
> > >>
> > >> properties:
> > >>   compatible:
> > >>       - items:
> > >>           - enum:
> > >>               - asus,p1801-t-ec-pad
> > >>               - asus,sl101-ec-dock
> > >>               - asus,tf101-ec-dock
> > >>               - asus,tf101g-ec-dock
> > >>               - asus,tf201-ec-dock
> > >>               - asus,tf201-ec-pad
> > >>               - asus,tf300t-ec-dock
> > >>               - asus,tf300t-ec-pad
> > >>               - asus,tf300tg-ec-dock
> > >>               - asus,tf300tg-ec-pad
> > >>               - asus,tf300tl-ec-dock
> > >>               - asus,tf300tl-ec-pad
> > >>               - asus,tf700t-ec-dock
> > >>               - asus,tf700t-ec-pad
> > >>               - asus,tf600t-ec-pad
> > >>               - asus,tf701t-ec-pad
> > >>           - const: asus,transformer-ec
> > >>
> > >> And them schema name will match the genetic compatible.
> > >
> > >Then what does the generic compatible express?
> > >
> >
> > Then enum it is
>
>
> Why would you do that, instead of what I posted earlier in the thread?
> If you send a flat enum with all devices listed, I'm gonna just be there
> telling you to consolidate into one device-specific fallback compatible
> per programming model.

There is no one device-specific fallback compatible! Schema describes
HARDWARE not drivers no? I will not use random device compatible from
the list as a fallback compatible for a different random unrelated
device, that is plain wrong. Discuss this with Krzysztof and come up
with something meaningful please.

