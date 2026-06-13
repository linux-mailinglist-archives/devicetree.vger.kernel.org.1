Return-Path: <devicetree+bounces-311265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D02CIykWLWombQQAu9opvQ
	(envelope-from <devicetree+bounces-311265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:34:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBA267E25D
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:34:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=esJ79rNN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311265-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311265-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9D9EB300CB29
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFC333AD88;
	Sat, 13 Jun 2026 08:34:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBF5357D14
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 08:34:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781339686; cv=none; b=V5anaC56wpKqnlaykW0jHLyhiTb4vX6QLp+2OMp/vnLxwewQg4qejWwRa9IURWDM8cZiTANMmVOzHuPQKZUTMejuzcBhB8MxnD8PjfouGLI2WwUf/OzsZ59JzETp6eHbKsYkop+M39TbdRRBlWtB9qrg/+1aXTIf9DlnOhd8AXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781339686; c=relaxed/simple;
	bh=mbzvuH7IfNDrZaVdLFw9eoGGYP0QvKcW4I7S/aIG17k=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OBKceRgwEHFvpeEx6Vr3hdLORRh5lqH59YIRy1ZpmXa6nkNNg9RnGbMNj8uhz1cujppGLEGRaKNIl6Ojb9MgTOX2LkvnTDxjD+MFCPG5AH94DMWvdgL346Em4F5GbLkzjw2KXztyZ5//MIkVyoBUooy9Xj6ye8Ann8CbtxMhRFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=esJ79rNN; arc=none smtp.client-ip=209.85.128.46
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-490b7866869so17172445e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 01:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781339683; x=1781944483; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QHs9yK5AtFf0IN6y8bIIPCYpjsJCXaUVqV8EKE6IMM0=;
        b=esJ79rNNH2ER9YupQNbJi/a213ecb+1NnOJRa8wyWgjynGc9PsQF7C74n+yAJM0WkV
         gOPCHP57sN3QbTZR93uALsBLWorCupX0a/gQzEKqDKl9WwY1N1xnKgEt5pE2v1ZOfK7s
         ZIoPY7YT6QjO0U+dbeNAZwbejPk3qmO/M54j/kJ2RQ7VGF/jfnaI1szSebi6yvPXwYrg
         jby2yuv/8gr2ay+Umv5iUjgMEBRDSlUtNork97vtkR5+a289GYk7HsvH3wQ50rh10qmK
         x+OGdxJtRlv8AFsssCbzOFByMA0nhbPRcd0uTw5ZBAODxRojpKFddObnGnpBSNHhN5dG
         hdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781339683; x=1781944483;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QHs9yK5AtFf0IN6y8bIIPCYpjsJCXaUVqV8EKE6IMM0=;
        b=JEesSmT3lZfIGYgIU6hV71CbfmbBp1SAjW285bStxdg5SWrBUMNMiN2b6rjwEubwco
         SBiKYF9HLdv9d6+wC51fIvVsS5j026Jw2RUTQJLuLCDSz4LvdfSIaGXGQd0soy6SE/Hq
         1qilt9SR51leX9oIWJgU40fHIIzQr5G72ltw6TfgdWKL/gGxGAck+S05guZwjzV/buU8
         FMtGvTZ3Dv7RNYnyjqJCS6LEzN1Hs92CSqACizfX9y2zYdiQAg60CM5RRkUgQW3dONwa
         M3SGGuze9rIfrFDZ7e2cVrnd7yqNsKUClSGVLP4RpOjlkRkiZIOCwI/0UIGXWw+s9tPs
         lP9Q==
X-Forwarded-Encrypted: i=1; AFNElJ/7ZtVU+vZ2COYJ4TgYC6R2Cqcf8CVcofacPAOqythxmsZsN5fohTzicdOdl7guiIqxgWs8gchtOJnK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9esKkpJFPA09i1eIru9DQZmKC4v6c6dHCPWXmHzCi/CHfp4iv
	h472+Vic2Ptr6xFncN8HPdTwFo8SC1UJSPXzTB2syeIwmvF0xVD9JXca
X-Gm-Gg: Acq92OEwqZDOMgLcFAAZPEr9tRgZ4MXeDIlTbUkuGdPBJJGD557IkEqVXU+7rInSbpQ
	YgeOagfVdgroqz0SVmUVG0ZPLP3YkDWksXxkwZbpo7nRvhDzFvNmfWm5QOhKQWchoYbP7Pl1jZI
	heSXsrjgcVCQy0r7V8r7MCsLUtqIJgKI4ToJtRdspYGDyzaSvyOwpxIHN6+k2PbmWo3o4KqiB3v
	e6ReaXwTZ8iFAbS7lZ2ZiIv3rpDpP8o5gjIN3nKfylq4MypiZeKWbCBcKPekpQUFDbCyDNX+HYp
	/6ZYOX3Z/RyiT3P0wzezsFcCPNgJh8eHWqbcEmFXuKQmJ/pbCpwMZV9kmYElHll7c6BE4NKmywW
	cuK7rqddfMikQhXn1SWrd3wJ6+pMHydpf/5bkVcCaoa92JH0QK0rio+tHqxyjUCWVKYuxGmquZd
	lGLvpOlIGeyUaj20vvcNyO1zWbPUnEKQMP9AuLZc6GES84gW4nB2U0bpZXQhi1vcYmAHAhPaY5v
	6hpJRUNfvw9RZGTvA==
X-Received: by 2002:a05:600d:8494:10b0:490:c7dd:de3e with SMTP id 5b1f17b1804b1-490ec521187mr55836955e9.31.1781339683115;
        Sat, 13 Jun 2026 01:34:43 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492203d05d1sm72320885e9.12.2026.06.13.01.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 01:34:42 -0700 (PDT)
Message-ID: <b428d57ba5464f1226daf099877f4c25fa4fc191.camel@gmail.com>
Subject: Re: [PATCH v4 6/7] arm64: dts: allwinner: a100: reserve RAM for ATF
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, Samuel
 Holland <samuel@sholland.org>,  Hans de Goede <hansg@kernel.org>, Dmitry
 Torokhov <dmitry.torokhov@gmail.com>, Andre Przywara	
 <andre.przywara@arm.com>, Jun Yan <jerrysteve1101@gmail.com>, Lukas Schmid	
 <lukas.schmid@netcube.li>, "J." =?ISO-8859-1?Q?Neusch=E4fer?=
 <j.ne@posteo.net>,  Eric Biggers <ebiggers@kernel.org>, Michal Simek
 <michal.simek@amd.com>, Luca Weiss <luca@lucaweiss.eu>,  Sven Peter
 <sven@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org
Date: Sat, 13 Jun 2026 10:34:42 +0200
In-Reply-To: <_6NEZ78hR8a_3V2bhBAGoQ@gmail.com>
References: <20260605070923.3045073-1-alexander.sverdlin@gmail.com>
	 <20260605070923.3045073-7-alexander.sverdlin@gmail.com>
	 <_6NEZ78hR8a_3V2bhBAGoQ@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311265-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jernej.skrabec@gmail.com,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,sholland.org,gmail.com,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FBA267E25D

Hi Jernej,

On Sat, 2026-06-13 at 10:22 +0200, Jernej =C5=A0krabec wrote:
> Dne petek, 5. junij 2026 ob 09:09:20 Srednjeevropski poletni =C4=8Das je =
Alexander Sverdlin napisal(a):
> > Add reserved-memory node carving out Trusted Firmware-A region spanning
> > fixed 256K from physical address 0x40000000. Even though Allwinner ATF
> > itself passes the address range in the fdt to U-Boot, U-Boot currently
> > only reserves this memory internally, but doesn't carve out the region
> > in the fdt passed to Linux.
> >=20
> > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
>=20
> NAK. It is job of boot procedure to properly inject TF-A reserved node.
> Any issue should be fixed there.


like in commit 0d17c865118881609ea7e381c7cadbb7979cc596
("arm64: dts: allwinner: Add Allwinner H616 .dtsi file")
    Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>

? ;-)

