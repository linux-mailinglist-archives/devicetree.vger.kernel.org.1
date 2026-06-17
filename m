Return-Path: <devicetree+bounces-312807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G6SNLf1JMmq6yAUAu9opvQ
	(envelope-from <devicetree+bounces-312807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:17:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D50E6971D0
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:17:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Xdoa8fBH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312807-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312807-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF04B302795A
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 07:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F563B9608;
	Wed, 17 Jun 2026 07:16:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B013ACF15
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 07:16:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781680599; cv=none; b=oyh1hzcmiGEs0/Q2Qv5XG0Av7arEA0/EPLrXAiBEYkql8I0yCcED1fsgtrcCMkJ1nNsgHoZMUM2JwvPOHTng4ZvmcEgMCfQOU6cz+SvcFvqF6RB9m/0Cr7Ox22tKzRYlDzCcYp12xCPiWZocPU4lqDL0EtDWdQfXJ9UOhd0iUvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781680599; c=relaxed/simple;
	bh=WUwH+wmJoYp53+Ha9VE2n542T3IzX/5L9HXbhRg1Qgg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QIFjJKcB5Sy2baVtr9bgC12TJ9rbXwAwR3p+IzRcBnm3N8wOEYtSE+BEg+dJSxwJahkGcrM8PJYe3LbJ0wmRK2UhZ16D3eObrzVEP28z4mrWt1UNJ3j3Oy235tq+ue2Og+QmcrNPWEIXA5o9I4seOu5ZT41PqwmLronAHjEe48A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xdoa8fBH; arc=none smtp.client-ip=209.85.215.180
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c8584e80d59so2192221a12.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 00:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781680598; x=1782285398; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ADqdY8CIvaMdQ2n5TRjD4GwIiNbtI/XRmbATt6b3w4I=;
        b=Xdoa8fBHTZMINZqx1kOl4aJZUvR7kSdivIblbHbD5etL8XZhuLRX0y77TmfbqWWQSf
         nsFN5GJcLsYdu+iVxOql1ewTKEx/VaDCp4lyCljYV6kXxVgvjR8zouHeUs3j0vsBTX6H
         jOlCODVdJWfPjl466wJKf2cxohrhHQBuKa8IgY1OpHtnxKy17Dfe3tjCxTAlD3IYyWvg
         3nW7DtrTS2Y01QqvjTtRaNAYhJoK34225Gs7PAk/ecpto8SXa2bFfFbozNZ8xroSXt5W
         a7m+89CO8O3r//HTdRpdvatxkocfPiIyNXp4zA3EiGl41aVTTjnXaGMKItEHAMgL02rQ
         eZ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781680598; x=1782285398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ADqdY8CIvaMdQ2n5TRjD4GwIiNbtI/XRmbATt6b3w4I=;
        b=nVlOY6ykKyQxCVbuMsEDmZxp4hvCbSZuVDlSjTTvJWmlwe9wmczVEtR2fIhI5JA2K6
         6IiOGY/rzrpbmwpx7uO/7VYDNXKQh/ROL4lrYvDQCtRggj6ehQajTwN2CT1UZqnDabgh
         bMNo9AjLTjdm6pUKKWCij3Z6Zz0p2KFNakpz8fYCFswfxDF+fs+7kkXMQKeH9dBSdMS+
         9y2jgHT3zmyYnyOpLiGOYkBfaeNzTZxCddTqxqYhwPmwSNtLBuft3w9zQzCtysOnzzYG
         Z3HrjvR8uzd1+1ybQA8G76N6pfXF1CH5w4SHWJsMHKdffvE5t3ZCpTkz+lCaJxQhH3aX
         K24g==
X-Forwarded-Encrypted: i=1; AFNElJ/wHa2WT+l1IQPQBRbB5uDDxznqWQw3TJza9B99ai2Nv5G+HUedxBsN1NkS+mHK9mm+PxFYNkn5OENS@vger.kernel.org
X-Gm-Message-State: AOJu0YyuE0H8WTVP8SCs156Tyh7MMKpZ3MjIWkOj1RKoZ9fIqlPfuLAB
	INP8ZxT7e6aW8l4nWQqEDghW9957WIv+9LP4iarEHta2JT7uyfg6naZz
X-Gm-Gg: Acq92OEguw703qrHAzz76NgrwPxyvK8dQ4VEf6qdMFNVRsBoAK4FRIG9sLAa3Wasx6O
	FCqJjFhW6kn9vK/bElq0Q9n3AcKVk+TyW6Blzg7qx5yHB972+nehPde/tTs6prQItoJtKpFahJt
	GYoDWM12bPKTai9RT3EvNlcA5sD0Oub24dvDraYonzrzl96mCR6K0jdcbLablkEvCYs8KM+gUjd
	4yc5KYDwcskn/vi0OIgqrhaRxAeIP2SW+Wki0llsTOrvlJ4/ogY0cWFwKGt1Jc2vz/yKnGLEro/
	xXVNce/SoT6r3i6oYpj7RTKC5SPOfhvZ8EEB/84Jd+rrrU1sXanwNe5NnPvcR/H7PueLbQ3W3/A
	Zx2v56yyqgfAIqRj1TEZASJY9Ah5ZqF9jJSYuWvJIKrCtdLoz8DvkILwtQXBoF7sQI5WbtMgFPr
	4CAs/xxHiZ2A==
X-Received: by 2002:a05:6a21:6315:b0:3b7:d9d6:9fc9 with SMTP id adf61e73a8af0-3b8bc376001mr2966185637.2.1781680597498;
        Wed, 17 Jun 2026 00:16:37 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a52:c491::1002])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c866519faabsm13653439a12.24.2026.06.17.00.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 00:16:37 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Arseniy Krasnov <avkrasnov@salutedevices.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: amlogic: meson-axg: Disable pcie_phy node by default
Date: Wed, 17 Jun 2026 15:15:58 +0800
Message-ID: <20260617071604.635627-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260617071604.635627-1-jerrysteve1101@gmail.com>
References: <20260617071604.635627-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312807-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,salutedevices.com];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:avkrasnov@salutedevices.com,m:jerrysteve1101@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D50E6971D0

Set the pcie_phy node to "disabled" as it is not used on some boards
and should be enabled per-board when necessary.

This change suppresses the deferred probe warning:

platform ff644000.phy: deferred probe pending: (reason unknown)

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 8ca3ac09b306..5b8ef98f6d03 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -328,6 +328,7 @@ pcie_phy: phy@ff644000 {
 			phys = <&mipi_pcie_analog_dphy>;
 			phy-names = "analog";
 			#phy-cells = <0>;
+			status = "disabled";
 		};
 
 		pdm: audio-controller@ff632000 {
-- 
2.54.0


