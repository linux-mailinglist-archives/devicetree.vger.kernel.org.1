Return-Path: <devicetree+bounces-262237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAj5K3nsgWkFMAMAu9opvQ
	(envelope-from <devicetree+bounces-262237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:39:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A59D91BD
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7908F3038F5F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AEEE3446B3;
	Tue,  3 Feb 2026 12:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cWOjw/RI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718383431E3
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770122110; cv=none; b=FPpuHnX8EKv+rWvLW3iLySOySPZPJL5wlpQ8Kv40z5+znBL741L1C9YM0xpuFXEzFC80qY8aGIQJN6+fBspYcYk+Ly9ZJGpabwMZdA0Kab+ax5/uJVgv8HeVvjcvrAIsGofhMcc4M6yHdmKzjRNYTPZeSt410C2UMxhVO8vyzdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770122110; c=relaxed/simple;
	bh=XmY0cObD+izZ6Dt7mSBTI7kx5XJ7r42/XOxn/HRfsQE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=REMz2aq+zC0QWhiZFR2RSyrcLs7TcpMC+/viQfnusn06EFV9+2VzX4tSIrmf33wotFOU9YyJtC72NaW3dMC3HsoB3fsIEUCTavM0OIMbc/qWvQac5qqRf193Irp4Ezo1WpZu4ip2VM/S0L78WZKtdJbifhaoPwa6QSuM2h9mJRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cWOjw/RI; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48039fdc8aeso33206155e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770122107; x=1770726907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aPrqs1CjhbI5+kaToQ6RF5dGRbNhXSkxmd+EPfDPP5I=;
        b=cWOjw/RIMogr1RhxlmKkwc+oecUl8RsH6r5hRfxGzgZQ97cOY8LLOZo2WcdQwJN6dL
         /ep11gs6Q1lg8MDBdl4j7oNnmbVos4dYqok7/opbLhRz32PdA43wNT+ccLrr1F8rIWGV
         78Dp6KtvgSnvE/2+MAE62WQ4WJjiNPrrXrcQUyN/ciQtO/sDRcXQvVtPYul4RKTuVsV4
         00SVu6Fq/7cakWWXJHE4d2jucC1q+yk8rxXd+l9piYl2jRtL5eMSHIQ0QBPJqOveWevn
         HwYp3pbnrqZbnZiJjXT1/PRyTL6SnbgLfy5bSWLTHNQU6h3Rq/lXgEXoB/hhv9G0nVUX
         izCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770122107; x=1770726907;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aPrqs1CjhbI5+kaToQ6RF5dGRbNhXSkxmd+EPfDPP5I=;
        b=bkH106wuLVJ+zvIuyq0DAuqv6X4F3jjD4AXYp+eyBSjeBoDKrM7kgTY6tpVHFFgGgg
         8lk3n66yUAYb8TQnKH7r977dPzGrU7TkeGQRpIt66fKx0l8XzQ/wEfS8CFY3K89F5aJ1
         LFoILJljCnSwET/OxIpZo7PPs/yza+hVRUzeJc8xuGnpFzZOHGHVOT8S45hC0Q1VQKes
         ZFGSgv9qLgTUbN5G3r9nHGlYlaqLj8VgnaVgoRcUxu+QUYREBGJiPNMrm0bNIma8CblO
         q9DwP0KJLdk0ikLop5Ax3+DTX3eGkaL+DMGYE2N8sIoIMyvfNdDpoq/auELzF0iAt5qt
         169w==
X-Forwarded-Encrypted: i=1; AJvYcCXg4IYENQoi+/1x9Mndc3jtzdePOf8e1Ca3B6YlKqp3WESsSFJ2t7XqsQCqXxgNdyj7j+FSe74fnOas@vger.kernel.org
X-Gm-Message-State: AOJu0YyRk/dNZDbPEb1//iyRucEXuffEHo5GfRHXFI9N63hIm0Cxl4Yc
	mCAUUuiclx1ji2wyHmYX3OHnRCqBPQ3v8YtJ36hhDQl25LORDK0ppO3D
X-Gm-Gg: AZuq6aIwbXGS6XqqeMbKFSCGyj+6swg5vdUCvS7zrvOpTHS5MzLEbFkD/bA02qGBVyh
	Maa5DFDHbD+QQAcicW77sASfeLcJeCAG59Oc1gHHXf9/NqgczUDOu/IBmAkmwQoBTFqQ8IuvK40
	iGybI2jZYJb58YY9/c15CAQA/e1mecbb7xx23NxziPELIwEc9NbEMBUQOHnmRMPJG8sEi7jfJz5
	4F+4bSINNPQSyBYKRPOFqrG9NkImT3n/hW4t3k/6I9jEuemyBRM8ZiquvDwzR+YGIsxxCkllN7E
	aI4Ii8iSzYky7yqul+Y9qjAP6/73XqgzHp3j0+3PlLuCBE1ZXHShZ3bhbsgj4crDn1wBd4cMA32
	MLHZl1kglRWQwm+l4qxSdjZhYqhpNzZO/ay9dmAiWYN1b1QerO52QaA9Dc6gAHlsc8CU15dvfO3
	3qL2MUlCA2jxnOpnKxkw==
X-Received: by 2002:a05:600c:1f94:b0:480:3338:292d with SMTP id 5b1f17b1804b1-482db492928mr210069475e9.31.1770122106665;
        Tue, 03 Feb 2026 04:35:06 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483051379c4sm60618205e9.15.2026.02.03.04.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 04:35:05 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 0/2] Enable Renesas RZ/G3L GBETH0
Date: Tue,  3 Feb 2026 12:34:58 +0000
Message-ID: <20260203123503.314755-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262237-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid,renesas.com:email]
X-Rspamd-Queue-Id: 29A59D91BD
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable the Gigabit Ethernet Interface (GBETH0) populated on the RZ/G3L
SMARC EVK. The eth1, pincontrol definitions and hotplug support will be
added later.

This patch series depend upon [1]

v1->v2:
 * Separated ethernet dts patches from series [2]
 * Added rmii_{tx,rx) clocks.

[1] https://lore.kernel.org/all/20260203104541.264759-1-biju.das.jz@bp.renesas.com/
[2] https://lore.kernel.org/all/20260128125850.425264-1-biju.das.jz@bp.renesas.com/

Biju Das (2):
  arm64: dts: renesas: r9a08g046: Add GBETH nodes
  arm64: dts: renesas: rzg3l-smarc-som: Enable eth0 (GBETH0) interface

 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 241 ++++++++++++++++++
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     |  35 +++
 2 files changed, 276 insertions(+)

-- 
2.43.0


