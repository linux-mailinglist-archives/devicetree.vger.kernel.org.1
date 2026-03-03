Return-Path: <devicetree+bounces-270358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDFOKOaapmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:25:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AEC1EAC02
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B541830EE0CD
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65F9373C12;
	Tue,  3 Mar 2026 08:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dMZtiBpQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A643383C64
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526072; cv=none; b=C5fUXH89lzeevKJd2sWmelzL7fh4vEfKag5TLxxveDJHPJ+v1DDognGAY8T6OKKO4W5zSa10SWJsuh8etfZI+E84/tKn9b7saJ6tZU28uE3273aApEYmq89ZAYEbxnbhKecO1gZPu0A8ZChIcDerus0K6WE+XJbrYKYEhk02EB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526072; c=relaxed/simple;
	bh=qmnxzuT2wKOy6w5PoPVKBFMpkTpBXhSQNWHtGtxmf8M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sbYy7Xw2GMyKDA8CEvfFwTEFrVB9xSN6vTDt8e+tT61OQnon1tLOuZKFhoT0/tlp4W+FLk7Ysjm1DBsCBrTq/Tm9VAq/upHPc4WrbKb574OWkBvIIAWW03cCCCZpxkVoirgfO6+vwJYH7QyVAUBeioQJCz/sYa71Zih/mWtACu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dMZtiBpQ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3870d178a9aso83814561fa.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772526067; x=1773130867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ix27v4RKXp8YjgwGqEFOBW4BOUCwMQv182F7z4ea5QM=;
        b=dMZtiBpQCTYGCnXH+CxCL9enHBjtSoNHE8tkvFSWmsk/44sjdnxJAfCkYfxYoiGjPs
         2PGnP/jpMTioZM73hU1aK1xdyDHtbT+fEECIdjzoUp8DvsWFDmIJnsEG0aE67wyYXP/6
         VUE0EPEwFhv7kUVIg53HbxXii1Un/+Za0sgBgqf6B+T7+K0oX87s0L6b1AXMyqO4NKTm
         1xSaN2r8ajDsulKoqzVcOHYemEGeAuAdTH9pvWt1HuNK1K/s8NaaZLyHd0m7Afr5ME68
         JtfbPQdXn6o5dyS7vfQwsWvnMAHF3WX1ocqIaMP8whPQVZEpU19J0qnHORwctLOA5ksM
         /Jiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526067; x=1773130867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ix27v4RKXp8YjgwGqEFOBW4BOUCwMQv182F7z4ea5QM=;
        b=X4vYmW7P/BXYh1nW9ZOieWCCu0nZYqVyuHrp53OwJq/OMoY+dIvXA47HcHBqgtwF8J
         Bw60gDnqPVZU/S8dQrL9iDAfRBrup4AWGLngrzlNvAxX3099zv8TlIdDKSDCy1FvtOOS
         hQn8ttmlsKcRBG/h4XzuOaNZMrQZLTF+e1FHSS5wpbPp4lvgW4gtrpBJSfTOYT+/Jw5n
         NUCGZRNyLD8OoZY0Yqo53sjgRqDXPmInReyXRUbaYwhpel9jD8Fmx6QTeWbG1LzPTIJw
         7Ao9GC6YvipOdHAwS/QYykkkcxKSXh5DvQiglnyi6S6+GT417cd8z7UKFs4AKqNFfKak
         CG/w==
X-Forwarded-Encrypted: i=1; AJvYcCUTmG+0NuEevr16ehyJ+LsjqaXzmuaRlUYH9iMp5BBGMWvz4ZfOEU2SWjadoqRczlORaf+T5GBchddf@vger.kernel.org
X-Gm-Message-State: AOJu0YygNYBHXTGNSJtQHTqRIAVfaA2Z0+hOmgvVMZgdRLC6Tz9IUXR7
	aEhkoGjpqOoiIIgDYdc5f8WEi2RT8UP+ZPxK8BIKVyNrLpMKRXlFPN3T
X-Gm-Gg: ATEYQzylCBdB5/4AaVWnUPh3XMXlOZfQaL07Lr/gcR9+FK2BSBTnuKJfG/sgL7S5os8
	qhAcs9A3RAn2efmsw+OXliWhelP2GMnVX8tXrsTgHGnyAvg0eVDUCnbzLmSLZ/LMMbepjzjqJEl
	EWnCi+9BGPpf/ZRLfzSPXmfMZEnWgpBEzaeKJp4c/JVo25N/5B6OulZR29IPw+NZ3SIMkUVgkzV
	v7l9r8WGvc22ErYtYEmwZRjWjH7MP3oZZKkHqo7P5lToxA+oo4SRsoVlKaJpRx2I849vrq5dFxV
	Fjox9qQ0PfgMBL32jVQzuypEwnjtyePXoyARWvxSC32yUUilRkkksjmNwcxVX9rQajOiwYAUrAU
	EoJX0PAsQBzguPy3IKGYtQVlRMO9Ok6UsCWlqRREaUabrnWdxYn5z77fLm+Nl9/ZSQWQpJ5Buxo
	CQ4U+dEEFGZ/ZY
X-Received: by 2002:a05:651c:4409:10b0:386:8ea2:ef7 with SMTP id 38308e7fff4ca-389ff35763amr89501711fa.32.1772526067135;
        Tue, 03 Mar 2026 00:21:07 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2ffe02bsm30856171fa.27.2026.03.03.00.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:21:06 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindigs: display: extend the LVDS codec with Triple 10-BIT LVDS Transmitter
Date: Tue,  3 Mar 2026 10:20:36 +0200
Message-ID: <20260303082038.11352-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260303082038.11352-1-clamor95@gmail.com>
References: <20260303082038.11352-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E0AEC1EAC02
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-270358-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: David Heidelberg <david@ixit.cz>

LVDS transmitter used in the Microsoft Surface RT.

Signed-off-by: David Heidelberg <david@ixit.cz>
Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 4f52e35d0253..90ddedbba738 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -33,6 +33,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - idt,v103      # For the Triple 10-BIT LVDS Transmitter
               - onnn,fin3385  # OnSemi FIN3385
               - ti,ds90c185   # For the TI DS90C185 FPD-Link Serializer
               - ti,ds90c187   # For the TI DS90C187 FPD-Link Serializer
-- 
2.51.0


