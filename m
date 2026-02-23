Return-Path: <devicetree+bounces-267228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHkFJgTrm2km9gMAu9opvQ
	(envelope-from <devicetree+bounces-267228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:52:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECBE171F37
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2A2493020232
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB104346FAB;
	Mon, 23 Feb 2026 05:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KQqUxBX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EABE2405E1
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825892; cv=none; b=PjvXhSDDY7wz/d2ltNVbogLf9CEoU/qeVrShfIGH77+yoSgy1XiHP7PGkfZoZC9iiPIUa6Bkvg1mZg/ufNrHbZKQwRf2I9fzLYlJI7+UiYfOEYFI5nFLQovoS5s5zdUEyrDHScz0xDk+5723c9nOgeadNYOlm6xb6/Q16uYhA7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825892; c=relaxed/simple;
	bh=trpX+5UlMTYq/zyHhxfWvjqST/R/uh9a912a+PSUHVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UrOU6II+OCz5aI3UoFNZ7IwPohCrCoesDs96KLOJr7TkY45HQDaQoAWUsWwiKcWsaMro2u8PtyNd+KinzFOy9OVEJ5yKQFk9RSXmmTV9bMCrtVpuUy/Qxr5HoEEZIltZvmOHT9hJAT+kNqfdpzctIXYXK8mEuT2VnERrF3Uwlv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KQqUxBX4; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-5069b3e0c66so65412951cf.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771825890; x=1772430690; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=KQqUxBX4bHx3/Et1DCLo2Qv53nafyzb7gYtm0Hwk9MFMz+jetpVEiQn/ylVBTX3cZm
         ugNahshd66tj12fOTjrIBhLeZ49FRIf1oTseShT+T1xd4XqiPNcwlKY99WYWf6/B0ywp
         a4DYi7HXCOjR/9i4U8JhmVKk2PzUD85yx5PA83xywLuqzTZX/vpcH//sFSPXRRcVfFw+
         JXL+pixSY4JONb9pqL5+S60qiDHZ3ORPWimAzn9nB2qFXAolRcx++SDV07jynohq4OoW
         uU4EnxfLhJaYp97RXVYFd5Ltx6y+s7vnUzgb+ZeSYocivke9aB7SuB1ZrVG+1V0HVlGH
         bZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771825890; x=1772430690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=Whyve5Qpqnj7TcC1Vmn9r1Y/xPUG/wAVmNnxvdWzM5GLc3NPmftn4vAzCtU+4Dt6ep
         1qWOOI6p3/jf71czk8fwqiU25kswm7s7Fpru+PDLkH9/TKUsSezDNMMR1sOdGW/TlBLs
         Fs0IGsWcAu9wFWzqurKSdyMhOrBcA7l28+lnjzA3U10f9yTIUS56yg1kGS9FbC4/VOqi
         y2r+WRRGPmMecZaSCdMlCNBxmep5mC/UBiF51vBxjKwLwHppfUh2GYlVYvclZuz4Edvn
         6zYjRYKunAivCbRpUMxzwQOoWn61/LgDbdgB0kMoM9WI3f9hOgCgJQf/OeQmQ6V+AA/3
         Pb/w==
X-Gm-Message-State: AOJu0YwTcraeuHm2YpKBYqI/+u27ft+BavvBbXU0k0pRKozE7ayIYOXg
	HtKvD0EO1eBtm7XCe7F11Rqb9YEsAu3zF5k1T+S4Y/tvedrbjlcFkdqk
X-Gm-Gg: AZuq6aKQ1II3TD1ebFBpTQQ5GzIzaovKN2DAsH05WpJTkukG2HU/rHk5nukP6VNccD4
	u/MssiPd0aVrRrBZWohviRhd9lO5Z/TCrRIkQyKGQ+LKoqDi+KKP8SWenu+D6RGKxzlB0oCSRTN
	BMWAFHkj8q6DoT3bW8zhoTwVH6w5lZcg4Ybg+xuqOkh0+t69kZ3bmOqDd+TMXC6JflUzNncL017
	W888L3kh9NVj+Vqqov6JPcuUlJ0vDv9Vl2PD5nMc2iFya6ZDJC6UhKs5yCYsVzZm2oeqycuRWce
	ZiZgR0BII94d45DMLqC/Z1E/h2bFXEurEKfzl4MKyQ1OKww1AoZQALYBS2Z/YP1X8hp0cI9DKr8
	4wOhcfunImPsQ+Wn5DLnHWQ2F32NDHPtKT8msy1AC7iu6Zvx2JbEqXQw7SOSBC3Y7pLj35yQ4mE
	XAtHLooaxesdwxLNb+ggsEb1Cgkot+dUH3bn6S2pLgPJcwjeCeidYaPfUgoAU8BTi+LlWTytRgr
	w6GYTgz3TQ=
X-Received: by 2002:a05:622a:120d:b0:502:ec9e:ded6 with SMTP id d75a77b69052e-506f317f931mr169944791cf.38.1771825890175;
        Sun, 22 Feb 2026 21:51:30 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm59459096d6.36.2026.02.22.21.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:51:29 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v7 6/8] dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0 and 10.1
Date: Mon, 23 Feb 2026 00:51:11 -0500
Message-ID: <20260223055113.1288-7-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223055113.1288-1-bavishimithil@gmail.com>
References: <20260223055113.1288-1-bavishimithil@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267228-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 5ECBE171F37
X-Rspamd-Action: no action

Add samsung-espresso7 codename for the 7 inch variant
Add samsung-espresso10 codename for the 10 inch variant

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 14f1b9d8f..f694dcbf2 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -144,6 +144,8 @@ properties:
               - motorola,droid-bionic   # Motorola Droid Bionic XT875
               - motorola,xyboard-mz609
               - motorola,xyboard-mz617
+              - samsung,espresso7
+              - samsung,espresso10
               - ti,omap4-panda
               - ti,omap4-sdp
           - const: ti,omap4430
-- 
2.43.0


