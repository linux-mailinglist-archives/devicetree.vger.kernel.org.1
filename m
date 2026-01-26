Return-Path: <devicetree+bounces-259617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGqkEqq7d2lGkgEAu9opvQ
	(envelope-from <devicetree+bounces-259617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:08:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3108C5A3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:08:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E756303013E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47C4927816C;
	Mon, 26 Jan 2026 19:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="blxmw2oO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFDE26C3B0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454489; cv=none; b=AEA/uoO4mgTe58UEarPQCATGC+m7lFoamF81j+jOdQ0Yz3SBstoClY36tdgmS70RH9xNbQl4Lxy46C7CiGWZE8NZcpZ1/MfiauMCXc0hKRjt+McBe+nKfzFIiik/ERUKsByjWIC9oPdjDv0F0JTvq/rSUIopJI+hPc9STPF6aPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454489; c=relaxed/simple;
	bh=jNDdUruLQ4NJEJ/OpjZ8iy5uqg+2jOYXB4pKKupU3R0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ah1e4JnuUOQejzpmruvphtqOi6Fpe+Z/Pi5/otKgjZHje8hZSNn8NBXgASqy10pZallBaebfnuEDTFUBNUhfFkWhFyqUWaeBdKtaRolL7+AIA9VoIgFR9DYXTCho6RW/F4/J+GpF8jRBGNFVdaBtoSLXnTTTNPedZk7k/oG3pls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=blxmw2oO; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-4359228b7c6so3120784f8f.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454486; x=1770059286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WW/HnbEVXP7K0ODU5oJ6HSJhtEpR7FF8JH3bP2DOemc=;
        b=blxmw2oOAnEnW4koD+G0DNbihcMKhPRHeXu2bEJ3lL3+XiLLlFkjMFW10IFqo1CEr6
         cLs5yAHfszXLpvGuSdA/TOCS4NQjSGdW7hekY1oZvJKfioQyhT/iBl97Qwzf1XhqMgjZ
         iYUw9ObygAyxwgJ2KrG4dwLtm6RCUUCHgmii07kdJXUin1waNZGC0qOSUCDFqEoiukjJ
         rHeKiggNlhnneaf6xksI2rLX5Ir4iTW4mq3loPMFiRI4inkva0JjKwkT/qJpZ5efbmG9
         TGpHIe6VU+R43RPyP4HRkxFJOz2HY6PK7BIPGmjvUGJHN2pO8ulilAvdlm4G4+i+P0wg
         M6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454486; x=1770059286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WW/HnbEVXP7K0ODU5oJ6HSJhtEpR7FF8JH3bP2DOemc=;
        b=bOZP9kmyADglNBU17iDSHHuTUVpmB1bZzwJ56/pXgLxOj4fOEeKzbPaPYEXZsDwtWb
         EDBlJdKm7cxQJvXdfB1OTuH/7mQHN/5zmxDHRcPXHPta6zZuZ2cV2JInrjb45hluauTS
         rFnsI4Q0gm32u0ZTfyOXG0o0T1cFAWIc8BQSdYLqR1xC4RcD22JxysYcNVk8yyQVQgXW
         mmNHueqVScWKNrvKKwtgY6PwRLNzhEumO1bJ8Mcx9EwOQBbMi67PyY+uftOgngqP+pMD
         Giz9MiMncFri3hSlAMMPkaDWCVS7c5wgG1NAEWPfqRlVsnB4p1zvuH7Qm7zzprro+4ih
         JV3A==
X-Forwarded-Encrypted: i=1; AJvYcCUZzesa6QuBQj2T39bx9DceN2BymgH1fSZr2RFbYVi813LXI9LpTU5LgEC/x8DajFK6x2qm2LjZ8Y4G@vger.kernel.org
X-Gm-Message-State: AOJu0YyY3KDNgidY+NknKEBKKxvuQWQmTiL5oPGPYREPjbaZxJQbD9LG
	ODAy8SZT6y5C4/+IzfrElY0HUQ1bCXDei17FWDqfzW2whzAK+ASDp/oc
X-Gm-Gg: AZuq6aI0G+wDEBVKsoRJtAfrthuTrhyAnjv8Ja00uXfzGNCJeKtdCWEVOj47xq0oi9q
	mWc8V5fx3REYT8AcFV/gwPrJ8+K1kJATN3rh9YtzNdpO5MHaNzHmHN0cn6j97p0YKnstebaAwg/
	QFMK5oD25wF3vcO/7Y//LjPviqbfioEs3gN40Ii0eJccUdQ/MFQpFe5OBhW8xqSP1dyxXS3jKLn
	IhbCc3FxFqhIRkk8ojRJ7jAlnh81qxXg6bAj3HCmpTdeLw0Td2itkDuavk1d2o2l3OEbkmSGaeE
	EOIdn3KKWZrv7134NXT2KO2Zbaovn4o+aSj0f4Lc5xfEIZfP1zwPris9Spyt5Ak/PRmJSULpu/r
	nCxqOd/r7Cigys5U5pXkZU68BK5Vra7J7WS9fLna87pPDb7/Ebi9xstef/aQrWiSrJZJbRQNau+
	o7oQqWHl8y7XA=
X-Received: by 2002:a05:6000:40cb:b0:432:4c01:db00 with SMTP id ffacd0b85a97d-435ca145762mr9273007f8f.27.1769454485769;
        Mon, 26 Jan 2026 11:08:05 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bf8sm31802030f8f.11.2026.01.26.11.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:08:05 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sumit Gupta <sumitg@nvidia.com>,
	Dmitry Osipenko <digetx@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 1/5] dt-bindings: memory: Document Tegra114 Memory Controller
