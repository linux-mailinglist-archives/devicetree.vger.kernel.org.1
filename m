Return-Path: <devicetree+bounces-274677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLsMOkvesmmtQQAAu9opvQ
	(envelope-from <devicetree+bounces-274677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:39:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D659E274B58
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:39:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 659543019449
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03F623D8917;
	Thu, 12 Mar 2026 15:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ue+sCaJP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D429E3D890F
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773329965; cv=none; b=KkSzcJqUkha1+UaaaGO5esX+UT5JcAx6fTXku6GLnaM2lAvqjndFQR2JSeDT7t5+QI1A8wcEw5rbdxqrbdFIB+iH0iD7LltUwua7KYTPek7XWJoZOYlUQ8VmIFWm4olK5ZR85Evc7DQDkRXdQBi3CDNZl3Bjwsa48EaVAtmahPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773329965; c=relaxed/simple;
	bh=XXvLl1JMNQ39aGONuxM9Xyq2A8SuZ0XcrOSi1495jRg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XcPl/BsJCffFC/vT3x0iAnbnu43zjK+6lNvyauyCXIe7RmbiLqldTG9mpkNV+ewEOmDH1xcbs1HVR74//lKsrqG+n8+UKm159wxcUR8PVHV82n4deeGuRpx4n+P1asIQz2KMkoY9mSYBNzznx1uDiosIYahcXDN5Q7iEbAtdQTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ue+sCaJP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5FD9C2BCB9
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773329965;
	bh=XXvLl1JMNQ39aGONuxM9Xyq2A8SuZ0XcrOSi1495jRg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Ue+sCaJPdbhAEOWzvPHVLaPyvnzg01KwD4B65c+aw9s0Ei1P05V43wUb8rSXgLrmZ
	 fByCIylTYRTwsBtN5hfdzNl5ApMZ/CocaUe9QQp+ffto1cRZs32yr1u560PXqDG8ZU
	 bCvG4zTCPlz32wpkblyaHWhuJxAe50WyULlXONm2UrSxfpobZ9dwlqStnEi26EucZN
	 5WOHNLa10CRqkhRhJwQbHuuOZLx+PA7keeoZyfGZAOU8Pj4JC3d09OANr4JferUpkj
	 ZnJgukMQhS8i32W0HAxUr0g2Yy3umDBSMfrYAolJISlf9lGI+o6eP+hDtjNny6nWbw
	 CSV/MYpp1YWjg==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6634bb959a2so1555924a12.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:39:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU0B7Sv/y42HdYbPq/GjbBvZW3k52PP3Kd4ObE27ORU7Xk/MdEU2wY4mziPujPAN01XyEOKvamkKnsg@vger.kernel.org
X-Gm-Message-State: AOJu0YyMTkVHsxPjytNw7xH59VwrvqiBkPZ7uatoPRMdWd8LZhQ9nu4F
	JCv4SgXQCtJ28H3zfLoKj54zalJlwCVkRJ6bRC9WLbiyCy2dzFeqxo2wBtvJFzgPZEOHgfPgeo4
	Sqe5m5Dzii1L6VcglOeQYtfb7Gn8HKg==
X-Received: by 2002:a17:907:3ea8:b0:b97:3bbe:e432 with SMTP id
 a640c23a62f3a-b973bbef8d2mr287604066b.23.1773329964022; Thu, 12 Mar 2026
 08:39:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312085258.11431-1-clamor95@gmail.com> <20260312085258.11431-3-clamor95@gmail.com>
 <20260312152057.GA3156966-robh@kernel.org> <CAPVz0n2GFgsrqo4_MkvNwd9t=DMU4ZGQzrpNjU+PZ4_Ysx_jcg@mail.gmail.com>
In-Reply-To: <CAPVz0n2GFgsrqo4_MkvNwd9t=DMU4ZGQzrpNjU+PZ4_Ysx_jcg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 12 Mar 2026 10:39:11 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKP-uYZf3MLFd5JrrsZ1+pxj-y+te_3uiM9N+5Xu4phUQ@mail.gmail.com>
X-Gm-Features: AaiRm53TzVm_dQOjnoVm3K-wLtXfqwBBSfOhKn3tw-hQAbmwJ_qep65WpVUysIo
Message-ID: <CAL_JsqKP-uYZf3MLFd5JrrsZ1+pxj-y+te_3uiM9N+5Xu4phUQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: pinctrl: pinctrl-max77620: convert to
 DT schema
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274677-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,arm.com,samsung.com,bootlin.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: D659E274B58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 10:34=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.c=
om> wrote:
>
> =D1=87=D1=82, 12 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 17:20 Ro=
b Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> > On Thu, Mar 12, 2026 at 10:52:55AM +0200, Svyatoslav Ryhel wrote:
> > > Convert pinctrl-max77620 devicetree bindings for the MAX77620 PMIC fr=
om
> > > TXT to YAML format. This patch does not change any functionality; the
> > > bindings remain the same.
> > >
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > ---
> > >  .../pinctrl/maxim,max77620-pinctrl.yaml       |  97 +++++++++++++
> > >  .../bindings/pinctrl/pinctrl-max77620.txt     | 127 ----------------=
--
> > >  2 files changed, 97 insertions(+), 127 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/pinctrl/maxim,m=
ax77620-pinctrl.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl=
-max77620.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/pinctrl/maxim,max77620=
-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/maxim,max77620-pi=
nctrl.yaml
> > > new file mode 100644
> > > index 000000000000..4e5f997317ca
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pinctrl/maxim,max77620-pinctr=
l.yaml
> > > @@ -0,0 +1,97 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/pinctrl/maxim,max77620-pinctrl.ya=
ml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Pinmux controller function for Maxim MAX77620 Power managemen=
t IC
> > > +
> > > +maintainers:
> > > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > > +
> > > +description:
> > > +  Device has 8 GPIO pins which can be configured as GPIO as well as =
the
> > > +  special IO functions.
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/pinctrl/pincfg-node.yaml
> > > +  - $ref: /schemas/pinctrl/pinmux-node.yaml
> >
> > Don't these properties apply to the child nodes?
> >
>
> They do, but not all properties defined in those schema files are
> applicable for this binding. I have marked those which can be applied
> in the node patterns.

Then additionalProperties is appropriate.

> > > +
> > > +patternProperties:
> > > +  "^(pin|gpio).":
> > > +    type: object
> >
> >        additionalProperties: false
>
> I will move additionalProperties here then.

No, moving it is wrong. You need it here AND in the parent node.

Rob

