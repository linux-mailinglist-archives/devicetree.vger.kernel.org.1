Return-Path: <devicetree+bounces-273553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCrTF4glsGl/ggIAu9opvQ
	(envelope-from <devicetree+bounces-273553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:07:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E079225159D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:07:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 04C49328632D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:35:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 269B23A6B9E;
	Tue, 10 Mar 2026 13:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WvDkeIrD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69F13A6B62
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149341; cv=none; b=Vr160/o1m2K5grI+zNEwYHy9RsgWg5TrdJ1qiQ2fi8sqXBLL1wSdpgPY3Air07fMpkkuddOZCVr9BkiK7DmS1u872nE+xI2qiDNnLi7fdK4UeqaLP6oZigTdKAM86xMT08ZmyPTWI245UINnp8cxd0ZDrKFzNuTOLJpAiQ8reF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149341; c=relaxed/simple;
	bh=6Tb5t5+6NDpxdiEu98m8sY56pjpprXnrLEy0xaqkhK8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=c+TdxpILPtG1V8Eb5boVZQBuxjNrB04dL53+aKyoFKOlBp+opg5qZ9o4dj2o2++wJgRwzmp81EihKEdk4+KPCW8J8KdRN6UedxvZWXaa/1nQvzx3optRugXnuExE8050gM7yTbUjU++LNhH21+TSeUNf5Ye117ZkZvmkuaITHPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WvDkeIrD; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-485409ab264so10636095e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149338; x=1773754138; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZdclR5/dW9BcnEJOWDWjbzumi2dZWqG25qJztzjz6xg=;
        b=WvDkeIrDPYXlgVwfeCZT8N55ciisjCsusFcgpCvgm0vA7V/WBhQhvgern4mzH7ugQs
         YVwVeZ8PVMMwjG99yzkWnXHdCWD5rTC0Rb+TiCTT06imEpJAELGhaqbHnTdrC4xgiFzd
         ArBReNgcUzpORAJ2MgP7mRCskjrSh/DMnrdi/5y74oJBZocQcUml1DZo6vel+/gz3Lq3
         3kjrqI8YMW2VJho0ggpoRCIesKtkuU6jBQ/1YYUCxdEEqffpZAZMedUtrGvTzfOQkHtG
         5vR5KEwfCmg9ZYPQpf/RVnewbSoyXqZ0czhvVyIMlxmPFgIy+aC3KuhuL4F+wfS4OYdE
         x04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149338; x=1773754138;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZdclR5/dW9BcnEJOWDWjbzumi2dZWqG25qJztzjz6xg=;
        b=l/sltQf/oxd2w1b/l86tSCLmLCFKRPjdModRNFvE1qjMZHyLJhkANPxHc87hP9yF5v
         hZkfZjqoemBMOsIg1cdSyaJxPfg4LPGyAjdv1SqhqupcrBNDuphfj6oNE4ehI7UEjND1
         v11YQs2jlywuUDp1HB/k+fhnQUm771ftCpg3nD5jkjUIKk7+CH4Z666Poe8+JT/qU2kP
         jrDidvdyyaOO8v+QE7zLId5Ob6+WuYMOb+Mql7vEuuLZcY77dAjpjx5tNPgpzoCm7Ccb
         OdCpT5GCzYaQqyMVOxq2Ck6475HVsE43X/P4Hko+pSlL6YKv1QEZO+hXI8CBxHKVGdxs
         KfZQ==
X-Forwarded-Encrypted: i=1; AJvYcCU83vyZL21VI7sZZZMSfR8ziZyuuiLo8c7UskcLzsmEOs81ZtlLZvNfh2lzk0lTKsDYvUZOBFF0dvkE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2qMDdRu6P+CJVvTvOzOw/bvxl+VxRGTxhhtFJzcKE8WMjG47b
	Mj9w7RrZDwkUfLHiikYInHBCdMAI4hkNgxZUbTkzKcuJebbIUvhKrtg+JOam1RvzLEFjlUL5U7b
	cjIE2
X-Gm-Gg: ATEYQzyFJNbkF99OIBSXN9e5jhrRdFrOb1SWMzkVX052JIZdv3ALvpcjt8RgVjLiSqp
	F9ZgOumtSFAm2zzJgBUJkNUXfGvekwQJIY6uYpInzDiNPhLptR2xAgvTXyQUEhQN1fVNJWccGf7
	gultTmxMcQtelQYNianD7GWbLWoDszZ7cSBZaa+cW0MysVwOIjapVd56kHc+nUx8+h3cZHWGYu0
	vllCB992p22aO2HwYJyp39cT1vMVIzBz46ZmKnTMizRncZWVveECrNHje6fJbD662zVTRDrUiIN
	F9QuxzKy9lxaWr3fTovX1MuqHYd4+lCuFYAzYH7kja/aNZdZNaisRM3lbZd8p/yvue33PFLrlfe
	c7qZVZSwJnYZDTVRgXicBCDalqCKS2+v5zvHDOEO6fdHmzpplBDdZY4nk/2gmX1ZB+ibvqlXg6l
	9L3sKASB5R+VaWQxtHpl3H9xLsnraBeIG1QF7PE+Z4WcJl
X-Received: by 2002:a05:600c:628b:b0:485:3cef:d6ea with SMTP id 5b1f17b1804b1-48541a0d032mr50216185e9.13.1773149338097;
        Tue, 10 Mar 2026 06:28:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, 
 Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
 Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, 
 Simona Vetter <simona@ffwll.ch>, Thierry Reding <thierry.reding@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20260117005028.126361-1-marek.vasut+renesas@mailbox.org>
References: <20260117005028.126361-1-marek.vasut+renesas@mailbox.org>
Subject: Re: [PATCH v3 1/2] drm/panel: simple: Add Waveshare 13.3" panel
 support
Message-Id: <177314933738.2052605.13727235590702845592.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: E079225159D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,glider.be,linux.intel.com,ravnborg.org,ffwll.ch,suse.de,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-273553-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,linaro.org:dkim,linaro.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi,

On Sat, 17 Jan 2026 01:49:48 +0100, Marek Vasut wrote:
> Add WaveShare 13.3inch 1920x1080 DSI Capacitive Touch Display support.
> 
> While the panel is described as DPI panel, it is part of a larger unit
> in non-removable metal casing, so the actual internal configuration is
> not known. The panel is attached to "waveshare,dsi2dpi" bridge via DT.
> It is likely that internally, this panel is an LVDS panel, connected to
> ICN6211 DSI-to-DPI bridge and then another unknown DPI-to-LVDS bridge.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] drm/panel: simple: Add Waveshare 13.3" panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/46be11b678e0a9a5deaf132cb21afd1259e32d6e
[2/2] arm64: dts: renesas: sparrow-hawk: Add overlay for WaveShare Display 13.3"
      (no commit info)

-- 
Neil


