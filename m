Return-Path: <devicetree+bounces-273551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEsTFZkysGl2hAIAu9opvQ
	(envelope-from <devicetree+bounces-273551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:02:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1987A252CCF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CDCE13118438
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8BB43A3E9F;
	Tue, 10 Mar 2026 13:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pci4D+1T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAAF3A3E60
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149338; cv=none; b=KQsJgqQ/H6ddYJwUz/FtvbC1eYrGTbcYdmrkPnmwEmnLsG3y+5IXPv/RAvoJSNfR5uRcwkqTO5xNYYhQ9kqUJe5yrH0q3I/Urvu1BZVycnS6TL1RREeILCL946WiUwljk9lIsNHI47rmi46aT36Hq4kcONta+cZfu+6u+kOpHyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149338; c=relaxed/simple;
	bh=g0Q8EDOmn8+CnQCQTMSi5MXAM4Ez4WIphb+1i35l71I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DXVcWWfM22esAScy5xGyd+whJgDmgQNsDKNtMfXoCqBnXNRyrTwwq8L8WJnM0gYSd01ju72M0PXKsnVif9HBjm3Ham7IdAxNJX7yJ3tDZZtyR4o04reG7dsccrwoOhLFZcUqEjrrDGWm4c+xT7M/5uOi4DvRKFOjUuDAeEVJ/24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pci4D+1T; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-485345e1013so19750345e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149336; x=1773754136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i8tJKCF+8TjXUIleVHUWymny2fq863N5ZnzM9AlE77Y=;
        b=Pci4D+1TAjGHREYmQXwA01CMQ4xqBVnxR27xOC0PBKM/OBYkzdDRxHUG/xKcwHC72A
         gK2aGR2JAC7qktWPOj/5Hu7ezTpjfm4Q2rgM/kCrR7gXIVi47zSZ5BbmBi9jLk3QV70E
         33c9A2IHHWmDuE8Ix4SbO40OLn44e1S0Pfo1b102+KjB34g0IpRo7VWYPy1ZFDi8MdZi
         gt1BYlZStA8BrAx45uBArpfQTRjcXRH/POm7RydATSjXBxQBbJZEjU/fSlX5hSihxcwJ
         A/OEKC0HN80VH5lT2qmAND53Ecc9lwO/q/jGBattT+9W1cgCD1eE/XjCQQanucYZjcEe
         jiaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149336; x=1773754136;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i8tJKCF+8TjXUIleVHUWymny2fq863N5ZnzM9AlE77Y=;
        b=pbfXjwsxBb6iyctGcpPipjClnWimxTOhks3+IbBOgSij7/Lk3YKU0LGrfJ+lV9yYxm
         3obD28oqnrjmFAmxdPFKSAQ9O37O4xovvnlIFfKjQDd52XVD3s9X/N4+zcaIxY8JuxQ2
         Sok7fgG+SKELOyRzlBTzv3Oiy5egxI1qTChefJPLV/8YYa7iM96YXXXVRPDjb0nBRlt5
         qlhRfM0dmTcxk4/nB2zFxisKogRiNINeKYbs1xACQDO4cCgpk01ucQ0op8AxB21vJBAx
         UrOzj9N/0y8ZolV5iKh44StZc+BTAN7YbZLoRSTC9qzgjRyNeHcnq7R0wTXCy6zdc13t
         FzTg==
X-Gm-Message-State: AOJu0YxCbq8nyLfzWtf3hB8w7PsoicbRnNu27V2VkAqo4WNh+z2wdngt
	E85b50UGxCbIpIUikbKJ7BK4bCFVkMXeXXr6Au9xTeqGw06UeeL8RJo+Mhs4/TUqBty5kGIIWDo
	0L4cl
X-Gm-Gg: ATEYQzzh+6dE+V2cvao3zghrepWGTB4xT59aAHlQoYnIN2UNdrzEwE6hh03jYpqVkaU
	8kJtOcnTYoREdRDjrbDHoaBFZmAVG8OWx2nuNrGwI874C1JjHUwogt06RNYOBiTQNAkFFU9K3F6
	eBVCgpdKyxBi3m5BpoDZQINOu0kB/PP3ZIl4anEwjAsSgssgISiFDDjkIBuOrSHxGPzTv8FBJ0b
	+DJxGDn+bGu0dEi4ZG4OhcveAC+VH/S8UQk/cappZtJ01tYgmKuGRX0Sx/mJWHd/DHpzpaESTkI
	KcK104XjDR3hJB7DfyYzQYrhJoJiVpinHEueo5QWWUl1rXR4vknXrDI5x4Bx+b3QRosmumBjXUU
	IVLVZukujviuJB9uIjLEH1JDkSp6SYKeMBmW+Exeb+kT6+Pxpr0Tw8bVJbKfPDNMSDyFYqapHJQ
	uiCq/9J3IK3wvSWq1HDOkmSzQ94yQhrO+DpyJoze9wP0S0
X-Received: by 2002:a05:600c:3f0c:b0:485:3c11:de84 with SMTP id 5b1f17b1804b1-48541a123f0mr49305165e9.14.1773149335716;
        Tue, 10 Mar 2026 06:28:55 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:55 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 kernel@pengutronix.de, Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
References: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
Subject: Re: [PATCH v4 0/3] drm/panel: add LXD M9189A
Message-Id: <177314933497.2052605.16984731297996788317.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 1987A252CCF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273551-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

Hi,

On Wed, 18 Feb 2026 10:12:03 +0100, Michael Tretter wrote:
> Add support for the LXD M9189A panel based on the EK79007AD3 DSI display
> controller.
> 
> This series is based on the v2 by Rouven Czerwinski. Since I took over
> the series, I changed the maintainer for the driver and bindings to
> myself. Furthermore, I updated the device tree binding to use
> panel-common.yaml as a base and fixed a compiler warning for the driver.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: vendor-prefixes: Add lxd
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/312e23275b5bfa61e6cad9f6648d048257273742
[2/3] dt-bindings: display: panel: add LXD M9189A
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/59986dad1bd075de129334c4a4cf4ee9b29fb221
[3/3] drm/panel: add LXD M9189A panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1f772de164e6417e58c7b53fdad7f3c04d7f49ab

-- 
Neil


