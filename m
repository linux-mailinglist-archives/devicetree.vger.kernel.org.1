Return-Path: <devicetree+bounces-270534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHEnDjXppmnjZgAAu9opvQ
	(envelope-from <devicetree+bounces-270534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:59:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D531F1F0E42
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5EA38305E986
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C6A35F5EB;
	Tue,  3 Mar 2026 13:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iFQ5+lEo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7204B35AC32
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772545899; cv=pass; b=OLWNW3KSBD7/Y5LUFB2CM/j9wRv7iCYF6U/9OELhyANkVNnkV55SKsiTz6GhEqfKdxp444GrZ7bfHR4sumKhaxckqmh8inTgWAzOLawv85PxzDvkmoiERlI7qw2XnAsfBYqnirRN3/0R7rvfR6reqov3ArkedKz1FnByNMauZKQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772545899; c=relaxed/simple;
	bh=mjmj1erYg/zPkh28cbgKmeKfsU11/6Ku7tNZPAtZaFQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RIrqy5FNZIf7GGvAdI7UFmmU7jSOiyimbdeTGj12QbNQoJhShRBJAMknq3avdzjVYXWPfSfXfBLGjvbrRJ4FVm7oXi1rcaIMBi47To4JiDck7aWPSdrSGAaqJv0AXQ1J0dtTpBm7oVzezUhnf/Kw4HS3HC0QUlrRb3+yybVqtPc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iFQ5+lEo; arc=pass smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64ca09f2170so5727102d50.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:51:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772545897; cv=none;
        d=google.com; s=arc-20240605;
        b=Ag75Ry2/+fpVjWIvhVITr9Ml1URnrW/Msos6qo+oe18vU3SZNjEjOnY2l8jcPipKSh
         gGG8WfCKJarXtUljzc/nBAXnXH5DrJwiJ1hy0C52qrz12vo9XfssAjAWbcbFsYTzWsrp
         OVpZOFVdUmY7vfvE7EluxmAL3pG4yyySfzH9L9+vxPIVeObkHa5BViE14PyoBlwNQERL
         +YNS3qlyZ7Wp9jkqGLS/ZWRKvnjhehSS6lj/vo8Pdt3RUKrOF80Aa1wfJgPYP12tv3Zn
         KwM7TgStrqljod4kZBG8ZoAl7yJ1VnIXBZ8tL/oC3ABPau7h+iazIx0F8HmJBvjsOxjl
         svCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=aZn4gqDyUQYxhmDFWGYkcAn3/Qr9cauEsxLXdsoN45c=;
        fh=1XxNmTuYXkqfeAU0z5dagz9IBtEFy8JOFT9Y42AtWao=;
        b=kNm/gUIyCrwk7cMcRltDzXRYFza0Q33ylx8f2+3NaaD6yW+BoxLgg/pTRpwpsU15N2
         CtCKmRdaBj+rDb8rQt5JYV/+QsUszaGtILqgRHKOgLybk+r6BxceZt54F+fUnp2+B75Q
         HAImYSPaW2bQZuM7Ay2Ig9q0ucpd2yrPREnjzi0zasOPrMM0GkImjjgXO1cWrAOOyApE
         mf4Y1l5Atzg7DYazDpRHR/wZ7CKEgQfCui2s9QZGzMiyKXkVUybSrAaNztDAiJ7NRmAg
         j92L15xn1PoRI1MiPGLGlW80IAYSPwKJ/ZrFCSkV2nAF5uHZrMZCC8YpLqg4b+HV6Kwy
         vGig==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772545897; x=1773150697; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aZn4gqDyUQYxhmDFWGYkcAn3/Qr9cauEsxLXdsoN45c=;
        b=iFQ5+lEoB2el0avJWUiySiid7Xm3vF+lzTw7JeG21RlGZ/8F4+Aie8KJtOkqxkicwa
         WjucLXv1JekG49umecD7nAW7NShY5NZblI3nfTCzxkYi/mn/aW0/kVaAtdJLF0+CdMP5
         Ady10591p0R+MOEmpTf1Y+fNSp/gG16z9M7VpC4SGiyo71NGuQ4Pf4Cofa7uvqIX79Ae
         C7hQnb0Z+yVebxys+1HKZEmhpJwpsnoOMVyezMllEMZr6kds9T03hjYu2joimDXsgfdW
         r8NupcgBJLd+ZwEBusKn29a1R8Ma53Qo01yiF5KUE80+Q94+iyKb8TLCG+0683OwMCLi
         OX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772545897; x=1773150697;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aZn4gqDyUQYxhmDFWGYkcAn3/Qr9cauEsxLXdsoN45c=;
        b=k94Tuu57vBm7kcxVy5vZ1V5RuFlevD0U7qxwm69pAwN41JIUjQyKFlziZ2qiUuMTja
         IqYc2F2PymHTQRlTTWdjBV6dyuOgWq6rFM2se2BBECC/VFPD6Pijicsis6BzeGMGNN0O
         BmuDL3IVtR67fmcZSkDfJ8xy8T0+gaNa6ra85k807HMf3Cu/TvFhcTGEi5eF6qBEal5Y
         qgCenMy/JZPIlgUqFGLWHTvd5Iybaqcy5diItn4REMXVXgQ5WRYgtNjpfPkSWWRbC0Ws
         KEuQEr5BgEUQ8F6kmRgroYtmQt6KIykjSOQGj6xkg6WcQzoS45YKEZYGhCn709HLSD7O
         QPaw==
X-Forwarded-Encrypted: i=1; AJvYcCXdFfa+JL8Xa8u+4JPkPQDA7ymJARhz1zPXWepWCNicTN/0tCYQBWQOubiP8Yf3bZnhpJvTaNSb/Nfj@vger.kernel.org
X-Gm-Message-State: AOJu0YwdQz0A3+ZoxLgbgdqsX5XwD5aPaVfDygVBtktbE5oAQzpmZub+
	ZwiB9nAgOtowMDhhOaxKUAIx70V1HDOuNDi4jefJNXltg8UCmr5nsfv6RpZ5/LKPYe0j2ZC0LDv
	rAqZ2C458S0g97p4KDpt/cG+j1Rp1UEk=
X-Gm-Gg: ATEYQzxYR3bqyy6dXxruWOGaMHfdw0goSErFD6Y7vYQT6MRYK9PuplknDrqGDg2q2PM
	dc+vtLe4RIULO6W+j4KzQtxoIvHz+iU7qn48DTxU4eEijOQC7O2M/weeihtrLRXmvxphef2EXDN
	F2JBYt/XifFLXcpuJuYnOAr6AqNbYTOnAehm2ZUmIF2oUbeKVoWZbwXfRpbUFXILphHFCUXevJ4
	3W5o3MOzTK6/STtwjykQroIIzVVT4ctCH3+zXiOoQlQCVdYr0QAhTyvY3BfvhmHOnIWlmu5LOgy
	ULlnKGJe
X-Received: by 2002:a05:690e:90:b0:649:4997:3e94 with SMTP id
 956f58d0204a3-64cc20833c8mr10119824d50.12.1772545897333; Tue, 03 Mar 2026
 05:51:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
 <20260302-orangepi-sd-card-uhs-v1-1-89c219973c0c@gmail.com>
 <20260302-crewman-faster-9fd00b62e30c@spud> <20260302223803-GKB289813@kernel.org>
In-Reply-To: <20260302223803-GKB289813@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Tue, 3 Mar 2026 14:51:25 +0100
X-Gm-Features: AaiRm52NZmZiw1yUUKvM0Min02zDkPktW8qIv-Jsblu1CXoYU1NePFrvk318i6c
Message-ID: <CABdCQ=Nd9ZW6OBnAiuki=2+DhVraW19bh_m8=LLQGUKN8TkEdQ@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: mmc: spacemit,sdhci: add AIB voltage
 switching registers
To: Yixun Lan <dlan@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yixun Lan <dlan@gentoo.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: D531F1F0E42
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270534-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,d4015000:email]
X-Rspamd-Action: no action

