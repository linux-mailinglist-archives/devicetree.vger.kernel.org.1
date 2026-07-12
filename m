Return-Path: <devicetree+bounces-325017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HJjQK9ViU2rAaQMAu9opvQ
	(envelope-from <devicetree+bounces-325017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:48:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5285A7444EB
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:48:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=k9XxvpNt;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325017-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325017-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CD2C304C7C1
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F1739EF0F;
	Sun, 12 Jul 2026 09:44:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE5939D6FA
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 09:44:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849488; cv=none; b=NyBBOCf8U/11b0nIG1wY+BXeQYgwCMf3ohr0+R5gvo8/WAlctncYTxpFLYwocuKfpTPswMh9+uqK8d6Vc0gcDlFUG1uoacFUeR8fN8WDI5j73vBqAsGtgZ/gh2JQl1VuNx7QQyeoTivJSqZtHRq9l3skiEtcRZVhp6TWDOii8SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849488; c=relaxed/simple;
	bh=HLHEl0SO/lEahgCGK95iQtDGGar7Zg/9GoIChI66pAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SRR/O01kbqT/jK+zfuRFBsICHFOxcLKHIRrReytvnIVDotlvXXT1l7kznbJNJJkzx0cYIPy4hSv/PbnIWkNGtksU9wX6hXXU5BPmXLj2G/n5niS/fLOijazExI6QXRqMgCv9HLEBBTa2yhKSPTVRLD7yq/i8EqS9EMnHwA/w3lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k9XxvpNt; arc=none smtp.client-ip=209.85.215.171
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-ca97d139d5fso1605629a12.0
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 02:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783849486; x=1784454286; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fsJLZhqOR3UbjWEM7x+FIdlo40Tmj4551WlKIRMpMPg=;
        b=k9XxvpNtZfHZEPduDYwkHL5X8WNA2aTMkRhOBHmIMCQPuD6U5iUVAPiHM5/rkzZCwM
         rnUIrPTejOh7zUqu25U5kAetMgZMeGhnjO62B+m4N5VEFbrHbYN4bYDHcn/6iz6ILHjo
         DLqgQc3bX4EnXKtdAGDibxVCIij+RGdfkK73QVOhtNpeemAZfdcizpqmMk8iff2J0Xxq
         Qx394J/EvpRQZWaVgP0lc4Fjvevx8WyQxCaucpUkJIn9CdO/wlZ+H8khFDZIE8FRKvJ1
         aU4MLKmnSC8/jAmFN+KsIYj8q68ShF+MFhY/Qtrfxvh48t//TuLNUeLr3Nm3rEi73/qM
         xE6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783849486; x=1784454286;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fsJLZhqOR3UbjWEM7x+FIdlo40Tmj4551WlKIRMpMPg=;
        b=p3Mhew4c8sfFYjawLSDsQNm3WRirEQLRAv3gXNuKA5O/mqG/nohqj9sL2AjQARgBW3
         UtjLp/Oz2IifK0RrwYl3S6zXmF8kQTDBDYuFLKE8bhjIBDbxhRVzcKpdNFCeYB7ByLk0
         fGSh3aMGVpJy59af6SOGKlqT9yRY5e13j63QzeRk9vDPvsr5EkasZa/Z23rH8bcBF7TO
         15tM/ThJ4clc+gZd6LGr+JhlWZY/b4iWVjKF0jJb4515TE6Zm8xzLAA9R+IU4PgsUsze
         vBf4wiyrwt9oTvsD0nrf3zI+XvzurtDTOeuP1xURHTKnTmssOnOXGYEigqKNzJCd1L1X
         MKAQ==
X-Forwarded-Encrypted: i=1; AHgh+RouCcsLxivNKW9UefghtpdqKBhDYT4ni3hxb8F/uKd+QT22NN0jV367DY58yNlaSeu1xBVvIl1Qzgsx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv4yRJYRnpRQjg2+p5E1YQ2/5Xtx1p8oX8dAP9yeC+WfEG9uTY
	OMKDXMu0g9yyYiV1+mqAjJzcitnO6JgtIgg4lG9Zmz7LBwTh/NDnmq4E
X-Gm-Gg: AfdE7ckgjnSHhKNR8bhpNUTttPZFnbPLJJMZDvGYvzsJJrrAxHTLgnOBO3KnNuKOVu9
	sPdNEtC7au7i2ENhnhFTYqRcWEWF+YHpdfOBe5mI9boOa2vEOyuCO2BBfz4KxgtqIC1Pyc+VbY1
	H+m+bZRW8fnNpXK6BQgR9ydTmKVZILhMT0eJM9TDjUyLpGKJy2pwILKXpnU0vk/TwDtXsKs+l2e
	QOEvFJRrQ/Q0Ue66C+AkHq1LoqhwfzIX2Yb8+0NetsEII5yqC/HV3PpO9NmPuv5bqQETmj2QSe9
	g3fbTJWe+TP53yxPpV+NPicWgynGbhc76AlqQ9A0JZF8T1xtwe4TcCDc8tkDNG3YAopRE9/9haM
	LOWw6earATFHa6rF3RsrF9FWoqCvQG1U7PdbJ3PjI4ogzDX2NtETieKlWhX/cgJ878ZKDUegNd4
	U0uI0gptd+oOLBWPKiEoNnofkJmlDkLWBAEwwOAmScQoHhAsQRxjdIuyq0BmhcdBf1SgUvMWK//
	XYeeMblBUMJcIQN4QmchB1wOJCzkxjL8Tnx+ZGVLT/eWd+PX2YJyMmmZufA1Zf4
X-Received: by 2002:a05:6a21:7105:b0:3c0:9c19:658f with SMTP id adf61e73a8af0-3c110d3a4e1mr5501916637.73.1783849485889;
        Sun, 12 Jul 2026 02:44:45 -0700 (PDT)
Received: from [10.160.6.73] ([119.17.57.186])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313c50c70c9sm15268919eec.29.2026.07.12.02.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 02:44:45 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 12 Jul 2026 19:43:27 +1000
Subject: [PATCH 08/12] arm64: dts: apple: t600x: Add common SMC hwmon
 sensors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260712-smc-subdev-dt-v1-8-7763006d57c7@gmail.com>
References: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
In-Reply-To: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=966;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=HLHEl0SO/lEahgCGK95iQtDGGar7Zg/9GoIChI66pAs=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDFnBiU9jNB+rbDxoxi9Xvb3P71LkA7nFa3v9Gqub4l93J
 8e8kNjUMZGFQYyLwVJMkWVDk5DHbCO2m/0ilXth5rAygQyRFmlgAAIWBr7cxLxSIx0jPVNtQz1D
 Ix1jHSMGLk4BmOoXSxkZ5rd+btgXE7VQfnox08sb7/1VN8/jnMda9b/hS2HA3CatJIb/lZ5R3p4
 nzz/29lFbfZUz41od39njBQKp6/fqOe27cVubEwA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-325017-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jcalligeros99@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5285A7444EB

Add the SMC hwmon sensors common to all SoCs

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 arch/arm64/boot/dts/apple/t6001.dtsi | 2 ++
 arch/arm64/boot/dts/apple/t6002.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t6001.dtsi b/arch/arm64/boot/dts/apple/t6001.dtsi
index 6dcb71a1d65a..4fb934d7e71f 100644
--- a/arch/arm64/boot/dts/apple/t6001.dtsi
+++ b/arch/arm64/boot/dts/apple/t6001.dtsi
@@ -67,3 +67,5 @@ p-core-pmu-affinity {
 &gpu {
 	compatible = "apple,agx-g13c", "apple,agx-g13s";
 };
+
+#include "hwmon-common.dtsi"
diff --git a/arch/arm64/boot/dts/apple/t6002.dtsi b/arch/arm64/boot/dts/apple/t6002.dtsi
index a532e5401c4e..0f81fc612a2a 100644
--- a/arch/arm64/boot/dts/apple/t6002.dtsi
+++ b/arch/arm64/boot/dts/apple/t6002.dtsi
@@ -305,3 +305,5 @@ &ps_gfx {
 &gpu {
 	compatible = "apple,agx-g13d", "apple,agx-g13s";
 };
+
+#include "hwmon-common.dtsi"

-- 
2.55.0


