Return-Path: <devicetree+bounces-262654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMPoLYNKg2m0kwMAu9opvQ
	(envelope-from <devicetree+bounces-262654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:32:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47782E674B
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:32:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1961302F38E
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4F1389DEB;
	Wed,  4 Feb 2026 13:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gLqCBmL+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76B2376BE3
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211632; cv=none; b=kNc/6uCzNfa4fw8jtoY/w0BbqRYS2zmOP7ax2q3zKizAPdP/I+6fl38ilAgESGMQBMmTiYZHwvJEnXjwogTuFTeNxLfpel4XGdpm9sHOyPbjVrYULBtJJeagz1qSUq8tTHuSVU1FEwr8bXi9SdHqzUGvudMfnXPW2cMBa64Ouc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211632; c=relaxed/simple;
	bh=uEzLtpceybLfw332AhOTwLVADotmlIOh34rWiIlsAno=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jra54L8Lr3aHe57D8+07m5IHH91OB61XzNK16RjCsvQNze33Uk6tuMHkZ1/Jf7c+qT6MMpMv1K/RvLx/fZp08sKwk+FgmLSPr8YNQsxC2wTvV38eLyJsRllf671nMgU9nOu2OlQim2zC7JB+HIUvZjn7ziGu56elsXzOVVMmPe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gLqCBmL+; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c6c67bc8b9eso456925a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211631; x=1770816431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=gLqCBmL+B4Wn3iaHtdWW7Pg23seN0BNIB5Zg02egUn6wDv+2fJ1/30wW1iySZoWEqK
         nG4IdqtUl8KOrEtL6WeMPkIYRuM/HSorEPfH64Rns1k4DoGyc7JR+xyLuLJ/GMmJKuz4
         SczRRFnrovak4D3CIk5XczGYP++5MIsJnqYijcJGD/t97+BKhL/OzDFarTClBtRCzBFP
         NSKyyLIAH8ztGNr8ckDgZfg9LKLpPMljM67xCfm5KQ6zOugxUNekKjNHMgOXSrtGsYoa
         l3oWwYvPptw2u0aaNeoUgtlS7IBXnlfjmFEdEZaMOpwdA18e9Yak+BJiAp7bXSqZR35j
         Z54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211631; x=1770816431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=MlOdrTblyWzOuVmSzcq4d7+9qLagVLC0frLqQHLc4WuvLjE86/GHw6QeIxasqO7ysW
         gXEzGQ+2R3C1HKUb15LT3hBbq3+R39Mr/NuYs+ZkjoRErNpkljFDNQEmq4rKlE0yvO/P
         DwlW1tSAQxEhbQaq9yCbh/cXHpBFwQkF/180qTSHZ/psme7Hkmo3u9+dMOpsGKgs6WIQ
         wS6KGyK1z3cmIpG+tHhchsmojtFHHskSW2yBS0vlj7uOapZrovQXtF84jZvgx3dGSbbh
         mnzCX2bZxHD80hB10x127irGh4tSzkEpx6Fa8vuKjZpIVRrdQr/mNshSTjniD0K9gF1N
         y9+A==
X-Gm-Message-State: AOJu0YyXkrTu34mtI8VXJW8FtshVAaKdRMifFri3xvCdWTQ5t6jxsf6c
	n2jIHHnGHi85ms8y5lsQCClS5dcGU7c4DyQdZkgUfxSla6N8YnuU1Pz+ivCHSEd0
X-Gm-Gg: AZuq6aIztnIRG0C4XWCs7s7lgbQeN8Qdlzdh5LjuQ9ss3Y8MHsVsZndCDPutI67QuvK
	p1VkguKJv8Us7APap6/U5Kj5/WFCAvKLlznC7YT3h0jYyiMipGlBM01+M9dJsjuaS1U5zZ4B7hH
	s7l7T0SBI2KtLtte2ym5fpsr1Uw6haRTLIFyi/adLl5GWfvU3LDwVG8NQVMkNAPBc731YBCcXmo
	dlMa15RSxGMgDuC0z/8wJtwsc35+Z067ABAlm6g34N7/7lbaSGJvcvjeQlhp4PkbGc28Jq7ssoi
	OrFXB7NQxNYcIIbL8h2asKr/dvZ03CNTooj531nPNsRFxIWtNCD1rt7WR5mfzIHopWRzsWTRQcx
	rEo9Xs+OiNF+GKqJ91P5oOk3uP1kjWz6+kJVSZJeZL9Fe2hfta+BirZ6+Fzngg6bwHppxBQ53NR
	J/C3AiTMib
X-Received: by 2002:a17:90b:554f:b0:353:2e1:95f6 with SMTP id 98e67ed59e1d1-354871bd5cfmr2596812a91.32.1770211630997;
        Wed, 04 Feb 2026 05:27:10 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm875763a91.6.2026.02.04.05.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:27:10 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Wed,  4 Feb 2026 21:26:54 +0800
Message-ID: <20260204132700.329894-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204132700.329894-1-jerrysteve1101@gmail.com>
References: <20260204132700.329894-1-jerrysteve1101@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com,microchip.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-262654-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 47782E674B
X-Rspamd-Action: no action

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..49607cf2941e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1199,6 +1199,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.52.0


