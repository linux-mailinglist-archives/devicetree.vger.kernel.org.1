Return-Path: <devicetree+bounces-284384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JdfGMmhz2nDyAYAu9opvQ
	(envelope-from <devicetree+bounces-284384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 13:17:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3A23939AC
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 13:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4B9C305ED2F
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 11:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CF83750A7;
	Fri,  3 Apr 2026 11:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PDZdPaHF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81F137BE64
	for <devicetree@vger.kernel.org>; Fri,  3 Apr 2026 11:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775214968; cv=none; b=tSzGyHFkITwPV+WtZNuiqRjKJswTz+3TTWj6Ud05DSWi2rUpDTevnAveTszRpfmXuW0lw2w9M1Kb+cZgjsoX+HyBKKqYDOfx97Ml7ERO0UceAWs78VKHH8qiU81iCJx9XLGcHChDQ4fHeypaSot/ZhMBnAPN1S4I8xZNeZwAICo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775214968; c=relaxed/simple;
	bh=tFW3YISywSwOMjdHnG6FZDjw1jg1AF8WKQoGy8w1cNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FSWQhT1xF4VJj53d7a9J+slINkTHS0ZhtNSIHSLGnmbobjmid8s4vHVJie/XoIN1g8QETVnkUKB1JTaGQmjObEVWKdYdzi+DUAh51dPAUVkjFAMDeCucYm6AXqAJOknpx/FCotZULb0wn/AnD1shxv+xjOVYVdcDNra1eYKGhWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PDZdPaHF; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-8a4b8c3a30bso24417576d6.3
        for <devicetree@vger.kernel.org>; Fri, 03 Apr 2026 04:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775214965; x=1775819765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJAPLXH+JSPAdQeklsWr8qGoeKpyEbUrtjYWuQxTQmo=;
        b=PDZdPaHFEyCEi4fkRukfiryyz4bv8rF5rljg1Y68ATYTEUdHF01OKD7+Uy0S3Ad76p
         9iXWXfwX/kmWinRLlrDdijVYqGKig2KZ4+OTVIGIcJyjQOv8tuYTPjip61nLPsvxQwdJ
         igi5d6f90mYRpfNyts2ftTAFBYnWuISoAZvifTzLoQ7YBCIRtnRGkT6jevH2aTclAJJd
         w6OM0ywqLh4LgOW6UDFGkxqWELVgGWalWeUcqyJnAb/FjICetpKYMd4fMlESURwtVccT
         o86vx+DSOuBu9iQH4mhRLK2gwEr9wOrr51Sd3Sb8ZobFJi1DDMECwquGYzD5XJRjf3pG
         bECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775214965; x=1775819765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fJAPLXH+JSPAdQeklsWr8qGoeKpyEbUrtjYWuQxTQmo=;
        b=SKypBlnUjPt8gHVd29Aogf5GmpHYl85wqUBG9VnJZM3tqb2BTzgWDSTifwX/+Z2JbW
         llGHyB9jp4nH3RdxoqrlHcROrZ0zusUAY94PDAe9RmIj+m+29d6r4ZIVZ3vT2hjjzd6w
         bsdp2zkilMPEznQXOb2IDqIEcrjlUzhVfP2DU9zXafQ70UwMpItasYjF/0rq/59rw5Dq
         yyGM0tD0Dzb7LfywtRaLLzuf2QwBZ24i9UDADCuUZWumIPTzrkv8vvqE7Tbmh4ZDpw4b
         LOpA56kYdxayTjkPSayCZxCN7LFrz1+cBXqPe6Vb5/doRJNHUNsALbB631XwfhF7lP3o
         B91w==
X-Forwarded-Encrypted: i=1; AJvYcCXgekDVyL5FQs2zMyIqZKRiqgBAxZdbxWMWTapFkXj2YbYFsKHc7i8PBiFWRry7sSSJvxhozHejUsoc@vger.kernel.org
X-Gm-Message-State: AOJu0YwzJoei81KW1eiebUnt2HlIqAHErTM4osTB5SAcbTVv13GKxTNw
	aPdJrzqJho/EJLngPJra761icDqg+YBnDrSxCOJf6v8cnvdqftPsqz2f
X-Gm-Gg: AeBDiesmJXLgAojLO3h4q+ETkizEwR52GlEOyOxK96cfX1OEpFjs61QUSY5F5GT6g50
	fmc3+mIUb85PfTlMLK522BmgZCyYEWLjx23tNxWbvNkDeemHfJV5joSzJuqhHnMeC0fEslOXggQ
	RID5E+4PdPfB7nbWYTxt6pW2RQSLE8RyJFYIhJfBWy3z2pDSYySdp2Mb6HRlICSuWsw7V+9gI1g
	sOaDyDIPIMJ23MgivuRPug23FO7FOHHS7va8+bauc4h8bNm9oQnNEJiDRbi6Vx65EShy02TxO/j
	G19PEqkAvo+I9fTFRkRfPVjT7JBNxAcrB7ojeq4VruPmtJ+PRuMa7o6+uu/xXauwHlaZOuG6VY9
	OSVEKfDQgEC0MWH6YpG4WTR+NlVwWb5L8CSKnwb3PbqUUAjBNinycFeHrkuQw5kNabjC5E952fJ
	AFJfJ5SDYdJnMbuTTkDSIdlIVn0j4ltrlrlOLCzqo=
X-Received: by 2002:a05:6214:55c3:b0:899:a91a:2e08 with SMTP id 6a1803df08f44-8a704bb920fmr38024396d6.52.1775214964596;
        Fri, 03 Apr 2026 04:16:04 -0700 (PDT)
Received: from sleek.hsd1.nh.comcast.net ([2603:3005:1473:4000::71a3])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8a5974e8e8esm45319836d6.43.2026.04.03.04.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2026 04:16:04 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	samuel.holland@sifive.com,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	daniel.lezcano@linaro.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	liujingqi@lanxincomputing.com,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	dlan@kernel.org,
	chao.wei@sophgo.com,
	anup@brainfault.org
Cc: josh.milas@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	hanguidong02@gmail.com,
	michael.opdenacker@rootcommit.com
Subject: [PATCH v5 4/5] riscv64: dts: sophgo: add SG2000 dtsi
Date: Fri,  3 Apr 2026 07:15:15 -0400
Message-ID: <20260403111516.379795-5-josh.milas@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260403111516.379795-1-josh.milas@gmail.com>
References: <20260403111516.379795-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284384-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[kernel.org,sifive.com,outlook.com,gmail.com,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lanxincomputing.com,sophgo.com,brainfault.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,rootcommit.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[joshmilas@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.45.206.144:email,4.44.29.128:email,4.196.180.0:email];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.45.202.168:email,4.105.38.128:email]
X-Rspamd-Queue-Id: AE3A23939AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Adds sg2000.dtsi on the RISCV side.

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 arch/riscv/boot/dts/sophgo/sg2000.dtsi | 53 ++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/sg2000.dtsi

diff --git a/arch/riscv/boot/dts/sophgo/sg2000.dtsi b/arch/riscv/boot/dts/sophgo/sg2000.dtsi
new file mode 100644
index 0000000000000..412adacc00576
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/sg2000.dtsi
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
+#include "cv180x-cpus.dtsi"
+#include "cv180x.dtsi"
+#include "cv181x.dtsi"
+
+/ {
+	compatible = "sophgo,sg2000";
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+
+	soc {
+		interrupt-parent = <&plic>;
+		dma-noncoherent;
+
+		pinctrl: pinctrl@3001000 {
+			compatible = "sophgo,sg2000-pinctrl";
+			reg = <0x03001000 0x1000>,
+			      <0x05027000 0x1000>;
+			reg-names = "sys", "rtc";
+		};
+
+		clk: clock-controller@3002000 {
+			compatible = "sophgo,sg2000-clk";
+			reg = <0x03002000 0x1000>;
+			clocks = <&osc>;
+			#clock-cells = <1>;
+		};
+
+		plic: interrupt-controller@70000000 {
+			compatible = "sophgo,sg2000-plic", "thead,c900-plic";
+			reg = <0x70000000 0x4000000>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <2>;
+			riscv,ndev = <101>;
+		};
+
+		clint: timer@74000000 {
+			compatible = "sophgo,sg2000-clint", "thead,c900-clint";
+			reg = <0x74000000 0x10000>;
+			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
+		};
+	};
+};
-- 
2.53.0


