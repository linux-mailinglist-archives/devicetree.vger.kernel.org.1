Return-Path: <devicetree+bounces-273571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNleBLUysGl2hAIAu9opvQ
	(envelope-from <devicetree+bounces-273571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:03:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C16252CDF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:03:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF12F30BE489
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5C9D26B0B3;
	Tue, 10 Mar 2026 13:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DWNIwK5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DE03876A3
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151146; cv=pass; b=pDDKyXmlPZ+KhTtp0Mg5UMwSxMBbXphjw5VG+V1c7NBxNH55ZQmPgMzZhvxiAZZc3jend1pzBJ+K+eatkR9egp3CppiodhSh28ilJwT3it6DnXBHu6Lms9T2IPq4ptqxQ7EFiRRCzxM+0DUPzACWaBXrCG0X0ZP/+XyLcroJTE8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151146; c=relaxed/simple;
	bh=rLckI/lu0AEHzO/fUUxfhnMf1ITyOhXDv8WSk2CpaGs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LCGVmxgdQf4N1G0mvCh1G1RyqXj9I6wPmQ9rIa4TaolwZ/1ae6Sg5pNmudvGRNPfF1CDJpkEbSdQYPj/GLt2+O5a1zVhsUqn5G9Z2vo5l/PqF/xGTVrYEG8dDmNn5h2v46LsrM5FSSSlqCwmCIvELAmezGp5aJvgECFGQNOUsNA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DWNIwK5s; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439aa2f8ebaso6346376f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773151144; cv=none;
        d=google.com; s=arc-20240605;
        b=R0VgyqKa1BmWFBtpRoQqOkvaFjg9E2N6ijVFpudbCfj29Rm1mMlrudZxfi/8VDKcXQ
         rhTeQNH29N/TryMB31qgIKO5lHvLs0XAhq2E/tV7IYA86qkSfmcyu/OoSWxOogJQQSJ9
         kSgUvHqm/4JlF/8Zrk6I5KIERo2YFOH/ObfZtRD/HKz0gmO9p975PIx1Kl3JY7lUzCPe
         xo2Ogfr9DkvLIucPJ4zfujdsXH0VXOnGpkLPr56V5v8wsKrHVuFdDl+AxqqX6SGz7sIc
         ZFOvMT6bpIfbGmvNrHYXsMo1/Jno2IZsxMC98AOne47aTy+OYCATi7vyNQicwEt1OcfB
         J0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Q4pvfZ9vogtxEUxzpvjIFFX+6PhzpOAEd3IZUoqVB/g=;
        fh=DIecge5foUvvTaf/gCYNbLH5TMfRPweSFIU9zFzQXXA=;
        b=LCrjHiJRCl0mufTezBQctNijjAPRlKI6rGuvwzxTi7s+94WTeFje6D/HDmJ88ZMROe
         PCJOAVcT7Umio8KK+To/cYwcXqEh8Sx9PcOBQxZLkIDuLOhyhA7YEA26V6AxCuN6ZvRo
         UqiSO+Uh1igIdWvuUhLE/SF1GnkTpJCwdTnUqSWcXHKy0VzFBYQE9u0kAVARxGEVVO4f
         /6cjFqd+6O+DaQNS2axJSV8JmziAsdi6xPakUxsqW2NXHkXxnrE2zXOSo0GoxQb5ElA5
         711uhPKRhngn8CsIRTD+IFx2R7k6akVz5XiERz9yTiSlN6SiWJDx8VhRf8wQadt7N3Yf
         iVag==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773151144; x=1773755944; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q4pvfZ9vogtxEUxzpvjIFFX+6PhzpOAEd3IZUoqVB/g=;
        b=DWNIwK5sXrBBL1fvRWpacMj82fmg6iE4GDRh45KC0TvVDwMXrJEOy/0PRatgM32Be6
         +phoxPqkJE4aNx4Zql3Jx3HSqukY8TfxU9Ex0l66izPDKqAN0jgaJ3a1P1tXcw97ZAKY
         Qa8lbuAh4fOQlBYbthoyhECFpfxmiJXDlakQD8p6V4hdQfDyrJPfAUzgIIhnsVg0P7Vs
         rE0eq7lne0eGACx+ejvGBz4XtkM1rCv9mQPi9RaPQqVybmZHEnxBk+UMundStFMUKOW0
         UroQnwekEmfB1g8ZdYuU6AS79p8R+7M/7GyHJyEndAlj6xDlzgHwM1f4Iqb09y9UAmGK
         Y41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151144; x=1773755944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q4pvfZ9vogtxEUxzpvjIFFX+6PhzpOAEd3IZUoqVB/g=;
        b=QxfI1kgoweeEPJ0w4A0G4XSRHuLl7hPlOkH2AGNCVt69wvxO23NnudOkL86ChrguZF
         Axc+Iz7txVKNC9r7DoeFUQmogK/KMZ1tb9DvAC8c/kJHWnDOb26k/OUZhsm/WX7QW9tc
         5sVidvChatNOBP7Qi+uJdNSuLJHFY4W3N4xVzqsSTXiqhWL/EtfiUhZnvZssUslGJp+8
         9CwsR85x3RRnHsLzPm2E14SxqGz2UQoaWHwIfQSHmUYYzGtHTeU8RFUFWMMUnh/+bF68
         BHsW2ln4aBuEABHPWbxL6YCs6eOy0yrJ7E4kWrcFbVkWHxxBOUBbTL/cxtc4ncI9d68c
         BH/A==
X-Forwarded-Encrypted: i=1; AJvYcCW+FzPYqtSdv4+altCfJKsWV9CokS7mpA24RqOU7aFewvzi4NoMQva9O5GCt0+mTgJ3zJkkHe+5B9/W@vger.kernel.org
X-Gm-Message-State: AOJu0YzIOf92qnSF8i8IIXosmfBat//VhCBq11aPRqglbpw4guIy9aDM
	aO2unfCQ4nh4A0Z21M8ahaRZloqpEwKFc2ZplXF+h6XwX1jX6gmNTuBpGJ1Iibq+CEUTwBE4Ykm
	x2RSKhfSXUZAW9OW96q9apg6zRwfb0ak=
X-Gm-Gg: ATEYQzxhB1/OUEVWKZBsH7Ndy/OJh6yYPgD0Jb32jLmN398GOSrDSoTZQj9ZdPKTHQK
	wwnznG+ANpCghAyvuwFMPrRQRQoXDHZ5+++W60wzIWPypjX29O/chZ5I/5h6yPLwg1GDB0L0ZBc
	a725+SMsISiG+tybjy5DKSSwwRJ4/ltXBfk+XrK1pI4C8+6ER8pwC2XGWb6sejEHVvdFkt3MQGX
	ZOkgFAQ8vN/RNUrVop+p00j8YWMLtMruh3OEL6+z3Tv2vu5QZ9cb3s4ssV9WGmJ515gkqf6B5zy
	tmzssbsr
X-Received: by 2002:a05:6000:1886:b0:439:afc1:ec64 with SMTP id
 ffacd0b85a97d-439da8a3303mr26864113f8f.53.1773151143666; Tue, 10 Mar 2026
 06:59:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303082038.11352-1-clamor95@gmail.com>
In-Reply-To: <20260303082038.11352-1-clamor95@gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Mar 2026 15:58:52 +0200
X-Gm-Features: AaiRm50FYz90FReSb8bu30-45JnYLAETYapVg9rHhcq4BET7Cz47eghuXO6rNE8
Message-ID: <CAPVz0n1gVfBYjuFxvGSUTLYHfbruHR7cdWob-iG8OKD=X1ogWg@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] drm: bridge: add support for Triple 10-BIT
To: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 86C16252CDF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273571-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

