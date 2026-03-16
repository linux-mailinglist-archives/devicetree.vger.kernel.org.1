Return-Path: <devicetree+bounces-276199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLZDGdkOuGmIYgEAu9opvQ
	(envelope-from <devicetree+bounces-276199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:08:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C738F29B097
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:08:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 724C23081F05
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03C439B97D;
	Mon, 16 Mar 2026 14:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mtJ4HdJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E27F39B97E
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669881; cv=none; b=T0a+bG+Qn5ErlwO2GALJfpxy8Upe18ZBEEq0jI673SSRal2SG1SWWOSjzAmPgRTQtni85jjvFBXpzEek7Tl0Lt/qKdxmnmGCQMQEhMC3JmcKdVe07jXbTsBYvDEJQVekwlje47u6WdcZ4cNUt3WfW1uDcn5DNv/0VGdkT8ek284=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669881; c=relaxed/simple;
	bh=h2D5WHgrxz43uhMtLfKxOR0sKrVvSVtSEpqCmED+0J8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pHzrl3UbZRCzUbNjZAZAkgNIHL3BYGncrrVfflIV9MRjKu8v/XOODQmMMC+ZNzAeU8n4xG0BkDJTn+8SW8rlO8uwoQlv+dkyxDsm/Dq7AhWBtLeof2FzeBk3kjVVUsUofhdVrkkAvLTh3FB9zRAQOm7ixOcWE9+9SHmUwirYjxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mtJ4HdJ8; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48534237460so51167805e9.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773669879; x=1774274679; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H7U0Z6Pq5BNBGUpIipaToeDztdOq53P+XHlRkPRfqt4=;
        b=mtJ4HdJ8QgssEsTbDBqiXgNQLdtNx4vkkURRul7rNcjEGBVTCTQr5hlNt7SjVa/IWJ
         T/XhkmMFUYDVlsWPa92+SMhFlF/THR/qqfzH6asCOYk4staQcNX64sJYa+m0m4Iq2LqA
         PnZxV0pslDEOyy91jhlL5CC9WfAEh9FDSrqbTB6PNI3Z+uu0QA1OwJd8z6lhL4WmhCPQ
         fN2vvhWIB0q1tS7ntep46grP1trnYHKEJOH1ezarmqX9J0+sOXZ0Aq1JiXrd8519L6w8
         3uxpKSPauxUheJWfRWTS9vc4mqtyKOp/cYJVEDAr2GbYwln9IW1WNIL5lJ/4OWbpQdk5
         BLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773669879; x=1774274679;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H7U0Z6Pq5BNBGUpIipaToeDztdOq53P+XHlRkPRfqt4=;
        b=HCtrV6kyGZgKk76T69rKV5M39kzEXec7AJ1gZoGsZyqC0GVXIHBLMXxNGbwm7OJS/P
         MSisrryuS0RYJO4tTaNvTo6gv3uwT3+9Ta5QD7+ZBW8UDh+DZicsIoy1I30ZbdPOVazo
         3kC3ONBo9ENK4qySoFwhfpoY/ym4CPiwALGXXlPBQhmPIscMC1I+Mk63qwk1oAFKwshC
         0pWrfLvGrB/ez1Prp2sVUdYYh4FLEOM52/f9QaRPsQbCVxiXMChYObJgYMCEDG7uQSpq
         9zb1feWIVEqnhcYxJ5KVKy/u5jmuQhYaaf+Tb2ILXuuu3fJlK3w3CtxGZ88hY/6CwS70
         epyw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ0xW7q9a0PeRtNtwjhvQSXp+/hLxd6AHyg7iaHScPwjQmzOUm6EW8NDdWIkgtsEDfReFL7Jso1IOE@vger.kernel.org
X-Gm-Message-State: AOJu0YwllZQKiIsiw+Rip495CVLmfBWTKsHflrgfSu7POA2Ok2ADRjUR
	l9xBeH6cjwI7Jkit/uspkkrtpZxfbiMZ3JBB683wkgHT2Fw/HN7+t8qS
X-Gm-Gg: ATEYQzxhp+2Go4J9pd5cU8U1nkgRCqFg4A3/FUG3kY4PpDf3ZRL27HRLFN8tG6/Amro
	fGfBJ71gaeFiF5Sz9eAn85f9nCw4ebJKRlorRgIz9yffDkrOd1ywcSR7LXHGR1R80Z+bFHO5IVE
	4FEoM0DLbMinrNVHV+g9NUnSV94jifTsLZMoSiX0XQ7G26tiHT0SKhR6PprAAolGbWWPJy3wc5O
	dWjE5UtSf3o+nvHozSrHLQtPL2u4qBM/AvqzW0V9QF96JpU9HgbEhWWvXPUMiGA/hnQRVxDLMfG
	GYy14I0Nvs2NPVkH1z4azFadbCLL6kjBkCrMVqSX5SlXq8aC6FDrMoXA+AQJ4MLJ6fLL1zYf+ad
	kIW91zz6TmpEb2+brjUO49p9F/6uUFc/W/0CVEokZGjVOF71PfJ4Yu1+omFi1WPIPnOgODiw9q0
	u2PfF1ELd+cLkz515fYr2F3f1plVXNEf33h5pUWPwtlxUtvc+BKEE3uasHh51pl9U4
X-Received: by 2002:a05:600c:81c5:b0:485:3812:36da with SMTP id 5b1f17b1804b1-485566cf00bmr199399265e9.9.1773669878422;
        Mon, 16 Mar 2026 07:04:38 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.234.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3a09e453sm20698725f8f.0.2026.03.16.07.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:04:37 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 16 Mar 2026 15:03:34 +0100
Subject: [PATCH v3 6/7] riscv: dts: spacemit: k1-orangepi-rv2: add SD card
 support with UHS modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-orangepi-sd-card-uhs-v3-6-aefd3b7832df@gmail.com>
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
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>, 
 Trevor Gamblin <tgamblin@baylibre.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276199-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,baylibre.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C738F29B097
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add complete SD card controller support with UHS high-speed modes.

- Enable sdhci0 controller with 4-bit bus width
- Configure card detect GPIO with inversion
- Connect vmmc-supply to buck4 for 3.3V card power
- Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
- Add dual pinctrl states for voltage-dependent pin configuration
- Support UHS-I SDR25, SDR50, and SDR104 modes

This enables full SD card functionality including high-speed UHS modes
for improved performance.

Tested-by: Anand Moon <linux.amoon@gmail.com>
Tested-by: Trevor Gamblin <tgamblin@baylibre.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
index f1533c99881dbf38e16cff5e91e33253cfa7a56d..aff23846085d22d1e9cd77434bffd2816ad59e12 100644
--- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -140,3 +140,22 @@ aldo1: aldo1 {
 		};
 	};
 };
+
+&sdhci0 {
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc1_cfg>;
+	pinctrl-1 = <&mmc1_uhs_cfg>;
+	bus-width = <4>;
+	cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
+	cd-inverted;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	cap-sd-highspeed;
+	vmmc-supply = <&buck4>;
+	vqmmc-supply = <&aldo1>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "okay";
+};

-- 
2.53.0


