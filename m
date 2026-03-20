Return-Path: <devicetree+bounces-278115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ih7HC8GvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:32:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDFD2D741E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC1043044B4C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2849D2D7DE4;
	Fri, 20 Mar 2026 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fwVz/waf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1F22E06ED
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995542; cv=none; b=rUDtMrVO7Be2GQLRHTBrPNEHKyIQT+L33tCdgRi1T33ELOg8HsDIb4m4rZvItGXvWzz/P1lZvf0Dy3N7qNdXd9wWJUn9aZJI7HWQcLGhLcB7VckhsRokhF/cv7lijbbjgcDQq6sgmNsNp4ulw2zjoFe4N5HpcZdtGdxLLpNquLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995542; c=relaxed/simple;
	bh=o0xvVEhUW+BvD9VQEi4vmFi15CEsqzEBHjcVziN/X8Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jpsuWiziFGffHP2l4MxpnOSuxfCZvmVGq6pPeaBZIOzB2dTb0ocgEbgwylJeCxQLXO7se/mE0wlHxVyFkBS+gqlGbJY0SxlknoHWn2lpLs2IjVqKUCBDnZ9d0pLik1Ji2Q8iQ21HhY8aCLma1W4wC5achTuEmnsYIrZ7K+7gdGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fwVz/waf; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-824c9da9928so1623575b3a.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773995540; x=1774600340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nh7FB2+tAnbHPiN9V6sKTsvc+IqdTYaE8U3Ar9OxWRk=;
        b=fwVz/wafDAGsIX9l9IbAIunm4uxhqm/s9csLldqq+4nQpKmXUpZZGWTHmS0N1uZyfs
         Pmev8SAlL83bp0+uUKJOl5Ugh0eO9EB6kB5pwDi6XjLd9M5/dc0xEE5dvh/htewIPmi4
         FFr2ZuFwskAw+wkIHhnaTVMu8Vvu7RA/DF/Vw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773995540; x=1774600340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nh7FB2+tAnbHPiN9V6sKTsvc+IqdTYaE8U3Ar9OxWRk=;
        b=i7bbu2H3arXfH5o2wsBZCh4SquyUf3x9V3x/tvaJ8y0FLKYYI/WcltyIGT8XpakIZl
         2yupf6RHhc29Z9W2JPiVMWUK/CRM7VpNunZ7jbH2UL3eSJXpLQRsgcTH8Fg5bhd2GPqs
         F2WhYiJ/A3HYm4fP/Xko6xU7D7OWI/U8o32+Y6kWo+DxWQHCqKIeNj1PqF2TqUQKCf98
         Ih0ZCBXtpXIlOjwUuwMdx80QEsVVx3VnB3GvDEKtwrlC/lBXRGzGzCZ+v+/uJ1WnSkJv
         GBfPFlVwPP5AeYiq6aHSlwWj5Y+dEmzXvsAJyRLGJr+XYrP3wwHCmqmWFCh9bD6N/hCc
         pPow==
X-Forwarded-Encrypted: i=1; AJvYcCVcytxjg02vu+rrULMlLCGxybkUCnuQJ9+Attyy6PgwsX0E0SKUY5eZBFW1TiUci1l0zSLDu4i5Z+ff@vger.kernel.org
X-Gm-Message-State: AOJu0YzSxqrVgrYPd8hTojB15pYkIGuNoLKlp9ueXCLoK7PDOaBaSvGn
	bQKgWRE/6TsZcpWn7IuHcOVpJGAbf47m1aSbvsljnw9VXYanbddqiuHMWSAkcEyRkg==
X-Gm-Gg: ATEYQzzAzT/rNx05uaG19l2+BJQExZpeNWMlm86F10s4pxq8IsTeJW2ICakXg6hQLHm
	CeWXdQggliyB3S77m/hzvJuFldL4TNQb+1T/wJd0nOMkJqVA+oYW2fT/tcSE/BzMiDvX8WeUl+m
	Agw2FR3ow8Gdc/XT4uLQoL9ivwhza553EeNCn0LZzCorEQJqEp4GaTSG55LK0U6fSVx+5QenlOC
	UY+QX09hLBOeRN9kgBvqnPnLeRXOlP85AcPXPfOePLqor+PnxxEmfXilE621kQdgMeyhZlNxwc7
	YK7y9jjVKGH5TZsELWjrCd23l0zv0+li7iDX2jUBXm96DN06HPtfvfcfKlOG1HQMdrThtkym7W3
	asrf/vYSNOVhEqjhffIlIeB/6i7AfPgMyEHG0NC/qAqxtZa82jNKajo3V2zaYogUOVV5p6V9/PP
	NicRBcveuLn1RG64QzvxnHc1hHRNM4vAJaO8SkgcHQH+2x9CSp/9thJQmzt6HtdDrjMW51muljK
	ur/VIxh
X-Received: by 2002:a05:6a00:299b:b0:82a:f02:7355 with SMTP id d2e1a72fcca58-82a8c35c866mr1756086b3a.32.1773995540176;
        Fri, 20 Mar 2026 01:32:20 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b040debf9sm1408816b3a.47.2026.03.20.01.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:32:19 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev
Subject: [PATCH 1/2] regulator: dt-bindings: cros-ec: Add regulator supply
Date: Fri, 20 Mar 2026 16:31:32 +0800
Message-ID: <20260320083135.2455444-2-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320083135.2455444-1-wenst@chromium.org>
References: <20260320083135.2455444-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,chromium.org,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278115-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.968];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chromium.org:dkim,chromium.org:email,chromium.org:mid]
X-Rspamd-Queue-Id: 0BDFD2D741E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Even a regulator remotely controlled by the EC will have a power supply
input.

Add a property to describe the power supply input.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../bindings/regulator/google,cros-ec-regulator.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/google,cros-ec-regulator.yaml b/Documentation/devicetree/bindings/regulator/google,cros-ec-regulator.yaml
index 5a6491a81fda..c2bafbc1e9e1 100644
--- a/Documentation/devicetree/bindings/regulator/google,cros-ec-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/google,cros-ec-regulator.yaml
@@ -24,6 +24,9 @@ properties:
     maxItems: 1
     description: Identifier for the voltage regulator to ChromeOS EC.
 
+  vin-supply:
+    description: Input supply phandle
+
 required:
   - compatible
   - reg
@@ -48,6 +51,7 @@ examples:
                 regulator-min-microvolt = <1800000>;
                 regulator-max-microvolt = <3300000>;
                 reg = <0>;
+                vin-supply = <&pp4200_s5>;
             };
         };
     };
-- 
2.53.0.959.g497ff81fa9-goog


