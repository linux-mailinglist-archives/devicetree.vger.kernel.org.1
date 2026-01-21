Return-Path: <devicetree+bounces-257807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OJTAlGVcGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:58:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C6D53F69
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:58:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ED44E802D05
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D618B47799C;
	Wed, 21 Jan 2026 08:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="NRwYxfeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A786845BD68;
	Wed, 21 Jan 2026 08:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768985650; cv=none; b=Bv4+1hdR0HVjFJ0VBkSOQtceaM792dyZXuB/4FmUqpZuDwy5wcn4dI/3sVoWxSdfSIf1Ww+2oLLqVzZeuMogXEmN5PESmQPJRK/P1mnWpiS0jZJ5QoZcoHhJBHxtGYiHHomDr6bbZ8Nhv3INoJC26WyF2/UwJNeRQVV0E0wLFrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768985650; c=relaxed/simple;
	bh=iBq2eCb9yGsM21cA51Huon012CEvpyLY6bdwwNf5N3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QNf8PKw3e2fOsSGg7IA+v9tIPTrR5AZibh3XYI6WWrmIVzeCs1C8w1Mc1FJMZftOZM4hIiaSGs6au5rpUg7+r07UU19aN+XBCTRBVGglBQT7PwClKl0/sAjRxg9A3YLlWMCdBrwawcUvlb5b8tcVtM7z6Wz56HZgKmm0oZ6OCsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=NRwYxfeg; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8227210DEDB;
	Wed, 21 Jan 2026 09:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1768985640; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=r18FX95Gy1+St6A2bMtsgn3QcT2950JmTo6var6SRro=;
	b=NRwYxfegIgmMjNoGAqpQ3d7lv2FlY2RYnm04ddvp79w/R5pxKSNTWnA7nuJeMcIWuUJcqz
	IABC4/0PubVKshMgwJeCJQAAQyURYr6nur+0LGZ9CzMO1DF8TVjbzf+X3Cmm4g7SX4WOZG
	A0WpnLLbyBK3pypCuDWSglBxmdTetNoc2lxhaGunC1oh3HXg2wIJ36yBgNESbtNiiaGiHM
	qGmnVFMlosCpNcl3sQ3vlDdilqPTs4uLckD2N3fDHUbp9kbvPPWtDeh3M1JdPyn1bLqgE/
	ITl2jpf2MAREAMtBNo9H0XY5KWZPjpO5x14IJgYVEIOeguk/VrQCO3YYQfW1qg==
From: Marek Vasut <marex@nabladev.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@nabladev.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Raphael Gallais-Pou <rgallaispou@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/3] dt-bindings: eeprom: at25: Document Microchip 25AA010A
Date: Wed, 21 Jan 2026 09:53:19 +0100
Message-ID: <20260121085347.10368-1-marex@nabladev.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-257807-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nabladev.com,foss.st.com,dh-electronics.com,kernel.org,gmail.com,linaro.org,vger.kernel.org,st-md-mailman.stormreply.com];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[nabladev.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[nabladev.com,reject];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 94C6D53F69
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Microchip 25AA010A is a 1 Kbit SPI EEPROM with 16 Byte page.
Product page is at https://www.microchip.com/en-us/product/25AA010A

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 Documentation/devicetree/bindings/eeprom/at25.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at25.yaml b/Documentation/devicetree/bindings/eeprom/at25.yaml
index e1599ce109165..bb78e12b8823b 100644
--- a/Documentation/devicetree/bindings/eeprom/at25.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at25.yaml
@@ -31,6 +31,7 @@ properties:
               - fujitsu,mb85rs1mt
               - fujitsu,mb85rs256
               - fujitsu,mb85rs64
+              - microchip,25aa010a
               - microchip,at25160bn
               - microchip,25lc040
               - st,m95m02
-- 
2.51.0


