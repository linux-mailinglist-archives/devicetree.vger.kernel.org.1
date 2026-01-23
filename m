Return-Path: <devicetree+bounces-259023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JZcKnqWc2lgxQAAu9opvQ
	(envelope-from <devicetree+bounces-259023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:40:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 066D277E04
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 442AB303F7E6
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C764F2F1FE3;
	Fri, 23 Jan 2026 15:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ieT9eYqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F64A28B7DB
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769182765; cv=none; b=Rp43XoSvPtnXg1yva1g90D0aT3nsuEh+tteX+2HdadUh4NPNyrnqEiMI+m42QpJ76KByivhB2Yv0IjznoGCU9bvK3OfEfA7fpQ8SOrmI106tVMrj4eSSj10nsqfUzXYeMZB719GhcJtKyRgm6p2/UJZs8q8+bmEWTZVmNfsfnQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769182765; c=relaxed/simple;
	bh=TaWr/LrmzAvRMdQNjiFtDzTvQFMrR1wI9b5D5QJZUhI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BGh8j9fari9Yyn6Akrfby+jgfgbu2TLCkTKCv+/g92K0zJaqkhAzYUmQvQRl990SZ4UFyAbB0F+NkkQ87T6sSOVud4vwcgtM3Wa1cYgPHYAygzC9FeJ+ulneNhC+sLxoK45sIFdTFarmIc88dFgeBg5zYZd9QOpSXKocnuijWcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ieT9eYqk; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a79ded11a2so14617575ad.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769182763; x=1769787563; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AN7Bijlws3Yf4aNS4iNAiLjf2TZ2e4vGXijmqIVGBpI=;
        b=ieT9eYqkDZYxsZ9N/D8v+/DZ6AXVBS9lLms4gt7c6atOzDIKuoW1c+/Jdx5SV4JLUa
         A75htOz6XQISBCiED7oipZ0QTFNZV7rgPJitYq0jmDH7wXMZea1pno3iFXLL4OtakGW9
         nAlZhDYdrb2S0TLBaWdzA1RNtY/l0AdC9N6CiqLEW5QprpJgQ7dYkunc9RdUwPVtovgp
         MGD+1XogCnFFkSGkw8bn79XMmAmNs+bcVdYD6OmwtvB8WatnLd93fVKxjNbPzMqetzLg
         SlTldqQSw3WACfCRZE2awRl3zCsqyTbo0sD7en3z0ltUfiA37gLSFwYvylmTEg1ziBct
         qYNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769182763; x=1769787563;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AN7Bijlws3Yf4aNS4iNAiLjf2TZ2e4vGXijmqIVGBpI=;
        b=s1w4tYKrrnevzFn1xRYCAtB27nXBjQoZYSAnJm/TfFePezjkkag8C946Gp01WeXh/E
         +XRmokn99QNweBWtAHpr2w6s0g1npixn6OPxMrlbJJki3oc4gToISZBQUdODXgUq2Kwj
         O263PEYoPWVQiKk8rDz7TCLtttvxMrB3Bkd8Zc3cp8wA/B1dEN+gTRVZtaEEe41n+Pk+
         ArGl0YZnsUyRnF35M8zVMZoXXIHvIcEWO5XJwFutSpSiDOv39rxAihcUlqlz1Jk7UbWa
         lRgbttK8UVRTFg+GcTtKtqumUQ/wEcyWkRnvyTf+hEtwqLef9kSi2K9mEfu3OuRNLQ7e
         VX+w==
X-Forwarded-Encrypted: i=1; AJvYcCU/rxeSOJBRHjja4AUr+cb2GGJGgfGHWO4OvfforBiNgt5achDGHmfp+nEzfoTYxmqSg/gP7eSvih0V@vger.kernel.org
X-Gm-Message-State: AOJu0YwP1tocUI1lHGZqLdcVPp8KMoYNw1PtsMbIQ7DE2ZeRL+RdmlfM
	7381xanMtD84w7uGXCWeOdLT7RKJL/oGUCrjQcob+XEwB/8mCbdzfcG2o12oTA==
X-Gm-Gg: AZuq6aJGg2oAQiC4WEtVrvodtYHesi7QHFqfHEEKwP46H0G8ue70FbTVfwoefV2/acm
	s9u6bxjCtskEQ9S3UOvrmcG9ns2HU5r76L5wL3XK5EmddH4cwIMYHq77fREAM9QgsEoR4GzYmbR
	0dKfXlrHFn8lqdHfD123UpntUZBSDR4TAUK/ivDzjGfNTDOvet2EBu5G48Mf3NmtC6n8I7VB9ck
	PpFwFkdcGNEUivuWtWxaZUpuP/gGixPS9fa8XNLPifUJmDwjSU9SrGjeTR89RRtOHS9LMQZZLDw
	893BuMoQ7JFnraa1yW7XpEg+Ntx7rGzov84puvAMe+4nEkFAx0vid3+7pl8TQBBIRKI/tzqoH0G
	ul/xw6A782Z5S4AUO/QBCvn4BFLso8/2tN+NaB7CkiG+1FbT8kbpwvV4hF0Bnye0tO6j8C8ckAh
	799DFr+gEKLMgFcr1/2C+HRbtqekYN50ml0w==
X-Received: by 2002:a17:902:e5c5:b0:2a0:b461:c883 with SMTP id d9443c01a7336-2a7fe747425mr32040215ad.45.1769182762932;
        Fri, 23 Jan 2026 07:39:22 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f9769esm23732205ad.60.2026.01.23.07.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:39:22 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP control and PIPE3
 PHY to DT schema
Date: Fri, 23 Jan 2026 15:39:01 +0000
Message-Id: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABWWc2kC/12NzQqDMBAGX0Vybkp2Y4z21PcoPWhMNFB/SCRUx
 HdvFCq2x/nYmV2I185qT27JQpwO1tuhj5BeEqLasm80tXVkggwFIAc6WTq2MxV5VRWa58qogsT
 j0Wlj33vo8YzcWj8Nbt67AbZ1S2QMGP8mAlCgueJGaFRVnfF705X2dVVDR7ZEwLMmDw0poyVoh
 TJlYIz51/hJQzw0HjUpIINCYpHyn2/run4AG9J8JgoBAAA=
X-Change-ID: 20251231-ti-phy-58bb9e38cfc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259023-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 066D277E04
X-Rspamd-Action: no action

This series converts the old text-based DeviceTree bindings for TI OMAP
Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Changes in v4:
- ti,phy-usb3: Limit phandle arrays for optional properties to one entry.
- ti,phy-usb3: Use lowercase hex for reg values in examples.
- Link to v3: https://lore.kernel.org/r/20260122-ti-phy-v3-0-751619729433@gmail.com

Changes in v3:
- Change maintainer to "Roger Quadros" for both YAML files.
- dts: Split node pattern updates into a separate patch and align node
  naming with standard conventions.
- ti,phy-usb3: Update node pattern to follow standard conventions.
- ti,phy-usb3: Refine the reg-names property and add constraints for
  optional phandle-array properties.
- ti,phy-usb3: Redefine "syscon-pllreset" dependency on the compatible
  "ti,phy-pipe3-sata" in a correct format.
- ti,control-phy-otghs: Update node pattern and adjust maxItems for reg
  and reg-names.
- ti,control-phy-otghs: Fix the conditional handling for the
  ti,control-phy-pcie compatible.
- Link to v2: https://lore.kernel.org/r/20260107-ti-phy-v2-0-a1ec27401fff@gmail.com

Changes in v2:
- ti,control-phy-otghs: Update commit message to reflect the latest
  binding changes.
- ti,phy-usb3: Drop the obsolete "id" property from the schema.
- Both bindings: Update maintainers list, modify node pattern and improve
  node descriptions for clarity.
- ti,phy-usb3: Introduce new YAML schema with properly defined optional
  properties for the PIPE3 PHY.
- Link to v1: https://lore.kernel.org/r/20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com

---
Charan Pedumuru (3):
      arm: dts: ti: omap: align node patterns with established convention
      dt-bindings: phy: ti,phy-usb3: convert to DT schema
      dt-bindings: phy: ti,control-phy-otghs: convert to DT schema

 .../bindings/phy/ti,control-phy-otghs.yaml         |  99 +++++++++++++++
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 138 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ---------------
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi             |   4 +-
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi            |   4 +-
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi            |   2 +-
 6 files changed, 242 insertions(+), 103 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-ti-phy-58bb9e38cfc9

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


