Return-Path: <devicetree+bounces-310153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fSiVI+VLKmpmmQMAu9opvQ
	(envelope-from <devicetree+bounces-310153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:47:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7201866EC63
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:47:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WzIhT6ur;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310153-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310153-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2B512300B8C9
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A54D7356744;
	Thu, 11 Jun 2026 05:47:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC273403FE
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:47:04 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781156827; cv=pass; b=HDgHsmlWuHHgj+qbR18PrBozg8qOmXEWAKRgWKaiSq0ZOOBRTQTM6aC0iGYbAJqhK9BV8ReVFat5lXF3CaAjQ8z9ANlzX6EtN1/ihmB0urXV/E9CANNHDObhZE0T2Rc4vcp7UjFSCPsU/YaKku1shwxJyB5l8C0OwBggxhSceLI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781156827; c=relaxed/simple;
	bh=Ccz7zuUKHsMRmZK8XPvEeP2g8VqUvw4d4ZgvOqMW4TM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i091iMKrc29B3TygHwG9F750v4zbXYjvMYpMSk22VQaF0kGHFAq2BhxCwf3jmecIjFN68jID9PEjbOCLlg/ARVwWq9GadwpNn5UJBwM61gLObVy9+N9zaqzwQT6SSEJ3T+kICP5u5DnEYZbICZ8yQCytcGOhyxua16n7qj84kbc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WzIhT6ur; arc=pass smtp.client-ip=209.85.217.46
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-6f0a59f3f2dso2291810137.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 22:47:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781156824; cv=none;
        d=google.com; s=arc-20240605;
        b=i07Nth9RmNh9JkZRH6eBtlb4KjKKrO2x/wlRkc2JJmBrWAPMWlUnEzmuamvVidfqJl
         H0tPT7dj0qVHSJrNqLq2JEaDQagrIGguZ+NwoRlrVxhuivp3WOOdd5EpW/ElR7yzsO2a
         PteTAl/evWa0bg2bOVbSdTSVlGDzuKJUJw9+0cWMXyvhjklJlJNJSF5LxhcZdPxXxYoN
         wmvqNaiYs/C4uFreW2MjJjvBkuZSzSbezeXivsJI1eTtnoIP7jDXnTtt5w75jEg/av1H
         B8vhuTUa5dL3DRlIisOJufkTVkMIUTwoHCSCrWCVwxnyQ5lxUtyeOph5XW1X5Kg8I3dV
         xzUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dydAG4Kp/furYWpjUKbXSKvzV/lHaP5XQaTw5PF/fbg=;
        fh=sCet/NRbOxODRjGXu/Wt0FdB2ffVMP27CCnZCqucP4g=;
        b=T2vrIbg6G+xqUB+TA9Ycb76F/ZnoDV8Uv4WtnX3Zkvgiz8jXyD810CieXGr9KwRXo1
         jPtAmL+tOhqUEEAPgrWTniggwQfrFSpLEfEkb8qY72sbvo6M0axRu04Kq4Ps2N77gQnN
         PQyKU1U/rO3+hpJ3dlkqsHODgI+iV69oHtMiMZSGO5UaJC8LaW/rlhz8IJBWueULgrcL
         c6+DphUvg47g3cMihq5ZlxtdWiEQkoMw7EQ+rQ1vSEISmJS1Li1ECiOeLWKW5FDiHTZb
         A51i+5wGXYvSH/Kku8sK22EaL4FkysAV/lhvSIJVckbyP9Ow0wMGPUBMnQmDEVcjfuij
         R4SA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781156824; x=1781761624; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dydAG4Kp/furYWpjUKbXSKvzV/lHaP5XQaTw5PF/fbg=;
        b=WzIhT6ur0NjZiw2EMF/PBBkn1/Xxn8Q0+/OtnZR5E6WHYaUsT0217NAR7JdsftKMsa
         bIXVzw6vsOo+d+KIiqIlH7qfr/hYwZnJc6FNhHR8A+EnrIApbJcSRLxDz6JbgIi9CQr+
         7FTBYscQaFahQhTSGkrhfrz9jd9fJDA/2TjcTRzZsmgTSWdcgZTl0K+iI9fVyncfOLZj
         Al/1CQg1JsVwjtWwY7Yjx4zZSSYTWODhNJWdz99jxf2oWiIM39YvNlMbzZGb0VtZRmvM
         +f2KQcQRAiiikHvA2Ve6LkkMHUBDPKiKpmy7AFb1tEFrCXcmSK0dLjwJhQ+aW8uxxF03
         U5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781156824; x=1781761624;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dydAG4Kp/furYWpjUKbXSKvzV/lHaP5XQaTw5PF/fbg=;
        b=i/BWvl33n14NbxLWyCVmbV28kEe/J+YMg6Z8FpsMGTMqgFSTpxzoXPHZo2omtM1zjR
         rANzGzJ2fKX9KKw6Cdbil8oP6b4GVlxKt9Ob3nobvwJDWWmteYPgs+lY3A3Rq6qQhUvw
         i+xEugs2x+Vzp1HPrSAHToiLZBNs1fx8VGo4jAB70BK9bf/L2h3vsA8sHgAMgPa/dZjA
         JdXN8+SgpCU1md692zJNi+I59FUfkdxN0fI8nPR5vcEMwGAJI7vhb5DqDF+wQ2Fd0bw3
         6rg88okfkC6C89Yy393Nk/7Yl8ApHqHdkCkhknLcin1bokIVseH3D2xBhEcxvrN9M66L
         686Q==
X-Forwarded-Encrypted: i=1; AFNElJ8+/8WPcWcJILEC6iad9K9k1dqSa2cco8wPl8Ke0sOa0fCchukxU5ljJa9yIHGzfHKERDmFRqpON7BC@vger.kernel.org
X-Gm-Message-State: AOJu0YykgIlsyjRfF91osomMwsrhIY2TZq9YPPdB7v0OoWfQlCKkJ1Dr
	V8xjCS28APiadkI3nGcakz2YZNQXQ+blFExcU7oEWqODIsPsiLsomPZOW17xEWeGnt5V1u6VRvX
	XVcyWopMYpnjezUuhvRiaaQx5970yo0A=
X-Gm-Gg: Acq92OF0o7Ly9KEWeGL92VGCy2xO/l9vPztmWwdlWY9ABpixD/m+SFLgieTXSQfGxly
	mt8vt0FdmQXb/L0zmx2F7GGsfL6SQh9sjWk8Aej/5radLWhGgarZV1R+HV6/DWzVmBk1AR1Cyjd
	Uz0mfA6ugOYfUu1a/ENvj1WTjI2geeQj5EK5+ukei8jj+NOymJBjeRyiE7jcrE9mZ3G2EOw8Iv5
	EuetBpONixadFX6retH2ZUS6eBoARnh1XaCb7Cx4vmolae06/euHR3w4W3t2alEEesDaiE60Urd
	3h+lH7QEqzsz1rGFeG8QVJOf6QM8lu4GIdTMpTeHNnNtX22TEg==
X-Received: by 2002:a05:6102:2c85:b0:631:26f6:7016 with SMTP id
 ada2fe7eead31-71d5fdbe2aamr306752137.28.1781156824074; Wed, 10 Jun 2026
 22:47:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260608162622.403713-1-zhengxingda@iscas.ac.cn>
 <178115560756.199930.11183711627429440356.b4-review@b4> <2877375c4efee4b4e816b418c965da7bd7d60992.camel@iscas.ac.cn>
In-Reply-To: <2877375c4efee4b4e816b418c965da7bd7d60992.camel@iscas.ac.cn>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Thu, 11 Jun 2026 13:45:45 +0800
X-Gm-Features: AVVi8CftH9gMkFhhJCSYeMYPI9Vx02SeuLOR5XN8R3F715RhJ4bH_68mrqI5Ug8
Message-ID: <CAH2e8h7oDLO4isyPOY3syEQLMrcCGiGmkKsAYvtEz+qoT9-N_w@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: himax,hx83121a: add
 optional bl supply
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310153-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,iscas.ac.cn:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7201866EC63

On Thu, Jun 11, 2026 at 1:36=E2=80=AFPM Icenowy Zheng <zhengxingda@iscas.ac=
.cn> wrote:
>
> =E5=9C=A8 2026-06-11=E5=9B=9B=E7=9A=84 13:26 +0800=EF=BC=8CPengyu Luo=E5=
=86=99=E9=81=93=EF=BC=9A
> > On Tue, 09 Jun 2026 00:26:20 +0800, Icenowy Zheng
> > <zhengxingda@iscas.ac.cn> wrote:
> > > When the backlight is managed by the panel controller IC, an
> > > external
> > > power rail might be powering the backlight.
> > >
> > > Add an optional `bl-supply` property to describe such power rail,
> > > thus
> > > allow disabling the backlight.
> > >
> >
> > Please add it as a hwen pin, this will simplify your code later.
>
> I am not sure whether this should be a pin or a regulator -- the DT
> binding should reflect the HW fact, and LCD panel backlights usually
> require a high voltage (or even a current source) that is driven by a
> dedicated regulator.
>

Most backlight ICs use a hwen pin to enable the supply, afaik, like
ktz8866, ktz8868, aw99706, etc. We don't touch the VIN. (My disclaimer:
I am just an amateur, know less about the circuit)

Best wishes,
Pengyu

> Thanks,
> Icenowy
>
> >
> > >
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/display/panel/himax,hx83121a.ya
> > > ml
> > > b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.ya
> > > ml
> > > index e067a2f6d0b2..aeca3c9a599c 100644
> > > ---
> > > a/Documentation/devicetree/bindings/display/panel/himax,hx83121a.ya
> > > ml
> > > +++
> > > b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.ya
> > > ml
> > > @@ -40,6 +40,9 @@ properties:
> > >    vddi-supply:
> > >      description: power supply for IC
> > >
> > > +  bl-supply:
> > > +    description: power supply for backlight, in case it's managed
> > > via DSC
> > > +
> >
> > s/DSC/DCS/
> >
> > Best wishes,
> > Pengyu
>

