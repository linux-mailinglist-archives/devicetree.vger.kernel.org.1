Return-Path: <devicetree+bounces-263051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CF+lNA2rhGk14QMAu9opvQ
	(envelope-from <devicetree+bounces-263051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:37:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA79F419A
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 650953080366
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 14:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4FA407596;
	Thu,  5 Feb 2026 14:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="g82gX6sG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A19221FAC
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 14:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770301923; cv=pass; b=ZZfPgSDRs999Ok0qBIuhiR1oza/yF++3qa2sUHjHGwOKjnJ8NZpSMiJxr7NmYhHeyOIPWP84RHklXdQ9P3besjwjfZQ4UHSj56Kh3FCZqppozDGMgvLow+9UZ3udBIF1Q1CffxzP3dZq8c6h/CvJJ39U5X/SlP0r0WHzGF0YzNM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770301923; c=relaxed/simple;
	bh=xdjm0+lBWRkwngNnNQxKBDMh0sZIVrv9rCYoWstx89c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uUlcP29/IaLs89scQKV0t5t8piErolXPREe6O2Jm/tdbehbpWl7O0eNAyKOiyGDi0OCHSr1ICNZNlLAgTa45H2k35cTW2tG3PfqhTKrPt4x/slDPC8dR7Y06ZKt65TnisQ1CK5oBbEXvyIcn1GYU1oHSn4ISZxEIbevnXFIfAl4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=g82gX6sG; arc=pass smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-649e97f1e99so826262d50.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 06:32:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770301922; cv=none;
        d=google.com; s=arc-20240605;
        b=ITtR6rvvEBZd4LYBNPmI6A7LoIV+G0VkAEaUak7HI8lpTNYtawvH2Nol1rltho/XQb
         iulBbnDVPNvV0p3+TUVaj9Kuar190GJA94lyAo88m8/OoPuFgjJAk7IfPHjuEGsjBzRY
         IWKc9dV7K1tjzn/zD2PgqLaD8rICpBiwrmzBreWNWP3+Qk68f3htwzhuBtt4lQOaNF/x
         wUtL2nl8sXyOLDbSeYAYWOPtJKafjJjkih0PN5Y6RBx94lQJ9YNU+AQi0hsZok0l6mtX
         MyINGVD44/9eNYQGtWfuRyny3cEwFZI0IkcYX4XWwMeirqMqrcSzUSZzMAxbpAMGZ/KT
         qerg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s5mMNeV59BxNuCmPNiqNLJdD8q5E/v+np7SsY+Ptj4Y=;
        fh=KTj0ShBl2jmUR8KO7+ISF+V10Iwv8/W39ZQrweF3vew=;
        b=PbAD8BrG2FTti/jAHJbIx6NEmwqj9QN72IiVUpOARTdkcEqrRb7V2YRVEO3Cr9+dcb
         YNCGzDWn/6sZiMNcxaJ8pb1//nW8MVbI+CrhvcuOsHETctCnY6TdAXUuO7K0uCMGrcUD
         W28qcUXgQHJeQ4cRQt44v60zaaf2snR6H8ggLFcSFTNY5196m27k8JqNMlvSpS/ldWqd
         ZGqwaBiq45SUNvJEemVK6kk7SMVOoB95SbhKa3y76Ua4OJzG25BN5OedqTLW5cSXa1db
         xgpSLGNw2bdi7I8IIRUAvUzca6m5d8P7XntfuDMW+XA3GewHFhyNCJx6EjpIpBYOPmDI
         cdUA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1770301922; x=1770906722; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s5mMNeV59BxNuCmPNiqNLJdD8q5E/v+np7SsY+Ptj4Y=;
        b=g82gX6sG1xHwWYn+xlsR4ajirWsEg8VBcGrMAMd3zS923ZYrL+BWmHhEKDHzTYDtJB
         46Gk988JChlHKQ2A8EOA4r2eS9B0I4KJBAAJg7k/JqP2I1B/NGHL24qwXpe3fZVse7NI
         ETiEEGV/evo+kDk3uFs1FeIDlOU1zYlx0Oerfwl7GnFDVpuKVLfRGC1oPs63cmROAS9G
         pl52VnM752D99pD8T9lwOUkRDd1IKay8tOgTCKjO0H4cH4w3pjIFiyKQQjZOWkkQjxCP
         vd15AALs7loVqXs+CEPI70YkgVdjOiU+pcUn7GvfQBw+qiBQMFWwhoMjPo5+BizB+8Nb
         oaTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770301922; x=1770906722;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s5mMNeV59BxNuCmPNiqNLJdD8q5E/v+np7SsY+Ptj4Y=;
        b=QK1/OD+RqmpXEHOW75xD5EfL1yc+YbIUt5gwojiS/pvCBfHm/4cksH8/fomOLR/7jY
         R911EDqwn75baQly1Re3XicaOUa2weaR88pHRxTyGT4ISyBFDDw27xa8wRYjQsiTYH7C
         MwRwmnbxOR0lVqv+1oKTHR2rzXu9pozcRnxct1sXO0fIWTzRhczfYoiPZr4ZDxkQ9waK
         KnQHljBmGTWL0bVma6tlYBRFXT8z+wwHcwzXFL2iwYMS5p6ULdb5VWTQLV4X+LBQ1SEg
         q+KRxbBYFJQvHYP6Gl9J18DEdBPVARzguR7FNJD6XXE4bhhc2yW+hNncSrwxTetlwC6y
         in+w==
X-Forwarded-Encrypted: i=1; AJvYcCWH8/6Mt/UNMNjeH6by6zq1JPR7hVf5h7u11ZB9QdKm4JdLefAkJ/Fq7WoFUi03H5mnuGCIKOXoCsLA@vger.kernel.org
X-Gm-Message-State: AOJu0YwbizT5JSdXdXa+W+Athgo8aAosc4YdqD1iSrwhWaX7JVg9zUZn
	erN8ZIrqw6ytPA8lGnINQ17PV64UCM4LzmGjVEyogOJ2szjKsu9seODv+L7kIhdhmHEt9PXh8d1
	zSAAcRk9ae9ETBU6E6wsJn3inWnHyJzHJGU9Pho1EMg==
X-Gm-Gg: AZuq6aJWYQUio23QLoA1M78ucNHy4zvV1BR5pXPIF8gmWa2OupBFb9soGZYMnq0IJKu
	JKS+YoErDOiqdXNWdEbuzhLBH8FN9h7cuwWSUAZVLvLMTNYeG7VrXQqNBS8xLIpLptn5Fs6r7zn
	oavS5IyQUJBN8KKuabSx1A9IyE7OFC4dNc5NiBSkV1JkomYOciaOxyq5WLyBJff2B+AIz309Rcf
	nLUe8hnlPlOSn2+6bApHc0Lcq+YvC63mNTKDakwTTgGtbuxCKcq+FGv1XaACz69pNrUGz/gx2wX
	Uq+Aod0LvMqr6akmAicbfQ+3tW8foWQtTKuY4l/m3eRBkymfAM5dj2NBdXCqquZZHguTd6A=
X-Received: by 2002:a05:690e:e88:b0:649:e501:21b2 with SMTP id
 956f58d0204a3-649e501241cmr3675188d50.12.1770301921673; Thu, 05 Feb 2026
 06:32:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202-atlantis-clocks-v5-0-0922e43acaba@oss.tenstorrent.com>
 <20260202-atlantis-clocks-v5-1-0922e43acaba@oss.tenstorrent.com> <20260205-upbeat-tortoise-of-admiration-b3c0eb@quoll>
In-Reply-To: <20260205-upbeat-tortoise-of-admiration-b3c0eb@quoll>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 5 Feb 2026 08:31:50 -0600
X-Gm-Features: AZwV_Qh-ae-dWwwvtEXuKahrL02iNou0eQ7ZulAZRSirBJyrvo1tifhCxLYVs9s
Message-ID: <CAEev2e8_4LSLNvHsiC4d7Rrd2GmjQ_5GRHU6b9-Ha69+yvn5cA@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263051-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,a8000000:email,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 8AA79F419A
X-Rspamd-Action: no action

Hi Krzysztof,

On Thu, Feb 5, 2026 at 3:23=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Mon, Feb 02, 2026 at 01:46:49PM -0600, Anirudh Srinivasan wrote:
> > Document bindings for Tenstorrent Atlantis PRCM that manages clocks
> > and resets. This block is instantiated multiple times in the SoC.
> > This commit documents the clocks from the RCPU PRCM block.
> >
> > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> > ---
> >  .../bindings/clock/tenstorrent,atlantis-prcm.yaml  |  54 +++++++++++
> >  MAINTAINERS                                        |   2 +
> >  .../dt-bindings/clock/tenstorrent,atlantis-prcm.h  | 103 +++++++++++++=
++++++++
> >  3 files changed, 159 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/tenstorrent,atlant=
is-prcm.yaml b/Documentation/devicetree/bindings/clock/tenstorrent,atlantis=
-prcm.yaml
> > new file mode 100644
> > index 000000000000..0f3e18f5ea1a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm=
.yaml
>
> Still wrong name. Look how is your compatible called.

>
> > @@ -0,0 +1,54 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/tenstorrent,atlantis-prcm.yam=
l#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Tenstorrent Atlantis PRCM (Power, Reset, Clock Management) Modu=
le
> > +
> > +maintainers:
> > +  - Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> > +
> > +description:
> > +  Multifunctional register block found in Tenstorrent Atlantis SoC who=
se main
> > +  function is to control clocks and resets. This block is instantiated=
 multiple
> > +  times in the SoC, each block controls clock and resets for a differe=
nt
> > +  subsystem. RCPU prcm serves low speed IO interfaces.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - tenstorrent,atlantis-prcm-rcpu
>
> Nothing in the changelog explained why 2 other compatibles were dropped.

I have mentioned in the changelog in the cover letter that these will
be added back when the driver for them is added (based on my
discussion with Conor).

>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +    description:
> > +      See <dt-bindings/clock/tenstorrent,atlantis-prcm.h> for valid in=
dices.
> > +
> > +  "#reset-cells":
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - "#clock-cells"
> > +  - "#reset-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    clock-controller@a8000000 {
> > +      compatible =3D "tenstorrent,atlantis-prcm-rcpu";
> > +      reg =3D <0xa8000000 0x10000>;
> > +      clocks =3D <&osc_24m>;
> > +      #clock-cells =3D <1>;
> > +      #reset-cells =3D <1>;
> > +    };
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index dc731d37c8fe..0fc7bc6d0458 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -22534,8 +22534,10 @@ M:   Joel Stanley <jms@oss.tenstorrent.com>
> >  L:   linux-riscv@lists.infradead.org
> >  S:   Maintained
> >  T:   git https://github.com/tenstorrent/linux.git
> > +F:   Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm=
.yaml
> >  F:   Documentation/devicetree/bindings/riscv/tenstorrent.yaml
> >  F:   arch/riscv/boot/dts/tenstorrent/
> > +F:   include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
> >
> >  RISC-V THEAD SoC SUPPORT
> >  M:   Drew Fustini <fustini@kernel.org>
> > diff --git a/include/dt-bindings/clock/tenstorrent,atlantis-prcm.h b/in=
clude/dt-bindings/clock/tenstorrent,atlantis-prcm.h
> > new file mode 100644
> > index 000000000000..3820781127c3
> > --- /dev/null
> > +++ b/include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
>
> Still wrong name... Look at your compatible.
>
> Please read writing bindings doc in DT dir.

We will have multiple compatibles in the future (I dropped these in
this version and I have mentioned this in the changelog in the cover
letter) named "tenstorrent,atlantis-prcm-xyz". The bindings document
suggests picking a more generic name in this case, so isn't
"tenstorrent,atlantis-prcm" okay for that?

>
> Best regards,
> Krzysztof
>

