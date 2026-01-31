Return-Path: <devicetree+bounces-261435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IE21D1AgfmnZVwIAu9opvQ
	(envelope-from <devicetree+bounces-261435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:31:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ABBC2B27
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:31:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1856A3001F99
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC0278C9C;
	Sat, 31 Jan 2026 15:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nWEDl5Qu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2782C0F81
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769873484; cv=none; b=IU2Aey1G1nycyvU79j8AdvrRiQWcuXHg3jhG7CN5P0xdHNpE9eFAb5BBIWPSfvXq4CYkE2rC7fzRYx99PdG3g89EQSzsddAU6Z/RTciCjfuLxZRmUi0S4gG8cUH1bJo4v/OpnBkg2OvNb0CzSN6IpGDlfp37HugQE44CqRT88UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769873484; c=relaxed/simple;
	bh=qHFSaDD6nqqXWmJKkEyuL+c60v4bgN6af1ga5SlWlP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OYWGOJM2idAagYzA9aELBBs2D/Y9lL/DPOrRiudDYeLIPu50f849dBXYapne7PgHIuicy+B5AAlnpYkgZaJYA1q1vVpH/g444MAhcO5hCuBDf5QdZc1iv+EoiwHvMfsd7o241Y9g2Y7P9x4GwgoF7wA1f8wuFa/yhFWvaV3cc5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nWEDl5Qu; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-823c56765fdso310215b3a.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769873482; x=1770478282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAut55lNFkfH4Sk5JTUQKJAHX4+yf6NtX5ad7G5O33k=;
        b=nWEDl5QuJe7mhKdF907PkfVvkDz6c9N2ghoi/yzG6v+CwdJNpHdJyd4KTXvCYHEpYM
         RPHm9kY7Bbvmyg6ulTzmUVXdXDZ+LTucUsA6/L0VYfhXy8m0L1bKCaS7wyIOIerOwn23
         tmn0KY+5oC7ttryX/6DV+7HtMVCGncpC5uTwvIutNwVrEQJTJoYfMc7HSiGPLj8uzwGC
         mF5SBgvkA6BcCD5ol0KYvVxfIkiVpiTshpI4bLYIe0NXACS82RPS3ozQbkQnOXt1lrq4
         Jwy3+gTkH4qkTYStkuCJ9ikx7ezBJGBed0lCXzuZvzqLMdMwl6UCy5Y3XP1m0MQ/o/Bn
         4OkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769873482; x=1770478282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DAut55lNFkfH4Sk5JTUQKJAHX4+yf6NtX5ad7G5O33k=;
        b=pHgJaq1+gdg+G8vEL7iywLOqlzcVQPgiXl5k1vX5H3dQz4Sz59xGGptbDUae7kCcYl
         D4Fw8F4eRr8s3dOSlMzvBy6OEvXGwZQd6oLyE1yDR2UWv8vYpLX1Bum5btdRdnrnANvx
         AdGFWJ6Sds2INmqvVSFhXhfRWfrRDXQDKoiW0NzR+LiD/32mNeifQ3Y6QILp1uOQbXBj
         XKBOBOsqYRZTjFfvBwBz79rX2mWM0Lc+E9+YflRodl01gxBRTFKD+Ts6ioeZqpZYyPa1
         hkjWWtFyeRf0URT6IKhl66mWDeJl9nW7WJLESH/Y9Vu/VwfcrqSAb2v2XutF0uBU9L9e
         4iTA==
X-Gm-Message-State: AOJu0YxUTnjDp/n4cjS78d4lurH20Te90YUz7+AgPvAeeAfYjP4kq+iM
	2MsWbIw1qKcAYNjK09gySBQBrwRc5iSevrN2LmSZnu/wlcYiT00lxnKGUZEx3flv
X-Gm-Gg: AZuq6aLdSIJB0txD9CuaEYb8zViY2BcOzA8rbCo5Zos+ukjDEvEjxm3+gUwzWh+WbwL
	K0pKV2sUgKM3jtgOpPyUTuXHUrfmyJSZTKpLt2Myw9IsB2Z15hhPkmlHJeEaKT4y6hLgeRZo+I+
	4ouaHwFRYdCsXqnpiCqSCPyNN1fp9S5lI/Whke2dJMWv97mBBUooM44xoCSwoS/1aP7bM0anYYE
	RWPaScAFZk3YlfpnUnxygSUAn23gubNqmAiLt312r9aerTKo9OE87pavZy6B5AqI7EZLVJV6DCj
	lDj65BqWNFFP4s5Yw58XNIegIEum1AjuXYdZDO23lDTsiU1HbZq/T7vxPHuUb3Ny0TSJpjWoR/i
	eMEQKFKByvEiABOK+1hzaFJuYp1YP0C/KLTiMW3fGCr9Z9jVAKFioUEO6a2WWPe6Zp0NwbTqHhh
	NMmDtRm5aDhjdsk7LXRkkOrO00XkMh6Bw9N0Dxyd/7B/Ut5CMp
X-Received: by 2002:a05:6a20:9396:b0:38e:90d3:49c5 with SMTP id adf61e73a8af0-392e01438aamr6048600637.53.1769873481898;
        Sat, 31 Jan 2026 07:31:21 -0800 (PST)
Received: from arch.localdomain (awork135098.netvigator.com. [219.76.135.98])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642487f1f5sm10701122a12.0.2026.01.31.07.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 07:31:21 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Sat, 31 Jan 2026 23:31:01 +0800
Message-ID: <20260131153106.31723-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260131153106.31723-1-jerrysteve1101@gmail.com>
References: <20260131153106.31723-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261435-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 97ABBC2B27
X-Rspamd-Action: no action

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..49607cf2941e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1199,6 +1199,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.52.0


