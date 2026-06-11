Return-Path: <devicetree+bounces-310139-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Tj9yK4VHKmqQlgMAu9opvQ
	(envelope-from <devicetree+bounces-310139-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:28:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF6766E907
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:28:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qgZn7gJy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310139-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310139-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BBB8830059AE
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7F763438B4;
	Thu, 11 Jun 2026 05:28:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF84928643A
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:28:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781155707; cv=none; b=OsQ9yKIAkVFV9Ziw4EMLaw71+K1HzKsWkI2CPQHmCePAIPUNr6bhnz6I3ERrdHGu0gZGuV68VdBrTq9SfzfgWv9Ih3dh5xErAchfa2rNGXaQjgJUDIug+DhhcZ30kMMU1tm3wntYoI7wKvIt/79IrpBtRcwLWGTurPzLV+m6NOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781155707; c=relaxed/simple;
	bh=3toi2SGEmWYXF8N9lSrda1yDmkYNdiRA+9SgPs37A3A=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=IEEmQ9pCupm2km43RpPDZuYBEwZcKlvRthkEgmoySnOC4bnenLGUtFcvZXOYDHK+nRDBb6Il9JwACYq31XnJBBpmpuHfqgmSssQ3OH+XN2GHaVSpVFgDqjMzzxYZzENdBrrLH0KvbNFBfMttabKVcmW/i4vjMUdSBFiX8ok+0UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qgZn7gJy; arc=none smtp.client-ip=209.85.216.42
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-37474afe908so1894087a91.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 22:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781155700; x=1781760500; darn=vger.kernel.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2M4DgNNlKQeB9wAbpVxMXW2+kw1ExLVQE/x550Vs++I=;
        b=qgZn7gJymzdPBWwMn/tkgarl3J0QM1HSDu6m04y85rdiU3Bqlv9BJAANEqnpFJpq2o
         ZhIkkjzkJT1T2yHMGxIC7GO3EDzKNwE6MaaQXqSf+cq+rHWz9eZbe0jyhLC2HW9/vqiU
         LPGplgiz3A9p39fd04osLOKmfvJt1at4wUW3JmSim6d/tDFlOrptp+mJ2ezpD5x4ktwP
         VZQKJf5pvBmdMZIuICDBVGqK4iEaFnmc0m6uxv9HHbowFEBpfB2dcMbdlVyyNAYG9GAy
         fbChpihoQJsxQOqp+x/O/lAWxJgDgOLBIkmW7nt7ObbtODQE5pak6MjtKD5igCAdi8qc
         SzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781155700; x=1781760500;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2M4DgNNlKQeB9wAbpVxMXW2+kw1ExLVQE/x550Vs++I=;
        b=YDvNvygTVrpOugjE54XAZY6TZYw4CT9ngk5Gutkb6j6WJcAa6oPcDYQD4O89IY6i9R
         OTbbXoILaBGuwgXT1ENl//G0qDeSasCqmXamHQszILJ96wFSEwHbDXlGGy9QbikorQUM
         8gALCdiz4mSrWfqweD6VxPdsJBYXUOKLlqGx3s6vtC0hRC0u6+K9xDVuzrqOyCsQFJnQ
         GgkXU5Mw/jgg8y+6cUGF8apkntS5mVo2IYQQ8QzHyaFv6XDV1tKrtsKb7ASrkZ6HM98f
         +M5E+8d3ViLFmbO0gDvGWNVcLdx+LyC/U6RAjKFDb8MqPwEVr82IwJpJN3q+B8QwLIfg
         /Z6A==
X-Forwarded-Encrypted: i=1; AFNElJ8lJePwQ24MA+6ZopxfcUKegdhCL4GM97Brv+V3L9tCioVZ3sjz9eZIdpGLlfnpxuuUml9q0/8BuX/k@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/I2cY8fQfKD7UzLdPaVtV9Eo5/gWFy+8ZpQGAZUFJyTQyxQWM
	3Mid5jMnFQ2oC3I3uA8TnvrjATQyL6KTZqo5UspKFnEX2gjV6C4uV6Bw
X-Gm-Gg: Acq92OEiPM0LAH3w40anHOk3fZizeC5Xow/y/tjCdwRtVIe/HnYYHIfgf6qwUuOXqq7
	F0xY7wNxKWH3LtrCKtL/UpNIIVz4+IUZHGTp6q+ixBZanx4t6QsmGyK4F1pB9/u2QjwdDn2X+cZ
	XO1sRTFIv7Wd4zBUWuXe1JIAoLYZmzJA62qeZ/Nv14GkT5wFGbIgG0vVRpUnsZS3lffV64q8Y+t
	mvnerAJzOZoS8Vp2Qsp+WXzaPRJBb6qg9qWyY0hhcc2HmjbJx3XoSH78tYDuj7HCe81jO2yzRT1
	xXR8GbOJd1SFPBEbR9uUE5dmPx2yxOr7ToWZ3Tgwew4JSlo7LREESSjsW7cVvamSChJfnJ4OtCx
	Aabx59YxTvn6WlZ1OJUiSnK5Tyouvm+8mXp963HAf0nmqxr9Y3V/kkBeEVhsu0W6/bbRB9o8vMr
	lcjJmgrjdu+/HO5DlcWtwUPUuRWPqfXgfhzgmQqBek8d21ig==
X-Received: by 2002:a17:90b:2d92:b0:36d:8f51:fe29 with SMTP id 98e67ed59e1d1-377a5ce84camr1632782a91.17.1781155699906;
        Wed, 10 Jun 2026 22:28:19 -0700 (PDT)
Received: from [10.188.227.203] ([2408:844f:2361:d7cd:deb7:4e0e:26d0:4076])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-377522a1a9esm1144589a91.4.2026.06.10.22.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 22:28:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH 3/3] drm/panel: himax-hx83121a: add backlight regulator
 support
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260608162622.403713-3-zhengxingda@iscas.ac.cn>
References: <20260608162622.403713-1-zhengxingda@iscas.ac.cn>
 <20260608162622.403713-3-zhengxingda@iscas.ac.cn>
Date: Thu, 11 Jun 2026 13:26:47 +0800
Message-Id: <178115560757.199930.5802398831559617564.b4-review@b4>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310139-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mitltlatltl@gmail.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CF6766E907

On Tue, 09 Jun 2026 00:26:22 +0800, Icenowy Zheng <zhengxingda@iscas.ac.cn> wrote:
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx83121a.c b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> index 1a7e0125bced..e31e2fba0a78 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> @@ -195,7 +197,27 @@ static int himax_bl_update_status(struct backlight_device *bl)
> [ ... skip 18 lines ... ]
> +		ret = regulator_enable(ctx->bl_supply);
> +	if (ret)
> +		return ret;
> +
> +	ctx->backlight_enabled = true;
> +

If you use a pin, (it is indeed a hwen pin as we know) you can
simplify it like this,

bool bl_enable_now = !!brightness;

if (ctx->bl_enable != bl_enable_now) {
	gpiod_set_value(ctx->hwen_gpio, bl_enable_now);
	ctx->bl_enable = bl_enable_now;
}

BTW, iirc, panel bias can be turned off too, although I don't think
this will save too much power.

Best wishes,
Pengyu

-- 
Best wishes,
Pengyu


