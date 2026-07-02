Return-Path: <devicetree+bounces-319557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WPZlIym0RmqPbwsAu9opvQ
	(envelope-from <devicetree+bounces-319557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:55:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A763F6FC577
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:55:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=dLBjCxcx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319557-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319557-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC649302FC9A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2F9352C52;
	Thu,  2 Jul 2026 18:42:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B713093A6
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 18:42:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783017733; cv=none; b=OVo0ioUdE+7wBr8zdRu9BA8HgTBQDWdZwBQDZShWr707RcmgtFiLYhZjK4rEyE+wCd20rlriRghfVJL6qnh9IUypdVH0RzdzzHnLO1k9dV5uvJPqAxJYqpVG0rDJ2dcaPjshS/DbBhJkof7DUMfB7lwe+iGjgos8yrZ4DfUyT0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783017733; c=relaxed/simple;
	bh=3f1eg7xDhUtl74qSseB0uF+REXQfe/4ApWZ4QPm8z34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UAPc5ptI9UPIjm3WcT76gXQkizQyQ+bHSkfDyoBtuJWG/2EBeQUf94nCnpgL1LM24MXAa/g6egQFCwYoxFmW4duJLjYQli9tQ9OYEc2ZAI5rIt5VdScd/PgLd+WrgW9/yKzHyx5+6dQBKSJjXeHkxd6JiLF/LLByFW3CbxJHo94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dLBjCxcx; arc=none smtp.client-ip=209.85.221.182
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5ab0377d0b2so672540e0c.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 11:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783017731; x=1783622531; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=L3E5kcG8MECRQ9InLZ8jdmT4IN0BYDghhEZtFSV6UR0=;
        b=dLBjCxcxVaFC+wX+lcNKofr8VanNjbPYY8rBV4dVrd4RRaPLISVd2TQNT01n2yXjpu
         fExf4T3C97LaQHy1WTddNZnFWmgpERUgJePDkLWmYNR2nSeEgD+oLkLgAy+KeWYsAqz/
         twgkjrgIm2E+8Ru/gwcLzrKCcxvdg+kRkjdlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783017731; x=1783622531;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L3E5kcG8MECRQ9InLZ8jdmT4IN0BYDghhEZtFSV6UR0=;
        b=Fy4E9FDpaO0BE/HkmqpvA2PIDnDf3GiFc1VeatxMjATYqjcZG80YZPu32bkDI3urW5
         MsQP+pzlptndVoHl/25u8nvBCfeLe8Z0Iml/mFenQoH5ry/+Fy7K6Oj2phTh5DqE9HTQ
         EOBSCw+DQmOrN/0v12FHfdAs4XHTmWKacOnI7OjzwykqE3oZA0Xb+Kc4a24WyzmdcdHQ
         OnjxEI4vPHYgkhxeEoSV//Siy+Gzl6t3UI/pi+5Kl7TBwvG3M3lXm+FRnspn6qECtYh+
         XDUfs2UKnbo0yXTVC4SBrSdmBJinHyqYDWUQ0YzPmDKYLu7yCYW9YtvBtVAhk1N7GSP8
         uwCQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro7/lmn+JHi9awi2J2xq9V8qe6+qet34ZDDXxJq7feaVCTIKt1svIZ9D05GnAlgs/yExuf1V1VO8p2e@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7/z85RV+fQSTyH8m8cseUZdvcMLy3JzVE4oyvqy287TrmHkLz
	M1meUId8DQAUcIbxwlRNLoaMHJ0d3bvdVcv0nwsZQAnhIzp5Hcx9iAWaAmcEuncQv7cosDtptrJ
	1wIY=
X-Gm-Gg: AfdE7cm+hqgWBHMcBI0T7yzhIdvEgOkkefCVOP6UGvEMmB9EIGVyLW1wa9o7+h9bZMY
	KT4ClV+0dM6T7T4+1FKh19QXO+qgCg40HFjf/SJGMJmPrWXNGfzJIzV9LOfMAEHnKINuGLGWSks
	AUxLVCGG9lirrCBtsp5cLnVx3IBRAnkaC0Ka4m/88E1ZX/Dide9GSoI/1oi2QseUUF0cRqJgBq0
	d6vNADCo/azsdBGlgfza7yzQiJMnn+ORH4MzKvoh8iRxGF0ETwfVcjpDOEgxXqrDHRiT7RYcbin
	pdhXJ+QqFsDG21JMxylHJ/D8mRJjEvrzkFgJ39LtfCoQBpBbCc5nXFuCpF9xFb7foVXPMr1d3K5
	bLI/DFIufJkNszNxdpOE/2VwjXex/WzcvnyCBSzSQJrmfaagk6gJDJNI7Y5gDCuY/rwHI77QXqR
	UOeQxvElc39rSoaWNmIFR9qn7OdEgv60k2eQL1NDNnVPe1RCSWBNk=
X-Received: by 2002:a05:6122:4b8e:b0:5bd:cb34:1b70 with SMTP id 71dfb90a1353d-5bde39ab301mr2520350e0c.1.1783017730631;
        Thu, 02 Jul 2026 11:42:10 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bdec8029fcsm1366229e0c.17.2026.07.02.11.42.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 11:42:09 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-738cdd667ceso659902137.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 11:42:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqZU25ZOLR61PBo/Im/ePkS/CXFwoc4cF4FgKNAWOCIQRl/jc6f44lXwW8FnA5x0q1rV7+UKCezM8Q/@vger.kernel.org
X-Received: by 2002:a05:6102:e0b:b0:737:ba2e:8a29 with SMTP id
 ada2fe7eead31-73dc05b5f94mr2611709137.27.1783017727894; Thu, 02 Jul 2026
 11:42:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260625-topic-sm8650-ayaneo-pocket-s2-r63419-v8-0-8570e692143e@linaro.org>
 <20260625-topic-sm8650-ayaneo-pocket-s2-r63419-v8-2-8570e692143e@linaro.org>
In-Reply-To: <20260625-topic-sm8650-ayaneo-pocket-s2-r63419-v8-2-8570e692143e@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 2 Jul 2026 11:41:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VauZ=yPjkza9U0QEu2L6tMJb6BSC532mTwa-sqjRhAdg@mail.gmail.com>
X-Gm-Features: AVVi8CdHOFq8qwj17FSviMXPODi_RZqregPjBSkwFRL55bEIPJ8qnk_xiGuXBg8
Message-ID: <CAD=FV=VauZ=yPjkza9U0QEu2L6tMJb6BSC532mTwa-sqjRhAdg@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] drm: panel: add support for the Renesas R63419
 based dual-DSI video mode Display Panels
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, KancyJoe <kancy2333@outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-319557-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:kancy2333@outlook.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,glider.be,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,outlook.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,chromium.org:dkim,chromium.org:email,chromium.org:from_mime,mail.gmail.com:mid,outlook.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A763F6FC577

Hi,

On Thu, Jun 25, 2026 at 2:29=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> From: KancyJoe <kancy2333@outlook.com>
>
> Implement support for the Renesas 63419 based dual-DSI video mode
> Display Panels found in the Ayaneo gaming handled devices.
>
> Signed-off-by: KancyJoe <kancy2333@outlook.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/panel/Kconfig                |  12 +
>  drivers/gpu/drm/panel/Makefile               |   1 +
>  drivers/gpu/drm/panel/panel-renesas-r63419.c | 350 +++++++++++++++++++++=
++++++
>  3 files changed, 363 insertions(+)

This looks pretty nice to me now.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

