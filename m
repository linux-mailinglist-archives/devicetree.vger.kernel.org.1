Return-Path: <devicetree+bounces-268668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KB2ZOoILoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:59:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A95E1A3083
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC84F300BC7A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6569395D8A;
	Thu, 26 Feb 2026 08:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KBt2v1xm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8BE38945E
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772095746; cv=none; b=R8bpaBvlzS4kEMhBFrT5aEzyQoh5scwdtN7YqMryLzSkbpmDynUGn/S79+ihQkzkAbfnSeFSQ3bsDXTgC9qCGjPvFEXoOjklAB6O/Ug0fCE03Yv3XaUqxLDyTbCCVNyPM3PMfe1GfD557h76wXSNjAxbqdvKfFvYbwrIolOjbNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772095746; c=relaxed/simple;
	bh=SXgeVHiR8fhOHJmmAi0jVLf+hEeuVP7EPmwprBslUp8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DaYs2ywLL+ytogd6mAyI9MB3nzBDgbTORv4GvLmamqudhv/JFpoKtVZ0ca6iagOOUtgfA7HClpgNOqaUZUMPfivfxsWzKrNIjcXssUkZEoxhvMWmCkhx9DenmHozinafOF7CPVnrawkvbMoIkCDVWeZC2F3pqLvDjD/x0Q26bZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KBt2v1xm; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c7059b9df33so208093a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 00:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772095741; x=1772700541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rrsbMfvVp2mlT8uZFPdqeEkocHGWkOVoRTFC4HeZudA=;
        b=KBt2v1xmI7BZriIQBcNMBaesuGdfRcJTAK+UD4yPrQBgel94p4xzU67OaLswQHq8To
         3QPQEPIa3I5gg7ejXFAIFxJL9uP404fTo4PoK9ONCBejtdeU0K2hX37vQw0OjjNOVTjp
         ZQqsxE9kTkqtujlzG3Rdp4H87z3j/+5VHob0kAHea6vNB8Y5gPCIxa7EH4tXij1NQZSG
         Jn4zl2ALX8BL5njK4tv3qQWWCtlA/1fYARINlfaEEBR18Ma7Ccwn/mqwaFjeGOPugyzk
         scxtACkgMFass7318vusnu3QvrAOuRJagc3Mc5M0T/KWiDf6ScH/GrUqPEQ+qgqsa/Wc
         L1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772095741; x=1772700541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rrsbMfvVp2mlT8uZFPdqeEkocHGWkOVoRTFC4HeZudA=;
        b=ESyBdf5uwd5vw4JMr5P5vZxN/8e1NKzc7sjyI0oU0rGTPL1/UkTtbG5htHlTiCVZIz
         OmSY1+ii1hhvRehM0VIVC/nXGI97/NIVIzMta07AHfFw5DXuOvnqYVGnwJBSxVK6jAWK
         oLEL6RBa+XlL744m6LIeykpCvNFIy03zb60K/ymah/+u6oejQ0QQBeJnhUXZjy1xxiKr
         s2RnwEcYbfou4lVVjpFyO7w6ynlDibiIPc9R4fE2oav5Nsp+hRKxEavQQW1aZfszBCZb
         GkUeFlRCXLUW0jIwX9JJ9F3GeR6tDTh9/ZS1Jl4BMbjPWgCPe6T7p9DEEsuSUTAcFH4u
         vJOA==
X-Gm-Message-State: AOJu0Yy+XB/waEV03lzx1S+gVDCJYKpYu+b6ByFCWc/1361PdxGWJhWn
	PByaBwIvhoRkeGnOrkLMNQqOqe7Qm8crm95oV9drIOaa8XDO/6hkcuwEpvAoiyBf/GY=
X-Gm-Gg: ATEYQzzjsgDGNASKFUFlMN+ULOrPPJ3lN+f3X/VboJ6YvbeYAFvy/9+Aq+RFOX5TnT7
	Cq0idoaJn2JeOHETyxjzqJTv8y0+Zbz6TiGZsQKecsQ2SI8PxqsPNAtPuU96/ow/VVyd5fCizo6
	5vOPjIcgP/36kv9KDpFRjXUOfmI+YXmvLYK68KMBW75By9xusWzoGzChX1vO8r9eQITnKOacjH/
	8MLxzEGVBRWdZcJoOFZ5cRqgRrTi4aIh00Xvjchu+MZjY/ZeZU4jHvXx5111GSK5ph2Vsl+5N8l
	KIayz0bDKub6hNXSie4s/76nnXm3zN4Ei4sh6wTQuOmgVOJmDluZRRBXp5cyjCgR9bC0Azv1quE
	yhTQAv9hzwjg4asFqJx3Dw+QqhRU+8TofYwbgf24w1PVycyU5njvNcoe9onUlmIVBIvOCUw1Vnc
	LifbEa8nxatiYCexW5F3SPq1I4qlwzg8e/Yu5j
X-Received: by 2002:a17:90b:1e48:b0:34c:2aac:21a7 with SMTP id 98e67ed59e1d1-3593862e00bmr2064283a91.7.1772095741512;
        Thu, 26 Feb 2026 00:49:01 -0800 (PST)
Received: from arch.localdomain ([117.147.91.218])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa848471sm1342441a12.30.2026.02.26.00.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 00:49:01 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Beijing UQ Interactive Co.,Ltd.
Date: Thu, 26 Feb 2026 16:48:45 +0800
Message-ID: <20260226084850.417731-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260226084850.417731-1-jerrysteve1101@gmail.com>
References: <20260226084850.417731-1-jerrysteve1101@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268668-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 5A95E1A3083
X-Rspamd-Action: no action

Beijing UQ Interactive is a company focused on mobile game development,
global publishing, and blockchain-based cloud terminal services.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..2bc2ed60613f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1737,6 +1737,8 @@ patternProperties:
     description: United Western Technologies Corp (UniWest)
   "^upisemi,.*":
     description: uPI Semiconductor Corp.
+  "^uqsoft,.*":
+    description: Beijing UQ Interactive Co.,Ltd.
   "^urt,.*":
     description: United Radiant Technology Corporation
   "^usi,.*":
-- 
2.53.0


