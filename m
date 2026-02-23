Return-Path: <devicetree+bounces-267223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yC9oDu7qm2km9gMAu9opvQ
	(envelope-from <devicetree+bounces-267223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A16AB171F16
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ABFE8302730C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C4AA344D91;
	Mon, 23 Feb 2026 05:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nNKHW424"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0354BEADC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825884; cv=none; b=V6CAMdBhu0n9S4EONV+TOOXVHpstTGgwnkjSosMwpFIK7EirAURnqtZWZlxteVlDlpxlqMLkvIBK/tS++B/nPf9lXFmBEyGx/gQNd6j4CWmaTZtVANIUUkvRqvgdB6HsEjfNGV27gLqon7m75xMl/9A4GQcYqXIgtApWXOBkV5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825884; c=relaxed/simple;
	bh=pi1fLBggw2w5nq+ku9XGxrPVz6Xc+gXO0i/5XkcUNq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eeyQP3HiWFdGVMIhtSyMAAqnpF35mzkwAwbMZ897IlbDNZ7Q21oQudmEcNwBpN0uhXHEEr4NxvHLxOwcsq+p3bH1fnUcX6BpJclHlXrX1gGLur4aO6n7CmCyxGwhOV2nKOCxKjrekDH9d9KQ5PBf5Tl5Q2lDsTrb0IB/34GDj+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nNKHW424; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8cb49f63238so230946385a.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771825882; x=1772430682; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=nNKHW424jIQN2Us2yNrUB5DxRmcjrwlw4kb/TGOtlXbuiS3GJyzveLFwgdKRHREh9X
         OgPkX7NFOsrul2HIgMlBaW19U1VBVuCaJIow69+m9OpL/g5z+OToB7lDG0DsXW7mnMEr
         vFi1gMveYy6V8ozbHBXZy3um1BXPCqkckUXu95RWeBBA3YaqFxc/z/g98nWbmmxgJosH
         2Nsip6Wnl7LcxXisCqvficy6ZNGHzkSoskvfVVl3iX6NMY6dViXSJu8iUYt9ZnX4NOPb
         5hj4vJsMl7niVxuTigOD1l2Z5S8gJiuTIE1uuteog4Hcr6Lrc+ofaXfAemzZExcicXzi
         r6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771825882; x=1772430682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=O24QCbc0IZ0sjNth2lHbCAaFXjHlG9QqbspDn9nv+pvnPHZSXMU7ioAPaofw++ZkAK
         spCMQpUza/E+NSLqFffSh9tlm7iDqzyTRsL7pxMYGpuMykJedkNZNlZSKn73h5Na7t/h
         HN5xgZo1gwPQ/N42zXCOU7TcFQ6CfYk0f6cUorNBEmSpMBWsrABOar8SNFkwIAhSPod3
         Xkg4QocV+yHj8LgWRL4Ga+3Hem/X8nqSGQOnijQ0JcujtSOT+DuWWqj/iTi8/quH6Zh+
         vNpQVQ0+15+DrhWRFfyDrwcPCB1LCkk/cQSmL96SpFhXesPW4/ZKGEMCl13tCqP+bN73
         S0FA==
X-Gm-Message-State: AOJu0Yyqcd29ErR2mBCtL0NpJr+slIvWf1A/ZQDrusKwR6By2DQp3GEW
	6rtYoXtxZftLoC+auZI961sogF9iK3FnBHQr5CVG5lE35Bv/84X6HRU5
X-Gm-Gg: AZuq6aLlCqgZJnZSGUVvTWz80JRGnI3RdgKvouGpwOUBtWa6/Q8ZtQUz4hyoGows/6i
	U4UZbKIeSoKuqmJ2AkzJJ3NDDcVK1rDuGH23PTg/rYFtbVudXHgcoCMWDfkXVbHmtM4Mr4mnAS4
	JfStcleM5Ng/tO6SIbfVy33ngNNis6eeWNyjjYn/3RKNK+Apl76AbdDDDgSa1kVqbawNI0LwIOO
	PJyzArppkV+98EhaO7F9W6brMVpt5aKlVJOk24bHkFKqEa88ETHggDVEqgY9zSTWoTbm0950jQ/
	4xn8us79f1FSzOaFToED9bsP6AUy4e4cDUK1ERjJ7cK6b2JbcQcIkfwCa9PzH1m8teNcnQkqziP
	7osRmlaqhaAKPvnp/9EN69j9mqPUsmWqardIaLF81e05uGiMStc2lfyrh+J0SyzeCGMsuWLiKbw
	IGzEqoAUmPq70sPx3A++fcrBPFCWrFw2UIWMt8YzwaGl4s1HS15q/YNiQs3EzKs8rY5vU8yu3XN
	vSZIyEfk+WjH/zHvec8sw==
X-Received: by 2002:a05:620a:4610:b0:8c5:38c3:7cca with SMTP id af79cd13be357-8cb8ca03109mr1014138385a.31.1771825881899;
        Sun, 22 Feb 2026 21:51:21 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm59459096d6.36.2026.02.22.21.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:51:21 -0800 (PST)
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
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v7 2/8] dt-bindings: vendor-prefixes: Add Doestek
Date: Mon, 23 Feb 2026 00:51:07 -0500
Message-ID: <20260223055113.1288-3-bavishimithil@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-267223-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[doestek.co.kr:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A16AB171F16
X-Rspamd-Action: no action

Add vendor prefix for Doestek Co., Ltd.
Link: http://www.doestek.co.kr/

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2ae..70a195fc6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -437,6 +437,8 @@ patternProperties:
     description: D-Link Corporation
   "^dmo,.*":
     description: Data Modul AG
+  "^doestek,.*":
+    description: Doestek Co., Ltd.
   "^domintech,.*":
     description: Domintech Co., Ltd.
   "^dongwoon,.*":
-- 
2.43.0


