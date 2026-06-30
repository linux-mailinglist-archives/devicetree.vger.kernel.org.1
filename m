Return-Path: <devicetree+bounces-318029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TPChLAcURGqEoAoAu9opvQ
	(envelope-from <devicetree+bounces-318029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 21:07:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 990F96E76D7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 21:07:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PVAhE8G3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318029-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318029-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32B5C304E1EA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A62733BED31;
	Tue, 30 Jun 2026 19:07:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF07934389D
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 19:07:45 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782846467; cv=pass; b=rbGGA/Dk2p6B32sDXl+GqwiOdMuFd+/ZN0pzZbvvIA83GEmn8q+SXfkR7pnDc3n6do/aS9fKSKxxJ6xP57JeH6vHTKCeRRNp5I01Imye8y2wkkA5BbBrmaCX/tABw5e+0Ia7JJ7BJjH2ToJkBpCIMGfYEkDlAAFnVfffqVKfRF8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782846467; c=relaxed/simple;
	bh=4qfKdcPNbMd+fmxdOg3E5zb3rcSZDsE229cL1BNUGrE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WkQCd+1ZbeZa18NdsoJtYgPePedZligTwGkKBjO6uKC8TZyNeDqNm5Hxr8df3CklFI8jN5S6pPnXw3bO/SRoYiKrqv62jkqGCovUItxXqd43wnuGG7lKj9pusA0It7izB5OJTNlaMtaST2BtvcTWSOWaW2o4M9vY6+TpiJL/lyo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PVAhE8G3; arc=pass smtp.client-ip=209.85.208.50
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-695ec43e2b2so1012942a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 12:07:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782846464; cv=none;
        d=google.com; s=arc-20260327;
        b=iMjFEfPoY3A8U08PVAGYhP0ml17nFjD+1bFed0vsCXZbOEv++gbpcK1vZYP5m9vkKl
         1aV3qgGDO/iA+ZsS89srL5VxPcHcrcN73rFcIfMAJ6cxT2LFy+ZfBwIWGjnLmEn6/FaU
         lAouzSTLAM8szkGl0kBlEIWWi7mVvtuKp6FxDixnUZSd835tHwCdCAFmGqejc9NcykQl
         xWdkOWJIoGobzqdFXzhrG8sPhZz9f3RCZaMUPPKyfPU0GVifXnpO0oWlQWA+ZveNGlpK
         TQigXNwhlwRbTQaTrcAtzLL0dTonwIOx9C8LoNKfSsXR1PKbtangLBUKe2Nt6VOiBBGC
         AOGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=O1yeGWaj69jHRqNcBAjK19En1bt9Op8e8Yvz5aRmb5k=;
        fh=w+F040249OPwEE8njb6hcNRLWIwKN08UKtbEWPyzBm0=;
        b=Au5+p1iFWGvXLSIkQPEE0wgxQUvN41Ne+wijyAnsL6fDfErkCWllhapOlB9avldEez
         4VTRW5uJ6ItvfPzxWfHJ8cqnTtr0/+zp/8fFhCOYYGRtVJcfKR7maE0OViKQ90IepfVC
         s72WWyelx7NwmYJUdyAKygaEymLo1xwGdn7fW5wHmYHlNYkCrG2PvWb0NT55p7Odssm2
         LKLMr/kXkeSdQYHqw2VYPaFLcPl4t+OfkoCVumlrNag3gQTVLfqxzR9gFUwNAM84iXA5
         GVY7Jo0Fv8cT69MVKRHDLBwQt8tVpa4AuPoCWoye8oLrgShixI2yGU7MBXxOIBYP34Eq
         B2fg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782846464; x=1783451264; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=O1yeGWaj69jHRqNcBAjK19En1bt9Op8e8Yvz5aRmb5k=;
        b=PVAhE8G3qBTx+DRh6YXDNu50LwZxUM/ae7En9qaWKjy/XIHfWmnYHvPPQmv8b61jl0
         F7Dy3eEqKERVj72zjIW/zv0YNYNv+dlA8cFpyioZv95QPgQX1Ti1Vjw0SczKGkfnds3a
         CYzi0+L34Ahcx48NRPQ8nr1tQX3vlmFDg1GyJDhraqkm1Z2l3a45euYrxugjzGBoJBgi
         t6Hexz8uMgqsykOLva73GPQ3hfK4hybhv5YVO513uPgm1Wd33lT4UwC0O6w1cvQrSJ7/
         64vK38bNXPEfJKVWdGuMm6pYwCprCYxSEPGJ1hqrPYF12PIMsoos8hGscSmRCZSmiVE5
         StJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846464; x=1783451264;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O1yeGWaj69jHRqNcBAjK19En1bt9Op8e8Yvz5aRmb5k=;
        b=IL1IkYCJMKtwhWGk7JOJBYHG4drnjdiXWjiGqaOtGpdEn8XAsjahLntYe/stkcNWaU
         kq9QQTe5ksFgLokyXEDR6VMU5czx0G4LO3ZRPSNlNm0obIJB48WIYH6EK14MqLSAI0tQ
         sIeSjQVNPS8+jhVmJCn3uxogFU2G6IgEVvIF0NwSXMhQC8eSfIOaxWgMBplB4bnWj0TX
         GYL6mai7raWl+hKvnqB6pD+kHeoxVWAqrwmL6T0VK4ktMQ76KR9mpiJfLsv6QJm6IEO0
         OV08pxw0IpPRKd9E67ZHFzOWtUEson8Ko16XYLoQB3R92KfdYEHpNs3pAd4yM+zPcsFh
         U3sw==
X-Forwarded-Encrypted: i=1; AHgh+RqJLX+i1jvliiJK6r3VNafeFIqaP6yJ+/QzeZ8mZFSRTUroN/Vh6HdyrOxSprPRD9FSTLLduaiM7erZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzpdmYBdS8WkyLzx//WvyHHUhlY0EjBekB/+pQFtVUkq60PGWVn
	OnJrCJ5X/sQiPtde3D+VaZ7tM4Axq87x2zqF944wBs0ubxZTj6/gIYMI1PfsFOipYKeWgwvSOtK
	b3gIclVf9LlU82CkKCfzmxb8G3KS3VGc=
X-Gm-Gg: AfdE7cnbgjCrrPjm+RVm9n1MFaEEErpYDVo1iqASMHpmQmJbCUIOU12nug/5xWAtWOZ
	hzZ1lW7apMxXBhGiu/zk2Re1OKE/V2HS+nqPTY+L7S/hoABc+i5nlFMFdF/Q97SyHlmW+ReF75B
	DvY8Nqovh2inb7BlZ6nWyujEzm2NTt6cj9R72pMtZLvSkOyhhIvqEDNeidq2rfA03HOJixD6puC
	0Knmjg5kIZUBg0AGy5llscs45TdfSywemFelCZTRXbspdyb55K0wrDY5itDJOj4EjeU9jbMpF+f
	XTSTi+5dH/SkVgBhhItkxNc8LmgaVw==
X-Received: by 2002:a17:907:1c10:b0:c12:2aef:af2b with SMTP id
 a640c23a62f3a-c12872fd5e2mr135482866b.4.1782846464204; Tue, 30 Jun 2026
 12:07:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260622-ti-clockdomain-v2-1-434dbe0789e2@gmail.com> <20260630154723.GA3691228-robh@kernel.org>
In-Reply-To: <20260630154723.GA3691228-robh@kernel.org>
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Wed, 1 Jul 2026 00:37:32 +0530
X-Gm-Features: AVVi8Cfo-JqWOlg_d7zh2AaoYqBQAA2D-Cv71ouh_g1J5aYwyhQ5cFnNCC6tm8Y
Message-ID: <CAOWyW_7oSr_T0qU9aWZeU2-_p6Hrwi-9byKvVGq8Df2z0k0TTA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: clock: ti,clockdomain: Convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
	simona.toaca@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kristo@kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:daniel.baluta@gmail.com,m:simona.toaca@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:danielbaluta@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318029-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jbhargavu@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbhargavu@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,vger.kernel.org,gmail.com,ti.com,nxp.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 990F96E76D7

On Tue, Jun 30, 2026 at 9:17=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Mon, Jun 22, 2026 at 11:21:33PM +0530, Bhargav Joshi wrote:
> > Convert TI clockdomain to yaml DT schema. Drop '#clock-cells' from the
> > required list as this binding doesn't define a new clock binding type,
> > it is used to group existing clock nodes under hardware hierarchy. Most
> > existing dts omit '#clock-cells'.
> >
> > Update the reference to the old legacy text binding in the description
> > of bindings/clock/ti/ti,gate-clock.yaml to point to the new YAML file.
> >
> > Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> > ---
> > Changes in v2:
> > - updating the stale reference to the legacy .txt file inside
> >   bindings/clock/ti/ti,gate-clock.yaml to fix make refcheckdocs error
> > - Link to v1: https://lore.kernel.org/r/20260621-ti-clockdomain-v1-1-e9=
9a56af98ea@gmail.com
> > ---
> >  .../devicetree/bindings/clock/ti/clockdomain.txt   | 25 -------------
> >  .../bindings/clock/ti/ti,clockdomain.yaml          | 41 ++++++++++++++=
++++++++
> >  .../bindings/clock/ti/ti,gate-clock.yaml           |  2 +-
> >  3 files changed, 42 insertions(+), 26 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/ti/clockdomain.txt=
 b/Documentation/devicetree/bindings/clock/ti/clockdomain.txt
> > deleted file mode 100644
> > index edf0b5d42768..000000000000
> > --- a/Documentation/devicetree/bindings/clock/ti/clockdomain.txt
> > +++ /dev/null
> > @@ -1,25 +0,0 @@
> > -Binding for Texas Instruments clockdomain.
> > -
> > -This binding uses the common clock binding[1] in consumer role.
> > -Every clock on TI SoC belongs to one clockdomain, but software
> > -only needs this information for specific clocks which require
> > -their parent clockdomain to be controlled when the clock is
> > -enabled/disabled. This binding doesn't define a new clock
> > -binding type, it is used to group existing clock nodes under
> > -hardware hierarchy.
> > -
> > -[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> > -
> > -Required properties:
> > -- compatible : shall be "ti,clockdomain"
> > -- #clock-cells : from common clock binding; shall be set to 0.
> > -- clocks : link phandles of clocks within this domain
> > -
> > -Optional properties:
> > -- clock-output-names : from common clock binding.
> > -
> > -Examples:
> > -     dss_clkdm: dss_clkdm {
> > -             compatible =3D "ti,clockdomain";
> > -             clocks =3D <&dss1_alwon_fck_3430es2>, <&dss_ick_3430es2>;
> > -     };
> > diff --git a/Documentation/devicetree/bindings/clock/ti/ti,clockdomain.=
yaml b/Documentation/devicetree/bindings/clock/ti/ti,clockdomain.yaml
> > new file mode 100644
> > index 000000000000..9494cbb1a942
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/ti/ti,clockdomain.yaml
> > @@ -0,0 +1,41 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/ti/ti,clockdomain.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Texas Instruments clockdomain
> > +
> > +maintainers:
> > +  - Tero Kristo <kristo@kernel.org>
> > +
> > +description:
> > +  This binding uses the common clock binding in consumer role. Every c=
lock on TI
> > +  SoC belongs to one clockdomain, but software only needs this informa=
tion for
> > +  specific clocks which require their parent clockdomain to be control=
led when
> > +  the clock is enabled/disabled. This binding doesn't define a new clo=
ck binding
> > +  type, it is used to group existing clock nodes under hardware hierar=
chy.
> > +
> > +properties:
> > +  compatible:
> > +    const: ti,clockdomain
> > +
> > +  "#clock-cells":
> > +    const: 0
> > +
> > +  clocks: true
>
> At least put some range of number of clocks.

There is no specific bound for the number of clocks per domain nor does
the driver enforce it so I left it as 'true'. In existing DTS files, the
largest is am35xx's core_l3_clkdm with 39 clocks. No fixed bound
otherwise. So should I keep it as 'true' or you'd prefer a specific cap?
>
> > +
> > +  clock-output-names: true
>
> If #clock-cells is 0, then this can only have 1 entry (maxItems: 1).
sure I will fix this.
>
> > +
> > +required:
> > +  - compatible
> > +  - clocks
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    dss_clkdm {
> > +        compatible =3D "ti,clockdomain";
> > +        clocks =3D <&dss1_alwon_fck_3430es2>, <&dss_ick_3430es2>;
> > +    };
> > diff --git a/Documentation/devicetree/bindings/clock/ti/ti,gate-clock.y=
aml b/Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml
> > index eaa727ab0d7f..438e190d1067 100644
> > --- a/Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml
> > +++ b/Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml
> > @@ -19,7 +19,7 @@ description: |
> >    that is used.
> >
> >    [1] Documentation/devicetree/bindings/clock/gpio-gate-clock.yaml
> > -  [2] Documentation/devicetree/bindings/clock/ti/clockdomain.txt
> > +  [2] Documentation/devicetree/bindings/clock/ti/ti,clockdomain.yaml
> >
> >  properties:
> >    compatible:
> >
> > ---
> > base-commit: acb7500801e98639f6d8c2d796ed9f64cba83d3a
> > change-id: 20260610-ti-clockdomain-a27dd0fa1ad5
> >
> > Best regards,
> > --
> > Bhargav
> >
> >

Best regards,
Bhargav

