Return-Path: <devicetree+bounces-313529-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DcEXHvr6M2psKAYAu9opvQ
	(envelope-from <devicetree+bounces-313529-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:04:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EF86A0CA1
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:04:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=Klhwl29O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313529-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313529-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E759302F73E
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538E63FBB5E;
	Thu, 18 Jun 2026 14:02:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8C53FBEC1
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 14:02:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781791322; cv=none; b=ahfO2lDxdDhHnY8Zq/irXw9MwAjD43jJyqgQ55RgZqwJAGRYUCaKd1SrfDmgV4iPgZSr7ZDxI+oOg0SgoH9MYAQ05/Vjgh6BF5Qlf/+R9F4VhdcmtOR9hRcFmAs/Tl7yYuV0xq7MAB6jlPQNAz5Y2mVZK75j4DkDQ/eLp/0jrFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781791322; c=relaxed/simple;
	bh=0JrOwwZYkIZKO5W/3wLzF0A3AW8KmhXy+G38WHWe28U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rHo4MriRo5/ye+6VqWl2KrhU+BClQb+3qLZk0HunnSMAHsbzUzEj5qYcxcBJb/+Bh7TE4eT9Rp/RV3/s/+Vxc9t2O5hG1ao7IlCukSTxfmZevS7j2kY042AV8pYx8SUy+/idSNb4a5riWJEfo8MsOEH8qqI6um2L3fvf02vtAsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Klhwl29O; arc=none smtp.client-ip=209.85.167.42
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5ad536cd0c6so493702e87.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781791319; x=1782396119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4oNfXFLkcb4dBrCrqAlUfROybHTH5OrCY5Zn4tZayg8=;
        b=Klhwl29OUXMLnj3xGdG4jG8gJynmRXO5KiXckfjA2BVO6UwjigYGO3U/0xHTttpwVG
         ZZ1x+jE0AWU/ES2qX/mbXD1hnR2fXeJdQ0cUf6zItvrRtN8M6SVyN6gQdwo1XsSTaaML
         zP886Oi32NyPwxqNnHpfbWOh7qXWCWZBbZZeobPeqhn60BQB/5wtl16Ph4Hxk0F8yDGW
         pyFXq58AlE7UmCfRpDMZ99oKv9BN0MTL4Bw0w4cFA14O/fVgbBA+jeIw1yWk9Rpi+DEe
         rjbLKoGA8gqKut7lEFa2Ln5y6MstzIUou3skrBUzWPVvGXh0MeQCIizQBPSRD9kPnvOZ
         FvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781791319; x=1782396119;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4oNfXFLkcb4dBrCrqAlUfROybHTH5OrCY5Zn4tZayg8=;
        b=fyp+DoBHWMPWtWnGXL7D/QgGqnGCCEEpC1G0DIb+LjLl/u5hN2k18H5ywXyN9vGBzE
         lDYyVJ733G2xMeF4ReAOTwJEDHUnMePBDM46HaA8yb3n5F2F6JCP+ybY7vJLeky75Gtp
         D4rqnHeSIek9npIMYvFIQZXO/pH0Gv52kFalVXqSC4FF+JcVCfpHbuB3uKhJ4qfM0oBO
         FjPnv8nBOPBy0TGP3MNueyVpSIvcTYYZPb2m/CdkCZuFNQ5zgBR5m/KJAqWsFA8PTF8N
         sl9Pbl65LV7+X7/GXsGLsnx7ywTcsgntXE8on4PqC1EdGhLE9p4OpZoZ8HR2BkM5i8gs
         kL9g==
X-Forwarded-Encrypted: i=1; AFNElJ/i11C02UN32bqx6D52F7QBcj5YBb4nfXHL0259pfIqz120jFOTr3m9jEfV5m3ocoEVlQk8JEmxifZh@vger.kernel.org
X-Gm-Message-State: AOJu0Yww9OBKpXIuwCFJfSm8J+1FVRYTzO77zkN64oCNb2lwC6AQJIBp
	+8ibIkKCB5YtioPAOYfxDfGW3wa8jRqESsA3DSGT0rO9qXT9a9CiME05iDvPco/XQYc=
X-Gm-Gg: AfdE7cl7ycF6KvW3m0uqAO+bsoKbKAGg826dCHSgQ3P5FBPNqO+PSFbTigcprOwOtOT
	0oeUSqjKq7xLxje9eOv7daV/D9c8ji9AKk2H29S5KV/r6a0w3RRcCInOUBDgIX9PAyXb7G9sj4v
	QNmKgfBCOd8kvwYVSWHCICtSHnI9RkhGt1TwHFzAK1Mi2L5FGEvMc3iud7iNO4vW+410Vyi9sqs
	eiAMmfT7U4H/eJPoYcXrcKEq6B1SXNaNz5dcs/o67Yw9NluEJW+pppFVHwbrcCzsKBNxI4rsaJE
	W1tuvd7j3Yz6C5cbZ5in4Cj+f+0/G3Hx+fsoPGF1vvGzx63+D6C6NdGBZ5mlKtThL+N9kZ1HVYm
	N79UFmGyznhypxvW0+4b1Ds9aBwHXqx1V/DcmuFrfeu798IlgtwTXK185eW0UNif0nfegjaKQyH
	QXvqaYgEvwSn0NiLVYyaMXZh5uIAGAPz4yFBlikrYqoNHl
X-Received: by 2002:a05:6512:110e:b0:5a8:6793:e701 with SMTP id 2adb3069b0e04-5ad4703a6ccmr2818410e87.33.1781791318307;
        Thu, 18 Jun 2026 07:01:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4620b3ed0d2sm27901309f8f.22.2026.06.18.07.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 07:01:56 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>, 
 Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260608162622.403713-1-zhengxingda@iscas.ac.cn>
References: <20260608162622.403713-1-zhengxingda@iscas.ac.cn>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: himax,hx83121a: add
 optional bl supply
Message-Id: <178179131647.245596.13953179203081214548.b4-ty@b4>
Date: Thu, 18 Jun 2026 16:01:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.1
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313529-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,iscas.ac.cn];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mitltlatltl@gmail.com,m:zhengxingda@iscas.ac.cn,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.freedesktop.org,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:dkim,linaro.org:from_mime,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 31EF86A0CA1

Hi,

On Tue, 09 Jun 2026 00:26:20 +0800, Icenowy Zheng wrote:
> When the backlight is managed by the panel controller IC, an external
> power rail might be powering the backlight.
> 
> Add an optional `bl-supply` property to describe such power rail, thus
> allow disabling the backlight.
> 
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: display: panel: himax,hx83121a: add optional bl supply
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b817a59c2afcfbf1594b9be6c4136d9d7d613eee
[2/3] drm/panel: himax-hx83121a: pass the panel pointer when creating BL
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ae8dbbe8955d7470dd41e101b852fd1a70f62930
[3/3] drm/panel: himax-hx83121a: add backlight regulator support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/98b46e693b912eef0e6d497327489113845cbd15

-- 
Neil


