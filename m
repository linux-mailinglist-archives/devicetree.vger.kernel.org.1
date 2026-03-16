Return-Path: <devicetree+bounces-276197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yB1wIn8OuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:06:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAFD29B017
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7F5A2301D4AA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A3639B963;
	Mon, 16 Mar 2026 14:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hFl0H1UO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879DC39B94A
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669877; cv=none; b=BrfzqzB4LWb2FPpgxak7OJOG7sfhk1O96Gi1ywCZzemOxuJ/TsFo9qy/74kkN6z104BnSdntehjrYU3HoSb8QYHXt+x8S1pEKWfc1w9yuIiiXtzTJo7y6J4pM826S8Uz7dvq+b7kB7hZ3YHuzH6cqnTwSYPVPo3mZlCpyy4ryro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669877; c=relaxed/simple;
	bh=VV6Uc/fQnB1CO6vc4YbToyuLpo7rYuo3u8QPLHi0LME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=onF1USUSvTg++VbeMIUMl1CEkjzQjfxMp1c720eAc3DZzxfHkfl7Qmk0wKc26YaRGsNmlz6RL56kVV7TdRKBbqgeQTsoyCqx9CRgTKVgVWYCC5Uo4mV2tirbpmStqqznQkTdykXL5CoVR6sVN+2Y6Yef7u1y9xtMNo8C+AyllPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hFl0H1UO; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-43b3cfc38edso1952385f8f.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773669874; x=1774274674; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rCiQ7r9hHEhSUVh9d7R+U0a5N1ipko9lEeJud3TU6bk=;
        b=hFl0H1UO70v5rzFIl+vpmFU9pGZKT1tze3YuJFp9rNy0KLahvcBlvPs93fIjZFVaCc
         Y9tC8eql64NClqQckpzvL+de+cw6tubNlMffBLGxs7IOzs56KGhtAX/hDLecsyw8wz57
         XiDborgL+JopxGogyrsQ7KeKeXJ41jYHuikUXpZmdpa5Saeg4TZp5xMIpcevZWEe4b4g
         ldzDorvI/UQopK1ugIhbgE+QsZIewvrZCBRazB2POSAkUHAnL/2aAbZLa/EdZah3UlyB
         RHyqhcuWiuHST8WIdAe59gK39CmRzFoo2Ygpr13O8ZvsAWWV400bSwl7JcrVp7rIZ/Z3
         MaHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773669874; x=1774274674;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rCiQ7r9hHEhSUVh9d7R+U0a5N1ipko9lEeJud3TU6bk=;
        b=e0Y0KIbhlQhSppLsIWxwBEetbTDHS/tBWV2+K/R7t9dgvX8pgeosM5TmGfHTSwpVPq
         tE1RlDnkj6fjSPMY3AAst7COs7RQBzymmit9Yp9p7xfbWUaA+CH6RJYkqAmoj5kKt1sE
         zFme4rbIq1P5T5fBfIXMu8TGoozjV5w4pXeaUACQwXN2qoW+TfduJcz4t8bkCKDNn5Ml
         kXZj+w+Hh2GqoPQbhZR0bIknBwquEdfu9YINHdPZytLhaeC/pOSN7kbW4plXA+9ei1Ao
         bIJHJEp/9ulYOrXHUo3y5NkN5e9F2nV3HJCy0H0LejCPNYOgTQUgffLgg1rPxvDxt79x
         o8lw==
X-Forwarded-Encrypted: i=1; AJvYcCWVO70PxRmiPOeN2fK3eHgmFbvncUA/D81R9euwBZLirTM+LQ/X3muIwObiUsBW5PMWJX6dhqLV2+ob@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi/h7iEVs2mrVlsH6kAz+ozXmBiYf0VgvPLt1XQzYb0xiZxiSW
	/GC6QG88+RD7Uz1CMf2cNVUeZH+GDUc9AXIk9P0SuzSDjUMq/UUViVFs
X-Gm-Gg: ATEYQzzFk0uJv8jXRH4cTiHZ6Br6ekMII7BChz1t3gaguqQPsj9Hh147lAYIdyZ5Unt
	28M1BZz1Wy3tS7uCGDzLB1dWmrEHMqG6J4Hhf9RCZ5BWTzAT+8WbbtQAZSfzcT+eqYRDZ1Sn1tZ
	P8ZeyUEBwABVnLGNhMNN1rCKqsACPy1juSBbb7vzoRUu5Przuw3zq3uMYFurLdTc3tymN6rajdN
	AGj+kZk5GC2rFitL/T64wqOYrqeNjHwHF/E8P/2AXkhnrgiSQhasKYvVg/up3XV0dvWpV6byDYr
	HsuoQMfruTQZkLdGR6OgKSo3mK+lOJnvqodMG8eRRB6jLYd4ycNPWbewt6io/8YMT6ULgEbwIx1
	nzRWy+E85oQMvQuDMyAAapXv3SRpavzSpjP4qgyfRr8lkLUxR1Ofo1/jZE6sNvkDY/yr9h+aL3K
	aG3MD5wJZG9dhg43KpU4olmuBR93NAK0kziIWbJh3y7cd+Y/aNrZidtddPBPRoPKkT
