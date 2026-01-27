Return-Path: <devicetree+bounces-259741-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFJvC7NaeGkupgEAu9opvQ
	(envelope-from <devicetree+bounces-259741-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:26:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC7F90620
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FFB63014137
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 06:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 380AC32A3F3;
	Tue, 27 Jan 2026 06:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lqjaPNSf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758312D7817
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769495207; cv=pass; b=cAKqs9zUIdTHTTlvG1oH2kHVOrRE1bwzXyn+AycQaiTluSr6hrbtimQWr045wgIlSwa7E2T1zi25Pdd7GU7gu9T3sCh/P6tM8CX5t5Ru9Kfv3FfX7t2w7voYzKX3DF0FhGk0ptVFGHkDZeBtVOnKlFDvXe8ALswioTD85vT/J68=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769495207; c=relaxed/simple;
	bh=T0R7NL6z0LNl224lZk7/z13Olic61FEqwJ887TS/7P4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R94Zzg/yH40YU96RHJv+g9PeWvU5637HJz1lKCvPWvaEaX/ar9tCZh5hK22OVATGpzPEkC3R6gQUs/UUvVGlBzaUUilwE0qJmnEfTesOd/a9D55/MtmXhL9JhSrJyj77KNL33lujOGUyY/4b6BZeFMPMH3pWoCJO6CPSPKO6QFE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lqjaPNSf; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-432d28870ddso2741680f8f.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 22:26:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769495204; cv=none;
        d=google.com; s=arc-20240605;
        b=bc1AEYNqR4BaFGDV/cODFpW7O/EL+FP+nARL9NnpEvSQwbdt7a5UTnFuPlOQmy/2tx
         ueJfrdjZkW7SkTJ8ExTEiM5jE1LSh/DBsYxY9Zg+C9bvQFqP88Gyfz1SDkPm5C9wU3Gw
         M2zykh0rlYvroWUfIM0wIRNIWp8Z8Tp1v/vlYXn76CnXs1OC9x3buvzclLhdd5jyXtMB
         toR9JxqRhICGy/cqdhKUfqh6uO1uTN2ttVOhACAV55QeHaYINwwUwDN32jwRhzwK7PKd
         buMTWSjQGX9yEOaA2gFzkpsF35/RzVn2+Pv1PT1ailRAdFd1y9Zo8S9y6//FsD5S1ZGy
         EF0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Hcz4oTZY5DQbaUy98BTp/plZEQsZkc9Qo/oLKWh3nDM=;
        fh=G7lOVro912tI6gcxsvcbIOzpGHf1G46pptjdHFlkUNI=;
        b=TtRtPLhuAn2NdYiD369XeviRESq6ehCmt6mO1KibZSE5D769j12TCL9i2jEIihjoKe
         2qjXTe48Em3PwwdRCSyezy3T/NkCG8tF5po+vRUK11vI+2RRmfMDSHFLsk4UhpWLjPj9
         qH/nwiq37Qxh6lmH0odM8/o33a2w3qU2OOPVzq7VFuX3aYHDqGNGZWJE+9EbmRzCmvja
         V3zfLjFZJdmxA61NkXA8DrsPTdxJVnCqsjKwUIBlgsCUtmse54LOdqYObDukkIcSxjbX
         MR9OAx9nJ2SFisG4IgyW64C66ogacsgf03sURN6OoOihAKB/ClhSimIo6Q8SZZDYdBhe
         G9Nw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769495204; x=1770100004; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hcz4oTZY5DQbaUy98BTp/plZEQsZkc9Qo/oLKWh3nDM=;
        b=lqjaPNSfpS7rLf3nllK+T1G/P9pQGBlhwUV/K6IWbJQTqwAPFhvYBgatar2DEWSYIi
         fpqJNnnvji8yqz9D/unuIyP7pllQtB4AyMI7Gy3044MWW6LaX4P1xo9KI7v4tmTlBvml
         8bfdaaW2h/83fHE/Zd+wOmhKT4SlWwId/Z2WXS9TpY2eDmOlS3F5FBVKyKqtgAF6PM5H
         VzoLptufXODp4v0U1xaGX05FB+iQa9KjnzJkIffVIv0iyrC9Eie3lhbjBUtRIxrlx6ai
         erwCuhGYUPPdUhvDzqqnfx1FcisdLrtKaTcyIygoZuNndIRuhFIlu2u2YWr+SUnS4L8+
         vqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769495204; x=1770100004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Hcz4oTZY5DQbaUy98BTp/plZEQsZkc9Qo/oLKWh3nDM=;
        b=VwPJwDmyijHamTYuHnoQcSdKa3ypBW0Uv7VizOTKERseuGpyIUim/c1jxIywHD6n0y
         BFb0JSsSsEv46cQAA5LAvxCldCRnGqKX68rdmsFekqqx09L6M/hGMWMjGjldUijutCIW
         cnUN4Xu5THNmdZ46FMkAUSpfGMF2t/WcBg+4TvVo4zrQJDjAMW6ZYsSwTDclYidQ6uzT
         YoR1JrT+Fyi9cfl5ZuLFKmc7B27qgfhAqaAeUaVxMgjLw5cbvPZQbilAQX1sgmA0HNFa
         UASrjlnnx7hIlMHvyERxnr+v0AarWhoLnUOoVQ8N/ORIIM12b6iKE59XQgy4xDQ+aA7B
         bB5w==
X-Forwarded-Encrypted: i=1; AJvYcCWf3KCp2BnxBtQ2/MgipQNcWiRFace3ha9qFbkhYURnGD5kz2E2B1gvMTjROY9t0sRUaFHKRe+I1kQ6@vger.kernel.org
X-Gm-Message-State: AOJu0YzSz0FMrqYOlLmbaY+JfkXYbmUPwUfP6O2CAW2RURQJ0imytXfS
	ObT+6cwbIOjvfIySHEmaER9mjmbTHij401x5gww8D7crSkCKJ7S727hdW/W3APNb9I/EqQQeS7N
	/AP/JZH8eR1XAWZ6OM8d6G9OYUaWGLXw=
X-Gm-Gg: AZuq6aKFTx6g7jXItKnByrA7630xTsrM06vhJkGO09fh1s/pxleDqvWUXxFPuTGMOAN
	gsTvqRxGQvYQZT0Y4Y+NVFUjqK3szyhcxv9yyOa+u+jJZ1DAJtzcm17M89k9WtSBYARFKtqIh76
	RS+91CblumdsRdCeFxS8RhPb/3n4+pHIHJK5nmwnEaBHRIQSMKRzWKwsYGYZYAe3ALj1X/CYMA7
	o4uJL2B1yc30n0MYbwe6dhswIVN+BxNMqDEKIbv/81heNgrhA//zGKNZRm32rv8aeL5iHiU
X-Received: by 2002:adf:f842:0:b0:435:dd81:4f4b with SMTP id
 ffacd0b85a97d-435dd8150b0mr354677f8f.22.1769495203600; Mon, 26 Jan 2026
 22:26:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125131904.45372-1-clamor95@gmail.com> <20260125131904.45372-2-clamor95@gmail.com>
 <20260126-patchwork-cofounder-8b7bb715556a@spud>
In-Reply-To: <20260126-patchwork-cofounder-8b7bb715556a@spud>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 27 Jan 2026 08:26:32 +0200
X-Gm-Features: AZwV_Qh8Okkp0ZKwUp_Q1LdogBWpv0JfM08wTd5rb20Zn0_7R87Omepl7HoCeOY
Message-ID: <CAPVz0n1hBof7_eB6D39zZd5EfC2dL5-Ngf0ja7+kkcwQnnr7Mg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259741-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linaro.org,oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 7FC7F90620
X-Rspamd-Action: no action

=D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 22:45 Cono=
r Dooley <conor@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Sun, Jan 25, 2026 at 03:19:03PM +0200, Svyatoslav Ryhel wrote:
> > Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Exact
> > panel vendor and model are unknown hence generic compatible is used bas=
ed
> > on board name it is used with.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../display/panel/motorola,mot-panel.yaml     | 68 +++++++++++++++++++
> >  1 file changed, 68 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/mot=
orola,mot-panel.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/motorola,m=
ot-panel.yaml b/Documentation/devicetree/bindings/display/panel/motorola,mo=
t-panel.yaml
> > new file mode 100644
> > index 000000000000..2326a83bc405
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/motorola,mot-pane=
l.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/motorola,mot-panel.ya=
ml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Atrix 4G and Droid X2 DSI Display Panel
> > +
> > +maintainers:
> > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > +
> > +description:
> > +  Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Exa=
ct
> > +  panel vendor and model are unknown hence generic compatible is used.
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: motorola,mot-panel
>
> What's a "mot" panel? If that's short for motorola, wouldn't it be
> better to conjure up something at least more specific to these
> particular users? The commit message has some info, but I still dunno
> where "mot" comes from.
> Seems okay otherwise..
>

"Mot" is how motorola called tegra20 board files which were base for
Atrix 4G and Droid X2 in their downstream sources, specifically
board-mot-panel.c. Since both devices use the same panel I used board
name. Hopefully, at come point I will be able to name it properly.

I have device trees for both devices prepared and I will submit them shortl=
y.

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  vdd-supply:
> > +    description: Regulator for main power supply.
> > +
> > +  vddio-supply:
> > +    description: Regulator for 1.8V IO power supply.
> > +
> > +  backlight: true
> > +  reset-gpios: true
> > +  port: true
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    dsi {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        panel@0 {
> > +            compatible =3D "motorola,mot-panel";
> > +            reg =3D <0>;
> > +
> > +            reset-gpios =3D <&gpio 35 GPIO_ACTIVE_LOW>;
> > +
> > +            vdd-supply =3D <&vdd_5v0_panel>;
> > +            vddio-supply =3D <&vdd_1v8_vio>;
> > +
> > +            backlight =3D <&backlight>;
> > +
> > +            port {
> > +                panel_in: endpoint {
> > +                    remote-endpoint =3D <&dsi_out>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +...
> > --
> > 2.51.0
> >

