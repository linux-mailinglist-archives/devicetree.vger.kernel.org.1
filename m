Return-Path: <devicetree+bounces-258600-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMRmIRxpcmnckQAAu9opvQ
	(envelope-from <devicetree+bounces-258600-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EB56C25F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E53B306EECA
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3513E363C7C;
	Thu, 22 Jan 2026 17:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jrTgTLMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919C026F2A8
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 17:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769104478; cv=none; b=SiSBM5yMg28+a6MAHzP1dxUFWsuC+zjFKDiKWXxyKtxGbgtU5WarLsaNceebOp4NYw6J0tLMFlojQruXdz+rzhTn5di8i/8XXWoQpXxVsSChnJ+9T7jCuOkJ4jOmm1syU8Ba7i77SE49kHMfIG5zsPJ9HBlyhOOBM2W5wxOk9kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769104478; c=relaxed/simple;
	bh=/5KChL9587C9y5j3aCCxaDWmoc9qI7T4dqowE01qbDQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=H6SSMnC24obqul/9jbZ0RfJD7Nbl4Zv3np7nnrI9IuP1b7qyT1rU7j/SC3CbWNgZagfzgIZxuphiYgAo3UMrAFj3k59cTUcEqaBn9jahLz6iIi1UhAZI31vs7PYlvrrzcpwvgqvNIhfrh8rCP7k8+JiRCP0OXIlrF32ki+/CBxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jrTgTLMh; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a2ea96930cso8788205ad.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104463; x=1769709263; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IzyR4xVrpsSybc4UKBr7Yf9UVEuXH3UQn5bgnz7MscY=;
        b=jrTgTLMhN1DTUcDfvTcA/IE94RTeMey8NvVuTTMW4DnQ10XnsWwnhjpoPfTu2eSh2F
         6kxxvDA2h0CH1YPOFX8d75HV2r1fn35l4A+WGLocKw7YodYO5aeydCYRQ7IzX1moQ1lr
         XwWJm+/1+GgbDR7dYAstxLTvKkeI3plbC3f5KpoJynKHlG54uANZPMYRkisoztg3Injx
         2SiD5elZHPOdiRLcjIBRO2Rs70k5OI5lT+umOYNxalt/fATbVY+UPOb28NqQ1ZUpRa+1
         ot+QLo5ekrxZNdUzYwSOFBTmNnMlBYvI6puea+yBwFjWny3Wb2Og+FGyp0qg1dsbwxVm
         NllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104463; x=1769709263;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IzyR4xVrpsSybc4UKBr7Yf9UVEuXH3UQn5bgnz7MscY=;
        b=orvG0HNbt9CNCk3cnwSG66AsyxsTqwGQ/nEKnN8dxl6xcN3+pRosJjlr8dWHXVGY3p
         YtdkPBOffJvTglwWJKc248f67NRWIvwb+g9FbgtmAZGkdhObb13o8ScUaqRXgRs3TYg8
         VmMBRb+2Yoo834I3Ve+DaH1iI/Hd2PIbvEbhl+LKdJkFAj6IZWfcy8iyHq4njx40IrmG
         nuCy8AVd+7lh7PGYdm+X+2qOK1LXrgg8kedqD9+4cfwL6yQTaGCEVBSNIzSy6bic6+xX
         Fdzk+WibEgMIUQowvcNWcS3xd2/URKMtU9a97jS03M6iAPuS4qsjnemfY9oAIReDzWqe
         /U4A==
X-Forwarded-Encrypted: i=1; AJvYcCUhL4WI12bfUpRTc3N69yvSDng2DH0sTdiJrGbaq+1Piql2pye37BCu2MGPS0Pm7iT7+RibYaCZu97i@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3VGSfdYf75Hp04/BKTJKCdYSV5bTZMv+nMvsu8Wfhbls6VlPe
	Iei5r7kLvkmbQ928hIPT74rpRe5nfyIXY7BKvHHKVT+QQYVGtQ+Ofogz
X-Gm-Gg: AZuq6aIvGQaEDPErHCp5TP+XcJytpCAD5d6Rmm1zMalT26FcvQrVUddgvjN1YQUQ1Po
	wiezaSEpxUauUppv47dSYnxAIvCBQnR39lnvXrbvJHT0ok816ds2/83nGy+DGyR9ueUZWoRXKS9
	A8wAmYqNKP64fil+rThNsPv/X6Q1HoPpTRpJj0VeyXOe8oQZdquLRcD5XaN4OBIiKsc3zQrlQMW
	OGxFAj+TCvZ8+puJw3i6akJZwENbJGWRdMvWzPp8Mc7VAo5vJ4zIAF9+GULnV4aqf42qKUaiHA4
	+wY/XRqu/Kaur7qfEbWcxlC3U1Ejt8uLoVVVqW9rMj9j1zEgySzMAKq6G7VDbZ9uz1amg+CTDTx
	ohO4tIGD588P402XwdskHYhLQd8bqr1vA5hNKfVOr7+GC14jk8dQhig8zJ1TwcIpy1vmbSbP+xg
	ILLAaDKL/MKebRvUrBv8FOwlgxLVPOkk2ncg==
X-Received: by 2002:a17:903:2406:b0:2a7:b412:6cbf with SMTP id d9443c01a7336-2a7fe76fd29mr2007125ad.55.1769104462539;
        Thu, 22 Jan 2026 09:54:22 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:22 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v3 0/3] dt-bindings: phy: Convert TI OMAP control and PIPE3
 PHY to DT schema
Date: Thu, 22 Jan 2026 17:52:56 +0000
Message-Id: <20260122-ti-phy-v3-0-751619729433@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPljcmkC/02MywqDMBBFf0Wy7pRMUl9d9T9KFxonOlAfJBIq4
 r83Ci0uz+WeswpPjsmLe7IKR4E9j0MEfUmE6aqhJeAmslBSpag0wswwdQukRV2XpAtjTSnieXJ
 k+XOEnq/IHft5dMvRDbiveyKTKPUvERAQCqNtSsrUTaYfbV/x+2rGXuyJoM5a/tcUSKiQjMpvE
 q21Z23bti8Tq0Qw0wAAAA==
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258600-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 26EB56C25F
X-Rspamd-Action: no action

This series converts the old text-based DeviceTree bindings for TI OMAP
Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
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
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 135 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ---------------
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi             |   4 +-
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi            |   4 +-
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi            |   2 +-
 6 files changed, 239 insertions(+), 103 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-ti-phy-58bb9e38cfc9

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


