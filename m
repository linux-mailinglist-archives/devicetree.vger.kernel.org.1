Return-Path: <devicetree+bounces-275081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJglL0Lcs2mzbgAAu9opvQ
	(envelope-from <devicetree+bounces-275081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:43:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 211B3280AEC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2B7C30C8B72
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA0237D13E;
	Fri, 13 Mar 2026 09:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cBUcl/ao"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FAC282F26
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773394940; cv=pass; b=IVkUB6c1BaoVHzsE0kMz1Scxkvst7vOV0so9vPQLb/7TnkYs5x1w9rSlulQQ2rFPdDYEzNziuL8ikj0KOde9ag0/ea9nZYf+I0RPRQcNgX7JyRBlQ4tNDP4wB3FrSfKQVnRQANzSkHfsLfkSBUiAR/J4yaGQ4Iz0PVnAtRs+Eac=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773394940; c=relaxed/simple;
	bh=MfYGZ05oe5Hl1+CugXl52UD3u1IznX83KLBTqcRp3jw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mn3uRWq1RULO0yOZynyWMZoQgabrhdraDS7OkwVPT/siAfRBKq0jq5K4fRyUnV7Q6TULJ4FIQYiS4lE7GRCs9tKcWom0/XmegktjF+yvVGQZYpaSi7B0ELoSY0Ou0MfIp2FEdZNdPUK9UqjKM3qwhF46tcjHp030JiBJ3p1dAIo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cBUcl/ao; arc=pass smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-79801df3e42so28394127b3.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773394938; cv=none;
        d=google.com; s=arc-20240605;
        b=gkba9CvNxt0l7soqRT8ys/xMVEjBas1zKgq3fYq6vQoaHtbP+yI7tZCXwfKuP4zBzR
         1r5MquXDMvQFkCAwthq9Oz1DjRihaEg7gvV736birUd2YWk/Sjebsj5hQ3lcCVBoX0tm
         7/gVAsEDvMcbueLBij8/ocVy4/FL1yBXolApEAHDPnBhbKPFUuCcwuPqVbJ6mZ4bGYJV
         fKITW/aVx9SJQX2AuydikZem2yBV46GnUPRRocD+81c3rc3+KinOD6H4AyAUJ+9C0C7U
         IUVDXvnaVvnRb3WwyAeC2d0LtBjZ+LfA9IoWNJY5t4bAzzOWdAV2/KvvP+8S9i/mf+RL
         mi2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3WjmletplWN85DKdqz792fPfJhrtfvngbL64ZSg/oZw=;
        fh=q6JXUS7EOluqKzyXnj141RLR5encpspnnrQ9yceTMvs=;
        b=OsXIHoGTXqup61ZOv1cdUQg0wb1kUhRBKQeULmHf9Gs1ghZ3gTol6oXvvyRVr66pT3
         N/7QiGhZr1FNYPJeo/2VU8ok6lMKY/B4Cgv6tNNfsZSC8R+MZrqtM0J5EkcrgesJOJID
         YNZIYfH9kb7hv1Ralkvv5pjmnU9N6wDq6hBlmy76S8MGs2VFq85HgPxAzmWquZugNB+s
         jMqvZlN1QjLFyh7Ik/SoYkE5YlakM+l54on6pC4BhuuR1bd8mJmnM+fYKKygUhPIYSft
         2s0j+flx2wUfLzrHb2p29pw+xskKp08FWPqxlEjBrz5m6RH1AMi427OChuNOf68fsQOu
         89Jg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773394938; x=1773999738; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WjmletplWN85DKdqz792fPfJhrtfvngbL64ZSg/oZw=;
        b=cBUcl/ao2cdnp6Gfa9Yo3vHBa2ZEjxXu3ZIy2Ss52o3gDLTJVI2DqXTiwI0LmWUKVq
         eWpEnIXN38f1I+/UvilqLm4Qu01CwFndndmU77NEIMFO/tb5tEwEp18YOVJpjiVy98fU
         LOE9veiwBOdOv4ukphvUvgG2mSmjOYZJDnQ6qfX0Be83W1BW2Fwozl5gY7jNcql+HdVS
         cB/DMkV0KBQRdWQIJcnmN3waX5sZRoEundPtxpUxutPW2trmILVoSUmFAru66et5q/bb
         ycoiU/UpC2f2gpjpq2dDZ++7s45a6smjJg9ouyVlvsf1mWK0/eUVOQPL+xU/wADhA3iG
         YHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773394938; x=1773999738;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3WjmletplWN85DKdqz792fPfJhrtfvngbL64ZSg/oZw=;
        b=oly73sra/TYGhGdWaW9wyRdn5Ir6rIjYgyZXPdWBQApIILz2+GLoyplX50ErrTgvgp
         bGj/1Jk88b1fmntZdrvPtisxPoW5FqjeiBJAr5OXF6aQXiN2I6iaQGESklCaj5BlvoiY
         7mvPVHy3RvhQomy+5Zh94++Bz5vTUdx6iB8r1rJ06NXmH7Uo0tg5kJGb/BAVN09uAQ3T
         EJxgrTBRWH/K1aY0HM6wI/DgoWKQl1NLzZYRJQ2GdoHgcZZUV7XWAys1qiwmBF/lgtLB
         k3i6+4owMjuPE/XbJgH4uQrSpWhVT5KYfMZpQbrdiFD28VLQA1uAgPgUSIlsNIe39baz
         88/g==
X-Forwarded-Encrypted: i=1; AJvYcCUi1VjwlcYBbZvgehCAuToEt2/nkLg9o1Kqk3fDPu4fms+hTsFQirh2NoOis69jROaTdcFlYzPX5Mu3@vger.kernel.org
X-Gm-Message-State: AOJu0YxBUoswp+B1DwSu6JVhmKFAMBU9yUtJj4solUZEh6MncqCnFxdN
	o14uw32ruCSp3Wh1Qu36pmIk9ngBMHjXcjDfhpoqVbQuzIYAdkzA/zjAl2lpOahoq9CKwEuVD55
	gXehmonlR1e8uqfulos3JXzLb/SAHoGY=
X-Gm-Gg: ATEYQzzHDfy/1OzOH57GXID4CJZeTr7DjKqnqp1SxjhcO/C+edbQcdcLEttjf5NLPt1
	IofZTu3NekvQUocPJ8n58k65lFRz57oTihiaeodIzn6MYnxlgyxPkhmbWOgYkZglhfRU/xDQQJe
	7sMSeuaTcbuF4uBugkMpvL1OZuilULnws5UeGLDQXtaB76AE3blTzQB29sILcyx5AP3W3hkfDEC
	pjUro+sEAya+OjDssqK3zS5nhoSqygL136WQYVL5HWVS3mo3Py1beyUBHpGzipQSlXEnyxTQ/d8
	0rXhlGo=
X-Received: by 2002:a05:690c:c4f9:b0:798:7039:eecc with SMTP id
 00721157ae682-79a1bbb4527mr27419187b3.6.1773394938250; Fri, 13 Mar 2026
 02:42:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
 <20260309-orangepi-sd-card-uhs-v2-6-5bb2b574df5d@gmail.com>
 <8e91c86d-ea41-4535-a7cd-5b602c546cb7@baylibre.com> <20260313001940-GKA407679@kernel.org>
In-Reply-To: <20260313001940-GKA407679@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Fri, 13 Mar 2026 10:42:07 +0100
X-Gm-Features: AaiRm51e5SToR1tOSk9liHEfRop_JhUUodJVYw5is_oXMgLYIQA1K8IuEgYknus
Message-ID: <CABdCQ=Mv-3X8KE1WOWKVTmq+POgJczsL-qFdAyp5qzM6=0s28A@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC
 and power infrastructure
To: Yixun Lan <dlan@kernel.org>
Cc: Trevor Gamblin <tgamblin@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275081-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.41:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 211B3280AEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

El vie, 13 mar 2026 a las 1:19, Yixun Lan (<dlan@kernel.org>) escribi=C3=B3=
:
>
> Hi Trevor, Iker,
>
> On 14:27 Wed 11 Mar     , Trevor Gamblin wrote:
> > Hi,
> >
> > On 2026-03-09 07:40, Iker Pedrosa wrote:
> > > Add Spacemit P1 PMIC configuration and board power infrastructure for
> > > voltage regulation support.
> > >
> > > - Add board power regulators (12V input, 4V rail)
> > > - Enable I2C8 for PMIC communication
> > > - Configure PMIC with buck4 (vmmc) and aldo1 (vqmmc) regulators
> > > - Set up regulator constraints for SD card operation
> > >
> > > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > > ---
> > >   arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 48 +++++++++++++=
+++++++++++
> > >   1 file changed, 48 insertions(+)
> > >
> > > diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/=
riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > > index 7b7331cb3c726f11d597f81917f3a3f5fc21e1b9..414b03f5e6480f05f5d7e=
eaaa0afb4e86425ae36 100644
> > > --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > > +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > > @@ -19,6 +19,25 @@ aliases {
> > >             ethernet1 =3D &eth1;
> > >     };
> > >
> > > +   reg_dc_in: dc-in-12v {
> > > +           compatible =3D "regulator-fixed";
> > > +           regulator-name =3D "dc_in_12v";
> > > +           regulator-min-microvolt =3D <12000000>;
> > > +           regulator-max-microvolt =3D <12000000>;
> > > +           regulator-boot-on;
> > > +           regulator-always-on;
> > > +   };
> > > +
> > Is this the correct voltage? I don't see a 12V rail in the RV2's
> > datasheet, and the board's specifications only indicate a 5V USB-C inpu=
t.
>
> Right, this should be fixed. Please note Han submitted one version of bas=
ic DT for rv2
> which I think that series will go in first
>
> https://lore.kernel.org/r/20260310161853.3900605-1-gaohan@iscas.ac.cn
>

I'm fine with that. Do we have an estimate of when these changes will
land? I'm fine with rebasing once those are merged, but I'd like to
continue with the review for the remaining changes in this patch
series and I'm unsure on how to proceed.

> > > +   reg_vcc_4v: vcc-4v {
> > > +           compatible =3D "regulator-fixed";
> > > +           regulator-name =3D "vcc_4v";
> > > +           regulator-min-microvolt =3D <4000000>;
> > > +           regulator-max-microvolt =3D <4000000>;
> > > +           regulator-boot-on;
> > > +           regulator-always-on;
> > > +           vin-supply =3D <&reg_dc_in>;
> > > +   };
> > > +
> > >     chosen {
> > >             stdout-path =3D "serial0";
> > >     };
> > > @@ -92,3 +111,32 @@ &uart0 {
> > >     pinctrl-0 =3D <&uart0_2_cfg>;
> > >     status =3D "okay";
> > >   };
> > > +
> > > +&i2c8 {
> > > +   pinctrl-names =3D "default";
> > > +   pinctrl-0 =3D <&i2c8_cfg>;
> > > +   status =3D "okay";
> > > +
> > > +   pmic@41 {
> > > +           compatible =3D "spacemit,p1";
> > > +           reg =3D <0x41>;
> > > +           interrupts =3D <64>;
> > > +           vin-supply =3D <&reg_vcc_4v>;
> > > +
> > > +           regulators {
> > > +                   sd_vmmc: buck4 {
> I'd suggest name it more generic and add a comment where device reference=
 to it,
> since buck4 requested by more than one devices, will make people less con=
fused.
> something just like:
>                         buck4: buck4 {
>
> > > +                           regulator-min-microvolt =3D <500000>;
> > > +                           regulator-max-microvolt =3D <3300000>;
> > > +                           regulator-ramp-delay =3D <5000>;
> > > +                           regulator-always-on;
> > > +                   };
> > > +
> > > +                   sd_vqmmc: aldo1 {
> > > +                           regulator-min-microvolt =3D <500000>;
> > > +                           regulator-max-microvolt =3D <3400000>;
> > > +                           regulator-boot-on;
> > > +                           regulator-always-on;
> > > +                   };
> > > +           };
> > > +   };
> > > +};
> > >
> >
>
> --
> Yixun Lan (dlan)

