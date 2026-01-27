Return-Path: <devicetree+bounces-260111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAvuOlMZeWksvQEAu9opvQ
	(envelope-from <devicetree+bounces-260111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 21:00:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CC39A2B3
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 21:00:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BCD730238D0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35D936D507;
	Tue, 27 Jan 2026 19:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZUkQwX/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757BB366061
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769543991; cv=pass; b=vEwsUdI6p6b2jCLf9SQbjB9wa5sRcgMTSW1I4L9evjcqRHslAQcVx0E9ycv5Llge6hvjolgK8EdPFQuI6Hfk4rYj0vW3Xnh4d/9U9LiaiZpv1yxk0MS8q9Yn+f/ofeCemLbRzueSIv0P3UsBz1AFhwdZevmC7tFyNNMibtL8vZg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769543991; c=relaxed/simple;
	bh=0rWgvLAUSde76HgDZyuB4RvoBf4fcW8kmV4+FMaJwk8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n3n41k/whpZffXhtGbiWsG326rJ8ix7kY0T9odnUNvvDgeoiI7A0A0zf1Jo9BLb/5fuGuf+L6PeKEfMvO2LgaxwfvRaYUMIPSlmLgrSkaoUlbhp2aC1NodQaDZ/6fC0wXrX1XpNIq+b2lSaa6rsTBF+tUUWGbdfrRXxqcz9hFq8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZUkQwX/u; arc=pass smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48068127f00so9276135e9.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:59:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769543989; cv=none;
        d=google.com; s=arc-20240605;
        b=Fs2XzyCIMOZuT74tMXa9/UlWTRO0n6qDuRdUDx1usv0C8Dy3Hg++/gD+sSsVcyueVW
         ID6gCPFGjhlLxJt8ztGYaKtU58MFAG6Rw2r9I0tyoMLTGckK23jPemxT9Q3M8gTSwVBY
         JmJ+kneHyskSY519dQUe1OXH/UK8WztdDTHOSePoW7reNf3GUzLfZY2xi4ssjz7LC/hP
         bQturVR6+f7V0wTakS45QDkWI85g40j4q2G8dgRWWxSFt01yMPiS53dPjUKwXpILgASp
         Pqm6n+Lc0PCRjEz6s560z3EfhXCB/LUyyGDKeJ9gcHrIA313u9qMBFAVr6DlpPF6/u/T
         vw/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wdSDlCVVYnDmBRczrvEEXGHbaqZPOoKg/QjHoAiAx4Y=;
        fh=VfKZ0O1ronuUk1ajoxMYAXGGhrHeYz5DGU54Yh0hck8=;
        b=I6KgNQqKPVn90eJVZegUwtmpGuNELlthRfn96F2UBp8x4HVIqeA0lLvnqNW9ouUzfD
         jtz41ogRty3sozBqjxohtvsUwq3bsaER8ToZo+ouF7j86OcYm+a4bEDykv96+ivCNsp8
         7nZ+SkohZhIiPVX37/q5BMYtAXXm24vcWdLSKHi97BJzMWwqv0Qw7LIkfEVKi46ZU4Ju
         ZScdpfESuIlrWBTruB6T98EbEnCO+BeixfUFr3Xab8fhkQDIyvV0ubDvaK3N6e1gKuU7
         /hwqB05zC0X0xj4M/0ud8e4dk0W3St5O4y7Y4uYQCAMdZIFXH/QWXRviFuaBC3sRTvA1
         f+0w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769543989; x=1770148789; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wdSDlCVVYnDmBRczrvEEXGHbaqZPOoKg/QjHoAiAx4Y=;
        b=ZUkQwX/uqE7jF7bnBdkMep4YgdzBlNrvMytZvDkY71Uvu5j/fh704o2BV2I4WWZwqE
         oohzyM8rED5Egv7RT3REfNrMyo0mZ/2ph9OmkHnUWcsrWLT90XC4fU24KdfjdYBpa9rY
         fYbZQIuGNeHGHyMnb81f5yFcwORC5mbLVklJmbC/sI5QwxYE2ZvT59aAjnI8ZSf1DnBA
         M2ruHnwEtZoej6yLrkhzBQILlr7YMprB65exqncIL5B23E2w/LSuS+VCzMwPVgXjR4t0
         fptgLJC98xs3l28k3BmHUwdLudhT5AHvi/+jR+4Zqv8SSGDpW8D9g5dj7iCWhOjQGqAR
         p50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769543989; x=1770148789;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wdSDlCVVYnDmBRczrvEEXGHbaqZPOoKg/QjHoAiAx4Y=;
        b=h2bxrHF1bl5i6DVaMWoAQ39Gqx9Gm2K3g1KUbCSWlymWOL5tfwg+AclC9jwikewcub
         gxHgkLxzc7TWGsLvOoOct0oEFHYpYKbqduPRhb9AIx/gl7A3hpptp9enJvErp+uZgK5X
         jqZnKALZMc60EjgsGOW8lh4ibm7Abzi2krXkz/SMqLm/n8eDNM9UtQjPK481IcXUnLd/
         /6cki9ZqYuofTzvwtIbYL4hZrOV1HPRa1nOOKJVLhZfAJ2YIF2zqtoNuVJ8ZxERs9d8i
         2T7ODI2T+3/suzOPGpf/pfMbkfxqZ6irS5EkcL32S4qek4Cy+BFN5HDvDOj1BbJ1c8yo
         MAWg==
X-Forwarded-Encrypted: i=1; AJvYcCUTYDGVmWHneIjmbfc2ucZSV/emEK4swCLXLoQk1EQmUSRXXCUkZr95Zh7PIrkXCd8dUpJN3ozEuvC4@vger.kernel.org
X-Gm-Message-State: AOJu0YwqG1Qctb8x3u3Bc5i2c62sCeiwmWpLsNQT4OPW7490vFRrdyI7
	Ub3I7nt4nXnLxLPACrWKv3sPktmRR1F7P+bY05QTa04goeXBr7YQwOwjzFcYjPgj4ucCd6GyxD6
	YQPjyqFGH/0tS5JIabVzpBeZDcxpNLFqmuQ==
X-Gm-Gg: AZuq6aI6gGJBrQBNRjIb+2J7x2mVNhEl2ovHpA7ezOsNotHZfCtBqsqMUG3sBRvbwIw
	HJeYriiz5pZ8Kqrpk7zCp6pItEzRhE5b3ZzRAh1nFZ31JC4MOfmFf7yIOJgKXQObyg4fS3V+YK7
	WMdomFnMC7XY1jpZrqycTe9oNfZ85GPdD1c14ouefrn3uo9XBv7vU2HBiJY6C7N6q0g9pUOeRv4
	Ldx40hWTRg1uO8nGvFCEHtr0PQu5P/taZrdCN9VEuQenEW/CqLfEDCmvpWXyyQWokSvX5MLjn+K
	zlScIqo=
X-Received: by 2002:a05:600c:1e0d:b0:480:4a90:1af2 with SMTP id
 5b1f17b1804b1-48069c86e2amr42770425e9.35.1769543988628; Tue, 27 Jan 2026
 11:59:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125131904.45372-1-clamor95@gmail.com> <20260125131904.45372-2-clamor95@gmail.com>
 <20260126-patchwork-cofounder-8b7bb715556a@spud> <CAPVz0n1hBof7_eB6D39zZd5EfC2dL5-Ngf0ja7+kkcwQnnr7Mg@mail.gmail.com>
 <20260127-myself-sinless-95525b4c78ec@spud>
In-Reply-To: <20260127-myself-sinless-95525b4c78ec@spud>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 27 Jan 2026 21:59:36 +0200
X-Gm-Features: AZwV_QjpzuxykG7q-Vlx0dRpKjGyYo65SrJbrKEMORq5A6xryrhIt3lUTXkoXp8
Message-ID: <CAPVz0n0kqRJWrfC=iXEsmeBtnq1vn_ZYUQo+YzPREjJhgR3HoQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: document Atrix 4G and
 Droid X2 DSI panel
To: Conor Dooley <conor@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260111-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 45CC39A2B3
X-Rspamd-Action: no action

=D0=B2=D1=82, 27 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 21:41 Cono=
r Dooley <conor@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tue, Jan 27, 2026 at 08:26:32AM +0200, Svyatoslav Ryhel wrote:
> > =D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 22:45 =
Conor Dooley <conor@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> > >
> > > On Sun, Jan 25, 2026 at 03:19:03PM +0200, Svyatoslav Ryhel wrote:
> > > > Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Ex=
act
> > > > panel vendor and model are unknown hence generic compatible is used=
 based
> > > > on board name it is used with.
> > > >
> > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > ---
> > > >  .../display/panel/motorola,mot-panel.yaml     | 68 +++++++++++++++=
++++
> > > >  1 file changed, 68 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/display/panel=
/motorola,mot-panel.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/panel/motoro=
la,mot-panel.yaml b/Documentation/devicetree/bindings/display/panel/motorol=
a,mot-panel.yaml
> > > > new file mode 100644
> > > > index 000000000000..2326a83bc405
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/display/panel/motorola,mot-=
panel.yaml
> > > > @@ -0,0 +1,68 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/display/panel/motorola,mot-pane=
l.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Atrix 4G and Droid X2 DSI Display Panel
> > > > +
> > > > +maintainers:
> > > > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > > > +
> > > > +description:
> > > > +  Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel.=
 Exact
> > > > +  panel vendor and model are unknown hence generic compatible is u=
sed.
> > > > +
> > > > +allOf:
> > > > +  - $ref: panel-common.yaml#
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    items:
> > > > +      - const: motorola,mot-panel
> > >
> > > What's a "mot" panel? If that's short for motorola, wouldn't it be
> > > better to conjure up something at least more specific to these
> > > particular users? The commit message has some info, but I still dunno
> > > where "mot" comes from.
> > > Seems okay otherwise..
> > >
> >
> > "Mot" is how motorola called tegra20 board files which were base for
> > Atrix 4G and Droid X2 in their downstream sources, specifically
> > board-mot-panel.c. Since both devices use the same panel I used board
> > name. Hopefully, at come point I will be able to name it properly.
>
> Can you put this explanation in the commit message please? Without being
> familiar with the platform, it's nigh impossible to know how "mot"
> relates to Atrix 4G or Droid X2.

Sure, if v2 is required, I will update commit message.