> Best regards,
> Jernej Skrabec
>=20
> > ---
> > Changelog:
> > v4:
> > - new patch
> >=20
> > =C2=A0 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 16 ++++++++++++=
++++
> > =C2=A0 1 file changed, 16 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm6=
4/boot/dts/allwinner/sun50i-a100.dtsi
> > index 7cb06b19b5a5..d8391663fd1d 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> > @@ -87,6 +87,22 @@ osc32k: osc32k-clk {
> > =C2=A0=C2=A0		#clock-cells =3D <0>;
> > =C2=A0=C2=A0	};
> > =C2=A0=20
> > +	reserved-memory {
> > +		#address-cells =3D <2>;
> > +		#size-cells =3D <2>;
> > +		ranges;
> > +
> > +		/*
> > +		 * 256 KiB reserved for Trusted Firmware-A (BL31).
> > +		 * This is added by BL31 itself, but some bootloaders fail
> > +		 * to propagate this into the DTB handed to kernels.
> > +		 */
> > +		secmon@40000000 {
> > +			reg =3D <0x0 0x40000000 0x0 0x40000>;
> > +			no-map;
> > +		};
> > +	};
> > +
> > =C2=A0=C2=A0	timer {
> > =C2=A0=C2=A0		compatible =3D "arm,armv8-timer";
> > =C2=A0=C2=A0		interrupts =3D <GIC_PPI 13

--=20
Alexander Sverdlin.

