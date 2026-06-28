Return-Path: <devicetree+bounces-316365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zgo/OVLHQGpViAkAu9opvQ
	(envelope-from <devicetree+bounces-316365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 09:03:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BE86D3524
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 09:03:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AQkNl8rg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316365-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316365-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0D00303CA64
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 07:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD943590A9;
	Sun, 28 Jun 2026 07:02:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B498B227EA4
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 07:02:00 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782630122; cv=pass; b=Zj2U+vp347nqe2sGyiGOhOzqD1Fk/v1I2q1A7etAZGTES9Ryi1TW4cCjmLyM1L3EoG66PpA/dB2jWn1iQuPwjV5HRIPQjD4IYaE8EKiqhkliPoMmCUDaG86gZnGqoDGkJIWcwOVi/QwroQpXcViFi+z2IAe1NyX+0vFJIeSRjtA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782630122; c=relaxed/simple;
	bh=GY4pj5xmpcn7UP2PeAYAwybK3ew5+HG7uoyXdtWG2wA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CZALddbmV9IfodmAmNRvmNJta0ziePTuFgv9SVsTGhAG9Grj5FuNfQU/i9bY/r8e3RZpQysmTfYjDL3TE3bQjNsWZB2VkELH9pm4QdVstEJhDO6Etx4kxxZViXQv76Hs/cBes8SxkTl0iSkYcL85gCuG0y4ZLzCP6nkx0g9zINA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AQkNl8rg; arc=pass smtp.client-ip=74.125.224.46
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-664c4a04081so163110d50.2
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 00:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782630120; cv=none;
        d=google.com; s=arc-20260327;
        b=kEhKlb7Ud/wuDJlIRjSP/I/3Xf3wgVW122y6LfONGKbI0ZEfSaCoaQ+0EiQdSiaaz+
         FBz1dV7sYL0FiEHWKInENWieyg4S9RSLctnGimfuSDD9bJxsHyTHz3nU2HFi48+1BPKG
         LNhw9rO8kfmZtIac7+8kUbqe+Dj3kprlvTkrmoOm6iWoXs19zag7dGVkNkaYNbfaEQm/
         cBnKcdnGnPhgZiLOcXWmLx1IUn6zie4RQmuXrk/Z3E4yCPOGCfO6Fq+5bBz6DHWDXiCK
         3Aya9Rs3QAP6iGRti9+qeIhrkIjGA5e3TRmnsZNa41GfBsBac+VoG4mziFNF3m0CsiQx
         fcqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+OId4Ok77F5YJbguyUedoxMERWa5HS2eOIQ/JijyeTg=;
        fh=YRP3OMBhNnemj+ET/KogRHjY0ZJubPGoKgzxX4d4bjU=;
        b=aMfYK0SDOeltfwwAlBgdbI+YJqherPVPfS81Xyi0OXvfKpcvlK4e9iEMRdlbsGTE7J
         WIHKl3sJav6CrYTsatcYVvCkuNVP6uiTrxrge83wwGcBuT7AkNdRwBRjC2dMPrR+d3PC
         A1liCrtvbdLIHUrvLXkAvHpNUAxinCsdheOh0MAliwhNvn6eEYR/rjwso8TkoPJ6JL/9
         16fh9F8Fl5TuQEEb4qXC5ujY2JT6+0FMXqHZGkFEj25YKtxDojNnwJXMGZfUSw0HWhtn
         ODqoQi8/+ModsO4eILB8ntpXW54CgBPS9rmW1FJKyqAtxPjYG0zluqJlTkxlOfZuiPnx
         n29w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782630120; x=1783234920; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+OId4Ok77F5YJbguyUedoxMERWa5HS2eOIQ/JijyeTg=;
        b=AQkNl8rgTfKxMVSAtCN89DB2I0uds+ZfyykkNh1FuW4Ha5PIzi23m2zOXzdbZhISH5
         FcpHniGTt2t3q/3TrJ4X2gm7PAb27vsh1fSoJS6YkXMslsLjixrG4uZxCOFPtA0tUprO
         Ju0XmD8lPhg1zFVyCSP4ocqLTnEeUKwNxg/62T2vL4rT4E+/6cMTRc8BVaP18729+c/0
         mmU11K1CEfk3MyD8w/n+J7rh31HGnPbHPAnGLcM0UYmcFFl9N5I+hVPCu65ALWh7bPUr
         2MTbU4dGBzEAZexxx/dgk1vDRDCJUdrEcEgHcfvm/zQ6daWHpPzgpuVXjNWwFkSHZ0d5
         prYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782630120; x=1783234920;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+OId4Ok77F5YJbguyUedoxMERWa5HS2eOIQ/JijyeTg=;
        b=oRFmXpdnq5t3KNvSpe3iHjgUBr/6FVhHCCL8NtL7SHBUfnJWok4JIIOhzoa+SrY/oz
         tcCObmRQuqrmDcu5+owm2ld0/8dEKMP+Uwf1+jc2QCZJ4a3OrR1oQzyyZ0tDbtAswHwV
         1ILrPiHru7G7nAvF22CHN2AUZRm8WcE1gisQOQVKknekHqB3YWkQOYjA9NPlimo5/y37
         jCU6pPztRD8WVRyqAFlivbhnmZzNQu1dMSiufkkrnx1tn7n9E58q5S3J1Mqh1QUe03JD
         tHwtjmWJCn6dcla3k/UO097fUKufZ9xXFpDRDSTfA5bX7hSzHpUuHTQgr9HraD73FTar
         t42A==
X-Forwarded-Encrypted: i=1; AHgh+RrJJncdNeQFyFiMKvSRFkF6IiTEOOLCp6GYgsogSS5N8Jf5PjcEiNzWyicMeBGM6A+n/fIJHa4ZHyO8@vger.kernel.org
X-Gm-Message-State: AOJu0YyOcdIDFA0AcSAyZmKkHIgD1bQbziz6SdL7n2wrL8iT1wE3LjCA
	GrkU1L1FfEap1QjmByve1kCkCTsSZYqni9uIjkPHkh5eMt4v9P2OIur5cXwH9F81vECcIz9fHYl
	b4fsMzsFE2z9TJFec9936tY0QbFQAFHI=
X-Gm-Gg: AfdE7cm7w5Xwc14H9w6S4QpqhJNcdNKfx30h9FZRVdheZq4XOHHfab/UxaGuZJ2MhL+
	UcudJ6u/NajKqj4GcAM9M4E2JZPfknhrDtA0IyootHvDXl3p1lc7btK2F2pEutBt3RKn4vItUmB
	MI3Lz7DaqIBznpDL8vDXAvLjRdYoQhheCSC/73WzlJS/FFcXba/vtkfA/lfmRwZJx3JAdVqjFKM
	hGneVI9i8W3zU4p96m5fYaI7jkTZ4TjUiyQtaT+SBxE9TXe9QBHnaD2QFGBaKQYomG3X1/FGw==
X-Received: by 2002:a05:690e:4384:b0:65c:4b71:e6b4 with SMTP id
 956f58d0204a3-66488152a26mr8488609d50.20.1782630119792; Sun, 28 Jun 2026
 00:01:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260622083046.3189603-1-tmaimon77@gmail.com> <20260622083046.3189603-2-tmaimon77@gmail.com>
 <20260623-ochre-spoonbill-of-security-a4bc42@quoll>
In-Reply-To: <20260623-ochre-spoonbill-of-security-a4bc42@quoll>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Sun, 28 Jun 2026 10:01:49 +0300
X-Gm-Features: AVVi8CfRBhsj1pRWdOM2CE0sqTqASlUrWhsQBJl0HJjSQATVDmJtM7eZQvBwA6g
Message-ID: <CAP6Zq1g-dBdt=cgqfxn=8qVX=UBs5-w09YqDvHfi1y=h4H9DKA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: watchdog: npcm: add GCR syscon property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andrew@codeconstruct.com.au, wim@linux-watchdog.org, linux@roeck-us.net, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	openbmc@lists.ozlabs.org, linux-watchdog@vger.kernel.org, 
	linux-doc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, avifishman70@gmail.com, tali.perry1@gmail.com, 
	venture@google.com, yuenn@google.com, benjaminfair@google.com, corbet@lwn.net, 
	skhan@linuxfoundation.org, joel@jms.id.au
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:andrew@codeconstruct.com.au,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-watchdog@vger.kernel.org,m:linux-doc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joel@jms.id.au,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-316365-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[codeconstruct.com.au,linux-watchdog.org,roeck-us.net,kernel.org,lists.ozlabs.org,vger.kernel.org,gmail.com,google.com,lwn.net,linuxfoundation.org,jms.id.au];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82BE86D3524

Hi Krzysztof,

On Tue, 23 Jun 2026 at 11:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Jun 22, 2026 at 11:30:44AM +0300, Tomer Maimon wrote:
> > Describe syscon property that handles general control registers (GCR) in
> > Nuvoton BMC NPCM watchdog driver.
>
> Why? Well, you try to answer by saying something about driver, but we do
> not add bindings for drivers. Instead hardware should be the reason.
>
> Anyway, why is this needed now?
It is needed for accessing the reset indication registers. I would
mention it in the commit message.
>
> >
> > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> > ---
> >  .../devicetree/bindings/watchdog/nuvoton,npcm750-wdt.yaml   | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/watchdog/nuvoton,npcm750-wdt.yaml b/Documentation/devicetree/bindings/watchdog/nuvoton,npcm750-wdt.yaml
> > index 7aa30f5b5c49..4f00f099b2d2 100644
> > --- a/Documentation/devicetree/bindings/watchdog/nuvoton,npcm750-wdt.yaml
> > +++ b/Documentation/devicetree/bindings/watchdog/nuvoton,npcm750-wdt.yaml
> > @@ -40,6 +40,12 @@ properties:
> >    clock-frequency:
> >      description: Frequency in Hz of the clock that drives the NPCM timer.
> >
> > +  nuvoton,sysgcr:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      a phandle to access GCR registers on NPCM750 and NPCM845 watchdog
> > +      instances.
>
> Here you write also for what purpose.
>
>
> Best regards,
> Krzysztof
>

Thanks,

Tomer

