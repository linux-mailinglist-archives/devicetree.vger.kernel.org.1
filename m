Return-Path: <devicetree+bounces-267274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cF/sKi/5m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:52:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AB3172647
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4DA73300E14D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D114E34AB06;
	Mon, 23 Feb 2026 06:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EDqjI3a8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com [209.85.208.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004DF34A3D8
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829469; cv=none; b=dpvw9ENKL9BluVwaDCLtdKDGujC024fUkkl27j5y4M2Ykjj4uFa4uzXHV6vxKMtyuvtt29kp2XSfpR3MJvjytlbsgy7rPsukp1S+cUvOZdnOf8U0BWDCqNaZ8Zptgs2kWGmdAzU3BffRYfTLOMSM8McYhznGAWvYUFwlUmpvk3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829469; c=relaxed/simple;
	bh=hj2gh+LQFnJF61Wo8g+AzdFuv8OMSKkxORkVErAo4zE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Oi8km0mecTSBtvs8Iap6IjgE9SmG39abQBitwkaQR5cjX7TfZPGT4J1QXgi8c3XDsMqhUnrT5lp4nwICkgbjsBjl7hZVNfmWx0bUGCJ/tbDuSmGRnhdDuUD4e3UImpnAfL87OKqCUXVHJ4TJVgBd0NV/DL6rpi54L3vNw71AoZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EDqjI3a8; arc=none smtp.client-ip=209.85.208.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f194.google.com with SMTP id 38308e7fff4ca-386714da2a2so31735061fa.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829466; x=1772434266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bou2oRwzCjakShdBOoto0Gx5SGWPIs6HOrLc27z4TMY=;
        b=EDqjI3a8oIraC8th/vKe3a+NMT1AQqUeLkcjTFm9RfyB37c2VdoFAHZ+W2YAOxQogh
         aCIdiVl6Be97/DuLXiGwPEPvJChBRtTssjhw0f6pKoAk4w/30ddpHYFyY5dywDuxsLX0
         xXAN+yBKEjs0MZJ4Th/XawYlZi87AoCR4HcY4DBLVhCDQvld+5ap4F1LS/QQIwtq/MHb
         hF4os2YidLId4iSfBezQUfBpiK6WN+y9L35t/RL5LwFKhCgYoTpB4sUUZh1O3K9lojx0
         NOvE30hWdD/Dgiv3qPrFv88/zWnH3Kp+HnqNJsnzGfzW5WCxID35X7HS/TJVq385Tu8P
         IBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829466; x=1772434266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bou2oRwzCjakShdBOoto0Gx5SGWPIs6HOrLc27z4TMY=;
        b=kmg1NN9yly8Zl1Hpe9raId6IPIYXHm5sxf8AY0K3qeVm2o2P3V56Ozp4id9YYH0PdK
         cD1fyu9Cc5CdJdc2/SN2tORz+daVDQYVMemEBHaSQd7EYd0+tql7U9mlmf/TNSfnqpKR
         /3VoGiv211If5izw1rIuCENGSAgIMUQ1KPPcbRmB1NqzuguxhSAyqx9oPznMln4ktqOm
         ZPkUgg/jAAyvp1kCcYah1RKLW4vZXU2vuHjxXxPNxXH4VoVNQHhacH82dinmvu3Eo6jT
         bC6v1kPnI2TwxtowxPuuEdzgqmSkCmQIobT84e7feaR6jHad2XlLEZNEX/3i/PKgtgvL
         nLuA==
X-Forwarded-Encrypted: i=1; AJvYcCUNvxDlTVqMu0XhdwnUT3+EllSZehbSOT69vvNNDLHs/vL3DVBndsb2H+cLfJUtdLGMHLwya/5oBqJC@vger.kernel.org
X-Gm-Message-State: AOJu0YxRD7ww6sSJdfWPkoT79Bk+wsUCLrXQMBskgS+8SIyZwf/5awY7
	gTYgZRQjDsWgjV3XiOsDRitAvC87ExrxoftKmYI7/8cyOOQBHNDAPweQ
X-Gm-Gg: AZuq6aJ2mjVLzqsxUj7hE3H8+WF/ClfEknU3/XMrVJCrOuH5dtACvvgbhf45cgOkLnk
	Exne2m5jleywBwWqKeeqUqxZUKr7dSBviKikXlLcL+SXeveSUKHGmk7hT0PEDIMoTNJiRI8T7PY
	Pv9RfpM/T/LrLSJUluIVlH+r1aCMIvEED43FZ/idcIef7ZjsNcnod5OBOGUory/7iOrPGNXvOqk
	6nBA0opir5Vt0fjEAPw2GFDuB2Z/iaecJno+n1ruynkprjNwWDOe74xx08XxR9i5grIUIM5+NTF
	9FrszsEKXWHb8lmFGCoF8X21rmoiWWbuOY0Y9vojDVJ/knpBNk8SK/AfrjA5kHZGqyrC5iuFG5M
	xDA36/Gw2zHlHtAPxw8xAiWxFVlIdkWIvyncUMmfIYOOYNuS2Fr8jh/ixZfvl9zJFEyHI0lIhCT
	2Hx7t0q5ItyhQu
X-Received: by 2002:a05:651c:b21:b0:387:1c06:f747 with SMTP id 38308e7fff4ca-389a5daa3f4mr19110221fa.20.1771829465937;
        Sun, 22 Feb 2026 22:51:05 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78b4a45sm13916521fa.13.2026.02.22.22.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:51:05 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] ASoC: dt-bindings: nvidia,tegra-audio-max9808x: document additional board pins
Date: Mon, 23 Feb 2026 08:50:51 +0200
Message-ID: <20260223065051.13070-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223065051.13070-1-clamor95@gmail.com>
References: <20260223065051.13070-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267274-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nvidia.com,perex.cz,suse.com,yahoo.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 23AB3172647
X-Rspamd-Action: no action

Document additional board pins that may be used in routing.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/sound/nvidia,tegra-audio-max9808x.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml
index 241d20f3aad0..4957645a8e03 100644
--- a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml
@@ -35,10 +35,15 @@ properties:
     items:
       enum:
         # Board Connectors
+        - Speakers
         - Int Spk
+        - Headphone
+        - Headphones
         - Headphone Jack
         - Earpiece
         - Headset Mic
+        - Mic Jack
+        - Int Mic
         - Internal Mic 1
         - Internal Mic 2
 
-- 
2.51.0


