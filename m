Return-Path: <devicetree+bounces-270093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KVlGeeppWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:16:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AAB1DBA1E
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 59B33302A9F0
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6E041C2FA;
	Mon,  2 Mar 2026 15:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a2nmc/UJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5108541C0C7
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464449; cv=none; b=j5fN7N13eNLWy9mcQTQuBGSsU1254DsHf5QK/zB3CF/p6AG5pRurt525kmxefhdI/Pc11aDZJPVb6/viNTH40H7Xz438l2zNzFiuxqjJUm44erwZsZ7bstEDOfwlLbp/njDfnnzlEvuKa9WP2tvABtCMrfPH1qY/TwvSs/qewmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464449; c=relaxed/simple;
	bh=dcEFhqPvKdwQuanA4mTY4Hc01u8XbBg6NksC+/+CuBo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dwb7O46fgWdipFm7SJfTbni2RdgkDdhvZT+44U1PmZsvPrO+Wu/fyGcabfidCKyUq1MVsx0TcyoQ9HvzZgK/4S1wJu7+dfroc0UsydetiyEBijjPN+w2FMEuQ0dxRpiOMG3dL5afdTbX58wTpwAHf/H5o0FFSdAE3aXsmcp14kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a2nmc/UJ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48374014a77so55042035e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464443; x=1773069243; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dz1rwkI02gKLCCAejR8NRcSe9CYDdLI50V/yGcp3k+8=;
        b=a2nmc/UJNJ2fU4F7yWSUwWs5G0FeY0nAqEfp0qttKLf4N+EKgMrxUZH2RK+8o+iMNJ
         EZMERFdKFb32af7/Ge7Yl/s6NP6Iz+7Kn96czf7DhBEoOqf+E63fF3bj0sX+Iw7ZMrDC
         67SsFMD5SF7M37FtGrSou8RekQmwA88vRMW+kLwvUD9I486hzHg7WVMLsguA9/UKlOid
         /jpm8EoYnzmufNktRPISdPCpUg6LWpW9aY9WMirVUItPQnX24IDXHoJiP/YZTXAcE7I9
         DZYc4Zrvb/cqpqZLoQcAxELcbqmaRwDr+oUYZeGDGvC3Npg62TsyJ085v2SLkF2SnmrJ
         uAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464443; x=1773069243;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Dz1rwkI02gKLCCAejR8NRcSe9CYDdLI50V/yGcp3k+8=;
        b=ZMtKFwQNh2CADJLhe9UONvprE2D8KyVzmQq3V5MmwcPDlxgfHJZXxqqJApV5k7X66u
         3Sfaz3fsxhOSToNmqD0DbFKyHrIby/8ObyTmIb+cXcMvQrk1+6vIxIkK0sNawllKrn9G
         OHoGU+OAC3SbCNRk/g2PQrUOplZPqaOpEULgcGBXd4BRU2MmjI4dAyD7Aj6yF6Esy2lY
         gN5EW6qbRJSR/4u5mG3h41Rx995zvLlT9zGssqezYDJVa9KUsGUNy2OGHCy3qKmP8Pel
         RTPTRsOJuaFYLPkU3HSv1Q5ynwVZJZqMyW+ud8+06bb4Qap5lPWWK58Z/Ga13SaVB1Te
         hEWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhKFUpGhqkVm/SC/JjdR1PqG7yedXHBSYBWIY1FOTRESDKI8OfL4L6Bkjku0TIvx6g/cn1O4oMRzd8@vger.kernel.org
X-Gm-Message-State: AOJu0YwPoWtcydL0yclH8HjgSbHSgYhs5C6wdkj9tYufnUzJsBFdQry3
	6oeuDo3AULeW8hclYXZZwg+9FOEc0p5nsI4cS29KDjXPvP6fd2nOxF02
X-Gm-Gg: ATEYQzyJLRo7oiEV1HyL9qht2zDM67jcu5XWmPeYtkqGhDZPQCNsHo3FO6RouFF1SNc
	ZuQ3d88wr23KFD0nKF+8SxHtCm/PnC2MWnKgEufrOB3m4PoUtWIc+7OsEx5ik1EnovR2rnvhr4N
	RxAr0VrOSlEJtFKZkr9gN21UFUnYEkQZGP1RKtZmJsxLWU4VpIJiv4+WMM8IC3CcSjkUfsH4OkG
	iT3ExNjTSIuoT/1b1sOsPF0y4KM2tbVBm+5w8kOkYoNuPyGXY/5Zvj8TUh4Lo4Exey6sKLi9hKX
	jFfFGTMENdYUow7XHE6LlicYxiX17JstdNiFyUE7lwdXzFuDvLJTpnwj07zssjuEdBezGgvw2EN
	9duJ8sfE4D7rZko3M5Kl4p9jU4rxMcl3zhVgjSuNcwl7qByD3nVt/yg9PJB8ya6TeeaeWG4oXnG
	drai5w4qXE0mejaa4ps8Esb2Nu1aEwcFvqWtDPcngNxoVY6s+r+TEhKA3eCjWP9kK0Dw==
X-Received: by 2002:a05:600c:4e16:b0:47e:e414:b915 with SMTP id 5b1f17b1804b1-483c9bb6564mr218276695e9.2.1772464443134;
        Mon, 02 Mar 2026 07:14:03 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:14:02 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:29 +0100
Subject: [PATCH 08/10] riscv: dts: spacemit: k1: add SD card controller and
 pinctrl support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-8-89c219973c0c@gmail.com>
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
In-Reply-To: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 23AAB1DBA1E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270093-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,d4280000:email]
X-Rspamd-Action: no action

Add SD card controller infrastructure for SpacemiT K1 SoC with complete
pinctrl support for both standard and UHS modes.

- Add sdhci0 controller definition with clocks, resets and interrupts
- Add mmc1_cfg pinctrl for 3.3V standard SD operation
- Add mmc1_uhs_cfg pinctrl for 1.8V UHS high-speed operation
- Configure appropriate drive strength and power-source properties

This provides complete SD card infrastructure that K1-based boards can
enable.

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
index 529ec68e9c23eb2a93c04e9ccd3f22a01c4cc4ff..1e9e4f4f41c196326f20c0e5ae6721ea85ea5091 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -1207,6 +1207,19 @@ emmc: mmc@d4281000 {
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


