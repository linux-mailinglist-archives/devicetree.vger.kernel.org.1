Return-Path: <devicetree+bounces-324715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d3IcO1aKUWrIFwMAu9opvQ
	(envelope-from <devicetree+bounces-324715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 02:12:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D55673FCE9
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 02:12:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=B2KzOsZc;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324715-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324715-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39C4B3011C60
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 00:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3F8C2FF;
	Sat, 11 Jul 2026 00:12:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B10E625
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 00:12:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783728724; cv=none; b=V1vdUe5h9jdTOknuK4uosW+Lc9LqZxjKxe6vswn+tYvfLB23cIYQ38XYlBWr26dxA1RHWfKyiCzzGWriZGTeTJtgtBqOvdyPqVxOepbQvPdFIqLj/J+Z0dAkoA27OISWoniUSDGu8X3mkPBy+yirPLVoQ9EdcZgG/6svmo05RPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783728724; c=relaxed/simple;
	bh=0gQX7P1oIprqISCIJfxao//qb8rkST6dWjOV8CvC9Hc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OMtA4ue2zFRZCbbq85oRYCw42Uz7+H4Va4/ytgWMJ1Vpy0Rk1OWEw0x9+xF9GZwvOpDU68W36EBJWMLFyAELqOHZ0vE6llVsqGnw0v8EjSCCRgFGAM+MJcA/wsrL5cBFIqlXq7ZSSgtGqzhAeIuwHTfJIWn+wU/bzoo41N/K/yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B2KzOsZc; arc=none smtp.client-ip=209.85.128.47
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-493c5220cb7so10869555e9.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 17:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783728722; x=1784333522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Rb6ZPHPRfJJScY1Dh9Z5eLNSwZMQUx12yLpL0PFajyc=;
        b=B2KzOsZccRWk99krGrVs7b5o3qMWKoj5KdOzOUCERukm20mjXwNfBZYwnRxs7DV6c7
         5tUsIWB1A7JnOOSItZSDzutPq0rGSpqjmd7G3tkMVypb6WErIfnYu/RQpacEjOJ7e7Yj
         nF3/AENCEOciapOaDsmsoW2ZHbTLGVF9cTZWChmgA+M/ZVss4ac/2vDW4uNkkOePk7Sn
         uB9UbpC/NGGEEYBkys+TJSlaLJQt8XiSHcRu1hLGyw00GJgOmXega6N6fKBTEwGUp2R0
         l8arCgodhcA3rbOd6FuAXk+wAjO7dzA/nZDNPtFLy8fK2Z/fiX6Bh3Nbzllic5pELp7b
         5eeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783728722; x=1784333522;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Rb6ZPHPRfJJScY1Dh9Z5eLNSwZMQUx12yLpL0PFajyc=;
        b=ptaK5SYOQnnjYXC3JnfgRja+z2E5ftgf7VbQoz7ai8A+T0BcjNLqq/QQxt5uj+4XoM
         a4b8VMp3EM4ZrUQ04GQA6ynLlMdSQVsStxMEzaO79leb7Pn3oXEVOTTnQVDl6L3b1h8s
         wl5Pzl2GYMwH8vrfoctcwCHG3P6tUkjxft1DQdT2tVPXb1ZiDLaT/uAZbaVwDtf9bCk/
         R5S7FPryYrZRf2eQxXh0dyCuPl4l6SBj3k8NAwjp5SrX6OPkEdN4wfBdgSx9ksmnlj8L
         lVcQr2sQPR5RIISw5b/y0b8GQ+1Bswak91TYpKKb0DNaChkgfmm41zFLaavnuRJSnOAu
         yhGg==
X-Forwarded-Encrypted: i=1; AHgh+RrZ+gqorywDB58MmDWOySP7Bwp+qCU6k9Eq+cT0qXo4WHvG7QEc7Ft3t3SlczM+xuv3A8m1rNFE7GSk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6BC9AWkLEM71zd/j5chv+9xqQBXz8jFo8uPzHig+semKx1Rw6
	vo5eneEopXtmn6S4m9HyAzE5199FCqAcrubDVsgqwr/UKyYFf6Bz/IsSV62kfKA=
X-Gm-Gg: AfdE7cmkMxXB/sL7C+pbfyRqBPuQ1qWPPJZQMNbGpXdgmnv5Rb70/sRsXuBe72Zjenk
	lY4ZpGCYZsBCcVKsjddA4u+btADi3VCY28WPmzdERcpENPaDYtJxAv6HEo60O5ynYUqndNZXVaj
	vPRtbV2HS/OGNCQg2TucUhbRmCbp9bdXABy69ftSW1Qa7OkQWImjTLMYvLECrkYqsuBXM+gmX0V
	c0nDtnE93FdwoSxDr9goDAiGIW1hIZzblpjXBgG82UvJ68QwFmtB+PZsb+QjYq7sgrscK0Xfmfn
	zIEgTwvHoiI2GGQ+Kv9bTfWvl8otq7QVnSz6RZfEHnAwMWVmVRvfUi41XwbIGFHRBsEA2YlTZDv
	KeQ3MYATXYVhI2Hihri8EzDmWAd/uFnqVZsq2G/Qm1vmd9vtIFSrKE0CRVBQVJ+bemdzWQSLjVY
	Y9dV/zFwhV6IhfBbadJIjCFcx78Uw+rEcMJZm3DPhxzG2z36XxmAtAhGL90912B/SkEinRfQ==
X-Received: by 2002:a05:600c:8718:b0:492:7101:3d88 with SMTP id 5b1f17b1804b1-493f881d4bfmr6762835e9.24.1783728721622;
        Fri, 10 Jul 2026 17:12:01 -0700 (PDT)
Received: from localhost ([2a02:810d:4a94:b300:9b34:9074:3c44:455f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-493eb73ae14sm170168835e9.11.2026.07.10.17.12.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 17:12:01 -0700 (PDT)
From: Florian Fuchs <fuchsfl@gmail.com>
To: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-sh@vger.kernel.org
Cc: Rich Felker <dalias@libc.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Florian Fuchs <fuchsfl@gmail.com>
Subject: [PATCH] sh: Fix built-in DTB build with generic rule
Date: Sat, 11 Jul 2026 02:01:46 +0200
Message-ID: <20260711000146.3348854-1-fuchsfl@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324715-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:glaubitz@physik.fu-berlin.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-sh@vger.kernel.org,m:dalias@libc.org,m:masahiroy@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:fuchsfl@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[fuchsfl@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[libc.org,kernel.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fuchsfl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6D55673FCE9

Commit 21bcc49974c2 ("sh: Migrate to the generic rule for built-in DTB")
selected GENERIC_BUILTIN_DTB and renamed the Kconfig symbols, but left
arch/sh/boot/dts/Makefile using the old obj-y form. So convert them as
well, to fix the build error when using CONFIG_BUILTIN_DTB.

Fixes: 21bcc49974c2 ("sh: Migrate to the generic rule for built-in DTB")
Signed-off-by: Florian Fuchs <fuchsfl@gmail.com>
---
The fix is the same like at other places like openrisc or nios.
Without that, the build fails, when building with builtin device tree:
CONFIG_BUILTIN_DTB=y
CONFIG_BUILTIN_DTB_NAME="j2_mimas_v2"
with an error like:
.builtin-dtbs.S:6: Error: file not found: arch/sh/boot/dts/j2_mimas_v2.dtb
---
 arch/sh/boot/dts/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sh/boot/dts/Makefile b/arch/sh/boot/dts/Makefile
index d109978a5eb9..16e281b859ae 100644
--- a/arch/sh/boot/dts/Makefile
+++ b/arch/sh/boot/dts/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_BUILTIN_DTB) += $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
+dtb-y += $(addsuffix .dtb, $(CONFIG_BUILTIN_DTB_NAME))
-- 
2.43.0


