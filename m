Return-Path: <devicetree+bounces-290146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIv7JNPW62lISAAAu9opvQ
	(envelope-from <devicetree+bounces-290146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 22:47:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E33284634DC
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 22:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA430300CE73
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 20:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302F83FB7FC;
	Fri, 24 Apr 2026 20:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXqVmki+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4483D6475
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 20:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777063628; cv=none; b=BGlB8QHD/5qbcVsAQTDES3xxaJd0MF4i6dVO2Gihd4Nx7rmekNY4uU285LwAv/kccEtfZ5Fzn1gjbWYcfUmeqOgxIKroXjXXrUH0a3THrTVyXSbWV8yaO8ey4GALuSdOmvM3gbNrDvQ+t3JwyJeJRBHvOWb/dY+J5jdiXRmK9I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777063628; c=relaxed/simple;
	bh=jw+MgYZVVHgfn3vtTTfB+rLOtsgMZ5y6tsJcAYzS4SA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ndn6nQMq4gjC0MzCxIUfl7ifcLMZ09sK++q0H9OljPfb4+Q/G+dACejSojqeUzjg9wnFSrm2HnscsdupgajUjPeQMwTFymtWug+yyUUpVUbKCmQEaCe/dCjKUT5lMKmCLVz3s0FCUnfCGiw02arduUsSkuNcbyDV6ZJDikYkLf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXqVmki+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B772FC4AF0B
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 20:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777063627;
	bh=jw+MgYZVVHgfn3vtTTfB+rLOtsgMZ5y6tsJcAYzS4SA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WXqVmki+zweyn313GcGXqCCf3atLGl8cQ/gT6LuW9fthCetmh2BwQqcJqXvzJLX15
	 8IWgGoeBh3SDD1Tn88vEvo6yJ7MvN/GokI3damcSed2M6eP/cthBna2VNGwCZN+QZ+
	 IPKq/NYRB5tcucdTHD6E8l13pZf8ZpoXLa6OsPbu7tdER2tusUtYwpPQBz4soaHQxv
	 LHarndVh+Lx/P+JZPDCxESdxzouZc9aAHT46xxUYmRlLgKaDp9HKedJmFa6CBK8fqM
	 5u7MVcx8Y6FNQKKD8BFJEECihFbXOP7dFAGM8OqO4Said7LKapnAtdEfHcm23TdyxZ
	 o/2axPcYVtdTg==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5a10d130b37so8237902e87.0
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 13:47:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+YkL/89d8iaPJWKnDBSGPXcBbZ2t6BR1lUIZrnIBZHKkx0uXTT+A0fjrH6usEVFjd/9qaQqqalcX70@vger.kernel.org
X-Gm-Message-State: AOJu0YyPsmo7SXMpswtUGdWJPk7qCbnImMMetn4vKX+vFhSihSk2AVkv
	ckL+zvRu1aXCn2rXZfs6omqFn0YMkcbqHS8ZQ6oLuXAQjsIuTNE7/+kyvNSeBmtaxuuSdC0pPx7
	jURCeM6bumskNYLG94ugJn4KWVmMmRxI=
X-Received: by 2002:a05:6512:3e20:b0:5a2:c962:59f1 with SMTP id
 2adb3069b0e04-5a4172a3042mr9516685e87.16.1777063626467; Fri, 24 Apr 2026
 13:47:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260418-waveshare-dsi-touch-v4-0-b249f3e702bd@oss.qualcomm.com> <20260418-waveshare-dsi-touch-v4-2-b249f3e702bd@oss.qualcomm.com>
In-Reply-To: <20260418-waveshare-dsi-touch-v4-2-b249f3e702bd@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 24 Apr 2026 22:46:54 +0200
X-Gmail-Original-Message-ID: <CAD++jL=CT4CDViP0tz=F670f2YEPfzzxU0pBiu-eVa0B6XeALQ@mail.gmail.com>
X-Gm-Features: AQROBzC_zC31n0yaYjbDYVpdboDyP2JOJXGqdTaVQIcUTzUXKKm5ahVP2tMdfpY
Message-ID: <CAD++jL=CT4CDViP0tz=F670f2YEPfzzxU0pBiu-eVa0B6XeALQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] drm/panel: ilitek-ili9881c: support Waveshare 7.0"
 DSI panel
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>, Ondrej Jirman <megi@xff.cz>, 
	Javier Martinez Canillas <javierm@redhat.com>, Jagan Teki <jagan@edgeble.ai>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Jie Gan <jie.gan@oss.qualcomm.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: E33284634DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,huaqin.corp-partner.google.com,xff.cz,redhat.com,edgeble.ai,oss.qualcomm.com,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290146-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_DN_SOME(0.00)[]

On Sat, Apr 18, 2026 at 1:16=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:

> Enable support for Waveshare 7.0" DSI TOUCH-A panel. It requires
> additional voltage regulator, iovcc.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

