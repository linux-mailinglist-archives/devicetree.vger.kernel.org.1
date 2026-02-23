Return-Path: <devicetree+bounces-267509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOJyEkp3nGlfIAQAu9opvQ
	(envelope-from <devicetree+bounces-267509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:50:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B85B21790EE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CFC3330021F6
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3882FF153;
	Mon, 23 Feb 2026 15:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EfwLuOzS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E182F83A2
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771861549; cv=none; b=u2zN0c2tUkpRtb5i9YCZHQdvc5Arnv1D5DtwRqVLz5joybQUroTXnj1bE8l5lXKP7Q4sZLYmzK1QRcFCMicVFdnoACH1uSx5dN4a09K7UQzny/lwzVTT69ZWv0rSWqXDWWuvkk6rwOHm+37bAn6t1cq+AWthxr4jsixrxILTYrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771861549; c=relaxed/simple;
	bh=pi1fLBggw2w5nq+ku9XGxrPVz6Xc+gXO0i/5XkcUNq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eLAfl7taL1mpu8KgJAeP8OmKw3LSAA2NvgAOSWrn+rTvBGKKKuCQLh9eoQGw4YRQLQtDSaQZsTewKDEzz5yq+6w7RXir0iyEgQe/fkzS9nr75NwjBSq3K9/C2i/mqDVVwaQr/E9Pp2kUT/6JLkpj+3+cn+uPyPUUtvFX9Wv4DcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EfwLuOzS; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5faddf6db62so2916133137.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 07:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771861547; x=1772466347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=EfwLuOzSHgCqTs6o/GH+GkcMiymAu597GyEiQL9S+G8rXInsn0fC6iOK/XyWfsmXCQ
         xYU7CV63KZteEZzPb3GJ2dXmJlZoNjvw35VKZQgP3rnAfONL8S+j/s6lylCQaIX+fBJM
         e6y/IkFJMn4Cf0Y/q9M6z3YptLCBSEyiooF2Wa72HPfCR//S2Pv6gPT0ed2kAG+3o8AF
         8owIm5Um8V1CVsElejnRkT6ZXDsvjR/NSZ5CefIjoxBPs+q6vNc3A9DXziifiKDhvz6r
         tCsFpsX4xjxDPAU2ppY0YkcI34gaHMTWWDfiVYW1ZoykMSN/Q9mtr9i/pOg47nbK3vXg
         aygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771861547; x=1772466347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=U0sTav0BHL3olT7Pwr0XSwltdsQTmsLh667K3FS5TZmkV3MWq43ueBMWvWsV7A9BkS
         rHXLi9q3A6B8en/HpEiM3PdBNKjUPs5Ix4AZ9cZMDr+VS79LLfIvyjAgZHwYi+OIxrdw
         NBBv+fOSb88BW5JFX+Q6OzYsbiiZi+UmApMuKx3oeyLwYYyMKnZqU2f16MVORzHhvAQV
         EEPc2JIRBon+6/4fKR90hjs939fiUy2J6Fu3U1PFE2LgB2mUrWhuSHjGVBQJgXJZjlaX
         h88V5IVxquv8tGJic19/L+cVfKaZUhEfnJojtFUJrBmAhExCST2ZKWaZRbSAnVo1Yvui
         191g==
X-Gm-Message-State: AOJu0YwxOsos2T0ss0zb1TvuJVrNFGrzI/NXiZ7rTZrfT7H827HWQkgh
	zChIWTQSJWqjB0DSD04DsF5VC8IhbI2BkZtPbdW71B09onE1JKrg6dO/486lUOBy
X-Gm-Gg: AZuq6aKnasYRxufkBWsZzoAa7vtOYNbivryr/TwgKmVCuFRk0WnjksKrrF0Ol6bR48m
	HwG43/G+GvJaSxsVZYHc9bG6RLdfrhiPPlBk7ydeOO5GfybrC+Zsg0dKShyoVuwIamnSbLORhSO
	boe6AgT7IQhQczMhVuMNr+icQ2f4IKaRV/NETJ/6KT4bYKcBpBQBV8bIPySWdOD14wdjxntbWOt
	+pfO0SAqzTCmma404tzQgUzvCX5rzG5SailALVYIUwtKUYSyIFVxwfin3pMl+4yhXCLyHHGU6hh
	U8VSV4VzwySJYfTN1Dn3sKmdWkEOc7uNLWnj2dDZuKAjZyU+pHaNcVg0LPjU9dRTD5E9XveGzKb
	rZ9jGzWZcx20BUFJvu/HgP5mpoi00y82UJwVpWz5et1cDSkZdMEi0F7XzPt4sy9z8Lz57xDH9Wb
	RwtZoArZQ2GetEoddg2x9xsz5CET2sEMLy+Qako2jsFKqI71PtwW7vyXwVNgzJfIAix6VPC1N0e
	IVuIolgcxg=
X-Received: by 2002:a05:622a:249:b0:501:45c5:935e with SMTP id d75a77b69052e-5070bb81b0fmr101683041cf.7.1771854588482;
        Mon, 23 Feb 2026 05:49:48 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm67954716d6.36.2026.02.23.05.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:49:48 -0800 (PST)
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
Subject: [PATCH v8 2/8] dt-bindings: vendor-prefixes: Add Doestek
Date: Mon, 23 Feb 2026 08:49:34 -0500
Message-ID: <20260223134941.427-3-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223134941.427-1-bavishimithil@gmail.com>
References: <20260223134941.427-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267509-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: B85B21790EE
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


