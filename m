Return-Path: <devicetree+bounces-285320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KHWKfgN1WlQzwcAu9opvQ
	(envelope-from <devicetree+bounces-285320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 16:00:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3430C3AF9CD
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 16:00:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2D1F3047E78
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 13:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A2FE3B8BB6;
	Tue,  7 Apr 2026 13:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ePgzVm1G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D723B8BDE
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 13:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775570084; cv=none; b=q6NboDC3qrjc174U/9uduT1ZAA5sE3lBfV+ShTdRQvim4p+VXOO4N/DBgNT8MNeW5C8y2pW02UwlfJwSL9yPTPbiLEy5C/fyEK83NOTzDPC1fpRVe0MotJLACWfo1vGgJ+q7lak4GSeYT9FvVt6+VaifRS62N5vR/csb8ByTP+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775570084; c=relaxed/simple;
	bh=GuuPmRF0SvztskRDwEB1MM2bn2JoVv89mfGzEQQdwjg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cPibBGrNJ4kuSD4nfU03sOdVD0QlKAUQP8lRB7rCotqbhRWh9hO+dMnOtPqVch+mXFzgYfc+rlg5YbzByRcAepAGTWqlymSl0rOVOimCaUF/O0FquoiKKttYNJK5iL0gBXRdH6XJHLkBkgiTOx31pTh8kannaykQNXgfIsKEZkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ePgzVm1G; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-35da01fc0baso3442044a91.2
        for <devicetree@vger.kernel.org>; Tue, 07 Apr 2026 06:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775570082; x=1776174882; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Azm6ch8NFb4zTbwrUr8055qgKOiI+1Q2g+iDaKl9uU=;
        b=ePgzVm1Gk8VZUWzqtU00lm1ofxMq8UD0qNWKu7/2eJM/MD6wBe1LrhrVFck7NlI6UX
         bKPuDU+R3iqWKMBNo2eAxllCDSWdKwhaONBtM3cfAWuHDMPFIS0U+qSK+r30HUJYN/MZ
         JpAKBxCo5ATzbpnNEBMLgOiqT79Cp6RyQq7QvQ0avKF7xueiaJYAcmXxzbqUl6eU9DtC
         3jpPB0iYTA1yI3bMUUORlZhHyQSpdfka3Gt0w/wEQMGjIYECMLgDw45sxqrA3EgYsGw9
         y5Tx/Jd0CcYWr7P6YFToT8lrGA+aAuPhj0wK0cRP+B27SQ1WQ28kX0yqF6f3hP+Y5dCS
         Roug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775570082; x=1776174882;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Azm6ch8NFb4zTbwrUr8055qgKOiI+1Q2g+iDaKl9uU=;
        b=kj0sNiM0cyRRJh/4OxzkswBvsMZxJCGeepKDRPAkDgsSxuP/wUt1RqlP2Z5z3fAgfk
         UmuG309A+4Mlr+4khWTBbGgvvAGCh6pgr9pJEU7H8P034IkukBhNiB/oXZpYiMfczJvX
         qmiwL+hECx7eD+IDzlHKNAF+xUOcq43IvoR+q7o8gpAhO9W4S5501O0urM6NZZ0lOj+f
         ih7UqZDoV3eenHv6vec03UYfUjq0ka99mRVr3Bi/W2Qz3c2GcllgvirLgD+67S0ZAnVb
         f1jvgywWi77s/ZcZnkpvgl3GHuqcaLdF9DPvuedNeoIZ2wdZlfVg5QDEc6NSYGLeXOxP
         Bh+A==
X-Gm-Message-State: AOJu0YyNEVnrybN194iZENkN9yOUvslid4bgqMtEkXY1SvseB4cbqVd0
	iA7Xw8u3BfIudH5qk9sysSrgHL+V3/5COXZmgj6y+uQrkDqgNdbjNKrK
X-Gm-Gg: AeBDietGEwYu8lEdjIt8ajQjcXZGVfsZ+3nOBdW+EBXuGnzCf4ptkAFUX9UckUK7pLx
	itj05/77DyX1tiEVAjvlzt4kfGMtlqM26JoPqwU1jgFeawp5qL7U0ZoEm+Nuv2jrqnl+ha7cE9m
	Wo7issYvXlVOhdcBYwR+Tuf43Kn1R+GfOec1IPmFCSWaf+SzfYKOUx4f75H/4B291aHzxnm0qnH
	ObM+J0IAw2nQsYQ9D/0JTFoklQmTJi/pWfk/9YccgQ6Hrq+Dj1g0brhBLlBZ1XxyEzZcFSktNAG
	IbSzRovM7B4SwR1SAMyQmcau9lOLO2ouVW1n4xXD3OPg3mXnfbjPt5zYkeoECF4djLrkvoNiuBd
	xjeJLQRqKnxto4Kv/hOTyZ6OBg7SIVEw/3bNpW6Fr+A2ym6GSDyZncX0SW6x9LvVbdqHM6EuROf
	OfXqBuaulc7m/csDD7154=
X-Received: by 2002:a17:90b:1d49:b0:35d:9927:e023 with SMTP id 98e67ed59e1d1-35de67df8c1mr15929957a91.8.1775570082546;
        Tue, 07 Apr 2026 06:54:42 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35dd35364edsm17111559a91.0.2026.04.07.06.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2026 06:54:42 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Subject: [PATCH 0/3] ARM: dts: aspeed: anacapa: restructure devicetree for
 development-phase
Date: Tue, 07 Apr 2026 21:54:31 +0800
Message-Id: <20260407-anacapa-devlop-phase-devicetree-v1-0-97b96367cac3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJgM1WkC/x3NQQqDMBBG4avIrDswiVKhVyldDMlvHZAYkiIF8
 e5Gl9/mvZ0qiqHSq9upYLNqa2pwj47CrOkLtthMXvxTBhlZkwbNyhHbsmbOs1ZcsIBfAXhw4mI
 /9c4HoVbJBZP978P7cxwnNkrKAHEAAAA=
X-Change-ID: 20260407-anacapa-devlop-phase-devicetree-4101d3f312c0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 colin.huang2@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775570079; l=992;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=GuuPmRF0SvztskRDwEB1MM2bn2JoVv89mfGzEQQdwjg=;
 b=37ulHPY7QXaxwxBrpF05mKCYNz39UmcYPhg1ix0o5EU6aTX8zbf9G+9qqNsgYilWF/1k9OlaG
 tI6i/oQ7TjHB8LdcIZtdWK0awiBjxCPlQ7zq5OIiEG6ctvEtD/YgMy3
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285320-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.989];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3430C3AF9CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series refactors the Anacapa BMC devicetree layout to better support
development-phase hardware revisions (EVT1/EVT2) while keeping a platform
entrypoint.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
Colin Huang (3):
      dt-bindings: arm: aspeed: add Anacapa EVT1 EVT2 board
      ARM: dts: aspeed: anacapa: add EVT1 devicetree and point wrapper to it
      ARM: dts: aspeed: anacapa: add EVT2 devicetree and update wrapper

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    2 +
 .../aspeed/aspeed-bmc-facebook-anacapa-evt1.dts    | 1069 +++++++++++++++++++
 .../aspeed/aspeed-bmc-facebook-anacapa-evt2.dts    | 1125 ++++++++++++++++++++
 .../dts/aspeed/aspeed-bmc-facebook-anacapa.dts     | 1064 +-----------------
 4 files changed, 2197 insertions(+), 1063 deletions(-)
---
base-commit: cd44dc5ead3042f2873244b0598e39a16dc7b940
change-id: 20260407-anacapa-devlop-phase-devicetree-4101d3f312c0

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


