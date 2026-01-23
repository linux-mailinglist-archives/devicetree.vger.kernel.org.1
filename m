Return-Path: <devicetree+bounces-259135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOgVHZj9c2mf0gAAu9opvQ
	(envelope-from <devicetree+bounces-259135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2A87B54A
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 00:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7CBB8301912E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 23:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD27E2EDD50;
	Fri, 23 Jan 2026 23:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FeZL4+oo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE592F068C
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 23:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769209229; cv=none; b=WmqRU3Pj4P8p6IN0gwoU1BUZhRY0y3c9IqpVdpuSWILoZO2egqGfGoqHiCGjAvCfw8C4ACHLdx9rkhvh4XRN5VS2Z+c4W5mFfTG0hvT2BvLCzdquCFzWMVH+A8TihFWmq+tULJHQnT1Q+3UxhbVVAM8iVvfO0HJVYOW30JKP7Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769209229; c=relaxed/simple;
	bh=i4uPDr+jc2Tq+qejoX8mlb7m46ogomId8dNchVLMVhU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I7XLyXtgTKCFvi614ZLnd0RSyG9+VdN358Dofk3KAuB+bY9xNkbdD+imwZY+OFHOojVKzh+KXmv8TxhpELnh69hlytcRXYeQDIfZubmju5auObLdP8lspCzncVKJX87UtM2QZWKhMae7apYLnG2sNtzplmK+/bUj+mrzji5MT2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FeZL4+oo; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so21282095e9.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769209226; x=1769814026; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7fqYakjEYyKtwTChdLB8pkFMt8fUfNxeWNMu0LHBXc=;
        b=FeZL4+oo8myPbSEQJ2+WoZ6xxA5+0mDFPd/WP/uHtZMPbc1BrhF8jGslUmN5Fabpns
         VxTVRbbCm9SU99K0wE4OHnTS2pDmaResstsykxsIiOduaeAhUGfoFtf29cwnemxJX9vs
         ir4BMj+kYpGvMdwwkCnCCpOOxQDeCKPVY487TuM1+Te4B7HBfHJ4W1l8FBTSXLjcBnyz
         5A6CNcSHpSaM1wvmyCLb4lKJdy70LS5+kEWUzHHobRlstTbKDDSTTQRFuUT/Luek6A3O
         WyblQulur8uVk3ZCCNxHptXwXl0SDk4wId/060xEF0loLQKgXS8Guv5hdImdzo2khnhK
         3qog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769209226; x=1769814026;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w7fqYakjEYyKtwTChdLB8pkFMt8fUfNxeWNMu0LHBXc=;
        b=eqfuLyzbdwf1b/SZ8l7tspJH2ON4wb2ceDjpifiNwdMzZ72M8D/T1e8oAJV4Kiwh1f
         qDA/2EKHkRvurtxFfRvbcOJW4WxGee0qGwO+X0oe/qql1BCbGiISJ+YYpGmphiqGNO2R
         vuiMDqt14u83cffekoFWeIAvrUfd39MEzogDJZ+rl61FvW9h7VtBfXRDEf4oGnMdfoFk
         gl5qUO+V+Hw7YomQoze28AVvErVqBD/xPBctlHOtoWVpol0/czv1vl4OQWX1YD2lF8Ob
         y2pd4/vIR3V9RhRE90XFm1bnPDLGNWjxs+XKdlq1h4H4oQGGZJMTRxfC8V3rUodiWLxy
         kZfA==
X-Gm-Message-State: AOJu0Ywi5rjTExrAMuSJ/Y+tc4UE4amc3v6TfYFM1OE+x55aoRpPXO/t
	OjyavL5hiCU4jBeV5/6mVqXwBhdJ3L3ScwMXzTqnOitvAKFVy8PfYXl3
X-Gm-Gg: AZuq6aKkg/OcZE3a22CSob1LGSqN5nQodFBpfCCngP32g5DmvPWpsXx5z4bEoxEwLuF
	yGw45rAf+KHV7xMaj8a6t0kheEOAMWToyH6w3e0eH2weXxomGg0d11XgEn8EV/Akpk1iTjbvbRU
	iB0qtv5+lRfV5YhFh3h0s2CaDvLeJbL2iXYaU876GlS+oxkHK94Fr8wgc+nvSsHqUXgF9NKp1rm
	W15eCPJjpoEj5vPApP1rfye4ght6me6M5CjqNtUZy3VxZnffA2TgzVh39guhq/ebWQU1X4jhhWn
	EsLT74xvv1z+N+2oIspwWZlTOs9KuG4uZ9Us4du81ZnsW3tw1h8UvobtTgNvPcsKCucb4FmWybK
	AuONLJmwGvqatUH2nLnz6idu9GOiYna8cCcal+LTJbdnlRTFoCbyHKqU6anF4OB/O6CiG2p7q0+
	l598wG6yuES/17vuLvxaE/RorBZPnScaOVeuht551IO8ysgJhZUmxfEwJAhLeTDTxbEvje5tnrQ
	TCRu1cOKHmQCh+27G3hfCpH
X-Received: by 2002:a05:600c:c08c:b0:480:4d37:e742 with SMTP id 5b1f17b1804b1-4804d37e85bmr55750475e9.10.1769209226208;
        Fri, 23 Jan 2026 15:00:26 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:bccf:b3b1:e288:4e83])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cc278sm157142665e9.12.2026.01.23.15.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 15:00:25 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 3/4] arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Clarify SD0 power jumper setup
Date: Fri, 23 Jan 2026 22:59:56 +0000
Message-ID: <20260123225957.1007089-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259135-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: EC2A87B54A
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the required JP23 jumper positions for supplying SD0 when
selecting between the onboard eMMC and the SD card slot.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
index 19f0a2c06753..4c0fe5c7e8aa 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
@@ -14,12 +14,14 @@
 /*
  * SD0 can be connected to either eMMC (U33) or SD card slot CN21
  * Lets by default enable the eMMC, note we need the below SW settings
- * for eMMC.
+ * for eMMC. Also ensure that JP23 pins 5 and 6 are connected with a jumper
+ * to provide the SD0 power supply when using eMMC.
  * DSW5[1] = ON; DSW5[2] = ON
  * DSW17[5] = OFF; DSW17[6] = ON
  *
  * To enable SD card and disable eMMC on SDHI0 disable the below macro
- * and set the below switch setting:
+ * and set the below switch settings. Also ensure that JP23 pins 3 and 4 are
+ * connected with a jumper to provide the SD0 power supply when using an SD card.
  * DSW5[1] = OFF; DSW5[2] = ON
  * P22_6 = SD0_WP; DSW15[1] = OFF; DSW15[2] = ON
  * P22_5 = SD0_CD; DSW15[3] = OFF; DSW15[4] = ON
-- 
2.52.0


