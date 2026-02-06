Return-Path: <devicetree+bounces-263458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DBONmgnhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:39:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2E510137A
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 511B8305DA9D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A0D425CC6;
	Fri,  6 Feb 2026 17:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RYDRu9Bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB20423A92
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399284; cv=none; b=t18wCq5cGcMkMMkp/4dKuJ8e9GYzMb1/JfSbCzv4sKDdBK+We5MNn/DHUma8TnnEFIuj5nMYku+uDDFj5Nq38Nuk3/7JHywLSsp2tLEHhcdq+yz7DY8IRzfJnWLxnPL5tQFntMzSVj3iYFGODVZa+tqYZRAqzPmEr8KAL0tOlPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399284; c=relaxed/simple;
	bh=NpuLlSvp0rt7DE2FRksRcz4gv2u4yN/jMLTiXBFh070=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MTSs0Viow/1+23B/h31ulbvmK30bgIrDZhMOKoY9BUFsc2OYusyq83y6Uoc+9q2DvMREqTixswwolKTfZdUbUjCEzQS0Cc1UsdQVkiB5yRo8Io0bzFaKKzwapRPbk/nCn5wbc8iWBn140zpt/e+3n4lB1hoh2E+lHDLtFh35WhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RYDRu9Bl; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so23128705e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770399283; x=1771004083; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WG1BWUJ7TOLktFU2J54JTHa25r13uiqnW4MFnSd73FU=;
        b=RYDRu9BlkXYIIJCpOEfJvhBKgylOBGDe+7YY8VIvDB//PpqghpwxYmtl6LOESxPtgG
         kc2ip49N4wAgA6TdGUBCH+MDgmn7WwMUz6fZ79iKRmp/JN/TOBzZU0KtCRInDj2Rr71i
         jLTlLQ6kGVzDRSgowMlMZjOmTQNoy4+ovKhj8kw/mQogcC03c8nQk7ZGFvnUMDeBB+rZ
         VYm/BkNIiUdXNpD3FUT1IWhg2c88iZvDViipLPGfrH7dzv4rlbcAnh8rmw6l4J3T/x0H
         l6MFco2YsmC/zjXbW5DUMCiHj+P3SRgE4klPOYlMhpyjWkIlicCyRkqItECyVTsbLcEs
         xwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399283; x=1771004083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WG1BWUJ7TOLktFU2J54JTHa25r13uiqnW4MFnSd73FU=;
        b=a9ZLN/ycFIM3JcotuBJEC5aDSA6wazKG73+4ngJMznsHaA+1eNXWGGuGD/WOQAEnmf
         txoTE8tM2KgzSFSLWMgTWSCYBNJtXdzdvcbV2aPKjv5o5za//R1G8360sYbdOmgUbDTQ
         o8x5y5m5SYVbaiG3rXC2euVuZJjc5stRswRimMODF7o3s5RhhxCSZsze+1ZcvkowCe0M
         ZU4bOFO33q1IPxTcLIML8MdeiXjPHcScJfOpg3mu/97C+5P0chHcF4Ajfw7wI0GaGv7S
         dP5w0c46GETBWNG3TjNMAnd285q3l8JwB+TB8duxuWWVkYHAxGNrxs59p34F3Qb+TQ4W
         vDWw==
X-Forwarded-Encrypted: i=1; AJvYcCVk68PuzAiEggWffoGO4A3Ysv7J5BMdnVD0ncpsexZ3QdcZIyJ60tUtRdD3B8FEZ/xMaJz0uxnmL5JB@vger.kernel.org
X-Gm-Message-State: AOJu0YyEb8/rqx58bDX6ws0WP7eH4+HWV2JSFidtk5gDQegzdA6EhLtw
	7wKWFfv9gZR3uAa8/gYA3tQYc9M/Ky0rCmwv/cirO6Q9UM6bLjdCwTxPLfwemKAO
X-Gm-Gg: AZuq6aIzGx5nt5mWb2LUdls+PYIgh4plAaY11goledHYYfgcZfp971W0gafFoQYwy8W
	vW/rlHdaHEUYhL8fQxn99DHSuAk+Kk+wyc7uuEBxiG9i8YrXu6vQcJi5Td2SDgyEFk0rsTk7GfJ
	nJaDIf69fy5u5A3frP81EpKXyUo0Dn+rXbNooQ1m24wtFDsc9iw59+dLIL5lCQraSLCyuoxmJ3+
	XjMd8GUniTBXdDGqZrthRl1S5w92zw7x/4Qkacf2bgHGK1XOhpxJ54TdevtX54bTuaeRPuc2MB1
	fzjL6ejzTXV+9FYePkPLS0kWbjnMqvr5zhZJOvYeOBXa3VC3xQZ3I4lJhoh6HxGWJkfmwWxwkzd
	BgItx5EASPuihNqRePhMeVy0E7XXJF1VGHdGn+VP4zWNr9tpASS97OVuy8DsnNbZJbNgTe4JKsU
	6z
X-Received: by 2002:a05:600c:3588:b0:481:a662:b3f3 with SMTP id 5b1f17b1804b1-483203ab7b0mr59042215e9.7.1770399282694;
        Fri, 06 Feb 2026 09:34:42 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4a1sm7454523f8f.17.2026.02.06.09.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:34:42 -0800 (PST)
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
Subject: [PATCH v2 5/5] ASoC: dt-bindings: nvidia,tegra-audio-max9808x: document additional board pins
Date: Fri,  6 Feb 2026 19:34:22 +0200
Message-ID: <20260206173423.145954-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260206173423.145954-1-clamor95@gmail.com>
References: <20260206173423.145954-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263458-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7A2E510137A
X-Rspamd-Action: no action

Document additional board pins that may be used in routing.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
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


