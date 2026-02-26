Return-Path: <devicetree+bounces-268607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGyADATkn2nCegQAu9opvQ
	(envelope-from <devicetree+bounces-268607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:11:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C41EF1A13C6
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86526303466B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF55238B7B2;
	Thu, 26 Feb 2026 06:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="oM4YYV13"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f74.google.com (mail-dl1-f74.google.com [74.125.82.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9804638B7A1
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772086258; cv=none; b=JFr4beSLnT9AOatnFkcxhdvtnPSYxxSpVUOsggWQs3v/WGTJZNO6+z2uVGcjy98RvfPBN80kgpq87APdGkPHVTTjt8DNTrkX3T2a4x/HDoENE8zB8DpjMRqautBaZPzd8prvSMHyPjKvmFxubFPrMcS4pw+LM4uV2hgyy3ILlGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772086258; c=relaxed/simple;
	bh=pFZiHnkBN5Lio39P41U18guYn6en/j6L+UEYS0RuXNI=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=eCoxxJLb5DzYD6i0D5SbXqgCU/xzvrwwQP8hezOOKKbkQP+8QCwL2zEiL9kPGoG7i/REGA+q+n4dNjlzLH/Bz9xO/hBIvVLSuWOI8e2UFeLKyHmKJ91WJjqju96m88yDxctAZeQ+KWxkWrnwlUtFLsX6pr89DbKJmQFktHOG684=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=oM4YYV13; arc=none smtp.client-ip=74.125.82.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--badhri.bounces.google.com
Received: by mail-dl1-f74.google.com with SMTP id a92af1059eb24-1273886efc6so517006c88.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772086257; x=1772691057; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fcVZ4BQFpRmLHwxh/g2dVLrCTqrD1Ac4Q97XzCkzEyk=;
        b=oM4YYV1366RmzHXAG590ORLBCEGHT/jeSsUvZTWYnL/y4rT13mPnrwEkC+mSSvM2iC
         5X+ahGExCMxOqsSLKES83mxnIzjz9Ln9JKVAEgwY35ijtXL4Q9FzijuthWTACM4eiA0w
         XbtIzeSrsuzjoi7epR3XKscWGgZNYURY6H6vAoCvaZ8hL0dSW0KH0hNw3qK7oonCH3UA
         XeTP3N2CKf4s9Fgti/8VzcyYQJg/rx92QdmUnNQlZnk9lVnLoH8QMURVDC77sp9F6QJ0
         IjqowKHq3oD1I9QGwaB9/xAsxnDYu92diSzdcGiUlxHQnJRXtXhEje8lIYvXZIyLyBPS
         KL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772086257; x=1772691057;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fcVZ4BQFpRmLHwxh/g2dVLrCTqrD1Ac4Q97XzCkzEyk=;
        b=g7zxWqc1qE6GnJkYsKNWSkbl1VJyVlHpMLNm14HFLublb5n+rLWPJWfHSBVbzFVJaq
         41EQZ8tno0h6bx0UPyG4JPCBXdOYet8e5zcV+qZKqbp/bTaUd/+BbK6R06s95A7uHLqD
         p2pRLw0yHdjZpoeeqNYrHfdPFIUNCJUZ/uboVUdUj6PDlQ/hrdLgF6MtEJrj4IvPAr7p
         987azz2yO2Dr/YdYPX7a5aupOiJklm2QfNXXwv5SQPq8WPY4MqeA4ziEo9rw4jsG+HlA
         qAva90p0sGPUZBtPCz8La9sEKO2bEUPiWG1OPxMEL3M/Q41PD2cRfIAWs3C/REqbv336
         qSCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWipoFjGOYPTTZVpmlXo8ow4OWdKmgJB6TKFUmYcp9Lx0EDmY6eKg9YPPtkzdvDEFGoZsy5Cvzq8AhN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp2Fw4btmogM23utVGAT+5MMFQL0zAZxHP/6E2WcINt4dOG5Ql
	mNLpxfplJjCeuHLTnwH1N9VHzRhGdTlwZnAvW1YVr/l0y/ihkWDVGSTfiqzsNCoa1mdetFWC+nh
	YeuynbA==
X-Received: from dlbur21-n1.prod.google.com ([2002:a05:7022:ea55:10b0:127:8aee:c50c])
 (user=badhri job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:11c:b0:119:e569:f61b
 with SMTP id a92af1059eb24-12786963bc9mr1496401c88.20.1772086256595; Wed, 25
 Feb 2026 22:10:56 -0800 (PST)
Date: Thu, 26 Feb 2026 06:10:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
Message-ID: <20260226061053.2596167-1-badhri@google.com>
Subject: [PATCH v1] arm64: dts: exynos: gs101: Enable AVS APDO
From: Badhri Jagan Sridharan <badhri@google.com>
To: Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Amit Sunil Dhamne <amitsd@google.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Badhri Jagan Sridharan <badhri@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268607-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[badhri@google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C41EF1A13C6
X-Rspamd-Action: no action

Enable USB PD SPR AVS for gs101 by adding SPR AVS APDO to the sink caps
pusblished by gs101.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
Depends-on:https://lore.kernel.org/lkml/20260226055311.2591357-1-badhri@google.com/

 arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index 93892adaa679..5a689be61432 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -174,6 +174,7 @@ connector {
 						| PDO_FIXED_HIGHER_CAP
 						| PDO_FIXED_DUAL_ROLE))
 				     PDO_FIXED(9000, 2200, 0)
+				     PDO_SPR_AVS_SNK_APDO(3000, 3000)
 				     PDO_PPS_APDO(5000, 11000, 3000)>;
 			sink-vdos = <VDO_IDH(1, 1, IDH_PTYPE_PERIPH, 0,
 					     IDH_PTYPE_DFP_HOST, 2, 0x18d1)

base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
prerequisite-patch-id: 4dacd8bc550e317d67134d030814765fb9f4c6e1
prerequisite-patch-id: e863378fc602b6bee2e9fdd8c568003c00b2a38e
prerequisite-patch-id: 202a9e1e9cf27a0b9ff7ebea76eb45cdac2cb581
prerequisite-patch-id: f3817c560d0e701d7499fa1fb9ee40d22816c09e
prerequisite-patch-id: c071913307a6eaa417d1345485d7a9c165d40834
-- 
2.53.0.414.gf7e9f6c205-goog


