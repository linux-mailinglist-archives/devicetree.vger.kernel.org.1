Return-Path: <devicetree+bounces-267247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPO+JBz2m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:39:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EB7172332
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B79D9300D779
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0B23491F5;
	Mon, 23 Feb 2026 06:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J3e5B5Nb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17596346FB7
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771828754; cv=none; b=saUn4L5yXx1bUpvUrvU6IfQ8dSwI+SNy2LoGN49nWNJf6FdDCt3ny4VBfl0yXkQ1gVUcnTR2LPe954ZFHEWluOfZsAd7nE/aBGLVNenBPn4g572XkFAwF3Hybx2CDtnj9qkEUHtebaAS1a4nH/TLFA4/F+IBdL2ADh8UYpbyULc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771828754; c=relaxed/simple;
	bh=Hiwv3J5f8T4xRB2Iui0BluAqlu57K6cNFHiipxvCbK0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NRCB42sfbYpk2+j5CMLNKZZOCq0TTa2dSOndwmWmX7P62uFIEE4NoY/n2ZlrHF9LRk6tBAs4F4TPj1eOR8NKOPx7OJ6DNtOCYU7Tda50ma2RX8UVlw+jng3aUHY2SSlVwy5jyZ9GfD5QunNFQReSteKT2a3C+OGhQtE6Um+wnkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J3e5B5Nb; arc=none smtp.client-ip=209.85.167.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f67.google.com with SMTP id 2adb3069b0e04-59e61e94e1bso5022437e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771828751; x=1772433551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y75LAbRPNmnF+JWA+lclJuQoC0srlLt7G7opFFmU2PA=;
        b=J3e5B5NbYgB2KADyGq+jP6ip3E99dyp7pzbkitym2IB+jsOYz4iIy8sFBZLYITyd9W
         dH/m2Dx1NLoWDP2w7YEkVqdBrodTCZgSwh23cpqfTRKzmTctvUnRVpVKkR2F9OCF5iBA
         gbmvfb/zomFDHmADR8Mer4wsTwu3L2ayWSrk/tPztZmSUTyQx6Voju9cYGhxEghOhObi
         d28pCDorXa+wkUn5qj3kwTyaIb6nMoFl3kPlPwjxC+NR9lQyQCGO0hhrV3Njr1fo0AIy
         dU+sBrZAH2xzwJIm4sBPs5OYsW9oImhqv5NOHS/5TZa6RkVm0GzetfuX75uCLkEhvXhK
         Nm/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771828751; x=1772433551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y75LAbRPNmnF+JWA+lclJuQoC0srlLt7G7opFFmU2PA=;
        b=psKDIPPIUMRRfKM79Jnuva715Xu3C1mTzLsF8c2ckoSSvxy7xJDFxmAYwqyKjJ6RLB
         whL+bVbdYYBrJMj6x2DQknz6RiabxsQJGKEoB/bbpzvKAJpNUvqDTcromXOL3/JIDCGs
         uE66ig7zI+ejdYgrRvZKW0zU0AOnENqHEdBAZYgh4CDeen/4YulZeqE+dWWNRodnpDAv
         Lqyg/pkYN1NFQlDkHN5oLVpTAHHgcj8T70NLlMpg6Wr0MyCZcltcZP0aOLYswhIKtBiD
         utmn3zj1qf0Hv7YjsugInV3ZJFuKFJP/4CiaSFNPrr1tR6wPgLSQ3ZzdEp7d6H0qy40e
         zOyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqK9g4sZa/+oet2o7zXMPpMxe/dMVWyVCbFZs3Z1k24kc57JqPylZ3ILI+cBpN1Hnzu7PQ/E5I2bzJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyAXeK9W30arkjqY4gFcqzafw2BpsedtG8tclyRXbXtDOr1gpLM
	zCh9staDFZu+1kY7/vrsXpL4hLFzqdjEPkGgVi4zdxQlwVM1fPpwwNAD
X-Gm-Gg: AZuq6aJy+Sz3OTpZCUeNJVmFn23ojrjV5vHjbPvM/xrKS2SFA3UT8Si9MkpCTFIm23K
	GQo1ECicK6Hpg76JIMIbAZMrj8z/f7f14OajpH6XEcSAF2iUVIIWVxMa2cHlglNtZKY3QvTKtAc
	WB+xiQ7OvqCQGWLNmEPCz2Rjdh4kM9GIuF/uLIzHaBPCbGgb53VTwcUCisavIt8McMGoleJO8Tv
	rbym2S2VlGZLswjklYnHbDJqNWG+OIHP1AfTe7/Kie1HimK8WappQY7e6aiOxcObmenn42J8rJE
	0i8Xibbl+gfj9jys0Cf7P2M25oOa7qEDqmZrm8AVoCJEyQDG8am9n8Q5S7J2AGznjASGPzKI7c/
	qf37CkYN7Y8GvFew894qckK+Jcnj6lY8K357snFawycIW6l/vbl12IaUk1Si6lPOUWfRHfAqwCt
	2RSvkvNWi11N3l
X-Received: by 2002:a05:6512:1153:b0:59d:e589:c977 with SMTP id 2adb3069b0e04-5a0ed99c694mr2127041e87.26.1771828751162;
        Sun, 22 Feb 2026 22:39:11 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb13abbsm1369626e87.23.2026.02.22.22.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:39:10 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v3 2/9] dt-bindings: regulator: cpcap-regulator: document Mot regulator
Date: Mon, 23 Feb 2026 08:38:51 +0200
Message-ID: <20260223063858.12208-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223063858.12208-1-clamor95@gmail.com>
References: <20260223063858.12208-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267247-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,baylibre.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 75EB7172332
X-Rspamd-Action: no action

Document regulator composition used by the CPCAP of Tegra20 Mot board,
that is a base for Atrix 4G and Droid X2.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/regulator/motorola,cpcap-regulator.yaml  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
index ed28d2653a55..1a44c8e61243 100644
--- a/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - motorola,cpcap-regulator
       - motorola,mapphone-cpcap-regulator
+      - motorola,mot-cpcap-regulator
       - motorola,xoom-cpcap-regulator
 
   regulators:
-- 
2.51.0


