Return-Path: <devicetree+bounces-258484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yC4uMDhLcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:07:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3019E69883
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:07:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93E783032F5C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B158357A28;
	Thu, 22 Jan 2026 15:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fh5zBYzE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB7F34B69C
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095652; cv=none; b=MEPHkgdKWDz07pazWJXnhaEGiu8jHe/9opUEjDPFdFnzLziDaf5gFzfVTg6Sq9REJi+J1PamdlTA08ax1jm20zcH4XGxafhd50KQ3tA2lrGhTzjHZSeoKicOMQW1QxXcoItw9egTiKYasE1z3itB6NDxM1lno7SMIWMcPSXwMvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095652; c=relaxed/simple;
	bh=JqgbQNrqQ6UKCxgFx0b++79yzf+5y6xvkz8O9SHBNWQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uneOeG71gXbYSUunKzRz/heo4nrd6PEjOnGswsazMH1xpCW5a8quCzGj/p83+Oc7kDgkrISubMcBZgrnFbBl2uKJUXTwwxvYLyeFOizw2lk2YA2Bqq2NbNXTPFEgveXsTxRRa2hibsL0Y7l71BhJryvXhYXN93cFkP0TlMhDP3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fh5zBYzE; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so731127f8f.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769095647; x=1769700447; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qx2wv6S0iIG4uGf8KctiDi1tHOu4cYrHv9uyasSr0z0=;
        b=Fh5zBYzEYPuX4wSaw1qkir0fiNmRP8gx9qu+/HwsZxE2dqY/chCBS5gpF4A5plQQ/2
         XnMjZZ+5XvgnWqjcQl8DtCIxxpvGusD0Tnj8EgN6IqvlSxHNzV6SR2JPvJeYlebWizwp
         hvc4LwFZAzK+MNrWScdiyC3Av+ylCQTE4Me5q0XKplWXTdatepCidjVEQB/qX0qbd3KI
         4QgCzLKl5JQUIzym9jFpzhCbabj24Td0Ha20LNnYNPVBQqznqIR8fcCFoJpHSR0TeIxK
         +RJMZ0/+b4jaVbpucVgfIk+bZesx+yNXhuxiHBz272j8FQde//Vd0XiiDYEIOnKcmYoY
         KLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769095647; x=1769700447;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qx2wv6S0iIG4uGf8KctiDi1tHOu4cYrHv9uyasSr0z0=;
        b=f7SPAslj7hK7JCfvSHUrB+5AlOWnsbCi2EwLQJauc9d0JjWc5+mUlHqy+UTfigBOqR
         qPTTLFwYjZKgfru1I9MgfcJpGb7Q6kzijrTZDSnGmDklkYiqnxspV+Iu2HBWGcTJGTxW
         hBveRx8/tkvJvN+8yaLklK20rbxR7YV645ZCUmEO6pZTgh/YLkCc4Aoy22NvynK2Qm69
         Ql3w+oI8xIhU15N5yZpvpWL07gbYY5Uez13CKG9I/3n6PDb8Rp0NhJYp1qJmdm2tGEbk
         Rge4QnoNY6LdXWaLmLQUM19J3vnVfv6jGys4AcE8l/0xwYJb5mdDy6eCHNPwbaD0Tawn
         7ECQ==
X-Gm-Message-State: AOJu0YwVhfep58a55AnLh73BNWXaC07sIeX80LQmfzjnWoSgX37aYayU
	NCOb7XuYYfaZn2M+ptpYhJ3Ds4W4QoSGTJm2sQhYa23vBJ4szhx+y838
X-Gm-Gg: AZuq6aL3RuTc/MsTOq5ABGswfVq9m5B3HMJwAuLn/h6tU50S7axoiEX/2nLzDfAmiiM
	IRvYdlqlCxoZkKaZYar/9ZmxNbcZJyhNsIgnK4iQKNFVWY8Qi5lAhB/kf6CjW3kzM+ZPwutlKJI
	v5Hwk2lJKv3LGTpUjXBNnMWPCKCHmsak7UQMamIpxoTgpuFiFtADhQIMnl88oJpeFgRDT2lLN/R
	EuXg5R0QDDd68adbBvnyxsJHbtOI7qtDahAEV7KcqOgts81iq2jZh4du/67HI65Iuk5GyVEeOd3
	uv9quvUe5Olgg+kQxMp74zuLONMga+9LRF3Y4+M51sHotwj47C4W2QKhJdjHkTEsxD4t4q4qCMa
	8zdk68XuqlDdTnJTO8ZIhXrICyY9agCUv3dCDnAACUrklqmNxLCoJ04qVGWFLvqMtUe4ZdBjGjP
	FSlzUyA/aE6bU=
X-Received: by 2002:a05:6000:2c07:b0:435:a258:772 with SMTP id ffacd0b85a97d-435a25808dfmr9706611f8f.57.1769095647132;
        Thu, 22 Jan 2026 07:27:27 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4358f138e26sm20762642f8f.17.2026.01.22.07.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:27:26 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] ARM: tegra: lg-x3: add node for capacitive buttons
Date: Thu, 22 Jan 2026 17:27:13 +0200
Message-ID: <20260122152713.8311-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260122152713.8311-1-clamor95@gmail.com>
References: <20260122152713.8311-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-258484-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1a:email]
X-Rspamd-Queue-Id: 3019E69883
X-Rspamd-Action: no action

Both smartphones have capacitive buttons but only P895 supports RMI4
function 1A (0D touch), while P880 exposes buttons area as a region of the
touchscreen.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
index e300a2c49edf..db4b16a21e86 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
@@ -109,6 +109,12 @@ rmi4-f11@11 {
 				syna,clip-x-high = <1535>;
 				syna,clip-y-high = <2047>;
 			};
+
+			rmi4-f1a@1a {
+				reg = <0x1a>;
+
+				linux,keycodes = <KEY_BACK KEY_HOME KEY_MENU KEY_SEARCH>;
+			};
 		};
 	};
 
-- 
2.51.0


