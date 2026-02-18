Return-Path: <devicetree+bounces-266507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDPdC2sJlmldYwIAu9opvQ
	(envelope-from <devicetree+bounces-266507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:48:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BC2158D0B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:48:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CD5F63002915
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8894346A19;
	Wed, 18 Feb 2026 18:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L8cKpp88"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4383A3009DE
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771440486; cv=none; b=hQeK9I9Wa9IZY2YKfEkYCkMV4ss8fyTP50aIIakyjgwrRb7XdRT6944Hy2znYEuUSSF5XB9cLNxmuv0EZM8z7E5VAJhtW/T6ttTy1L3Rmc2Eu715NK7J/4h9fcxHYfV9/2qxyRyiQe0D/58qQIu9VKRoUIFkGdHh24cR3MjG/YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771440486; c=relaxed/simple;
	bh=Sg/gUkPnWAfAkmTjB8er5pU7U6H1nsheqxn/Up3fD8E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ufIBkfWcTsfW4JSD1PxeQsI0WNg2X/hOo7I4w+gR8It52nBI+eAWKd+2DzDdIyZAVgB0jZTO6sKU6q6RfJywxDf7kT3VgAOdVtWNGpP5gg7vrE52P0MUSVuGBO9dI8wpL41ywc6RlZS5zdQgK0806fJENRo1IaKI/35keK1ymgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L8cKpp88; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso1536315e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771440484; x=1772045284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lBeRIT1ZnYSEgc/ip22Oe8Z70VaBVeO7A7faCs3mOuk=;
        b=L8cKpp88QV0wUiyhevZw5QkXXm7i8zCh2syKl+JKcyGLs1cMOBmqJDztwY0HGwDlP6
         5vxf89Y5jgCk3yx0U+O/rNLjT/hOsCaExdfhZ4UjjAq939coBE70wt+dRFj9oqkvqn/y
         6UJb0uLZ2b3k9jh/lUZcBAkcbr4Ba9pkn1yKVbONKEBs5BhcFbsaTpj/FEZOAn79Tk/n
         W6HOrGbYsU4EUs5kLoDaOwCgNsBQvlUL63BAtc5NoFjGcbKgWEO3pjnNt5vwtrGYjZ3z
         Z+9HDe7XVqZ425nEx/ERUCnax4yuFToe8X6gXx7fUG3nK5fgXofVlUwloBhy7LFrCyja
         mYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771440484; x=1772045284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lBeRIT1ZnYSEgc/ip22Oe8Z70VaBVeO7A7faCs3mOuk=;
        b=JxFu4BTtWC1S5Y5EOWp4oUE7IGlKYF/2l73h+3FsMQzq5p/sqvz1QCY9zWkZCYHTfb
         cgVgipCDOKBuNPDJg8Y1LHBkAXTupGIqd4CH9ciVGrZaIZLu3xzZYI/npWllw50jq5m3
         U7xbdX37sXvq067T/q1RbCY858mX9h4gZxlPeJCx+R9rrANYE0FsuoAvtiQHOnZgeB2U
         MPe2iOWqYMcGKct2URupFy+6ocIraeYSlOuJUwATzK6Dco494CQ/mbPB+MpVaNRxcljW
         p5+G6vSS51fE0S/gAzY/+sfNmxO8MnO3uE/qLcX/+Ttt7F3naALK3A8/jpBnFIvQDdiY
         VKeA==
X-Forwarded-Encrypted: i=1; AJvYcCVDyJbWW+29DG4iBDgwC+pX9NHRqUTZ64uWIXkW2qqz5G7n3xhiv4JpER1iHNNJcMYnS8zfmqftlgyp@vger.kernel.org
X-Gm-Message-State: AOJu0YyR5pmen7uf73/sj7DEfwSebsil/pZSej4ydA4W3XND1AFoKNsx
	QB0+cRM3scLxfAygpQ0xo6CIUk/ZqoPE6f0B8grUVMRtpIG59F3xzNj7
X-Gm-Gg: AZuq6aIg91QaePYWgPnVCR4TLICJnA/hua+yqx43xcUSRolPXqXmVds9GeXXD2Q6xQW
	B6FhA+dwM7P8u8S2SOL3GhIrp8ceCOf7fXKsZlE2FLLtSur3q4BJvLaN3wsjlZqgVDYoT7If6P1
	eMf6DfP24GwzUC1E2ZBOvSFe6/XzPw+/BFZVb0KLbW4iJzMAaKK53TKpjPdWA3o/15o0iDbWoHQ
	G3Z4SmwuJl+nqNELTDlKz6RCdUOk09BNE04ZRkz4Lote08Oj3Bu1biBHZ6ag1x9cpwFox2P+mW2
	O/Qkc8pe71BLGx2E0yRfF5K0I7rDe40vMYGVdPFYt77ldo1yt+8qI9lm5pVnXU6WRfSPGm9ta2W
	wUovvvtWTWWg9FD++VJR9Szu9I753oaziSe/qsl8YozO+qRccEkdoI/qvQ9PyrRY3emVnIJOPuv
	qwpAmklwwSkk8MQu0P+3pRN+JUw7BZ/1zEoA==
X-Received: by 2002:a05:600c:6389:b0:477:7af8:c8ad with SMTP id 5b1f17b1804b1-48379c1f4d3mr290728595e9.31.1771440483441;
        Wed, 18 Feb 2026 10:48:03 -0800 (PST)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4837e565f5esm440990555e9.10.2026.02.18.10.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 10:48:03 -0800 (PST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au
Cc: avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: nuvoton: drop unused syscon property from watchdog node
Date: Wed, 18 Feb 2026 20:48:00 +0200
Message-Id: <20260218184800.2261674-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,lists.ozlabs.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266507-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[801c:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,a01c:email]
X-Rspamd-Queue-Id: 59BC2158D0B
X-Rspamd-Action: no action

The NPCM8XX DTSI currently includes a 'syscon' phandle in the watchdog
node, but this property is not used by any upstream driver and is not
documented in the NPCM watchdog binding. Since it was never reviewed and
does not form part of the DT ABI, it can be safely removed.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index 24133528b8e9..c781190b42c5 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -145,7 +145,6 @@ watchdog0: watchdog@801c {
 				reg = <0x801c 0x4>;
 				status = "disabled";
 				clocks = <&refclk>;
-				syscon = <&gcr>;
 			};
 
 			watchdog1: watchdog@901c {
@@ -154,7 +153,6 @@ watchdog1: watchdog@901c {
 				reg = <0x901c 0x4>;
 				status = "disabled";
 				clocks = <&refclk>;
-				syscon = <&gcr>;
 			};
 
 			watchdog2: watchdog@a01c {
@@ -163,7 +161,6 @@ watchdog2: watchdog@a01c {
 				reg = <0xa01c 0x4>;
 				status = "disabled";
 				clocks = <&refclk>;
-				syscon = <&gcr>;
 			};
 		};
 	};
-- 
2.34.1