Date: Mon, 26 Jan 2026 21:07:51 +0200
Message-ID: <20260126190755.78475-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126190755.78475-1-clamor95@gmail.com>
References: <20260126190755.78475-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-259617-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EA3108C5A3
X-Rspamd-Action: no action

Add Tegra114 support into existing Tegra124 MC schema with the most
notable difference in the amount of EMEM timings.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../nvidia,tegra124-mc.yaml                   | 31 +++++--------------
 1 file changed, 8 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml
index 7b18b4d11e0a..f8747cebb680 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml
@@ -19,7 +19,9 @@ description: |
 
 properties:
   compatible:
-    const: nvidia,tegra124-mc
+    enum:
+      - nvidia,tegra114-mc
+      - nvidia,tegra124-mc
 
   reg:
     maxItems: 1
@@ -64,29 +66,12 @@ patternProperties:
 
           nvidia,emem-configuration:
             $ref: /schemas/types.yaml#/definitions/uint32-array
-            description: |
+            description:
               Values to be written to the EMEM register block. See section
-              "15.6.1 MC Registers" in the TRM.
-            items:
-              - description: MC_EMEM_ARB_CFG
-              - description: MC_EMEM_ARB_OUTSTANDING_REQ
-              - description: MC_EMEM_ARB_TIMING_RCD
-              - description: MC_EMEM_ARB_TIMING_RP
-              - description: MC_EMEM_ARB_TIMING_RC
-              - description: MC_EMEM_ARB_TIMING_RAS
-              - description: MC_EMEM_ARB_TIMING_FAW
-              - description: MC_EMEM_ARB_TIMING_RRD
-              - description: MC_EMEM_ARB_TIMING_RAP2PRE
-              - description: MC_EMEM_ARB_TIMING_WAP2PRE
-              - description: MC_EMEM_ARB_TIMING_R2R
-              - description: MC_EMEM_ARB_TIMING_W2W
-              - description: MC_EMEM_ARB_TIMING_R2W
-              - description: MC_EMEM_ARB_TIMING_W2R
-              - description: MC_EMEM_ARB_DA_TURNS
-              - description: MC_EMEM_ARB_DA_COVERS
-              - description: MC_EMEM_ARB_MISC0
-              - description: MC_EMEM_ARB_MISC1
-              - description: MC_EMEM_ARB_RING1_THROTTLE
+              "20.11.1 MC Registers" in the Tegea114 TRM or
+              "15.6.1 MC Registers" in the Tegra124 TRM.
+            minItems: 18
+            maxItems: 19
 
         required:
           - clock-frequency
-- 
2.51.0


