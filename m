Return-Path: <devicetree+bounces-278092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDe6Crr2vGkt5AIAu9opvQ
	(envelope-from <devicetree+bounces-278092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:26:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CC32D6976
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2269930131F3
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B357935B62A;
	Fri, 20 Mar 2026 07:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ml7GP9dp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DE4359A9B
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991501; cv=none; b=BJdOOuheXlp0cG/gCUnyHWHD+zda6m23pnALuC5Ih6H4lGblyLxBXHQqhHQveP5P1qEv6BHMN4mqT/nd3yNL8fV9wNXxP31MKjk4UJp/u/MTyjKxG2qWO5KDLIHPgCZYPccmDg67yKZ4yL5NlxuSLpJ3h/ZLIvod+mNwahvmnX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991501; c=relaxed/simple;
	bh=vlLccsCP/rzXYPVMSrdLyAW5ihHFyIGKcQM6X5H5674=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QyBOhOugu/UKshv51jdOl4BukV4nE5p8v2wywcLjEHWnT+BnIys/9w0Bse4dWgJNHL71PZZERz804QkhmzTL9vBZvvRx1T02MpqZIMqC+4JopbBVkWbMh6ztEfuQM0trLPSSbAYYm5pthxLKKF0I+Fq/TeX4gxoH0cg4+Gg4Wjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ml7GP9dp; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-82735a41920so754144b3a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991500; x=1774596300; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FHXZ2trhp5lSa8MQcHknKZyidASSv/5MiJDJYVa844w=;
        b=Ml7GP9dp09rVTSkjx7TKRzXYXG6iFP8/q86vKLlahHej4Li/UbgdJj0iqoHcInYlw4
         iwjDQTGJxw0u4nv8uRD7Isjz+Dmcf/guk1RsaWB5V/cOZcTbbpBMNP2bl0Juv6kcOJXP
         ssozUIGqYHhNi1vB5cV+HOxd+JKIxbLidpeiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991500; x=1774596300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FHXZ2trhp5lSa8MQcHknKZyidASSv/5MiJDJYVa844w=;
        b=QFq+swkg9c7mgCMnq+Q35bWPZa5vm6c+ZG68tR2ym7GK54rIfn+UzkQT6GfIlqb/QX
         yjrWe4OrVh/NNfmvSU71TUZp0WCdD6qst0nJ4W8nkOzuG8QZE/jRoy3Qx/B/TZUMRnWK
         jnT2hNa08iXIx1kGMnmVJNeviN7Mj6XuOrtI3V6vY75qMTlqtqVl3jgl9I2uNL6SGZFK
         ic+OhM1jBTSS4H8x3QbHkYOv8KdN5yq8eNMbLDQeam7vtKYlu1E7yVMC3BwfjH7vfmVX
         G1XAmUV1qkaHOfs9lSZViRGcFPtfRSUpwAHaFtrR06gyDnYW7KbVajxKbbpt0GiIHayt
         f+yQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFeh38oezYFN6eBfpP08LRPJl/M2tESSJ04VOW2nU7pnMbHG2fptGBXMZmBS7IdaV21L6DLaXcL8Qz@vger.kernel.org
X-Gm-Message-State: AOJu0YxUNaQXampgrdQdz4wqj4rehhgBS9PI3M5TdNm9vQ0Ntmnycmmz
	Hxz/xc+wSDv7stjYcQH+caSJADnWOt+XrxF5MzJhkEq1LrhQP1+fTaz2l2GELKjhrA==
X-Gm-Gg: ATEYQzyIlu9GQxrtbi1nOR2qxAQAuX6+DSp5kEOvwih35xzHpNFJ5GLey9wZQMhtW9b
	ET2r8B0W9laO3bx6lqwk+X0lY7KkgPE4Lb6DUfcK17KcQtvM0GYpt6Z3eSqMYlYtXxFb60QPsI3
	Q00ayHcE6e1CNjn9BmJdOhh+3cNdjR8/9mplMAEJQw6eC9CniLkY8ypv6b4iThdmK3XG+Fqxw2L
	wHs7uiUfmLuuYq9axCEvcESLVEeh9wN36HhBoaoppcOK8OEfTj8U08X4zRpKeEWnLLcPx1MSjl+
	lInOgY2atO6rFWNdZZHvHzStbGjLgIOUw7y7ByfazFPPiZvTtEAy5uEPTkaMfyDuiACuKB+M7pe
	V1CIgqvT6h814BwmpJ0Q9MK6Jv1zicaK55UlOg9igBeKTgTkM2FXatDK3wRersAXEIqQ5lI9A5P
	ZWBEP7Yc6Oq8pyuEDmVHcd2S9YXyRrFVtnRCWBjBBndIQyd4X+l0GnBfct3sUho6+cu5b4hv0gU
	qATGYY/
X-Received: by 2002:a05:6a00:b41:b0:82a:5d55:5807 with SMTP id d2e1a72fcca58-82a8c24817emr1789990b3a.6.1773991499918;
        Fri, 20 Mar 2026 00:24:59 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b04222f42sm1452447b3a.61.2026.03.20.00.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:24:59 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] regulator: dt-bindings: mt6359: Drop bogus vcn33_[12]_* split regulators
Date: Fri, 20 Mar 2026 15:24:35 +0800
Message-ID: <20260320072440.2403318-3-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320072440.2403318-1-wenst@chromium.org>
References: <20260320072440.2403318-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-278092-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.957];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,chromium.org:email,chromium.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 84CC32D6976
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

vcn33_[12]_bt and vcn33_[12]_wifi refer to the same output. There are
two enable bits in the registers so that BT and WiFi drivers can toggle
them separately without any coordination. If either bit is set, then the
regulator output is enabled.

Unfortunately some of them are already referenced by in-tree device
trees. To keep backward compatibility with them, keep the vcn33_*_bt
regulator. Also combine them for a shorten regular expression pattern.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../bindings/regulator/mt6359-regulator.yaml         | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
index ac925334ae83..f307a7ed30ac 100644
--- a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
@@ -30,7 +30,7 @@ patternProperties:
     $ref: regulator.yaml#
     unevaluatedProperties: false
 
-  "^ldo_vcn(18|13|33_1_bt|13_1_wifi|33_2_bt|33_2_wifi)$":
+  "^ldo_vcn(18|13|33_[12]_bt)$":
     type: object
     $ref: regulator.yaml#
     unevaluatedProperties: false
@@ -208,11 +208,6 @@ examples:
           regulator-min-microvolt = <2800000>;
           regulator-max-microvolt = <3500000>;
         };
-        mt6359_vcn33_1_wifi_ldo_reg: ldo_vcn33_1_wifi {
-          regulator-name = "vcn33_1_wifi";
-          regulator-min-microvolt = <2800000>;
-          regulator-max-microvolt = <3500000>;
-        };
         mt6359_vaux18_ldo_reg: ldo_vaux18 {
           regulator-name = "vaux18";
           regulator-min-microvolt = <1800000>;
@@ -275,11 +270,6 @@ examples:
           regulator-min-microvolt = <2800000>;
           regulator-max-microvolt = <3500000>;
         };
-        mt6359_vcn33_2_wifi_ldo_reg: ldo_vcn33_2_wifi {
-          regulator-name = "vcn33_2_wifi";
-          regulator-min-microvolt = <2800000>;
-          regulator-max-microvolt = <3500000>;
-        };
         mt6359_va12_ldo_reg: ldo_va12 {
           regulator-name = "va12";
           regulator-min-microvolt = <1200000>;
-- 
2.53.0.959.g497ff81fa9-goog


