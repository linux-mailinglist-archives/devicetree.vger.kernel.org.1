Return-Path: <devicetree+bounces-270359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGV5OAGapmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:21:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6551EAB53
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DD603302A788
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C96E2386C38;
	Tue,  3 Mar 2026 08:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JxuyYNfB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0A56FC3
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526073; cv=none; b=VAYhvXzZBvEU90fOnQlv7JQrSxNEqnoBr558vAlO20Pluh9oYxoeF7ynzwFHmeziFzz9Lw0zNzu3z/+tV5M0AuEl5o6aYXfDClMxxZgBKX1BC09s1a872mJrKC4d7s0gz79+ezNQG92qq+mGPJ5bkt+kT+4PsmFQyCaDlQptZxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526073; c=relaxed/simple;
	bh=kB0uaLsDsv5pyYx0PDbhoPEgr+YBzIpHg/aFXf+oWhM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TsCBDFF81YDam4FX2XBbBySzLM4QhyczSFGC+hyP2/m3j8+iJ06Ogt59YO933AwD2fehuoB1fdhv6wqUK0SxDnMaM9NsHs6G9AE9qAuq5jD399Y32WggZQAv8tUnyMvPNkBPJ9VjPUh7ZIPXZbNDA4U3QqwAZeh755KrrnVwXyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JxuyYNfB; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-389f173b91fso92085411fa.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772526068; x=1773130868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VSTYwE59cdM0X+83Cupw2VCvDy7g8S/i6/wXCW+hROU=;
        b=JxuyYNfBTMEqgOrE1puG5Mv5eKQnuuFsdFyfCqRd+0CKUl/+ZbDkeiyKwnhjHu0ods
         4o1wJrlOHOMs/RIzkCxu6W6hd7UxlrF+Lt7MSHlaf4pJT7nyqVvnbeQqg8dQMji0sw58
         cpo4pLRAIJzBifLhx0D5/bfxqsb4qzGVMedwPT7SEiPZ4Ru+FFpjXkJWqunjdr3V+2tA
         kxcWHT+vOmIlo3d/qSebNo9sEy/C/Qer/OTEouJw7+IQTACSwWkZ3NBaBycDBbNQagbq
         XigwFEu4GdULHmDgXtlU2oh+m+0fSz/F6skph/nLMmG2ilawyvCFxaWlPMBkWjBlNFCA
         IFXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526068; x=1773130868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VSTYwE59cdM0X+83Cupw2VCvDy7g8S/i6/wXCW+hROU=;
        b=aqN4wUQgwZs0xo52PYPnK4nFjGPPomy4RdasWsott5yB9L6w3YFAyjYrMngbfNgqZX
         5BNuftgIeRgp4f6GQ9qtFWV84XCCJxB6j3hSOiy+4JeINoJCySShZi7/GanS1KoRxY5Y
         BTbzTJ3W9eK298tgZy+59xAMOkKpgRMY0cr3xhfbzNHXejMLHHmeaXhADdYi7rcVDlKr
         GUmriKweIpyz0tNqb+3MW5zcy35c0FedUlb6WWddLPRrgURKumTm+Rd2QgSKIS9wYNWu
         pF9+XUqR3UKfS1CZlQKhy6WILDlT6Hkb9qctpTRgEienT9YC09iQuagPirx3neth/+7U
         57gw==
X-Forwarded-Encrypted: i=1; AJvYcCWqC0aOE/rjaHp6JvaSjEEzX05DsZtmiYYrQ831OvcD0aIMogwuZMuXgb5tT7+27EULzThUL4C3qhGW@vger.kernel.org
X-Gm-Message-State: AOJu0YzJnnP5c56cvc5jnFl49oO/p1B07qNqW3kMJ7zumGR+l7ynzD2a
	M3TxUmBZ62sprC9dJ8sWSP34l8wSJ88Jiv8eL8msmY8omvzvFK2/QZ2YQ9IwHg==
X-Gm-Gg: ATEYQzwYq+FMFre16qnl6vefavJpunRKBF/rrJkynvhaHB4YCfRnrDWaj2RMqBp3TVv
	/SFQIGZzO+EG6nI3/t4UkQzS5+FgD+HybNtmY3Eyifrb55n9woL78uu2X7GWZtsaoReN045s+rz
	SMjDDmyaqRwLXdP3jftDiYcrfycfTnAS7fvu9HSAJbuy5TpRWBansmcW3jeLgUt/4i5Vn2fYjkH
	u5f579+cKfMQa0xUpNpn9fIbVCfc1cDu9XzYtn5wowfQQ+0n2D9JGMPDa6SvVbS1yky5/tkmHAA
	6ZF3HjYh3+/XoT2vTUtFPa7jTJjmuHJrtMXxUF7kTXIjSoxp6SDOF4189vUMzFZCvSjcgjnKPpT
	zBoiTTROo4tPE99JAMCq7w+CX3oc9ak4YXy2V6K5x3+dZQuoQvQjkWJ1zPZLU3YgWJJdN1bEf9L
	Vj7MLblCseM8jT
X-Received: by 2002:a2e:bd82:0:b0:386:ee99:6cc4 with SMTP id 38308e7fff4ca-389ff1159c4mr99375251fa.3.1772526068340;
        Tue, 03 Mar 2026 00:21:08 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2ffe02bsm30856171fa.27.2026.03.03.00.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:21:07 -0800 (PST)
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
Subject: [PATCH v4 2/3] dt-bindigs: display: extend the simple bridge with MStar TSUMU88ADT3-LF-1 bridge
Date: Tue,  3 Mar 2026 10:20:37 +0200
Message-ID: <20260303082038.11352-3-clamor95@gmail.com>
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
X-Rspamd-Queue-Id: 8A6551EAB53
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270359-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

A simple bridge used in ASUS Transformer AiO P1801-T.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index e6808419f625..7636c24906ba 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -30,6 +30,7 @@ properties:
           - algoltek,ag6311
           - asl-tek,cs5263
           - dumb-vga-dac
+          - mstar,tsumu88adt3-lf-1
           - parade,ps185hdm
           - radxa,ra620
           - realtek,rtd2171
-- 
2.51.0


