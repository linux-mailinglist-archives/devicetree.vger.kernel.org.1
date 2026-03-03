Return-Path: <devicetree+bounces-270649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDISGckPp2k0cwAAu9opvQ
	(envelope-from <devicetree+bounces-270649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:43:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 098421F4029
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2FB32304673B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 16:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B11273264D8;
	Tue,  3 Mar 2026 16:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwCczY5R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBC9370D7A;
	Tue,  3 Mar 2026 16:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772556131; cv=none; b=Mtojj9fpFNq90Y+Y5H1w3PWM3TYH4FrcOI8XsPmrZSxgx6VVo562cQdCLtjSj1y+N/En4opRXHWOeqwBQ48akDIbV5x0vNeEVKHc2nolkJCK8a8JOcuF7NRTkH9Dd1cHb6dWFNSI1ygGSmKcScwUSfrTbd5O5RjRIjjJSJbdnAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772556131; c=relaxed/simple;
	bh=bbZUQ1Fh88Ysd1nXQksQhhVxv6QAdP3LT7Br6CGSAx4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BFmtEkwtl1JVsJHED4W9EtYdDQVisxuR/1pAWXdlwSOh4pTu9tYOcwPvk7O/JoCoNtdorr2MI5ynoRRjxHP3+HpKA+r6K5LNxd0eOdvAA9c6Ucx6ojjcRzQe33roqyo+GxRyroc7G5fyQ/cmAtAiuhpCZ7I4z1MzdFgQxXOWbRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwCczY5R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 565EFC19425;
	Tue,  3 Mar 2026 16:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772556131;
	bh=bbZUQ1Fh88Ysd1nXQksQhhVxv6QAdP3LT7Br6CGSAx4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NwCczY5RputsSxitXbGoWUt4LvLRcgcDCa1WKwRrN0CgdjhCZ+8/BpEN1tZ2K0JjM
	 jwNKpvGryP5SAK/VG8BPq88chVfnlzFNzk1ZQVLoxzLq4crflL7E2SlklhMqqy5ACZ
	 3yQjgcae/u6btdQhZLcXShH59pOvUd2Vn79uEu9QQoQmsaXxiUeZRctHjFifbNnxsw
	 WuJN8HJrVG1QvT+IZujk4IEG/YrkCys3TZuAqC5HIPGYBXsk7tw8h5aqGzBEePcDtr
	 5iAryzE6Uq7sQd28jcy/j8PX+ViBULn/Gf/Fa8buRmSV8Q1xulLRz1dGPae4xTlDvf
	 RRhYdKC/z7+aA==
From: Conor Dooley <conor@kernel.org>
To: linux-spi@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] spi: dt-bindings: mpfs-spi: remove clock-names
Date: Tue,  3 Mar 2026 16:41:52 +0000
Message-ID: <20260303-spoils-snowbird-99f6e3a2dae3@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260303-deceiver-rack-82f2b89eac40@spud>
References: <20260303-deceiver-rack-82f2b89eac40@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1329; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=bFK+YrOO+k6RjSRpgJYi3gE/wKFWYaDieRUCyzGNhUA=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnL+f2y1RwOXhRnLBQvLTZWTppRuuDb+01T9Dx/ZblGs fo3LJ3QUcrCIMbFICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgImU5DP8j3wwa4LZrRDWs3Z/ Y2WehHvFXGdSdViZd519268DVyJZUxj+WU2u9zMyW7+maLf3pPmPNof6hk6+HJeS+Uj+XPnB6G3 RfAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 098421F4029
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270649-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

This binding documented clock-names, but never bothered to document what
the name should be, rendering the property useless to software. It's not
a required property, so it can just be removed without harming any
software that conjured up it's own name for the clock, as they could not
rely on it being there to begin with.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Mark Brown <broonie@kernel.org>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: linux-spi@vger.kernel.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
---
 Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
index b7d8acc924be4..8ff50dfcf5855 100644
--- a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
@@ -35,9 +35,6 @@ properties:
   interrupts:
     maxItems: 1
 
-  clock-names:
-    maxItems: 1
-
   clocks:
     maxItems: 1
 
-- 
2.51.0


