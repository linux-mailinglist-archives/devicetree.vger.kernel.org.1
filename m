Return-Path: <devicetree+bounces-277044-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 05KDDBJnumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277044-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:49:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E06E2B8681
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1BE53186096
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746273921EA;
	Wed, 18 Mar 2026 08:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gU7FjXAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8250E3859C5
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823329; cv=none; b=ZoB6UfFv9rpaumLJ3DkWfmIwQPf8kDq/J+e7au0VV8FoiCnt6Ftbb+oltqtmFkXckRd0zPMoY8rbCABIdrHjNBt0vD8/cGfUTBBke6KZTOa7k66qL65v5pmdRfhA0+dmgWpUst3EmIZWfESEUTb33lrbGx9MXS6q9xHjP3XeQWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823329; c=relaxed/simple;
	bh=v/4pXzfrMekCSee8LoPFnpQW1sLesFiLPSHuI/JEsUs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jtc0ulAPHRM5T0ghcjqOwor3ZDa07JfogzdCm35FQRJxVDQC45rd13Oiwq30qmWKas//Uu+nMAF2MNM8N3cQ914RwV9uexMqz66VOySsOME2uBhbMyROBpRChkStgZuG2IqyqUMWNODsOA6YKyAvwytIACrrqx786b7pTtDP1wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gU7FjXAw; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48628ce9ab5so22029865e9.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773823322; x=1774428122; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QlHbm+I98Cyq3VfQV71dGE0kQOlAKXEz5oT7P42Vvs8=;
        b=gU7FjXAw1dIjjOKtDRjNR0sB+I0+uPEqjF+8Iv9z9AFLMhL9Co09pXdHMHJiFWrzgf
         B9UyLRqnsE9802eLA4zovts1pnVIPhrSmaV1nLpvL6TzFdWu2NPu37+CdlDA7Sv/Qp6s
         PEidWMmrbnl6kv+eIpnjgSL1okpn/DjjVM+yRrEuBfLXxmqlGch8938kM3Q0+gIJpVBY
         GE875znzKqWND7MntOg0rwXw+DBJCyWJV1Y0mf9LTVbupUPzxst9UyvaTb8r/yOuqoMa
         0UuWVuq5OGXa1vur/m8AJqDozxTH93orEJ/DLmOo+aFQk8WR+Bk4ssn1Jwu1RaGRPzif
         izZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773823322; x=1774428122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QlHbm+I98Cyq3VfQV71dGE0kQOlAKXEz5oT7P42Vvs8=;
        b=gHuD9vwlO51XbIZ7fUVEmF5K/hRyAXtlIuqWT3epCbiikR6GIDU25LfArWmWtT25rp
         6d+gQvd13z9FXynv/VH5EWBUfAtDn7sQYaEay+QwZfzpklWvVSf2aVrv369P3EWFzSHI
         WAM/o7ehNlICC1VTPwq9+Of2OalS1oUoEd2k0LSgUSWVQHxramqc2sILOEyLmI5Njlyl
         koUgiBmwQDqbGCjPl6/urbgAs8OLu9ddjcYDX/naAmoSbQ2LjEJYrlwvWxwAWAnc88KR
         3wcD2of3TtrVFTfk2SWXBLWDW6s2CpGCiLLZ1cAY+YKPC07lsPpwY0xYHl10hpqjsrRE
         r++A==
X-Forwarded-Encrypted: i=1; AJvYcCXCLhyRRggeuBmB7sKavBUbq2q5R+ffecC47ap/KFFMud17zESoGtdmATztYAgD8TbuoPE+pjJV+na2@vger.kernel.org
X-Gm-Message-State: AOJu0YzPjzU4ck/qHq6nmkEBNt6GO0UAPgID4VDee7fZ3n4EdqobzFj/
	rbmUgzuLmAR03vdozAlurcfxBQ3sO2wiVlTgkFaqLJ0Xo5eBpdvWZBbLnHpgLg==
X-Gm-Gg: ATEYQzz0LFvamVMilLSM7RXJuZhha/gLdzxGREGsrOENoCWNwpqdkd01NrVjFR49zYo
	T3zxbc4/Aly6d6N7Kk7D/3nc6o0Zq0v6VwnjM+v8YPCY4fugnuXu/ftGQ4U76tfHNCu+AwrERv9
	/3HOYWPD3qrzoagpqK5UqfoJeD4T7tovtjjF+QAk+xJuvAEtW6Z1Zgc5pZ6iVId4LncjPqc/eEx
	dXuXQWiACmZaCJVo1pEhNJW8+c4DWT6V/irTc0ApucgOGDo94osm0UWVDwqYpHiF+ZBVDg6NHcT
	AEYcNwEoHE/pfotr+kRAzlNIMN+XtUYkB6NTiSfS0m4gWrgrCbCHSmtYU+Yiai/juGUWx6Q6qTH
	nEcMR1gsyCRKwxCsB61CaevpYnfAigmoHKu2hG2eAXi2X96qhIP5mz+D/EcihCUc4jGKQU1ybvY
	URfIsO8IPEHpEnt/3/8wWFYQnC2fyiAcdBYOAX2HQemSTI22T6md8Xo3bRc58=
X-Received: by 2002:a05:600c:1d0c:b0:485:2ce2:4c8a with SMTP id 5b1f17b1804b1-486f442df40mr41300785e9.1.1773823321468;
        Wed, 18 Mar 2026 01:42:01 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:d643:4385:f93a:2085])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184961csm6389350f8f.6.2026.03.18.01.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:42:00 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v5 7/9] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Wed, 18 Mar 2026 08:41:42 +0000
Message-ID: <20260318084151.122674-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260318084151.122674-1-biju.das.jz@bp.renesas.com>
References: <20260318084151.122674-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277044-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid,2.220.108.0:email]
X-Rspamd-Queue-Id: 8E06E2B8681
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change
v3->v4:
 * Collected the tag.
v2->v3:
 * No change.
v1->v2:
 * Dropped gpio.h header file.
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
new file mode 100644
index 000000000000..7c21afaee9bc
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for R9A08G046L48 SMARC SoM board.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/ {
+	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	memory@48000000 {
+		device_type = "memory";
+		/* First 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x78000000>;
+	};
+};
+
+&extal_clk {
+	clock-frequency = <24000000>;
+};
-- 
2.43.0


