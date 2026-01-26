Return-Path: <devicetree+bounces-259396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHKaBTItd2nacwEAu9opvQ
	(envelope-from <devicetree+bounces-259396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:00:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A897785B24
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FF713020A7A
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9AD3093AA;
	Mon, 26 Jan 2026 08:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HSWMWF66"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD74311C09
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769417965; cv=none; b=vBkPAwbtsut2AKWS5jZmuDnO0FsXkgGvNHZo2EwroEFdj0/O7IUVXj0hpkZZO17avIfTEBHICASQseorBQl6UiuO6wrtwXyJrmcSFi+qwtNU0GWETcd8DjYNrqobVr5b0kTBOecXVPS9dw8n23p1qqYfqbfpynpSXroqvPAZ8MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769417965; c=relaxed/simple;
	bh=mIIGP8ADQDXAifGwYCbfQhje9ZzDDTFLQayrat1NL24=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DjYOL9hzHp82LW+e4VjCj5XyZnQYkf1gIG3KwTgzIG1nqQtd+Ra5JBMOf4aHB0WQWChC8fqviTq+Shdqx6XzShAxQLwazsaa8G6xeBDQ7qTxQgvRA9KGiAMILD0kk+JQXgOtPD706iA6Ky7jwrjXWoGPZ0ehtRemJDl3sRnhLZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HSWMWF66; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34f634dbfd6so3493015a91.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 00:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769417962; x=1770022762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=15BA5riHYfgjJikydQ+3AqLkz5CGwlAFj0WC+7ODSWs=;
        b=HSWMWF66vq8XvBX4b3TJxl0FlARVMcdKf7ZNL450NAQurTddc25D5adanlMzzC+WD0
         raq3n24eN8MOtC451rDYNi5YfDajH+siL8PvweVLBll4+KeRSWFI5cbnkeOh5elyH7kR
         EKfVemLzak0ywx0qRreRFwyIHBboK5ixx2Sx6LUvcvQsa5mGZQmYaEfJXA31Uj+n2PST
         WmqWGbnOJ6+vWmNq7mTnsfeRukdMuDEaTsTB4TAEhJDS9VYlCIgcMqoxxgEv136OwQVA
         lijEV1+SBnalTWiW0STA+2hFeWc1//YgCsAXT1GV2YPmt6Q6Cz1Teh7BR3mfjzfSZt9n
         xXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769417962; x=1770022762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=15BA5riHYfgjJikydQ+3AqLkz5CGwlAFj0WC+7ODSWs=;
        b=vHTTFrQWT4t92kGj4j+9PiviGpsKxBafQn4CRCurVq+ghEziYJfH072h5rhl9YQSdt
         n/On9M9rKnQOE0wWQpKqYaOJB1D6xzxEL8n/niOUSrygU1TQo5kDj5Nb+jju88SkcbcV
         bgAqn9pQrhGG0wpNG1fSy9yBsio46UTnEWWZWR/F/lAUf9vJ5wt5nvbK9WiQHNAHwJFQ
         f0lrVkkOLE3Ij5e9Vd/sYsXcAy6wZBYdoo0yxpdHcfaHFu3K31cnzGIk3STtX00by/cW
         v+oPZpqLBUIpj7bKlCdSn+WCsC35/XBZ8KjKO0RCWSJxGxaDqX3erM4/JjqHR/ySLQ+V
         JI7g==
X-Forwarded-Encrypted: i=1; AJvYcCVEEO6LVwMvMa0805SUdEiWXu8tQ522r2Nv2/OFwjFPXZj4gEMJyqNm3c0DcPZITQqRmXuenW55FAAm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+VJ34NodSQR7cnsqblLPF+m7aSBwbTvNoXPB+3iD4/0bjnuCt
	u9tTxJ9Z9GUPYshzuzoLGpVieeuL8ltbifSOUDm0YZoEx21g4ukqklKS
X-Gm-Gg: AZuq6aKIypulGrbf1LeyFRA0wBgy6vKzzkeSLFjN6v1GppikKb3KuCVjyHWRIJvK2ld
	vvYhE0B2Ja7Lh3KRsNFnJKOhVERmDUBCyTDRSvMrHgiffeUkKsLLRCILRl4cwiaw5yJ+T7mUyq5
	ZcjjaqqI4Atyk10oiEIsmGgJE/i/M0S9rIW3e/Gz+qItIlW/52jaL2YUrQ6jEZwVvCIqLXH+JD9
	/U025rFSt0SbBuYvvys7tJHmCKyNuwG5Wg3p2/bbxb/QxoNYRWHmwC9NjHjNwtMC3YKUPNya0F7
	LZan/nJs5xoeh9c0dSB3ftr0UwD6fBSND5UdTv0nsOxMSx5XOQOyYg1clJDlAtNKj2htpQcv3S8
	XGMLmydx90j6WUHpvXnKvdxZ2rwmOZyrmtXORSd51BghKcVHCXwmiFG2zuAYODEYbJEmX8ZX4Zz
	hZLjEG24k7mnCIkV7bJuxbQzx6P9mVfHTaFNj/I5J+zuCNoFpJuFZSnXsWCSaFxzpSW1TAyI3C
X-Received: by 2002:a17:90b:248e:b0:34c:cb3c:f536 with SMTP id 98e67ed59e1d1-353c41d1ec5mr2498102a91.36.1769417962171;
        Mon, 26 Jan 2026 00:59:22 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536dc3e0ecsm8251798a91.10.2026.01.26.00.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 00:59:21 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	a0987203069@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: nuvoton: ma35d1: add display controller support
Date: Mon, 26 Jan 2026 16:57:26 +0800
Message-ID: <20260126085727.2568958-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126085727.2568958-1-a0987203069@gmail.com>
References: <20260126085727.2568958-1-a0987203069@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FREEMAIL_CC(0.00)[nuvoton.com,gmail.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259396-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: A897785B24
X-Rspamd-Action: no action

Enable the Display Control Unit (DCU) for the Nuvoton MA35D1 SoC.

This patch adds the DCU node to the SoC dtsi and enables it on
the MA35D1 SOM board.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 42 +++++++++++++++++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 26 ++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
index f6f20a17e501..406dd7998324 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -98,6 +98,42 @@ pinctrl_uart16: uart16-pins {
 			power-source = <1>;
 		};
 	};
+
+	dcu {
+		pinctrl_display: display-pins {
+			nuvoton,pins =
+					   <6 8 6>,  /* VSYNC */
+					   <6 9 6>,  /* HSYNC */
+					   <6 10 6>, /* CLK */
+					   <10 4 6>, /* DE */
+					   <8 8 6>,  /* D0 - D23 */
+					   <8 9 6>,
+					   <8 10 6>,
+					   <8 11 6>,
+					   <8 12 6>,
+					   <8 13 6>,
+					   <8 14 6>,
+					   <8 15 6>,
+					   <7 0 6>,
+					   <7 1 6>,
+					   <7 2 6>,
+					   <7 3 6>,
+					   <7 4 6>,
+					   <7 5 6>,
+					   <7 6 6>,
+					   <7 7 6>,
+					   <2 12 6>,
+					   <2 13 6>,
+					   <2 14 6>,
+					   <2 15 6>,
+					   <7 12 6>,
+					   <7 13 6>,
+					   <7 14 6>,
+					   <7 15 6>;
+			bias-disable;
+			power-source = <1>;
+		};
+	};
 };
 
 &uart0 {
@@ -129,3 +165,9 @@ &uart16 {
 	pinctrl-0 = <&pinctrl_uart16>;
 	status = "okay";
 };
+
+&display {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_display>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
index e51b98f5bdce..7293b5eff046 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -379,5 +379,31 @@ uart16: serial@40880000 {
 			clocks = <&clk UART16_GATE>;
 			status = "disabled";
 		};
+
+		panel: panel {
+			compatible = "panel-dpi";
+
+			port {
+				panel_in: endpoint@0 {
+					remote-endpoint = <&dpi_out>;
+				};
+			};
+		};
+
+		display: display@40260000 {
+			compatible = "nuvoton,ma35d1-dcu";
+			reg = <0x0 0x40260000 0x0 0x2000>;
+			interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk DCU_GATE>, <&clk DCUP_DIV>;
+			clock-names = "dcu_gate", "dcup_div";
+			resets = <&sys MA35D1_RESET_DISP>;
+			status = "disabled";
+
+			port {
+				dpi_out: endpoint@0 {
+					remote-endpoint = <&panel_in>;
+				};
+			};
+		};
 	};
 };
-- 
2.43.0


