Return-Path: <devicetree+bounces-286125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EfcH1GQ12kaPwgAu9opvQ
	(envelope-from <devicetree+bounces-286125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 13:41:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5143C9BD3
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 13:41:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F348301AF7F
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 11:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B374A3C2774;
	Thu,  9 Apr 2026 11:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JadE2iIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970A13C1987
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 11:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775734839; cv=none; b=cB6KvA0IFTxBMZeiLcfBiLYlm1q2vH86/b0Se8v7OTDTM76kJpuCzmgGEjMcZvZXp/QVMhwyg+jMaDtJauyVh3FHnemBpFuvOxBza3CeF4d8BhFSKdbhZv/vBmX4CEUv4xw8WwTAkzJHhdrWxiBe4GLuhPd5gTI7MWJ2H9cxCAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775734839; c=relaxed/simple;
	bh=Hk36uMGemdglD1N155LHlYS04DfWcX4jaFk3m0XEMoY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NqTRxO+gOzi1jKfRiLsxDd7tQRT6R6L404tFlxLq92ZHXiyFcuQdGoNDY4/NjqYuka2B4oFy95plOW2frjdzporJ1w3nShLYnd1IJ1ItLLn6vpVBkWjm2Ciwajl/hqdXNGuoA2/7IZj4ZcyjZYqUBAAOOgXi0p20wpgdoYwAGsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JadE2iIN; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c70f91776fcso357711a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Apr 2026 04:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775734838; x=1776339638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aGQ0vmmUWIBnqyUaESvXUUOwisanulkIR/QFZEP+UTM=;
        b=JadE2iINbUqWTTfU+pWA48naeX0tLWC5NSIA9ENELj29R0KKdAT8Is2/i3FnmF2bH0
         3gHaHNo/2co+GviGdtHNy/3/wxHHYTsFOcArunhOBS7TuEXN2fxiITUbtMvbZLJpz2xT
         pCOoXJU9N9D4dMqwtC+vxF5XiLfsPcx6IURbR+l01VyS/8lvWELmD9hmj3W9cB5nylip
         89AD1MzL7xpkWeMaCZvC/iV6ssXj4jWOcWAGeyREMsWUqOwU+9t/0zYtl5dBiZLO0fgR
         0QQ2YZAYnGO9kY5dKkV41i5eCubsvyO89nA4jfKRL9ATJ9HoqytnnFRK9H4zznuHklfK
         O6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775734838; x=1776339638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aGQ0vmmUWIBnqyUaESvXUUOwisanulkIR/QFZEP+UTM=;
        b=ZzRQmRu0wg6bKaSlbyKF+HK0ISSzhsfoerNtpzxYDCMaRjeiXGoVZ7+CCvMmi3PSiP
         rVkJPZtonXWIP1SvS1NqgoU4ah+nyONFLd32zeTGneRRzwVu9qRTQaLqf9a0i6rpRs5P
         HTbSaNXesFBOh2+dmLT5C+K1imuBHFnU5+ZmktuvEQtHCfpNWNwY9njkRq5UxT4UBEIH
         A3bJdBkIOnUItHN7D1eKis50p4/BfieFHqvjZfcKADz6beARmQ1hoX1M4A147YdUJltA
         nZUm/kCZWA3MJ4/Xvv4JsX9P8Y2dRZIemd4wW89sKTq2vAljX9D2D8tahvmVyDGM/3ys
         KlpQ==
X-Gm-Message-State: AOJu0YxhYmt8hztxxA6mUHaiIc0JZ8sqlDcOaur6xe5de0CpA7whefL9
	ZuLIl1KmIPrMkT0t5HdbVQeYbvw8qYIE3NGjjrpPu1fGLGXnhF/Mfw7ThyDo2xyP
X-Gm-Gg: AeBDiet9Z++gNUTwJQtVtEoD7e2bPz1dGXK0gHbDkgW9QvTQW3G/J92pg3+HaZuqN9C
	AAsA78c3PQvodN+EwJqYGnsGWwaMK6dyFAvbrKjW19117eXizCWMJX/Yn5DpOhH5DM/PZDiwQLL
	v/t8t4pLtEC6ZAv2YzxsSTXl0uJkA8u1Il0noLuS4SCQVj6puh8pSsAiOtU+4Tk1Vr4u3hdtpOy
	OTeq7nn556wVfvWAcUomoNRcy7SOTR7tyoe/AYArnlzdmQTEdJIBWcIUQMiA8Yj159yc6cLAiBR
	cB3fVfZssAB1MbRFdVUsSsMN+JPhgonrerH92eipd9OB/bocu6JFlbM37Dt/V4fj8HVuaPLpeWU
	ZiJblAnycgEkUN0UJtdCsbfXk/iEcizNwRLe+6rSIde3gzyvK/iS4VTyVBrqylS/LLE1NGOpgK1
	UtTQJNhOqdruJ9/UwHXF/ygIpQipeA0A==
X-Received: by 2002:a05:6a20:2e0f:b0:398:ae03:722f with SMTP id adf61e73a8af0-39f2f0a28e5mr18690906637.45.1775734837794;
        Thu, 09 Apr 2026 04:40:37 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c76c659a218sm22438545a12.29.2026.04.09.04.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 04:40:37 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Date: Thu, 09 Apr 2026 19:40:26 +0800
Subject: [PATCH v2 1/3] dt-bindings: arm: aspeed: add Anacapa EVT1 EVT2
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-anacapa-devlop-phase-devicetree-v2-1-68f328671653@gmail.com>
References: <20260409-anacapa-devlop-phase-devicetree-v2-0-68f328671653@gmail.com>
In-Reply-To: <20260409-anacapa-devlop-phase-devicetree-v2-0-68f328671653@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 colin.huang2@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775734833; l=882;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=Hk36uMGemdglD1N155LHlYS04DfWcX4jaFk3m0XEMoY=;
 b=qB/7HZdK28u0LjywcyJEq3d12szbQ0c6O5GBzjpklCFTSOFvhUuAZyLpt/R6Mh3FAG1XgBFRw
 NWekkpuc2kNBfOgumwL7gynPmQPmf4JwbQoRS8wAgLuCqgFNC6+wowz
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286125-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.986];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1F5143C9BD3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document Anacapa BMC EVT1 and EVT2 compatibles.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 8ec7a3e74a21..c4b87c014941 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -84,6 +84,8 @@ properties:
               - asus,ast2600-kommando-ipmi-card
               - asus,x4tf-bmc
               - facebook,anacapa-bmc
+              - facebook,anacapa-bmc-evt1
+              - facebook,anacapa-bmc-evt2
               - facebook,bletchley-bmc
               - facebook,catalina-bmc
               - facebook,clemente-bmc

-- 
2.34.1


