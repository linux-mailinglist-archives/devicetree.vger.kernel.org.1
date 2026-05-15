Return-Path: <devicetree+bounces-298163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DEMMjL8BmrtqQIAu9opvQ
	(envelope-from <devicetree+bounces-298163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:57:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A86E54DE0B
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:57:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EB5A93035BFB
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352FD477992;
	Fri, 15 May 2026 10:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pj0AFU5C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AFB46AF3F
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 10:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778842159; cv=none; b=BZADPAA2LZutO4/XAwtuHbpdjoEoSiClVZusmZjUJ5/nqCxAcM0EdxFl/LifBzzD43n7Ew+IXdD0KUFR0QDgEfAjVGERsOIrCUVzubmnT17wEqB4NzygATiq3PQUp6qdfgsOtH5ZR8Fiwf6XjuntNflWaCPdPgPLpJI57+yazyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778842159; c=relaxed/simple;
	bh=3aSvx4Io/6wXnKYqIdHAgAeK+8aI7Ki0w9r0gL1YGe0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MQTuJaAawLKvIlXuKVevIGHG5iuuiY0AayDsgAdMx3UDVZEWBC+H24hgLok2Giuxv6czBHVsN2Qb8ehwXjZCzN2PD9unc4UGl5qpisoPxBiA61WrjrwfsofMQwVKRemk605eg1JZLq6pI1SDar2ALxgf9NpBaxor6w4UdAtsnlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pj0AFU5C; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-45297094718so7213615f8f.3
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 03:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778842155; x=1779446955; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AWgPUQvxpgR7326ne226FMqTKp2lrFwP9NQdMcyNV50=;
        b=pj0AFU5CAAWmpo84yypyC+6BIWQL3q+PbrdSliU8juXM3rnrGUZN7D13nc34keKXUm
         ITQCfslo1KsYjSuGezfoy3Kb0w9lbJm2DwwN45MOpIHuT/o5pkXdwzgzM0JG1IoDe6Ez
         edE/VR+igPmBDZ7IrjhfwjvYa5oBYkKSEK5oxHqDFD7wQihSyzGnAW3M0p/XdM/BgAsQ
         DQNUEHpuKUtER4zQJQxdWeD6n3ObKNs2UdzQxrbprhpTtLYG5ihaIOS0MObvobHnfsMT
         3l5rfUuj2InASfZBS3RUQcrNFF7JYE+N952dSy4pwUo9huTygQy2oFbZ5jB+NRJwOt6r
         hKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842155; x=1779446955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AWgPUQvxpgR7326ne226FMqTKp2lrFwP9NQdMcyNV50=;
        b=OaRVVFwQf0grPuya+YoYXydKvuMz1nPIskG1ahtr1RxG2lbwJwlKsgN3upy4g9Z9Re
         sYrL3nD2HqsNz4v6LZTnikmYDqW74GoxqAUUTWYE+OHLg2oZarjVJGCEGscudZebmcjN
         pOsxG1a2JN9s/VtTAb73tN1B6gNhOJBEcgcMCIPg0JiDAh4m+ntxp405Fohx1F/bKCia
         kTFTT+5keKROVE7ImmW28Zv2cK63BtATC+seOoXWGsOZysFiB7NE2XYXPjcArWrotDkt
         AdTm6Na3tHYBu4XUK3/yiIQ3vdfqqtUnjkQMvT2c1xXFQieJNb4fJnPu4uV/+LeQWvhu
         HSRw==
X-Forwarded-Encrypted: i=1; AFNElJ9RtRHIjBdq3h+PBPZ4jI3LyVvbOuN2kzWVtd3W88SarONXX/GIgBKi78cUWsgBYIT7CvcxMj61Fjv6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4efK47jTvSQR4KCsBbtfLg9S02wh7I+KEkQatOwscEhPJT3MO
	wtVxHiEaIwpwRTDpismpJyK3E80f6FPS/tRQN6tROTMOhkidreqeSVQe
X-Gm-Gg: Acq92OFZuUmRki0iNkiYA2Op+7nNyydsc4uI6qzP3Waw0Rru7l1DulQa46UdGz7oLWj
	ymPvgG199akMmEz8OkZ6yMNfm5EY+jSu37VX8p1RfIn0bcpLlsxRNGd27GA1sM/N6w96LflLDfP
	lBwAphNVLILvKUNN8hQ0L9zQfzNVG+nx2GtLHw2QoCAQwwrvIQ4HKOM/fhdbhSeX5HmDrqZYIUT
	+2NxeWGFNvbvv2KJtc6UIU43p3WjJXWCDIppHJW04uzH6dihvMpV9YX+o3H16uFB4kaL7q7RvFT
	WUSSdgo00l2taJTYN7kKK7AapG3iAE9pDDMZDDbxYEb0H3osNOsXsF+R5qZ8A/hUL3Qvi2SVT2/
	cW/jfol/yul0JmHMMTA3FqSOlopCqqxWQLHIsZVWqQKOoYbSp3UrUy1RrWog9E1+ud95wkcUH3b
	qihnYIvyc+WeQYZMrKrj5qPhsvVC709odJB4zRuCQGEUT/t+D1RUKxdNLjENzVV0Rrbw==
X-Received: by 2002:a05:6000:220b:b0:45d:d092:ac9c with SMTP id ffacd0b85a97d-45e5c59f691mr4788790f8f.33.1778842155465;
        Fri, 15 May 2026 03:49:15 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45d9ec3ac86sm13975602f8f.14.2026.05.15.03.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:49:15 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Fri, 15 May 2026 12:48:59 +0200
Subject: [PATCH v10 1/4] riscv: dts: spacemit: k1: add SD card controller
 and pinctrl support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260515-orangepi-sd-card-uhs-v10-1-094af27e310d@gmail.com>
References: <20260515-orangepi-sd-card-uhs-v10-0-094af27e310d@gmail.com>
In-Reply-To: <20260515-orangepi-sd-card-uhs-v10-0-094af27e310d@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Ulf Hansson <ulfh@kernel.org>, 
 Ulf Hansson <ulfh@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Troy Mitchell <troy.mitchell@linux.dev>, 
 Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>, Vincent Legoll <legoll@online.fr>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 5A86E54DE0B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.dev,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,baylibre.com,online.fr];
	TAGGED_FROM(0.00)[bounces-298163-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Add SD card controller infrastructure for SpacemiT K1 SoC with complete
pinctrl support for both standard and UHS modes.

- Add sdhci0 controller definition with clocks, resets and interrupts
- Add mmc1_cfg pinctrl for 3.3V standard SD operation
- Add mmc1_uhs_cfg pinctrl for 1.8V UHS high-speed operation
- Configure appropriate drive strength and power-source properties

This provides complete SD card infrastructure that K1-based boards can
enable.

Tested-by: Anand Moon <linux.amoon@gmail.com>
Tested-by: Trevor Gamblin <tgamblin@baylibre.com>
Tested-by: Vincent Legoll <legoll@online.fr>
Reviewed-by: Troy Mitchell <troy.mitchell@linux.dev>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi | 40 ++++++++++++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi         | 13 +++++++++
 2 files changed, 53 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 34d88334e95e..4e9a62d0e85b 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -590,4 +590,44 @@ ssp3-0-frm-pins {
 			power-source = <3300>;
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
+			drive-strength = <19>;
+			power-source = <3300>;
+		};
+
+		mmc1-clk-pins {
+			pinmux = <K1_PADCONF(109, 0)>;   /* mmc1_clk */
+			bias-pull-down = <1>;
+			drive-strength = <19>;
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
+			drive-strength = <42>;
+			power-source = <1800>;
+		};
+
+		mmc1-clk-pins {
+			pinmux = <K1_PADCONF(109, 0)>;   /* mmc1_clk */
+			bias-pull-down = <1>;
+			drive-strength = <42>;
+			power-source = <1800>;
+		};
+	};
 };
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 24becab4c959..06469c364eef 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -1214,6 +1214,19 @@ usb_dwc3: usb@c0a00000 {
 				status = "disabled";
 			};
 
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
+
 			emmc: mmc@d4281000 {
 				compatible = "spacemit,k1-sdhci";
 				reg = <0x0 0xd4281000 0x0 0x200>;

-- 
2.54.0


