Return-Path: <devicetree+bounces-264810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NLbGmHTjGm+tgAAu9opvQ
	(envelope-from <devicetree+bounces-264810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:07:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D29C412708A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:07:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87FE83012EBB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A428349B1B;
	Wed, 11 Feb 2026 19:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ek92Vi+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16E834027E
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836786; cv=none; b=c9NqTQ9KNo1ntuLs5e6+7lQow4VJceLd6K1cM49bEYFN8w8f06bqb8TB4GvLUIJeV/TgJzcZAa+VEMG8lFOJXGy4SYlSzSs1J5FCDUK4jPTmyttyCUicH8ebXXiGYCTcJJYQw3vmjETPF+BuqrbPNR5RBTfco3Mc5qVs5mBgDSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836786; c=relaxed/simple;
	bh=VHwPI7CrsmbjIGlCMPbrgbAn0XZwa2RywVo9XM2/+WQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=p1cDIfPlp8V7FIwnYPHIOzyjEQ7+SWNSOFB2zuJ2S4U6ZytAP+xBOT3a348ozNV3JBbnqOLk/6VFBThFhYfVpB/ZhjX9gT9De+8cKXJyrHUpH1jn6p7oJaXbwXeX6jp3TW/50vj6r/oIHVO24Shj0pAnkWG0EqAVLz5zZd5xRkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ek92Vi+k; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so34688845e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770836779; x=1771441579; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xsjpLU/+950UBXEs80H9fBqyvb2ncbcU+NKJQmJQO7M=;
        b=ek92Vi+kiN1dZ0qGzgfNYj1Uc/awQCdbG+cYXCQSJ5duyeqZgINCcQ1OmqiVo/EZ1T
         e2+MEzyWJxmDP5/G9pkflhLooXcaGsaB9oqBVaB7A+/2NhJ14sX6itKoX4JnAZewiaXj
         pWAmxz+LhFThQm418+zgjrCc9fTjR2pEJWOGpQikW78wC0r+tKLeBaOWbtYYb7z6RaBT
         GabW+jyIS2LcbAlqm6k4hmTV6044ttAT5NaNagURRzHLS6nUJdaD/r7mNOql6ieT3CNH
         +3LQeO0Spn5fZ+T/3R5xkj9vbuVcayj6qgEvQZ5kNz9NYD/BZun5R7WVXlQ6R/GXsqRV
         lHhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770836779; x=1771441579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xsjpLU/+950UBXEs80H9fBqyvb2ncbcU+NKJQmJQO7M=;
        b=QgHlqWiVsLBTp/ZnbEIbVXNyqIMi2PN95jLBBrFnrEYs0lbbJUW3EbQLdGC2OFE9aS
         wyJUKvcicyyWFQDv2b9wzxrFDB+e9BK5WxOTcrv+Id71rFvOwMclJgOO0HrwH2cTKRE9
         oULwyj2dgfGuN+lM0WnqjG/G0QYO+Qci+xNVHUni0a8O3C130ZZyIn4GYgpywRAY+biR
         oX3cMzu+YAZqcgKTYTuiY7KRU3MHyGtJxE0sdHvU+elGd7TDiLvgAMqsXxuaR7TKqPjA
         0mE7S5uv+DnE9dC95xoGF2x/MKABTCQjeJvXZT4UX/HIv5WcpOEQ734B/QaYPrv8f/nZ
         8J8g==
X-Forwarded-Encrypted: i=1; AJvYcCUu0gQ/dxrjzcoETCY5POqplOJdJah6K2uJJtzM9p5YQLbgikSpQLgrLP+P1ntKXXdJTsRyRtlMXmMY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe/35lecM/3PrAR8aVorqUCKyuSEIGrgTvotOc4OMpoki0g3mW
	1M9o2T8Ou+HuKU1ai7zzkYToeABZLY1WsvyxBqk8FxDCgZT3mZsFnIaimt0IsUyf
X-Gm-Gg: AZuq6aKl/+xvexflcmce1LDoQ1u0I+N/wvrBDKnMCqwjfw5XDhJeCllLyBEs3FHF+jf
	voigJNhLcJUa3HVXLBj6mrFqGbNbrBHeHnMBJM0Bh8X5BpDMtYX5SBzFyv2yO0ed+xxoM8oA/ep
	dqZcuyjo5jPVroGmNC3Rln6G97LfeIgRPBvpwXq5A+B8MI7+zuAyCZbBulQei7vGYyN7VZflc+D
	6jkNTC0kZqhWLmpOYvv9Zy+BTVCmO5R9ZzwpqfvgSCq4Bkke+q4AVtnldOIy/6jE5E6oapb6p4k
	y1+itLT9b+gMh6J6xkQWThmKgvQ/R8obmeePsnkQ7/4ot9LZUWzrNts49GSsmJjZL5d8zR1bJbx
	g6TxmNEp7x5rbN3X6eDIauAX8z/eU6eLEb7MU9M+ETdS60joMh+Gz4FsRjU/M4cKWINKFq4K2sC
	IThj1Z5o8iqQqxTYj0IESKq7xtWS6R4g==
X-Received: by 2002:a05:600c:4e05:b0:477:6374:6347 with SMTP id 5b1f17b1804b1-48365710e44mr2920265e9.22.1770836779068;
        Wed, 11 Feb 2026 11:06:19 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4378e122df9sm211223f8f.15.2026.02.11.11.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:06:18 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/7] arm64: dts: mt8167: Add the mmsys reset bit to reset DSI
Date: Wed, 11 Feb 2026 19:03:21 +0000
Message-ID: <cover.1770836189.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264810-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-watchdog.org,roeck-us.net,kernel.org,collabora.com,pengutronix.de,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D29C412708A
X-Rspamd-Action: no action

This series adds support for the MMSYS reset registers for
mt8167 and uses them to trigger DSI reset during mtk-drm probe.
Registers and values are taken from the kernel source code
for the Lenovo Smart Clock and other mt8167 devices.

Luca Leonardo Scorcia (7):
  soc: mediatek: mtk-mmsys: Add resets for mt8167
  dt-bindings: mediatek: Add reset controller constants for mt8167
  watchdog: mediatek: Add support for mt8167 TOPRGU/WDT
  dt-bindings: watchdog: Support MediaTek MT8167 wdt
  arm64: dts: mt8167: Add a specific watchdog dts node
  arm64: dts: mt8167: Add the mmsys reset bit to reset dsi
  arm64: dts: mt8167: Add additional mmsys reset bits

 .../bindings/watchdog/mediatek,mtk-wdt.yaml   |  1 +
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      | 10 ++++
 drivers/soc/mediatek/mt8167-mmsys.h           |  3 ++
 drivers/soc/mediatek/mtk-mmsys.c              |  2 +
 drivers/watchdog/mtk_wdt.c                    |  6 +++
 include/dt-bindings/reset/mt8167-resets.h     | 47 +++++++++++++++++++
 6 files changed, 69 insertions(+)
 create mode 100644 include/dt-bindings/reset/mt8167-resets.h

-- 
2.43.0


