Return-Path: <devicetree+bounces-268592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKHwKnXYn2lAeQQAu9opvQ
	(envelope-from <devicetree+bounces-268592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:21:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EF81A1067
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFC103040223
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A04D38A717;
	Thu, 26 Feb 2026 05:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUD3xXQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AFA38A28F
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772083315; cv=none; b=TU5KasV0w3FzifwRJBPgKNaOSH9j8HRK8w3cFpr0ONqSgerxyvDOO/TrY7MjBc/V429jzWSf7yMID7wUVyCbSqyNedZMFVqSWTB/42zlIN7Y/d4bll4VpREnnIBJ/IToFKwPOmAW1GcIhDS1iFpIvHkNU9fCs2PkgF7VIyL+gK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772083315; c=relaxed/simple;
	bh=ausQJK6m6Lang6zM9IKJm/k4qJe69HY+jYEO4KodleU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CULSr/Of3oL97THHDhHkUkSLkyiWPn1HdK3T6MW90VM4NtE/PGjqpZMeumLHgtI4+8mql+GhGoi1WxEkiBG2WZCLRxOcNCFCahNHLs4UkJRssqInD0VDvZLGFQicSARjBGyv7Af4y5ffOIytVU6KZucO2pAhWGlMqB6cMT27seM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUD3xXQ3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1983CC19422;
	Thu, 26 Feb 2026 05:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772083314;
	bh=ausQJK6m6Lang6zM9IKJm/k4qJe69HY+jYEO4KodleU=;
	h=From:To:Cc:Subject:Date:From;
	b=eUD3xXQ3wCHFxz02lNZG6NsONO3AuyK4kqcBYMzKmoCgbiUPuvYFLU5l0Hs5kVqpv
	 COyUqxtzPb0AUxg3HktJpx4IfHOtpbgW5oEhE2qleVMCZWPQFfKAs6jWby8OnLsG1x
	 uiWFxQRPjAddbvZMEmJ8JKe45k8mxmnLO5uC8fMVlfmI5MNS2DJsyBtjbKLeVXRU5a
	 pRWihlyNtIyi0N5JR5svTLaqsMMA5bXLbyMoxA1hG8yuFdUvpbg6H+QncZRcfzk+vd
	 ldE2bfu5XuwPFP56jTT5i58xsa/burMKTRVM2qsRhmqEJPn4GFOIGMSosRys6m5upB
	 pxdg8VNG0bZEw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: [PATCH] dt-bindings: intel: Add Agilex5 SoCFPGA modular board
Date: Wed, 25 Feb 2026 23:21:45 -0600
Message-ID: <20260226052145.75639-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-268592-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Queue-Id: 12EF81A1067
X-Rspamd-Action: no action

Add compatible for Agilex5 SoCFPGA modular board.

Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 712916b7447a..206686f3eebc 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -111,6 +111,7 @@ properties:
           - enum:
               - intel,socfpga-agilex5-socdk
               - intel,socfpga-agilex5-socdk-013b
+              - intel,socfpga-agilex5-socdk-modular
               - intel,socfpga-agilex5-socdk-nand
           - const: intel,socfpga-agilex5
 
-- 
2.42.0.411.g813d9a9188


