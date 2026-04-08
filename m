Return-Path: <devicetree+bounces-285629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC5LCZcO1mmfAwgAu9opvQ
	(envelope-from <devicetree+bounces-285629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:15:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 936503B8DAD
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91DBB3035AA3
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 08:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51AC139D6C3;
	Wed,  8 Apr 2026 08:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCXoWZp0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7D039C00F
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 08:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775635863; cv=none; b=SWklkjQ5lDBB6ZGY3ROobvRohjp1Yeik2Pv3uRE0o9y8WZlDQntjtFqGqgIHIL0QOSNvN7+FJO5Ww8k/p0EurQ+b7JeX/tZ6dimK4BFRgj5GdSU/A0VnErpKwhnaExQxBkqzHkgJt/OhjLnetAqGGMPyjoKvEZcZ89xRO2/S9gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775635863; c=relaxed/simple;
	bh=sqdL8nTdSHEyk1Way49SKBiavpK4C4Nmipixbhq+G44=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D4domziAp+E5acoze4RAnwZPUIj4loA1BuSwp6AO//3NW36RqVUJ1IkuLGwChPhs2t9eIeTl6CSjT5UvlvfS5UAQAqCieyL2nidGmVu7/Mn90guIER4pVOtwDyPwUQKBc5j11n/Rq3PFw7s4vqGbSBg9EYDwNjP5naqJ77CIAtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCXoWZp0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9AD2C4AF0B
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 08:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775635862;
	bh=sqdL8nTdSHEyk1Way49SKBiavpK4C4Nmipixbhq+G44=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WCXoWZp01ja4gl5ebFzz9Qg4PArTyY+KnAPGimXdcSH3lU3D3ZNmpMX1SzEeS3dhw
	 vW3kj/xcoQNtD5TZ03EXMu9N7y3eFdcDf8C2Dc4Qs8668N+YPIyLbuRwF/FvrPHxc2
	 qvXm5k6cukVaPpwHpLOJR6DXxy9TB9HPC2JQuJf8YTUT8CBsEs+yyQQAV8hjY42VLl
	 xvpfzq/Ukc8Ciy2ZgSAuRfu/EpTBYAFA9DOaIOd9NvOc58GA+ZaSgwMCG4VAbOd+Gk
	 BpjFo4EkowOU7QiwD0gz/OqBglvXd94jeYskym7BU0w+FMoYvhtDNh4ze9jNRieldc
	 m90DEhIkBip8A==
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-79495b1aaa7so56862887b3.1
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2026 01:11:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVRv6Zp6R+tvu97IUVZ6PJ5pHDZLJLCIKacArXAsEgweGyOkHRs9xfDmStMU3he0xssy4A5HW0zIHwV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/sqUgbyxuW8zVq65W01hTxuZmHroQAk2ZS37Guk32/eeopv63
	ZUOHeWVxqgtATW3HV2w9z1fXM+JXszCMWT6GwKhK+e3/tFfjRhHUT6rQyu5PhxqiuEtsr9JLHIp
	C9HXt1XMjXieOOFZseokdE0hfbzRObh8=
X-Received: by 2002:a05:690c:6e84:b0:79a:6cd1:ddf8 with SMTP id
 00721157ae682-7a4d31e619dmr192017227b3.4.1775635862276; Wed, 08 Apr 2026
 01:11:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260401-waveshare-dsi-touch-v1-0-5e9119b5a014@oss.qualcomm.com> <20260401-waveshare-dsi-touch-v1-11-5e9119b5a014@oss.qualcomm.com>
In-Reply-To: <20260401-waveshare-dsi-touch-v1-11-5e9119b5a014@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 8 Apr 2026 10:10:50 +0200
X-Gmail-Original-Message-ID: <CAD++jLkUPKpMhEeP0tY+t5E0Hc+iX_7RVpxK701NU523OB3zfg@mail.gmail.com>
X-Gm-Features: AQROBzC0ZBvsFFgFL0sfxRCHkBDh3w5K4JhNTM28x_a4U-5EjcHBvdxh69DaTIg
Message-ID: <CAD++jLkUPKpMhEeP0tY+t5E0Hc+iX_7RVpxK701NU523OB3zfg@mail.gmail.com>
Subject: Re: [PATCH 11/19] drm/panel: jadard-jd9365da-h3: use drm_connector_helper_get_modes_fixed
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>, Ondrej Jirman <megi@xff.cz>, 
	Javier Martinez Canillas <javierm@redhat.com>, Jagan Teki <jagan@edgeble.ai>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285629-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,huaqin.corp-partner.google.com,xff.cz,redhat.com,edgeble.ai,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 936503B8DAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 1, 2026 at 9:27=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:

> Use existing helper instead of manually coding it.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

