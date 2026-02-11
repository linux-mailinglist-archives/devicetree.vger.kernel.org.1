Return-Path: <devicetree+bounces-264867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GU2F7IEjWlVxAAAu9opvQ
	(envelope-from <devicetree+bounces-264867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:37:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C96128294
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2ECF53038B8A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE41288C20;
	Wed, 11 Feb 2026 22:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xk3+Web+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E9B10FD
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 22:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770849432; cv=pass; b=fk6gGQKOaxPZ/4G1ruV8yjkl5d4/V+op5a0DOpeuJ9Ggw//vMFosiRExPEXxdQQ8vnny9mxceTev2qK9rCFqPQB+nF1T8cxAvyL8WzQnaJ4hFFVcJBOpY3LLd5IO53zF8poxSOcDH2YwiyekBH3IDw2EUtZSvthawXtBYySvuCw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770849432; c=relaxed/simple;
	bh=6T/ikvHMlOYTLQYFaudB2xCLFqG7v7kDfO5+WLaLkts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sS0bYttSZQk+Ym2/xmYGfKSTsn64Hev35IYg/wla7aHN6YztGkSPNXgh/GwWmMjjSX/UmYHQWb5hr3i2bvZgzzX+7GIUMW7Q0z1HlwnIVyDhKdWA+8CE35ifNX6v5s+tZbS48nYc/BokC3SmzKeeEaJo44wkxhtnhh/ichSukF8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xk3+Web+; arc=pass smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38709888abeso8213211fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 14:37:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770849429; cv=none;
        d=google.com; s=arc-20240605;
        b=eIyRpngGb+xDTca2nDC/uIfqzrmlz51EgOLBgOI5HIqnYdfVPfF7V5iZIEinY1WgUQ
         /TGQ61emEospyDZzYKBt+cm/WZvDtcdB5SliGmc/P8gSBf0KzrFC0gXjC/P7triG1J9B
         nENwgfigCkMNaUMtbulAvQ85c3wqI8EEBIkgQ+nNV2/p2qPCeDAsmbsSum9qgvYO6Du1
         YZ0mVLnLlJQFESHj+rVeSXfroQej6q+OTcOQzMRsOoXQ3uNqND7UAPWSFzVEKlR2pre2
         s4C68cj0s6XLsTDqfH7kMNoho0y58TUlbsLqKi0VaUmttITk2ggCkimnYUJYikt6hOY7
         bmHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xxRS13aj1UT3Xoxhw6gPSgMuVGY8Xee+/X95ZwB2/v0=;
        fh=Lc7dlpZ5s/WhKPiYsXJBVJGAs1AtCoeMzj6hD1Dglww=;
        b=T/TSA58oILax9lP8FLSBgExqAqLGvBr4IiWw4wkNmINICaD5AulOxjLjahxHqOYG7w
         iT3rHugR41froAmspi4hhlXMJrr8ZzoVf+/E+CzNJFBoXBIIVoyisp+vFJxeTxuQvGYS
         UFqNXAvEZ7FmrG3uU4MQMT0uegzFd8ioPGjTi3mjsKfWLOa6E2wAtswaWgM0Yw/MiStM
         QrTgxHbVWtE1qwjAflRy0nwO57AwN/GGAkfrnigrMcdqMG/4tusiXa7vbUsN+3a+bw3z
         Armlsouxo+x2JwIzLQY9wyvREfuv9YNRH7YZ8PHUM25DUA0EZczqo4bKHmpbTQabRgH1
         NosQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770849429; x=1771454229; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxRS13aj1UT3Xoxhw6gPSgMuVGY8Xee+/X95ZwB2/v0=;
        b=Xk3+Web+E7O6ii9gAUZGCCbKeHns3yXmlVDn6e2f3SzG+8ENMWC9yMDjZcKlL8m1As
         HWSJLAVD2GGqpJZ0Nyp7YhsSEvyoYO0pYxW8Be2oDxn5xotkjtRWQgXVUt+YLdhoO8Nl
         q92QuFYCfC7PE9uivn98YV6mMfEHmK3wxGnFqvovRieJssSGAzH4Xdy09I7PpPzAdEBM
         KMtvafe++lqRIf5dfgufo9UeaQxUsQsd2rZZ6AFZtGoyZ+osMtd3gyYh2WISUPTqPwDK
         4eDjo3M4FSMLtoTVtpMaMvekSdSi7Eamu2RAGglbGFxDyqxA4Xi86VZtu1iLAxNvQX2+
         DZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770849429; x=1771454229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xxRS13aj1UT3Xoxhw6gPSgMuVGY8Xee+/X95ZwB2/v0=;
        b=pFo+hWkW0qXu1xkFxx/hL7B+G2dcNfZsBBSbw4tMB7F1hu3jkTjDWZ/05yFZ85q+JH
         vXC6vg6HfYg+vKeWCaku1CN83m38m+9tNjyaKU8un8/AsNpvZFlxUzNIuxjz8j7VrG5I
         jrm1SBVwMkkFtE/7sawhuXD+zxvnoNsc3LPjr0ZAgZbppuDZ/us5eR/Y2q0UwOpOW0Ye
         FdpLAqO/oQ0WTlFNmwQsvN781O92SWHSLxB4remU1u1WNgycihwxkNO/o8p+dAl0znxP
         cGXkpR2sTcUvc3lufgPS5RExAyZmC39Td5+LWiJe5l1Olx82ywUTqdzxrfJshJDDIL4o
         os4w==
X-Forwarded-Encrypted: i=1; AJvYcCUBJueNw0JH9H++VebpsfgSfzkFHl6ocIvaxuBxnahU99ltP1LGh/Y+SNYnNW+y+ck0eqJHA7etvJJ8@vger.kernel.org
X-Gm-Message-State: AOJu0YzmNWUy2yYLlGBh3Yr4NfdfbtF+bXs3Vpk/GuMUhqPZxRomlI18
	eRuYgCyHttKO3DpYCis8VOwh8aL8kK8KOxevFweaAkpzTTZ29dT5wVJv9oHlbuDcM7dpjjVV0t/
	Z6pIInO0MfTz0VxV9wnYTBh+3qOv7KFU=
X-Gm-Gg: AZuq6aJjIGzww3oRahiynUBcYqVugY7pMXWCDos+YZwHXzWjK1I8IuJ+7a+2XdwDrJ2
	AxA5nljpmdhCHScvhe5SWH2866Ng4gyS0o8J36ADlZYo6USy9+1lF5U8R7ghU142bFqkCHXvTG+
	j+eCz8elynzI478renJ7g7IWKnQhiysIIB9B2GhPegw6HzbPvKRnT/C0e40tHzTnVLoOVbBEpiY
	1XJgKXfMKKnOdxkCmZE5OjugLvXcI1iVft9NyiCCNxUyYSnCzIGviwZX42iba6jThrW8tlpTq0R
	eKdG2ZCLiFkyYIydThJgsjXWpOfk8HHKq5eNjygoQcfp/XPQiuIl5mFicPp57fCOoc38
X-Received: by 2002:a2e:bcc1:0:b0:387:384:923e with SMTP id
 38308e7fff4ca-38712b93f62mr623591fa.37.1770849429292; Wed, 11 Feb 2026
 14:37:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207-sm8550-ddr-bw-scaling-v1-0-d96c3f39ac4b@gmail.com>
 <20260207-sm8550-ddr-bw-scaling-v1-1-d96c3f39ac4b@gmail.com> <a745718d-1960-401b-b8cf-fb7b56dae933@oss.qualcomm.com>
In-Reply-To: <a745718d-1960-401b-b8cf-fb7b56dae933@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 11 Feb 2026 16:36:58 -0600
X-Gm-Features: AZwV_QiE8SSuF6b8a6D2WT0Vl5F8W8vkMWkANkHgxY3SvVJmLzsNQFZVTZ0Gm2k
Message-ID: <CALHNRZ8n0sQvUuXcmiq7pc+e_hQsVgwRCMnx9FF8n6SGhCNxLA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8550: add OSM L3 node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264867-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,17d90000:email]
X-Rspamd-Queue-Id: 99C96128294
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 3:04=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/8/26 2:28 AM, Aaron Kling via B4 Relay wrote:
> > From: Aaron Kling <webgeek1234@gmail.com>
> >
> > Add the OSC L3 Cache controller node.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts=
/qcom/sm8550.dtsi
> > index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..80fc437c9874fd5009ff1ea=
f4227b75bec5fe883 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -5437,6 +5437,16 @@ rpmhpd_opp_turbo_l1: opp-416 {
> >                       };
> >               };
> >
> > +             epss_l3: interconnect@17d90000 {
> > +                     compatible =3D "qcom,sm8650-epss-l3", "qcom,epss-=
l3";
>                                              ^ this
> should definitely be changed to say 8550 instead (it's going to require
> an addition to dt-bindings too)

I missed this in my copy-pasta. Will fix for v2.

Aaron

