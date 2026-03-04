Return-Path: <devicetree+bounces-270837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFkiEqqfp2nTigAAu9opvQ
	(envelope-from <devicetree+bounces-270837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:57:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1A11FA1D5
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33E7C3038AE7
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 02:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC1E3542E5;
	Wed,  4 Mar 2026 02:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="ifFU71gG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f227.google.com (mail-pf1-f227.google.com [209.85.210.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6A7353EDE
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 02:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592930; cv=none; b=Rr8XkDt7qQg0lOJxMG/gAjWZ5XgbQvdWkuXgw67MkqylxD7SNjIh4s7rbDR4N9ivS0LF5dCdeKPC9zbVddXSZftFfIjbZM7WhsKDzUIZq5nkcNOgzElQcMs5DJKzrsp39b5YZsDyAJqh/Q5wE5LxlF/23nfVqdWKwogWvIZjIk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592930; c=relaxed/simple;
	bh=YOfFbIpwiNDmQQ6SnW9JqzlFwsdx7DsINX0gVz2lQkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TvE8/8L/voKSc5vrCj/JzvvIEFJEBFJua79znzG7Lls8vuYV7FwzwkhOF1jMVVCqDNrw+l3IzPejH2uCnP6qhkm/iWFnOi6mES+AOTqqTcSllzgRUVjthS3yi5qMMLUYQr2+lXjme0djeII3XHZFZvU0Z8ovkTGEV7qaj3o9KVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=ifFU71gG; arc=none smtp.client-ip=209.85.210.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-pf1-f227.google.com with SMTP id d2e1a72fcca58-824c9da9928so3866160b3a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 18:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772592929; x=1773197729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=ifFU71gG2pZfWlCzQwVHjkg/glKTnLEOD81TvptsCzcE1rUgKgcOmSUUpi720t3Wfs
         jp8KPWzFYTSkdwALY2n+2W3AlTWVpcpxh/RDDM4qM9J3mpBIfeccoLrLB1rkhdFc08ZW
         et4UwFQDQDAfNoZe9SkWcNJTfclqhEdrZqfoY3rh6YrkuUZO2bH/E3TLStuh/UTHK7h9
         DiVc6/Bs17nOpdtWaFmXf6Ie1RvyrXt4fL8DMgXXqT7CoJzWKySgwt45abdFks+19Wk+
         fpP+G2iG0c04N5Ks0fnB0E8Oxjt67Q9GYUekGZGJbNdrqm4iifcCKlnBPlPvnbfspO1I
         sqvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772592929; x=1773197729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=vkbeTmIeqJbrwbp5Il6ZEpRNzR3K4YALy8ggmQZEaKvlApJQzZDCa129iu+vwvmvLT
         Weh50e2vtvuk7xaDhWuGTqNlDydG75rZb+3KFGngJQBbvf+minJboyRsxkuCshoPD2Qo
         7tYWJ4/ahxUHT7bi5Di2sLc3Nowu0q+n6crkNX8ffflGiRH7Hv6iuNzVUWmwY6M27Aki
         LsHzypD5YZT/H7p+HWcbQBUIn3uDzn82t73vkhIrvM71XSM0DikLKkH3megywuMJi1O8
         omLQ4K86vlndaTJDPbwm/uGcjDDki7gvxX1H+PKie5WeKzr7JEgkJmXuUlLKjW7xtB35
         JXjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsyNql6tq/QleXI2Ok+53dv5wZHUm95Z9ndRDtxkznJ8+/ChYAP2+jZ71ZU5b8C5ac41OZ/EiM20If@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2OLBA+CqD4iaBDvzUpezMCEeG+72lFH7K5d6Q7PgKoWQauOId
	lX4YruR2tK+8mwURk86f4vat8/c2ymPB3ku1NCqR6CozKVEAmgothVAsNY2SQvN+xXLswJyk2gy
	y7SY4Lp9kTf5g0KVIM9so4vwpbpYw0UXJ60GC
X-Gm-Gg: ATEYQzzxS8AlE+EfR1dzKTzLo4AqSDDWlPOXQZzScavyuaVbz4Y0X/s/vMVgsqXqQwl
	vUIvJhBgXqaZosL3me1nIbBaKApBESPbT8IHyXPvBBQhxz0k3bQ4OrUE6VWqJhqZ2cnBzwDojFI
	O4Flh2eWKzaHoczfHGX/1sTX+VFYFJrJWdemqKnJbNAtn5ffVI57oiFTqekOetnx5rAKHdE02ZR
	cyaY09eH8FnqcUi1mhR+YxOVS0dJo7cIh7KIiBQ8H2y8dNmH4eLRqspKky1kiwW32v/J7v9rmes
	m04t0dvdJ2/BE90R/vgBIDdbKNgdhzOSHIO8tqsGPVJFMm9S5JhiW/H2fgX+WEwQVaP7mh0WBON
	6rnNdxsPBhpxO/QAQ/dqvvrhKNiCA4FGL+roMsW/iaReR
X-Received: by 2002:a05:6300:2109:b0:366:14ac:e20a with SMTP id adf61e73a8af0-3982e215fe1mr450654637.72.1772592928735;
        Tue, 03 Mar 2026 18:55:28 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-c70fa7d59b3sm1374096a12.7.2026.03.03.18.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 18:55:28 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V2 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Tue,  3 Mar 2026 20:55:18 -0600
Message-ID: <20260304025521.210377-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304025521.210377-1-dennis@ausil.us>
References: <20260304025521.210377-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 9E1A11FA1D5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-270837-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ausil.us:dkim,ausil.us:email,ausil.us:mid,qualcomm.com:email]
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0


