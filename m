Return-Path: <devicetree+bounces-264813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XXZsAbTTjGnqtgAAu9opvQ
	(envelope-from <devicetree+bounces-264813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:08:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF401270CD
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64C77304303A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE57346ADC;
	Wed, 11 Feb 2026 19:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jePlMSB9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB46352FBF
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836792; cv=none; b=VBGRUT/R1Wzy1wCTcC8RDEEkJBqIKkhvV5S+xZnCLkLoguQck2m1l/RA3N5fpnhV0gyGT45gv3OTEihxIbd82xZdPueU/sVJ5KWWDdbR5igMKzD1qBhIHmewsn2TE8DgwkcPA1E2ch4lLY85v7UCvV9H8Ev2z7Lywc+oFgkrShw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836792; c=relaxed/simple;
	bh=FPn+xX+IbNMdR9qg0pA+C2JrAY3hI8lDAl20KwJ71EY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N+oJQ55jGf5WxF71zT/ISNVxe46rTHS1JQUx8griezrhKopWYw3v37vSuGwonmbnUlof9/muaouo7e6nWusGCiLWk93a7GWMU7kr0hTb5x2+B18bbgdmM4FiYoHkYIaBQNHo/nZwhj6AAunspyOJxWa9Z5BBkf1R3PqJCc5HlXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jePlMSB9; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so106688345e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770836789; x=1771441589; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=92SAHgAplCp4yQb9ApiGrHWDXrzlV3xmhRggcLV+hYY=;
        b=jePlMSB94riIsRXO7EHLNPi7KbJW9V2BhtSGYN03N34kNrpf2M6tMKLWgWMCZKz8Gr
         mNVdWwnlm//LnhShCETseJx2WRKkDyqLexMoj4sO2GLYjnqSshFKIjsClQiaFuwWg3GB
         99VQRngWUNgR7r5e71vvQkjieSsI2i/+jPZsRm/eCffBCxZnwWGfXarADmVutnoU4WJf
         gsT5Azmk6t7LG2SUNJInoKT1lXKc4N3pmjDg+s5L8XYjdfVoNSmFZPBG0p0PtStJHU2S
         KFG7ZoVAPpOJCxaBqgi8l8jvPOeod0n+1O95Dke5HzE52yZp3gDUtbGU8VpHTDLW4TDs
         kMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770836789; x=1771441589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=92SAHgAplCp4yQb9ApiGrHWDXrzlV3xmhRggcLV+hYY=;
        b=VxRzPZZ7Bp9GlpvNT7PNgvCCsk9hVzslCWQgm3QgEEtpllGLKAeW7cEiern/fcbviL
         rGXSKYARWhlTSVx2Hjt9ODVwt0sdp1wa/PUFXZQY9A07RS3WWAYDY14IiOEBsYmXmtg/
         5y0G3yZoAiyczaUtkpJoy65vpO4MoCYxx2urndmeSjSo6f1l8AqN+lKaTsi1JjKqKqE0
         wex+J+GAd3ONfCB7L5q/vQD6+DOg89ohPG6LMMb8fPgBJIZyDhjlwcDfZ9aRQWvtnQlm
         CR6rSNT2LPbHExGBUQMwkZLCU/42J6yi3uVWhI3opXt7YPaVdrJ+9VrYl5rsvTIyAGID
         7kAA==
X-Forwarded-Encrypted: i=1; AJvYcCVfNXa5y/ponzwDfPvLqZRWHzgsNiju4tW3MKfOszb4JJqFdicC5XEM7aaPKe4vis7tcHHhHN2oDZ6d@vger.kernel.org
X-Gm-Message-State: AOJu0YwZPL86oRd+aTTbjn2yDaw3IowGFdu6mOEJuh9t5rwYyK22Upxx
	i29ZN9sl1A8KI1lWMVCr9UKYD9pHrqHUWviDoBwwhRCUbJUth4W3iKOq
X-Gm-Gg: AZuq6aKnS6ezLRsvGXo8VeW8qPOXdUjDe4igdSKr5Xtg19OTNnkmLXeqCGhDi6LnfS3
	VVW2/sM1UTeD8887Wv/wO//NM4DFmEQhAT7Uq4gMQIKO3aSx6hHB1u+Ok0d3V5JQoGgc+p6hf5z
	RTwVx4YwpC3m5dL4AKSl/xTGm9n/DmEt8+9OHGE2ykSLL3G6Q7uEN9MkWK4ZTiQppd7UPikzxuX
	TJ2i7UgACf994DVnqV86FuGvriF7v31xdpoZybRhXsjf1u4q07Na7dDL8uOiiiGvM1l3fd5u9SN
	rPAk19YFAKro6y0CdXddcUa5RIh68dAmJKF8lx5Rjnd6+NfvWj2fefbXwCLKPH5QU/aoc7CHR2D
	mm/rS4uQ1mFChB2Yh0YeXERJ8SP6epTW0OnHPHPTJrxyfsRIKel9NIgr24nsSHyRhyhqMhZ0M2Q
	mM0ZP/7L81cdIVFKuq+D8=
X-Received: by 2002:a05:600c:1d86:b0:477:7bca:8b2b with SMTP id 5b1f17b1804b1-483656c1151mr3219115e9.15.1770836789098;
        Wed, 11 Feb 2026 11:06:29 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4378e122df9sm211223f8f.15.2026.02.11.11.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:06:28 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/7] dt-bindings: watchdog: Support MediaTek MT8167 wdt
Date: Wed, 11 Feb 2026 19:03:25 +0000
Message-ID: <560b1985c911ce25950c9caedc42677ae01fa8bb.1770836190.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1770836189.git.l.scorcia@gmail.com>
References: <cover.1770836189.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264813-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-watchdog.org,roeck-us.net,kernel.org,collabora.com,pengutronix.de,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FF401270CD
X-Rspamd-Action: no action

Modify dt-binding to add support for mt8167 dts node of wdt

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
index 953629cb9558..f514be8a5851 100644
--- a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
@@ -26,6 +26,7 @@ properties:
           - mediatek,mt6795-wdt
           - mediatek,mt7986-wdt
           - mediatek,mt7988-wdt
+          - mediatek,mt8167-wdt
           - mediatek,mt8183-wdt
           - mediatek,mt8186-wdt
           - mediatek,mt8188-wdt
-- 
2.43.0