El lun, 2 mar 2026 a las 23:38, Yixun Lan (<dlan@kernel.org>) escribi=C3=B3=
:
>
> Hi Iker, Conor,
>
> On 18:25 Mon 02 Mar     , Conor Dooley wrote:
> > On Mon, Mar 02, 2026 at 04:13:22PM +0100, Iker Pedrosa wrote:
> > > Add SpacemiT K1 AIB register properties for UHS voltage switching
> > > support:
> > >
> > > - spacemit,aib-mmc1-io-reg: AIB MMC1 IO register address for voltage
> > >   switching
> > > - spacemit,apbc-asfar-reg: APBC ASFAR register address for AIB access
> > > - spacemit,apbc-assar-reg: APBC ASSAR register address for AIB access
> > >
> > > These properties enable the driver to perform voltage switching betwe=
en
> > > 3.3V and 1.8V required for UHS SD card modes.
> > >
> > > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml | 15 +++++=
++++++++++
> > >  1 file changed, 15 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yam=
l b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> > > index 13d9382058fbc1c12be1024d1c550f04a825673c..4d6590aa8262009b6e569=
7a04b45cf3736c0fa42 100644
> > > --- a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> > > +++ b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
> > > @@ -32,6 +32,18 @@ properties:
> > >        - const: core
> > >        - const: io
> > >
> > > +  spacemit,aib-mmc1-io-reg:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description: AIB MMC1 IO register address for voltage switching
> > > +
> > > +  spacemit,apbc-asfar-reg:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description: APBC ASFAR register address for AIB access
> > > +
> > > +  spacemit,apbc-assar-reg:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description: APBC ASSAR register address for AIB access
> > > +
> > >  required:
> > >    - compatible
> > >    - reg
> > > @@ -50,4 +62,7 @@ examples:
> > >        interrupt-parent =3D <&plic>;
> > >        clocks =3D <&clk_apmu 10>, <&clk_apmu 13>;
> > >        clock-names =3D "core", "io";
> > > +      spacemit,aib-mmc1-io-reg =3D <0xd401e81c>;
> >
> > This looks very very wrong to me. This is part of the pinctrl
> > reservation:
> >               pinctrl: pinctrl@d401e000 {
> >                       compatible =3D "spacemit,k1-pinctrl";
> >                       reg =3D <0x0 0xd401e000 0x0 0x1000>;
> >                       clocks =3D <&syscon_apbc CLK_AIB>,
> >                                <&syscon_apbc CLK_AIB_BUS>;
> >                       clock-names =3D "func", "bus";
> >                       spacemit,apbc =3D <&syscon_apbc>;
> >               };
> > so if you need to change something here, you need to do it via pinctrl.
> >
> > > +      spacemit,apbc-asfar-reg =3D <0xd4015050>;
> > > +      spacemit,apbc-assar-reg =3D <0xd4015054>;
> >
> > These two are the apbc syscon:
> >               syscon_apbc: system-controller@d4015000 {
> >                       compatible =3D "spacemit,k1-syscon-apbc";
> >                       reg =3D <0x0 0xd4015000 0x0 0x1000>;
> >                       clocks =3D <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>=
,
> >                                <&vctcxo_24m>;
> >                       clock-names =3D "osc", "vctcxo_1m", "vctcxo_3m",
> >                                     "vctcxo_24m";
> >                       #clock-cells =3D <1>;
> >                       #reset-cells =3D <1>;
> >               };
> > so add a phandle to the syscon (like the pinctrl currently has) and
> > access these via its regmap. What you've got here is a non-runner,
> > sorry.
>
> We've gained this support in pinctrl which already accepted in mainline,
> it's done as Conor suggested here, so you can drop these properties along
> with the patch [5/10], see
>
> https://lore.kernel.org/all/20260108-kx-pinctrl-aib-io-pwr-domain-v2-0-6b=
cb46146e53@linux.spacemit.com/

Thanks for the pointer! I missed that these had already landed in
mainline. I'll rebase the series, drop the redundant properties and
patch [5/10], and send a v2 shortly.

>
> > pw-bot: changes-requested
> >
> > Thanks,
> > Conor.
>
>
>
> --
> Yixun Lan (dlan)