=D0=B2=D1=82, 3 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 10:21 Svyat=
oslav Ryhel <clamor95@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Triple 10-BIT LVDS Transmitter is used in Microsoft Surface RT and
> MStar TSUMU88ADT3-LF-1 HDMI bridge is used in ASUS Transformer AiO
> P1801-T.
>
> Link to v3: https://lore.kernel.org/lkml/20250824092728.105643-1-clamor95=
@gmail.com/
>
> ---
> Changes on switching from v3 to v4:
> - rebased on top of v7.0
>
> Changes on switching from v2 to v3:
> - place mstar,tsumu88adt3-lf-1 alphabetically
> - fix typos
>
> Changes on switching from v1 to v2:
> - sort compatible alphabetically in schema
> ---
>
> David Heidelberg (1):
>   dt-bindigs: display: extend the LVDS codec with Triple 10-BIT LVDS
>     Transmitter
>
> Maxim Schwalm (1):
>   drm/bridge: simple-bridge: Add support for MStar TSUMU88ADT3-LF-1
>
> Svyatoslav Ryhel (1):
>   dt-bindigs: display: extend the simple bridge with MStar
>     TSUMU88ADT3-LF-1 bridge
>
>  .../devicetree/bindings/display/bridge/lvds-codec.yaml       | 1 +
>  .../devicetree/bindings/display/bridge/simple-bridge.yaml    | 1 +
>  drivers/gpu/drm/bridge/simple-bridge.c                       | 5 +++++
>  3 files changed, 7 insertions(+)
>

Hello Neil!

Would you mind to pick these patches if you are fine with them? They
were reviewed and are requited for ASUS AiO P1801-T to work properly.

Best regards,
Svyatoslav R.

> --
> 2.51.0
>

