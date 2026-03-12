Return-Path: <devicetree+bounces-274711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAx6MGnpsmljQwAAu9opvQ
	(envelope-from <devicetree+bounces-274711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:27:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6734D275919
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C834A300D77C
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8F0B3F87E6;
	Thu, 12 Mar 2026 16:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NPxyPH1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23463F7E64
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773332837; cv=pass; b=ZFkSkal/J4hXeVPLdonDZBzlQzkv3+KGEyMKPAwQbtMikplNsRL2SPOt5DIHzWlG1YXe5OHaJKlksHsMzpevMunIwyT16OCqjd3mZtueOPWJkQGC66RYnhgO8fD8mxHEJihyBZFSka8jIkEmnkF7q9pXXk0nLxoTL69MJzqjGMM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773332837; c=relaxed/simple;
	bh=uJhH0lI1sVgit2CkGLU8u1v8dwsbJYGM2kBA3mKuxJ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IhuZoQlqekcCCv93f5/JUIgKdtR22jVoaLnVcQQj8IJfyDwreIwBg7Lcesv8X9qGXHorc+AidxI+iV2WUYHli5lRN2Hkas/IiwmBWEmjTPIENJSGsnagh8w/WwMom1DVUIwL/MX2f5hng9ca3gGFyhSvlaJXD34y1Hu0cHPskQ0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NPxyPH1U; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439b94a19fdso1200187f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773332830; cv=none;
        d=google.com; s=arc-20240605;
        b=IFSCszenKKM9rRMPa6uZS4WOG4ACVgbr6gJv3P2q1RxcR1EEQME/w3/5dclFuQqdrW
         TN6GKzqxf9ksw/p62gYeYdFSvB08WMiJzPemfA2F23aBZHwRHx9axP/BCyZnymbn5Njb
         8LK3pTCzZL6lxziAfjGSkKePtoC/NfzX5UFr1ABdoqRDbkKF4ZriWnQoLTij2nfTq1Ff
         o+d7EY01Z+Odnaudo+KXpjxIkzPvmedZqQMneIuvmqhanyTsChWei5R6bUIQqHM1Ct3+
         gNu45PVDThTp9HggjFcGs3CkJjrYsbDfN8ZkxoMZqEyHTN41v4tBkXHytBrSDIHyynoI
         U8og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=I7Vb1PKX3Lf9CJi8XSxHNY/kA1vBSZWZueHJy5RvI9M=;
        fh=KY49T0NUqKI6pYXBeyUZXimOHHL4y2n9Ce/aTlSINs8=;
        b=lLrW4hmpM/4ZyfJIULiyBZkDe9eYLmiMHQteCPxTurECbZyNLTJyjWGIIdyZvS2KDP
         baKvJnFX+Ed0dyoxHwEFNBEyxp911MBUpTo2QjQx+HUujQT29ne8M0MdGzRLyICxpif4
         O3FHHHLg/RxYWFKaeYZchyhzlK45+RZX6tQzC63wVGNLwNJDWLUGvaSV9/UAlngZl8MI
         Ro7ZgrfJN8aglrxjAawQluJsFF89DeF6t+oGHXQV/QG/bRJ4iNtX9USFcayMu8edvh26
         L02QWWvKG0K367hHAMar31Zdbd7Q+zAMRCmPj99LB5zVIHqPvgx0jnzd/tYrvXb9Pwj8
         aBIA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773332830; x=1773937630; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I7Vb1PKX3Lf9CJi8XSxHNY/kA1vBSZWZueHJy5RvI9M=;
        b=NPxyPH1UQiE56iO1J+Krg8QUq3kWeZN7ewAXlAKDSXLmD9rc8hiJXV6zw0tU7/4eTb
         7K2JV4eNu1HVViAEQvcpPHamtWMW9R/RN8dUfZRT/xFaWFh9ziB0R5y2vk9d81IG3Wql
         edW3lf6vaRoQETYACb7EsiIPOLgLy+DXqMWa/ba0Ly/gq0fFrd4Fe251t/u+qF2R0qAx
         WlxFEbxFqV3HI7hNcrpjKS/KmbHQAInOSmxq7YsBwBCt9UwCRd33E91N2vZYjjCu+I2n
         vM/xSlfa1htcXHU0nvfP4y6p4mEtMIFjElfxdykA5Ty1zJkkklrZKn+EyInyIw2oLdX5
         IGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773332830; x=1773937630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I7Vb1PKX3Lf9CJi8XSxHNY/kA1vBSZWZueHJy5RvI9M=;
        b=j3nRBh+2e7HnW3ugq1E7xuSuaeBUs/bnUu0KiYoj98kEWyN3nS54jiE5nlNE5FKQds
         diBzOA1aEXnc/QwkaLQVeZHpQEdzaBQubbq3UG5yv2uatg0S6wB+Iln5oUVAfIp4njy4
         KTFLQ2c3gc9i5R2F8kzReG4/o55WoxznnmxzL4KZVguJb9ekzTlBShkasbFm4fXUzI1R
         LigpqLAn//x/ExpyMfCDoGWCGassID63e98/hOQKJRaduOTrUlyyRExPaXBirN7erfND
         zvi/gCSiFUiZkvO65Qc8R17qdD1uWn0uJuaPgJZVbfIS5z5VOiKIFXCIDAjgUC6I3lm/
         CTGQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4mvtNPtYQvkPlf4w0PkEpwhHFUslIASL28egdYwj/mGdKwri7AH3jmpH2Wh52eAl6Mnl1aPr1inom@vger.kernel.org
X-Gm-Message-State: AOJu0YwNToYmXcNSG2n9hjzPrZXO8mPe0R0JtDrzre4wfZrSrIMXWBF3
	pRhL4wf3PfXI0S47GnXlULls2xgZInV197ePl3VoIp79O5WT7X6dhiqz3fPO+KJMS0XiYA4hG5t
	4GXT/gm/h8lPCO6xRGG4S86a/wDCFO0Q=
X-Gm-Gg: ATEYQzxvxgpAi9WtRwdhWHxlLMtUFYthF6p4e6+3LCXnTUWR8alNp2odZevEGkDx1Ew
	MvfHPMKeiqlyuD0neAqEb96eZh7wkVJY79kQk4Iy2QINql9UpP1es1LsCfLa1n9uF6LfwA9GpMw
	OGkJOc9zqprVfPG8/LksnA4ZE0QkWSrLapc8Q4/G7GfDGNehrdSEDAeA7zg/TJe4ezjMpJiZTjN
	3asLDXZoHOgPr9lBCm0W8kQE3Nfu9dv5160NKKBrQvBNVBFxw/cFJjTf1XHGZ+NLru6ifaOepXV
	faUMZLkk
X-Received: by 2002:a5d:5f88:0:b0:439:b671:1d8f with SMTP id
 ffacd0b85a97d-43a04dc0ba5mr539681f8f.45.1773332829453; Thu, 12 Mar 2026
 09:27:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312085258.11431-1-clamor95@gmail.com> <20260312085258.11431-3-clamor95@gmail.com>
 <20260312152057.GA3156966-robh@kernel.org> <CAPVz0n2GFgsrqo4_MkvNwd9t=DMU4ZGQzrpNjU+PZ4_Ysx_jcg@mail.gmail.com>
 <CAL_JsqKP-uYZf3MLFd5JrrsZ1+pxj-y+te_3uiM9N+5Xu4phUQ@mail.gmail.com>
In-Reply-To: <CAL_JsqKP-uYZf3MLFd5JrrsZ1+pxj-y+te_3uiM9N+5Xu4phUQ@mail.gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Thu, 12 Mar 2026 18:26:57 +0200
X-Gm-Features: AaiRm51Esg3lleAiftngJqOtXTsbfFUPZvmyUsPO32KC3v38pJrGNn7u4Fa_N7g
Message-ID: <CAPVz0n0aTEkmb6tFn72f7O=BvJzvkJ6ri+_TmQbnroNrWQppzQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: pinctrl: pinctrl-max77620: convert to
 DT schema
To: Rob Herring <robh@kernel.org>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274711-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,arm.com,samsung.com,bootlin.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6734D275919
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

=D1=87=D1=82, 12 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 17:39 Rob =
Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Thu, Mar 12, 2026 at 10:34=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail=
.com> wrote:
> >
> > =D1=87=D1=82, 12 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 17:20 =
Rob Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> > >
> > > On Thu, Mar 12, 2026 at 10:52:55AM +0200, Svyatoslav Ryhel wrote:
> > > > Convert pinctrl-max77620 devicetree bindings for the MAX77620 PMIC =
from
> > > > TXT to YAML format. This patch does not change any functionality; t=
he
> > > > bindings remain the same.
> > > >
> > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > ---
> > > >  .../pinctrl/maxim,max77620-pinctrl.yaml       |  97 +++++++++++++
> > > >  .../bindings/pinctrl/pinctrl-max77620.txt     | 127 --------------=
----
> > > >  2 files changed, 97 insertions(+), 127 deletions(-)
> > > >  create mode 100644 Documentation/devicetree/bindings/pinctrl/maxim=
,max77620-pinctrl.yaml
> > > >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinct=
rl-max77620.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/pinctrl/maxim,max776=
20-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/maxim,max77620-=
pinctrl.yaml
> > > > new file mode 100644
> > > > index 000000000000..4e5f997317ca
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/pinctrl/maxim,max77620-pinc=
trl.yaml
> > > > @@ -0,0 +1,97 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/pinctrl/maxim,max77620-pinctrl.=
yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Pinmux controller function for Maxim MAX77620 Power managem=
ent IC
> > > > +
> > > > +maintainers:
> > > > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > > > +
> > > > +description:
> > > > +  Device has 8 GPIO pins which can be configured as GPIO as well a=
s the
> > > > +  special IO functions.
> > > > +
> > > > +allOf:
> > > > +  - $ref: /schemas/pinctrl/pincfg-node.yaml
> > > > +  - $ref: /schemas/pinctrl/pinmux-node.yaml
> > >
> > > Don't these properties apply to the child nodes?
> > >
> >
> > They do, but not all properties defined in those schema files are
> > applicable for this binding. I have marked those which can be applied
> > in the node patterns.
>
> Then additionalProperties is appropriate.
>
> > > > +
> > > > +patternProperties:
> > > > +  "^(pin|gpio).":
> > > > +    type: object
> > >
> > >        additionalProperties: false
> >
> > I will move additionalProperties here then.
>
> No, moving it is wrong. You need it here AND in the parent node.
>

Oh, yes, you are right, it seems that I did not notice while
converting from txt. Thanks!

> Rob

