Return-Path: <devicetree+bounces-307452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YCiRFU7gImq/egEAu9opvQ
	(envelope-from <devicetree+bounces-307452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 16:42:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC0B648EEB
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 16:42:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=YqC35VhB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307452-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307452-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA4A0301C919
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 14:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 388D53B7B8C;
	Fri,  5 Jun 2026 14:40:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B0B3B6360
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 14:40:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780670446; cv=none; b=dLwkID38mFe+wTvzmycltDhgYT2binsIPbPlxBhjw+P6Ro5BJis2Rg82PxoPjNLzCc5oER1YbJGpPpZNWeDpfOzfkWQjg4p1vzNPAAGIr/BdkdNBiZiOlbrlFQHyBT+NNtGNt87yN9D+CIEAiC2N9OUU671sajVKJxaPKElq22E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780670446; c=relaxed/simple;
	bh=2fn4fU2NfDRDPQchK0bwTdWV8aPxHMeupbQse3mEPGE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=sdyIcKr92HGjLMtw0LP+XnQM6bUYyCYV81uKOwUGx+3o+2UWQDsJx54bgaoxqya5Ww1sNOTqikz1brLssSYqAOeMwWNi7DghIjPnMvK7TtGVEJQ4vospdBev7cAQgu0HS19RISydO34GX8q10hfV0aDnQhkiPjpAVsBPqyAEXes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YqC35VhB; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490c0c92cffso11423785e9.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 07:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780670443; x=1781275243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=skr1dG/uETuGik9GgZErIJKqeHCvcO7qNrhexVQ3Vl8=;
        b=YqC35VhBjKHFoEPcqjey68IrGKQ8Uwlum7E6DrWI+MfPjMhe2JruiBcc1V80ilbLqJ
         xp5J7w5Q7SlTAREQE/17ZWsu/Lzkw9Z5KaS8gzuZnJSXEB4c2KC/EUn3GFsvKLNXJ8SK
         Do/izmCcRbdhVE2oavl+RFkI9/g38/Z0PRYDxAVzbivhgXHXV0hOElyJpUiBFHIlLzq9
         FatckGw4e4FO1+r97gZyTVhCMfwtjHI4Nk1DsM2DmENREp2NP84AfEfJc9KhkC188spI
         2QoarO15BWWFww42/JPReZYGJVI+TJJF/xjC5XQLkDnC9sBZHPtlv7MJz3aKeBWzoW7v
         xL0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780670443; x=1781275243;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=skr1dG/uETuGik9GgZErIJKqeHCvcO7qNrhexVQ3Vl8=;
        b=bk4IWx8axlzBBVvTlEFDwAc27I/SDXYejI5EPrtKujpjwY5B8GySRF83y5aGI1lLW0
         +K7B+L3Bp9bu6LyyE+HL3LLl2BXKgNsWfV56FCA3sYuhgA/oAhcQjyx751mXBFOziH17
         NTALRsvX3IkAjM7hdmVW+lwjqYakOCoeuJrNf8bD1mNxovu90YI0EgdaV7Hk9FQ2SnrW
         kj7nUcY47umlJUeLJh18XcEeX6zjyD7VemLf3PhowfrS/EleeAP0q6N7Vr50nAGGSDHO
         y5hgTlkKHNltjt3iJbc0WiPkR3AN5OuXTORi2Xd5V07RM1rv6ivfj6oafCzKlTVyRIPA
         uKPg==
X-Forwarded-Encrypted: i=1; AFNElJ+tORdgD1btU9C8FY+A1SkN7YljB+Nnul2z9yqKl7ProjHYteJmBB3/CPaurDoXLI6NvCNr+Xrz5uO5@vger.kernel.org
X-Gm-Message-State: AOJu0YwceWsMq20wF6l8EKdQ5eHdpQqCbPMeyPOiADeXtoG1fcXma6OA
	N8bGPRBeW0sCh4yzg46ZXCC4n3CXlHCvjJSoGiuPMuYQ5Kq0JidyiVlxwVTUOxBnTU4=
X-Gm-Gg: Acq92OHd4gKSRNvws80fUWVb7Sm6WowKv10fylB3dkTrRDOj6FjZWl1GjnN5BGxSMHL
	ywkvD0J15Ib3qR/65QzwSHXpocSr0lcpYdncTzk9J4FL2I5P1BiW0vCqj2jIJwwSetJevGhyhAl
	FvCrMQ7QjTpjwVHLy/QTdQmmTtQGsozcpzBpLbMwv3IfLSt3lvSTctBB1rCF4v8deSzHLcjryNv
	JjdO1KQ6fw7qN8J24C6liKtSl6mcS2oDzoBWPpozT4YIe9f+KAIu6trWmclNCCur8vXeU1xIS64
	YMJUpJPi0oLuafHtIPuF85dspmFSp9qLD/cDrd6aSbdYAk6EfXtfnAbeLbJJP4t+TIAzupnvahL
	U9VYZAySMHTvAXlhVS7GksKHXhLztqW9t3GttxEjDWHrPG+4E+P0tzb3/2F97Jqdzeg6HcEu13P
	zJ0ERUOsHmL0V0+MBng/sFOn/QwO1zSTeJa2ux3e8s+9JYANWnwnZ1xE3ZEpw7CPpihg==
X-Received: by 2002:a05:600c:354a:b0:490:44eb:c1e5 with SMTP id 5b1f17b1804b1-490c2607c39mr62305025e9.31.1780670442943;
        Fri, 05 Jun 2026 07:40:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc3e4b5asm166123485e9.13.2026.06.05.07.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 07:40:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, Marek Vasut <marex@nabladev.com>
Cc: Kael D'Alcamo <dev@kael-k.io>, 
 Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260422210806.80948-1-marex@nabladev.com>
References: <20260422210806.80948-1-marex@nabladev.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Displaytech Ltd.
Message-Id: <178067044206.1089225.4621525773604895263.b4-ty@b4>
Date: Fri, 05 Jun 2026 16:40:42 +0200
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
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307452-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:marex@nabladev.com,m:dev@kael-k.io,m:bjorn.andersson@oss.qualcomm.com,m:conor+dt@kernel.org,m:airlied@gmail.com,m:jesszhan0024@gmail.com,m:krzk+dt@kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:robh@kernel.org,m:sam@ravnborg.org,m:simona@ffwll.ch,m:thierry.reding@gmail.com,m:tzimmermann@suse.de,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kael-k.io,oss.qualcomm.com,kernel.org,gmail.com,bp.renesas.com,linux.intel.com,ravnborg.org,ffwll.ch,suse.de,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,gitlab.freedesktop.org:url,linaro.org:from_mime,linaro.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AC0B648EEB

Hi,

On Wed, 22 Apr 2026 23:07:23 +0200, Marek Vasut wrote:
> Add "displaytech" vendor prefix for Displaytech Ltd. .

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: vendor-prefixes: Add Displaytech Ltd.
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/f917fc75dc63b4994c913a379929b0a8c242f4e9
[2/3] dt-bindings: display: simple: Document Displaytech DT050BTFT-PTS panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/f917fc75dc63b4994c913a379929b0a8c242f4e9
[3/3] drm/panel: simple: Add Displaytech DT050BTFT-PTS panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/f917fc75dc63b4994c913a379929b0a8c242f4e9

-- 
Neil