X-Received: by 2002:a05:6000:4012:b0:43b:433f:48a9 with SMTP id ffacd0b85a97d-43b433f4a42mr8024247f8f.15.1773669873688;
        Mon, 16 Mar 2026 07:04:33 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.234.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3a09e453sm20698725f8f.0.2026.03.16.07.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:04:32 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 16 Mar 2026 15:03:32 +0100
Subject: [PATCH v3 4/7] riscv: dts: spacemit: k1: add SD card controller
 and pinctrl support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-orangepi-sd-card-uhs-v3-4-aefd3b7832df@gmail.com>
References: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
In-Reply-To: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276197-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,d4281000:email]
X-Rspamd-Queue-Id: 8EAFD29B017
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add SD card controller infrastructure for SpacemiT K1 SoC with complete
pinctrl support for both standard and UHS modes.

- Add sdhci0 controller definition with clocks, resets and interrupts
- Add mmc1_cfg pinctrl for 3.3V standard SD operation
- Add mmc1_uhs_cfg pinctrl for 1.8V UHS high-speed operation
- Configure appropriate drive strength and power-source properties

This provides complete SD card infrastructure that K1-based boards can
enable.

Tested-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi | 40 ++++++++++++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi         | 13 +++++++++
 2 files changed, 53 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index b13dcb10f4d66022d27307de73a6ea3287e97441..8d82011f1af666fb78c282a2abcc0cb88f962053 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -570,4 +570,44 @@ pwm14-1-pins {
 			drive-strength = <32>;
 		};
 	};
+
+	mmc1_cfg: mmc1-cfg {
+		mmc1-data-cmd-pins {
+			pinmux = <K1_PADCONF(104, 0)>,   /* mmc1_d3 */
+				 <K1_PADCONF(105, 0)>,   /* mmc1_d2 */
+				 <K1_PADCONF(106, 0)>,   /* mmc1_d1 */
+				 <K1_PADCONF(107, 0)>,   /* mmc1_d0 */
+				 <K1_PADCONF(108, 0)>;   /* mmc1_cmd */
+			bias-pull-up = <1>;
+			drive-strength = <7>;
+			power-source = <3300>;
+		};
+
+		mmc1-clk-pins {
+			pinmux = <K1_PADCONF(109, 0)>;   /* mmc1_clk */
+			bias-pull-down = <1>;
+			drive-strength = <7>;
+			power-source = <3300>;
+		};
+	};
+
+	mmc1_uhs_cfg: mmc1-uhs-cfg {
+		mmc1-data-cmd-pins {
+			pinmux = <K1_PADCONF(104, 0)>,   /* mmc1_d3 */
+				 <K1_PADCONF(105, 0)>,   /* mmc1_d2 */
+				 <K1_PADCONF(106, 0)>,   /* mmc1_d1 */
+				 <K1_PADCONF(107, 0)>,   /* mmc1_d0 */
+				 <K1_PADCONF(108, 0)>;   /* mmc1_cmd */
+			bias-pull-up = <1>;
+			drive-strength = <13>;
+			power-source = <1800>;
+		};
+
+		mmc1-clk-pins {
+			pinmux = <K1_PADCONF(109, 0)>;   /* mmc1_clk */
+			bias-pull-down = <1>;
+			drive-strength = <13>;
+			power-source = <1800>;
+		};
+	};
 };
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index d2015201f8e5adff8bda75712036b8dc2b79bcb5..3952c4d0ecfb26e9d215955ca8791243bbd1dab7 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -1211,6 +1211,19 @@ emmc: mmc@d4281000 {
 				interrupts = <101>;
 				status = "disabled";
 			};
+
+			sdhci0: mmc@d4280000 {
+				compatible = "spacemit,k1-sdhci";
+				reg = <0x0 0xd4280000 0x0 0x200>;
+				clocks = <&syscon_apmu CLK_SDH_AXI>,
+					 <&syscon_apmu CLK_SDH0>;
+				clock-names = "core", "io";
+				resets = <&syscon_apmu RESET_SDH_AXI>,
+					 <&syscon_apmu RESET_SDH0>;
+				reset-names = "axi", "sdh";
+				interrupts = <99>;
+				status = "disabled";
+			};
 		};
 	};
 };

-- 
2.53.0


