Return-Path: <devicetree+bounces-258756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOUrBsgkc2nCsgAAu9opvQ
	(envelope-from <devicetree+bounces-258756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:35:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C930171C8E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1FAF30292F2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49FE33A70E;
	Fri, 23 Jan 2026 07:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nU1JfDgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA7233C514
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769153675; cv=none; b=SbKAaX+eU5flrLJqTCwQqO1SzAlbpuQMTkzCPS78cj8b5LyykjoZiCgpBOE+KbWI6i1lTvxw0BsEeZYR8Bekozp8WH3rc9m/YtKu7AHVFw7lo9wcgoIpEF4/qebf3u363mbpK9uMjc70MNgRkbT9RAlIqW6cVuHyadj6fRsnoLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769153675; c=relaxed/simple;
	bh=Mh9pIRqzy3cNcwQ5mF++woQoFN5g5RSnoow1GkZi6Ms=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uMQPL0KLrhkOAUwvi7y5U1zeAyQtrnGjWdQaPen2xG4Qm4381nBXF+QL1TVb4HxMsG6pVxRx962vPRwEB/GzToSLmuxIeQU80k7vWdwJFXm0fpBQPseEoBdlNh8BStu+ddr8vBco55hF221H4L6R9ZfUlswpKfZk2btBS6oqiK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nU1JfDgZ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47ee807a4c5so19634275e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769153671; x=1769758471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vDEJVJtmtwtgoNe2JvesAZgbd1f1a9AaL7tdOeiXPUM=;
        b=nU1JfDgZK2w3Vcg3tckQDzFaei0r2JHucL5UcPkvQiZ24JpyoTmroLrIWIpd1XEziK
         Fxkm3+xCiP3rPZmvKZ/Fz7JnSSizGFfxh8EGagNM8RHU+Rpir0/X7bj1MzVtCKDQdCp9
         48XGgF4vchSMJcxk+1d8kXUN7mKIkD7BRYtvT9TBv8Jy8L7VluyX97zPQjZ6CSgjtlyA
         Mi6F42gNxUMt/ZHwVGW0lIdyFDiN4RSx3JkHkAvzY+JnacUtK8gVMoJyGBBPWMEVhUuW
         8LmUQmOR0v6Hm/2mB6OXC+9slB3enC/qxEHt69mz+vpHkWII2Ot4U9lOVLGGnzETJ5vD
         Ydow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769153671; x=1769758471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vDEJVJtmtwtgoNe2JvesAZgbd1f1a9AaL7tdOeiXPUM=;
        b=spRyu/cDiBDfFKFV6i66LX+0RWpNrY9umN2jBI9z3PpPtDmCMZqzn2VSO5OtwcKj32
         GPZ/t4AFCPA2M0BHEUesHNAXO1QeOVPkPt0LfZPxNt+79jKwaIcBQT9ou/AHFbN2VAa8
         4Rd6pFDrb8j6TXfRxbTx09zvyjPbQZaUyyrTknEnoi0nxqQJVdpgTlk/7JW8+sxGt9Q6
         wZkDjbP4Fu9M4cX0D3Vh/Zw70X5l9UVO7zUZMuycQtTAITTTifjUcviN14ZMhD5IrKnc
         aXlwI8l+XrL65Zs3Y6OhDA2YQdSK+UyDuVv60m63CSKByB4aStfW4Kwx9Ck9Ju++HOk3
         IyrA==
X-Forwarded-Encrypted: i=1; AJvYcCVZ4PFGE2X2pvzwi20sbrrK7WMLASXs7Ch8MHXdkKywZ9u7kp40dHaE7GhZZchVnYgQH5F80NslUJtQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9I1kPwKz8TKNrFg58ohcvEQD65k2mz6Ryt2ZqL4Ci/cmJv+lL
	MCsR2NhXn35YK0diSACVAwnJlo9WZuhvXcAvE4nI6rcPS5AloI5OgPx/
X-Gm-Gg: AZuq6aKVF60JK4WCHSFLZPjWtwzPhSIg4HhwqIh0SgWaifJoUaIj+dox8ao/Oc6rE8I
	7bjFDXdkFrps5VkobeEWialA0MT4yPmzFBU6kpoIloCgiR/cLT3aUGBBde+cZM/6v6BGyazuS5w
	d4V3G9SALaT+yXkN+5VETtXYXUewi2uLWmj5GOKi6HMxr4gksREagRUiCmf6WRybnBAqQJyjYzt
	BjzSoZJ4GuFP3+Q3MXmrHMknIZeJ9X9TKxO3mMMWEC7hqK+Ztn1nPocaR8UeXkJ79hhe4f+CLAI
	OMNQNTLxED/dwTWFn5uSVyVtEWrliTEvcJdtd+K4gI+lWFStMGpXdg0ZHOKQPTIRgB8RqJwoa6/
	R+swWdiTwRhR7fZVqNLs9Glbe1CPGnn0qT3ZL7FrPq+zasa7QMmwKqn/ARv//Tbbt/TRnMmgVrZ
	nN
X-Received: by 2002:a05:600c:609b:b0:47d:403e:4eaf with SMTP id 5b1f17b1804b1-4804c9596bcmr36514675e9.10.1769153671345;
        Thu, 22 Jan 2026 23:34:31 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d627871sm15890265e9.6.2026.01.22.23.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:34:31 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] dt-bindings: display: bridge: ssd2825: inherit dsi-controller properties
Date: Fri, 23 Jan 2026 09:34:10 +0200
Message-ID: <20260123073411.7736-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260123073411.7736-1-clamor95@gmail.com>
References: <20260123073411.7736-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258756-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
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
X-Rspamd-Queue-Id: C930171C8E
X-Rspamd-Action: no action

SSD2825 being RGB-DSI bridge should inherit dsi-controller properties same
way other DSI controllers and DSI bridges do.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/display/bridge/solomon,ssd2825.yaml    | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/solomon,ssd2825.yaml b/Documentation/devicetree/bindings/display/bridge/solomon,ssd2825.yaml
index e2d293d623b8..760645493031 100644
--- a/Documentation/devicetree/bindings/display/bridge/solomon,ssd2825.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/solomon,ssd2825.yaml
@@ -10,6 +10,7 @@ maintainers:
   - Svyatoslav Ryhel <clamor95@gmail.com>
 
 allOf:
+  - $ref: /schemas/display/dsi-controller.yaml#
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
 
 properties:
@@ -86,7 +87,7 @@ required:
   - compatible
   - ports
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.51.0


