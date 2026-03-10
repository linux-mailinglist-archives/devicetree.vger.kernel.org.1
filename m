Return-Path: <devicetree+bounces-273548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKn4LSQnsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:13:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F3B2518A6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA87333FE67F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDEB739C019;
	Tue, 10 Mar 2026 13:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pjjUj12P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C45D397E8A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149332; cv=none; b=np7Jo5FwHqMQJufJbwWIISjQpnY/TiNPrJRKugJp+u/a25WKUYvb0Gc0L8l7JLtovDMyaL7YNPUVBNFntDRGw6eSr1lM9gRbqoO/K66Ddgu0+V0p6zFmWuLUW/0rGurGantzYcW/l3/HDQw3pOLGEAFsfPvN8VZ5SwpN6f+jc0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149332; c=relaxed/simple;
	bh=ebOhp/D0lemV9J//II6Bu+71GjVpIKvuSFdJF3mItgU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GYsm+pIeO4IFla2OofuJQHFxnrFOxjR+2scA0nfH2iKFIwt8NUR1MUwESY2Sa3j1FBBkWARPPkwIKTT/mijygwdKOcqtwlp1lcBdS7LAx7ieFMxLzDEjQgpc+PYvD25dvKNPOqI946YximxmZ4c2+H1A7c4BBBIuSAufl6pnDOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pjjUj12P; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4852e9ca034so31509175e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149330; x=1773754130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2j7qOPkEzazFnGDy02xcvmws1+SNRxsCy9WBuRTNTQE=;
        b=pjjUj12PlwE+bPOiGBAwW3jw9mTLWI2eKo+mFol08yDXwaF9T2QLGN+TC0ZrPEQ52+
         Ezd3+wY5WUuRFNXBNKiOQI/n81Sy42GrzIWz2DvoZeBjp7bIkn2TGJ/IXkOSGVOK9Y37
         x6L4Q6HAoXy4BNduio0gUW3cN/Q3ZhSTUev7bAN2ZSQzA/ZSDHBJVLoWlVZQ/gguC/5N
         JNOYApmxexKHFGK9BeO8oiPgP1DjJFyoBlBdWk+n8h8yJQqfoYHmhqTncLMJZdoamyBq
         f1FqxhIM20R/M9nnPDKbPMXcQCE1djeXblC4AQS6ki1pUnRZOx1d9K2jblGlOUBnOnLW
         NXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149330; x=1773754130;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2j7qOPkEzazFnGDy02xcvmws1+SNRxsCy9WBuRTNTQE=;
        b=kUM+5FGC+z1Gv5Et4v0QNxjZrTl1o/7LdGMiKLA9+FdEBRlY3gRZdqAdTyIJ7MYVwy
         xZG1YcukglRcAotCE+Th4+ArY5KTnSlwL6Jo0Qi4M6luQdOb8AdBb8PtLvtJ1fhJnGVk
         /+2ZvW8vT8ZFrXLvmJF4nNvQftLlFr53G2MrjfF7ToRUD1jf23/cE1Yj6eSl000rwgOV
         UA/Uv8+UAZpcYsycjUhSGHx3lupiXgh63AONbhoFbD/WCibnmtrzGgMlnFV4aYDDoMN7
         wvucJDgqph95wbWD6OxWyEKuLwugzADAYMG1c3xqErSFu3EJCFYKlfScRaRA6iLlLjRX
         rL2g==
X-Forwarded-Encrypted: i=1; AJvYcCWJQOSCxvuB42FLUThALeSxLf3ku5kygCX8wGlHCDxUPj0K5wb4T+cm1jgemVVwu51RWPQlULFrVzwA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0Y+MXgwVBVuZvdeQZF0y+SOJMFsz8LgLCkB6fPncUHndMGyR1
	w+Lg6YzXWdGV1aKI6h7iFzZRi4OXgAkBKDSpbYvwXJYkIyWpv8ZtCkO/8K/iP/RAG9JbGAEu49C
	ELbA4
X-Gm-Gg: ATEYQzyvokXvgvFyQVQBGEn0kkKxWY0IIf374J8vn2OgfBNYWOHVRXVHPPzj/ykoSq7
	m6SsmKHnnDtNe9EXTxfy1WC1toeSpQkKWec0W5DDw06I10P24hlZjDH/90oLRLlkTWBFb5k5ktD
	E6q/XtGX2vOXTTvE/QdHAIBabdYgUv/nMYTgytaiz3JWWpP41uglNHKYuvXzjGoxFAltKhLpT1B
	BypbP71oY75K0Qk5xxHNxeaWXIXWgJmFOqAOqdKk2lFtr20kKWseU6knbYyZbLfkIiQ2h0a6vv6
	pUEyt/VaQBPh1MxjhQK8oI4gtjESfNRiEGkM0LLCRGubmOZMTioH3xkbHsSPKujK0nztvMeUe9y
	Bb3RRaAWKQXxYEVnjNqGG1KeRXPAbHqUHL9YEqymrcvKib/gToFcxfkj8q0Ih3A88EqtHEgRXBy
	3yMz5V3/emAcwwPTt9T46F/OM9MTeA4dLb1Dra8SigREJEq8hUlH6506A=
X-Received: by 2002:a05:600c:3593:b0:485:3c7f:527e with SMTP id 5b1f17b1804b1-4853c7f53cemr107479435e9.15.1773149329824;
        Tue, 10 Mar 2026 06:28:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
In-Reply-To: <20260119-v6-18-topic-panel-simple-et057023udba-v2-0-3c73f0c9d87a@pengutronix.de>
References: <20260119-v6-18-topic-panel-simple-et057023udba-v2-0-3c73f0c9d87a@pengutronix.de>
Subject: Re: [PATCH v2 0/2] Add EDT ET057023UDBA Panel Support
Message-Id: <177314932896.2052605.9054894707724829711.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 30F3B2518A6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273548-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org,pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

Hi,

On Mon, 19 Jan 2026 14:44:41 +0100, Marco Felsch wrote:
> this adds the support for the above mentioned display from EDT.
> 
> Regards,
>   Marco
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: add EDT ET057023UDBA panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/c58724f415a21222b43f9e9385216252be4cedc7
[2/2] drm/panel: simple: add EDT ET057023UDBA panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/43c3d68e64898f61e3b76c56b20af227fa49ca3f

-- 
Neil


