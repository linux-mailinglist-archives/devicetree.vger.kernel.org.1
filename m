Return-Path: <devicetree+bounces-295394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YK6YEpObAWoBgQEAu9opvQ
	(envelope-from <devicetree+bounces-295394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:04:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9AA50A8AE
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:04:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C61D3065C29
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 08:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CFED3D171D;
	Mon, 11 May 2026 08:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mSZF1/AF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA803CFF7D
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 08:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778489679; cv=none; b=jHUr3xE/XfyOziTT6LBEDw8ElrRDSq8Zxza0Sg0PiHmOxlU7pbT/aH6yFGKRq6Ho4tFb+Bas0bD9qOOucgdD+neWMil5va5sRWKH7eV4qKoUvMGU0+m9ncDBsurqATSkaquea57YW/1HlvuYrf76VR0W5Ol8Wp+xzkHtvUuFFkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778489679; c=relaxed/simple;
	bh=czyMPdWP53DEucpvLID85A2eMzwRX1rlaHLtT1FWJJM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=acnovol8MzLePCMgxIk/0KBlbVyYcRV/sm9+lC7rUJRSfPLMoivQ/XZsdELf6X9W9gGDdFz+AcwKjjyTONiOYU1VWa4kGv9pS7bFCVkfff2nf24FO8JoL/OWraEOCDzO6X7UXk1HoO3KnPf5bZkqnRJnAUsrwOJ53SFRHDt63A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mSZF1/AF; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4526a8170ceso2158030f8f.2
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 01:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778489676; x=1779094476; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eHZBSgDtUIrOhP/YxIJOEaKWgx2xyCzMyAWUTKPESJY=;
        b=mSZF1/AF2YJK84DdMQX/pPBQH2rBZargXFcdUeDtyNMDMsfUoVEF5Sp3gyESafSNaG
         c7UFCWHFPsnuAmBkSmsVcknzcrxcCo6/078cey2k6Bfw3UdmBFb2+9QR0B57GtsbJJ0Y
         2axtj7fhlM6n6qQv3TorJfdxz/cU/iqtIa8C54wse/5EIz0iwOpKJuq9XGCibZwA8+3h
         dlVhBbKvi1yC5VholRDNBvkwJtuj2UOkOkjFSHtC/auuYcBx/Af4enrLI5h74MEtbFUH
         X0KsW2pkhKqkIi8wcOaCeGadFWDjm8ymUWbTgz0RhcY4F5AyHHQ7qaHKR4CUzwwgoqiq
         ru9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778489676; x=1779094476;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eHZBSgDtUIrOhP/YxIJOEaKWgx2xyCzMyAWUTKPESJY=;
        b=kIuO9n31Cp7l60HKHdsVTUNSrXxKc56CFlM6XgSFebjqu1yqRhyE009ifU3SSQ9HNQ
         haWk71EPc1EMbiktkea5xczLxkQQmhC2XEJTbWFzMn8/twqPe4CSxZUwV0HcYAY5Di9b
         npFTYnM470rew/rxlz6aFAL/fizxA9LMayFydFZbWjbFmpR2IprKu2K8EwwizaIFpKLR
         ppde2A5oFktoc2jqYZbeSLO1kiyFftb6noU8p5BoqN6R9nucOkHVtGie/z47B/Z0Q/ej
         ttZoixHE7LJNyk2dF6U+r2V0XZt+aS2wccvh7CN+e++mczgej2KVYCzGAPqQytQDy9VN
         S9LQ==
X-Forwarded-Encrypted: i=1; AFNElJ8bnQY4TXHuoU0q6IomkbxELnya2SyrlvdSYBogkfO5OmSYbN31zOYfRc5ftGBtQRX2sKX2SkC1keN6@vger.kernel.org
X-Gm-Message-State: AOJu0YzDekp/4lzu6rRTqO0/UziakYiU8+RX/LsIbOx2jAwrMfrcOI++
	T3QBJTcEOit88O4WyXD/9tCRSunQ77Y8WEElvcr/YqUleQ7JYwyMVd+g
X-Gm-Gg: Acq92OFbazEbZmr0B60oRmUaMiDlbwxiIDuKVmfqhYFZZOqkQlJg1FFIRmMvRyVvBGp
	WUU1YIkNObOCXnMUDrg9r3j89dUaSNEVbxUOF3x9W+5AbBoXnuYy1GEiB0gLpmfhX5z/JkCYJyb
	ybQiH/Kav+4dXyPcOyuE5xLz0NfH6tfRLoSy8WRtc3dyMITByKA0bV7DjW/jp7IfUFjvlrs6Pi6
	2eW5uK1Kcqy7p/jUQEduJ3wz9l2hMvBCzHlyV7zsT9UnKf657eLYvOdzAT2rA79FaS6r+eFg1dw
	qFOrfdk9WvXybmKJX3PfLGdsipRaqLXAfLf1bEV0rBTkuSpL5dtQViMmIrrKg+pXU7vjwfCvqdT
	L69FhDcealTjfe9R9vi8w1pYe4QArDVe/SvqIqeGkoMlb4AQDuA+NWXIsMh/XcS9FiE3Sd23PIK
	yzIkWlwOtROGg0kuCuWGwPIo11xJB6TKGSOVNqo9W3Z2NYowZ8UFpGRIn/mrASM0ZCOA==
X-Received: by 2002:a05:6000:310e:b0:43e:aa88:f1a1 with SMTP id ffacd0b85a97d-4568ca51624mr12522568f8f.30.1778489675606;
        Mon, 11 May 2026 01:54:35 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.237.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45491ca2fd6sm24944189f8f.30.2026.05.11.01.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 01:54:35 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 11 May 2026 10:54:00 +0200
Subject: [PATCH v9 5/8] riscv: dts: spacemit: k1: add SD card controller
 and pinctrl support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-orangepi-sd-card-uhs-v9-5-ae48c0b2b2cf@gmail.com>
References: <20260511-orangepi-sd-card-uhs-v9-0-ae48c0b2b2cf@gmail.com>
In-Reply-To: <20260511-orangepi-sd-card-uhs-v9-0-ae48c0b2b2cf@gmail.com>
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
X-Rspamd-Queue-Id: 9F9AA50A8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295394-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.dev,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,baylibre.com,online.fr];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,online.fr:email,linux.dev:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
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
index 24becab4c959..6ded5c06b797 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -1226,6 +1226,19 @@ emmc: mmc@d4281000 {
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
2.54.0


