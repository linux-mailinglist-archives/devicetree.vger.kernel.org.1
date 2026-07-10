Return-Path: <devicetree+bounces-324233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YL0rB1ySUGov1wIAu9opvQ
	(envelope-from <devicetree+bounces-324233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:34:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0496737BAC
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:34:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qER+cffK;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324233-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324233-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 445F8301FD57
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 06:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096393AFCE4;
	Fri, 10 Jul 2026 06:34:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67598361DD2
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:33:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783665240; cv=none; b=aGeghFDszxMgkDs54R4yqQIPf8NKP3LAH5hUeQ/QrbOq936EnYDItOK99AvDftrrBd3+JR9t23/HaclZYeNpCXOPJw2K3DXmRUpXqG/HJG3dU7mM/UKB5zI3OluNhn0zqiIm/wnzxwbMeZaVR0P8ppQwYY1tVqyupXGQDRbr7AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783665240; c=relaxed/simple;
	bh=07/1btrVXweJp2RaQ5t9utHSyW89mMjwV1qoIpkrmwM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CF4hnUwFtCA0mp/0MHjrctPuJgJ2GQrKt2TVgUTz1uPdZRCNBlKuVEa8eS3pT5QbXTS2//F8FRgjxFah9IfpFr4cZJWYXkahJHlR7OyxFGtk+2B2Z3znjIGgxT94RUK2ad3Ol6gNwKauKeL9T6MCEjZ7VdFbwQuTo0duEKcoIZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qER+cffK; arc=none smtp.client-ip=209.85.216.42
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-382ef647e20so720093a91.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 23:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783665238; x=1784270038; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MWsQiT76w5iSImzPn/o5lN/n7ToH6AkATnCimW/bQDc=;
        b=qER+cffKa4LaZWhxtQ+GzvT8mQmTIv7EteZejebNopzmAtAhTtXn6pmAMepfZwEqSs
         O5N8JRBw+mo8XjLZlatuLDCd5ujkZmeySrQk8S3TAO1UuCdgE36N5QQRXQ+xQyAgil3x
         GHg4cdEo6jOrOOS0Z4l22YUQu1kJdQYNUASs4NsiDe+M3bVRWfv2zr84xs7435MdOnL4
         RSN3LwSmv1TW+Ssk2NKwi/kd6cTf17E3ARMoiRHu3FwjqEyaooQVFejbb8xY0qcwuyqL
         z998NBcPdttHvF1J/P49wg4iV0BsGvt/CyC3Ml6JKC6x0PVp6anTt56EuQ58OqW68qZV
         NwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783665238; x=1784270038;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MWsQiT76w5iSImzPn/o5lN/n7ToH6AkATnCimW/bQDc=;
        b=P4i1F9L1Ow7nAdEjnbfhwlfcofLPzzdYZs663fzOsLUHtYO++U0pl9Kt3U/akshQw1
         tZ43AzsQ549ITo9GVzdxiIt/uDxGPI6hrfKO1CNsDU9tzjCYd/6o6YViC5TFrGmE2h2Y
         JrO7sUU0J+hro9CJ6MGz8qJqzyrjZBLMkhroOCKHkFpg0C36l8JIoZfo/kMLQKmMuCm0
         7qtLy868UM5UC31kuuh3owxOCXxgr54O5R68KuOoySriIGkymrtZgwzOZ7axy/ZyCTy0
         naMKEjr4UKS3J7xYtEoSehfhq08scKz4w6WOa78HPebBxboPVEPx7BLuTcm0g1qWzW+Q
         7mog==
X-Gm-Message-State: AOJu0YwMxHy8vY2hpXtqvtdFs3bU3Y3g5RNzAwbe69gx049gvz+ysZM9
	SBjo2XuCvRXFlpWFNWDjrvbnwi94uuyFyZVwOIGeELeNzy2KO3neQC2B
X-Gm-Gg: AfdE7cm90uMfC65MBAIER9CBEz8air9hJIh7bIEbenyvF/fdRw7BeT651cjmmsL/YBA
	aPrpdKdiAkvEm6M5kWv79uPm5ia55G/M3l7ObEjoa1sdiwKEQJioAWSPLgxipWQ+cKQy7gHejKV
	CkAYJqph7/zPNi4aHyozZ+ARAQh8paGelvzRuy0FWx87g0n6y5vVHZ8Vk7OFlULtL/blGVCDPvu
	A0VedYKsnkZ5KPJigrGu6vdeT9mM5gvLsJln64tQPnCgbNXV5HjXRoc6VwbXuZxN/QIRURzFguC
	7tYpyXIEQ/3sG+tbZ3pSgk7Yar4GtpaczaVAHX5rhmDk0p/8dpnYzDlBzhFrWT9DM8+M6XI7yq2
	UPA/OQEkRjE1q/sCZjmcTEOgq2E5cv2kVuGPBYdLU+gz69/+cM8sxAWhmqm5fv4tVEAEalazaTq
	Q=
X-Received: by 2002:a17:90b:54cd:b0:37f:133a:3e01 with SMTP id 98e67ed59e1d1-38941101dddmr10813393a91.4.1783665237634;
        Thu, 09 Jul 2026 23:33:57 -0700 (PDT)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38a5564f58csm2307070a91.8.2026.07.09.23.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 23:33:57 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 1/2] riscv: dts: spacemit: Add enough deassert time for the PHY on PICO ITX
Date: Fri, 10 Jul 2026 14:33:12 +0800
Message-ID: <20260710063314.1030249-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324233-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:inochiama@gmail.com,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E0496737BAC

RTL8211F require at least 50ms deassert to guarantee the register
access, 10ms is only enough for the PHY reset.

Fixes: 74657a376960 ("riscv: dts: spacemit: Add ethernet device for K3")
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
index 1eb5abbc61f9..b2a7d2d0d3a8 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -200,7 +200,7 @@ phy0: phy@1 {
 			reg = <1>;
 			reset-gpios = <&gpio 0 15 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <10000>;
-			reset-deassert-us = <10000>;
+			reset-deassert-us = <50000>;
 		};
 	};
 };
-- 
2.55.0


