Return-Path: <devicetree+bounces-273554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLTzFX8psGn/ggIAu9opvQ
	(envelope-from <devicetree+bounces-273554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:23:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DE5251D96
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A37F03329D61
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12CC93AA4F4;
	Tue, 10 Mar 2026 13:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oEArAfkE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B776B3A6B87
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149342; cv=none; b=KUD/EzFXRSY7I2k6kA89/yOCyK+xOAXf8+wHxu2h3M70CeOI1x5/DlKV75Xaw956mvnQshayeXqNYSu3eIdbcZRuCOOJa9IA6dJZSeTLgH3n/uGpU7DQZHzv3YrrOLv4bvLp3d0Jq/a/8eF5P2LH6EP+P4ooLTOuRxPSKXBV7oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149342; c=relaxed/simple;
	bh=rxGW8+tQ88Bflwj1ttFaJF432hIgwTqP+WAoaii+R58=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eJOuICKUMV/K6YwnXe7mAdfuUE8zVwDdKtCRqcI6gUp1Sz3jTgyazRIoXCBuNT0KwuNrZlgA3l6BBfWWUikfotQ2//a+DRCG3MvwDA06i1lLzPiAr3INSJ/ti2C+AMsjweCBiVpDSh+ViowTJLmU5ppXjnweSCJbyOJ83OHcPBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oEArAfkE; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4852ff06541so31809335e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149339; x=1773754139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Dyi3fSES+wZzHY/nkTtJGe928utq8wDl3cdh+2NkEw=;
        b=oEArAfkEwQFYWggzSDtI4M93XZAmKDfMUXVcrP1kJHT/bAy9uDC6UDRwgBi2U16KPY
         K0pCQ2bAdX1ZIFLe+lF7FSIuBs/qqapiIPV60qJ4ir5wXgPG91Ov0aut2UWBCAO3JOev
         WgSZZqDxuwtaUChsmzeCwoB4JHyiuLx0yEymieZH4DWcamox09PtKKIRgH69Mh79JCRg
         ANpehMgZhHbfo15oN2McAH9f1u1Y0GPOtbNBaLobFqlh+gmsBUEMXaEFbn0tvJrPdDe4
         uLwvC7bx8zXQqUHtJVrAZ21cXUijkNekz2dYAA4o968ExkBseoXOL1Of3Pf9wh7rY7AD
         /ZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149339; x=1773754139;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1Dyi3fSES+wZzHY/nkTtJGe928utq8wDl3cdh+2NkEw=;
        b=tN/GboPSdILavQG55PfU6af9PU7jgzB6gLe3hx/Q8GOm0aPSFtyVnhF8BhXVJw5cQP
         yz6IDzf+eivX/Y26KCPu1QcrlVa+Wa3HlS+n4wzbtXuOKSFKDUacr0hVt/LD9PWNl7+X
         ZFmBYF50qAYWUYXWUOCTsi5YidKSiR7jF/tSuXOisXEEN0LDZ48yZcX1Pj9Q6p1c4vY+
         LJB3bTRw23EmUS54ZUDxVPdLEAEm7T+rtuNxwbdhe2fP9Th9k8AToATJJTJDwQHIY+r9
         VdT/l9S1/mBjLTo3S6IXP+KiRyfuvs8dsrgu9XrOHaQqNLDfsZWCzHePr5ftru/OpMPy
         hEjw==
X-Forwarded-Encrypted: i=1; AJvYcCUrYP+cWi9scpD3s+pJXH4ZW+hwuXfAXwN1telr35q0/R3+wYyqUwV11y40B6W5tJcoS8hbJVYvNe8Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzPXQqicOrKRs0OhM+Y2QSV6oadPfucgw/C5J3VGt+YDCmE7g3p
	/nJxo7oO/Ol2B6pXmg3NzfK63Ul8APfAxMsU4iAbLxv/JBNgM2sKx8cvQ3q8Ew+eS3h7Wk1+lNQ
	3NKyo
X-Gm-Gg: ATEYQzyIdEwccP5RBEAG8lysag/YOm/zaesfKwc/kd6mRt4cZ+raxsK+TzqzE0TYj0y
	F4VfslIW+fO8L0lzLaHjWVrk9p/vD50OB4sp8csl/7LC/DjoOmZhvlavz5cmrCU/HTeDcu4er8m
	E2TDVqORUbBDz1kb6kk79dQ5WNow2Eu7jPVhk2OdcweGff4fTDwzyZbaplzZC7YXCbkC+aY/CeN
	ulNyeMg7mz72SPpIhMQ9OGNciDAj32WfIJEa4D4Tzx3+D1SzDj/cQjsIh4o15Y2seBeZ3JYDnJx
	UVNBvdI4XGDh9/sIvpbLo7PSu+EmbsjtDwwWuHSbyv2vdMvCjoGZ7TKfu9LOCi6Ce6FHPepZsb1
	mhHJGmDBp2Nqn8Gl1K/HAb8qQPxS+8Q7HcO6ahXLw9ju7/QV0YGKfGwgurjaF4JpOh96HbNjiMd
	553C1aaKoOKzlNLIgRPEoRiBvn7tonZo5JdVviZMHCtO+A
X-Received: by 2002:a05:600c:3510:b0:485:3c05:24cd with SMTP id 5b1f17b1804b1-4853c0527dfmr106826255e9.33.1773149338944;
        Tue, 10 Mar 2026 06:28:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, 
 Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Jagan Teki <jagan@edgeble.ai>, Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260309180353.8220-1-l.scorcia@gmail.com>
References: <20260309180353.8220-1-l.scorcia@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: display: panel: Document the rotation
 property
Message-Id: <177314933823.2052605.9893340902045506461.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: A5DE5251D96
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273554-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[lists.freedesktop.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,edgeble.ai,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

Hi,

On Mon, 09 Mar 2026 18:03:36 +0000, Luca Leonardo Scorcia wrote:
> The Jadard jd9365da-h3 driver already allows DRM to get the panel
> orientation via the device tree rotation property (described in
> panel-common.yaml), but it's currently not documented.
> Describe it in the driver documentation to fix a dtbs_check error in
> Xiaomi Mi Smart Clock x04g, where the panel is landscape-oriented.
> 
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] dt-bindings: display: panel: Document the rotation property
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4063a4d39f97b02cb7bbdb47f0b0050b7821e187

-- 
Neil


