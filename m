Return-Path: <devicetree+bounces-323068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HZALKt2ETmqaOQIAu9opvQ
	(envelope-from <devicetree+bounces-323068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:11:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 142927290B1
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:11:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sartura.hr header.s=sartura header.b=e1oAR0JA;
	dmarc=pass (policy=reject) header.from=sartura.hr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323068-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323068-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83E6A3020D76
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 17:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1490837C11C;
	Wed,  8 Jul 2026 17:05:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1042459EA
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 17:05:22 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783530324; cv=pass; b=sA3Dux1Ela61Ywov6faBOHJh+nv7gayhbqluNDdJUeLhwS7odyBxPWoPWcOKsV9+Z1SsT525CqLzOQUI8xDEg7OhOtXkpgTmgAI8MiDZxFlgJ0ocvN+gbCod84fCCpGSW7kVPNZDGL3CNv0On5ACuZ74Js5O5zFesHkjVTA0eMk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783530324; c=relaxed/simple;
	bh=jFEnWDadcvxYn42dqCMq0+3GPwmDWDfQdaFECo0lz3Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HccyZZiH4Thkr6WjSjmeVErtu8z3LdCtHvW3uluNfpZmYsDx6DoJWDIso6Z9rmGCgg/wllp7FZO+pu+YWuGwQ/+wjdvOd+z2DTwhU8F5TxBy5lK9R9EoiG8xjTmlRkgJlSYmkgd24YilK86iJF5GVv2Kb+B3mndmCMdijRKHw+o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=e1oAR0JA; arc=pass smtp.client-ip=209.85.218.52
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-c127ec4447cso2506866b.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 10:05:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783530321; cv=none;
        d=google.com; s=arc-20260327;
        b=TfQ7NQ69Sx212hD2dXX97NrhVPXgB2onIXlNp9xpGaNIGvaybN4ounb+C/ZYtjh81o
         5HAdeZczMcz7TQNo2W5VYBOoUP04hVnDifDJmHIIAYVZpRTHVB/JsEGJ+95tgxw2FNp3
         +2tE49skGaPMJNsP2voC5OcCwcrEGihwdLbKJlIR8/frVDfE/wHJ/jQZ1Tf4GvZL7pNw
         458p9qV6s+UJ10rVWUOk64mPbt3ZMQUxvfcOLgQKM8mkPQj+qy3rMfrNpcaOpwZ0T2S2
         YtpEfeK7GUaP+TK9oORNgNaTOMscq+BCDft8vrW4z1P5mYmFX0+ta2Jnzbq8+v2rypvy
         YnLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pHRAJ8KCEo3kBblosOTrn2Ke4Sb1IqEMIQxw9CoxcGU=;
        fh=Vm3iYJGeXrmmYv4tkvoF1DcJRUFWdyaBtmLxcQwEkA8=;
        b=RPjz+tdvVRif6WW0cv821i024J/Cl2WHADwjuwy8G9LZ/Irn097Y9rvDFi94xI7aDq
         3XeiPCTDmWmLAACsWTInS5C9A8v8l6Q9cjAOtI0HWaZQMWyjfPaYZOoFjtLO6LFGTWOd
         faLi+G0ap+3nn35lHZFq3ElkPPKgMrqeAZJDEba1u77jsIujrlWQ8NbD6o8Xyaj/xLxp
         npM9UPK8aw9D0dwyn9URe92ns0oNaw2tt7VvWLenXqY82r7RdflvN+nlrkPhdb72C0Zp
         /6l7Zbfg78gYqPKL2kKwwjJIGnxxwO8GpZVogsiL0u4XSd9CBzgWXJA4GzvYLGmkCzCL
         G+ZA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1783530321; x=1784135121; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pHRAJ8KCEo3kBblosOTrn2Ke4Sb1IqEMIQxw9CoxcGU=;
        b=e1oAR0JA9eY68TO4ZWKprGd6UdRsSCFqRjFE1Dt8e9yAGRveQCdg8ayH+6o0PMTUm1
         I4BLej4eMbI2zWP60HZm9El7QgDi4AMPfE/CuUpNH09QukAPq+9/G1jOxP910a0AXOMA
         0SPsKaTJbJlcjx4EdZEwqS9rn3h0CE5zX6zDUfFYpiTzIvhgXC4iAjF+yfquxVJ+nwPB
         PO4YL2cn02ZzUh5EulGuYZF3xnofbUAxhbwajyL+1vjeVD9zPuaRFXyPOER0lTKUb6Vd
         hHYmvuwwd826yw9hz1SRow10BFiCC5+agjjFiaBvHePWAmXU8qPRwREPTWxEMktkze7t
         shxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783530321; x=1784135121;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pHRAJ8KCEo3kBblosOTrn2Ke4Sb1IqEMIQxw9CoxcGU=;
        b=qA6azr3N6+XxFarlwu/rM7Dta+oIugBnPDIfeDnNZF3wDd6toj45j5B3wiMAvuleWS
         672qhaYvBK6J5lTPQnozewFjX8aCLDE2EKwWRCxbvR9f6KVoWT11TPgVrwdpLLiGegr5
         If7TyOSV4OqQLKXrR471DdTRhAwC5Dws3LA08ujSTuqeHy0UByq3ltQKtf9+EP44pV5x
         HdT07qa50Y1U27X6cK723Cn4L4aK1V8Nv7dwuJEXjFvwCLn05Qgt+XgnKUZUUxDM3Y0k
         WwrbtoTT5nU63hA9A/YCBBYEsWqzH+b3TxekeijPAhq8x4qtGbAtMf/XUobSfj4y47Xp
         xb6A==
X-Forwarded-Encrypted: i=1; AHgh+RqqSKkdcxKB+sK8+ti+0k1PLHaq3hdX/YcWOF6GoiEgCnn6A1KcbaRjsNtaSf6jr/WX2ppXmeZQ+r39@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+GVTavTdHP5d/GDPH5G77fkPSzhoQshhgP11wPrbQ9wYQg0s5
	NBElhfCpYfyEdMhEvWBohmS00IYICyIkDX5vJleCkV82tNjGCs56lZAfEYZX48Ugmw7zDKxUqlK
	2H4Fv/5PVtO36wnmSY6mPMY2EFR735EEpiLQ3WoZNlQ==
X-Gm-Gg: AfdE7ck75qNSkCA5V/hAnL8wNW4+Ec/5AOj63ahOwCeqvznxFCMg8/hrm+AGVp6QyaF
	bwzgf8J3qbxA6RUeiiI4HYuaDhtlUr9lA3KxcukGmaZP6KOKvmQhNDHOrX9J2vWkGrVEf7TlyNV
	1Pcj65M9looM59+fzGZXUFgq5+J8GQFPCAeI82x2GbxiqECoN1pGdsbQrVQPVflAYJ0Aq6rtbrK
	0Wuv3I9tRh1XOruwppmg7ZJXfU7NUefVUWa+U3wPK+FbDv20j8KwOylJU+fq8RSTyYGYhGmsy0a
	kAZczpDy/jN6ThcblPsYZ2ViKHcpRzFEZ5+re553dnBBgcoPaeMY09Td4ffM8g==
X-Received: by 2002:a17:906:4fc5:b0:c12:d971:1c1d with SMTP id
 a640c23a62f3a-c15ce0ee72cmr168212366b.45.1783530320904; Wed, 08 Jul 2026
 10:05:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260708165201.624271-1-robert.marko@sartura.hr>
 <20260708165201.624271-3-robert.marko@sartura.hr> <20260708-guide-outing-b471d0dc92c9@spud>
In-Reply-To: <20260708-guide-outing-b471d0dc92c9@spud>
From: Robert Marko <robert.marko@sartura.hr>
Date: Wed, 8 Jul 2026 19:05:09 +0200
X-Gm-Features: AVVi8Cdu_ypWhE5d2JkOMVlQ29SNXhJeaUvRunEjCDsT2tHn5OyCd62kkjaC3iM
Message-ID: <CA+HBbNHceio1GXxsua0L7CUbm2YxaTDE9A2H=cZ-0r2GYP2CUg@mail.gmail.com>
Subject: Re: [PATCH 3/4] spi: atmel-quadspi: add LAN969x QSPI support
To: Conor Dooley <conor@kernel.org>
Cc: nicolas.ferre@microchip.com, claudiu.beznea@tuxon.dev, robh@kernel.org, 
	krzk+dt@kernel.org, broonie@kernel.org, alexandre.belloni@bootlin.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, daniel.machon@microchip.com, 
	luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:nicolas.ferre@microchip.com,m:claudiu.beznea@tuxon.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:broonie@kernel.org,m:alexandre.belloni@bootlin.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323068-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sartura.hr:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sartura.hr:from_mime,sartura.hr:email,sartura.hr:url,sartura.hr:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 142927290B1

On Wed, Jul 8, 2026 at 7:02=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Wed, Jul 08, 2026 at 06:51:10PM +0200, Robert Marko wrote:
> > Microchip LAN969x has two QSPI controllers based on SAMA7G5 QSPI.
> >
> > It requires pad calibration, supports DMA, and supports 100 MHz operati=
on.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
>
> > @@ -1708,7 +1769,10 @@ static const struct of_device_id atmel_qspi_dt_i=
ds[] =3D {
> >               .compatible =3D "microchip,sama7d65-qspi",
> >               .data =3D &atmel_sama7d65_qspi_caps,
> >       },
> > -
> > +     {
> > +             .compatible =3D "microchip,lan9691-qspi",
>
> Where is this compatible string documented?

Ugh,
I managed to somehow forget to export and send the dt-bindings patch as wel=
l.

Sorry for that, will respin for v2 tomorrow.

Regards,
Robert

>
> > +             .data =3D &atmel_lan969x_qspi_caps,
> > +     },
> >
> >       { /* sentinel */ }
> >  };
> > --
> > 2.55.0
> >



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

