Return-Path: <devicetree+bounces-270095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMutHdeqpWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:20:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CC41DBB45
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:20:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA68F310FAD3
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C451441160D;
	Mon,  2 Mar 2026 15:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WqES2omY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AF241C2EC
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464453; cv=none; b=MsyZeagAv8qBWfKDOtGoFwd4FsPrc/FJw1dfe+OOWLGUOe2bXgniFdA4n8/3HWc5dUXq0pIb5E9hs3s6CtrpmeTjxYpN+aDcv3eHaEpIkd0EvNlUg/z9IUZpgzrfopmTx7drSmDJ6lJGIzj4FnFB62XLg9agMmJSjFa0+NPAj70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464453; c=relaxed/simple;
	bh=q1S365EAUCSFZRfzHFj2YrxqxW/P8gDiboVdNm2IwmU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DFbwuiNA+pi6zELOUEr213xsoC6aGBL98l6rR1uiqr1clHFEa0Veboew53Ifs0dvcRfEbDCxp2j9e3DQq9r1Zcv2Gs8Z6J+uiDEyMVgpPRO58PQNB3GNY2FwISJ/Nat1Lm/D4GdgL5NlT8d5whw2nQWz0J98AS5D7FyOY43Mshs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WqES2omY; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4807068eacbso37960475e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464447; x=1773069247; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pxmhxlsdpHuelB78+3YE0t0LkGzrS5SfPUfh1V6r7eI=;
        b=WqES2omY7rou7dSI2UcfEa3Vh3z45361b+z013IU+uc/wM747q+kU09w4bDNKGPtK3
         sLRHPLKnkThIT36BqGAn4som6akxOtURzpz2xy0DaOzS52pGzts3YG2wVZHuN2jBKTsv
         NjGOszLXbRa+Dj9n+Gy/qjUecUhOzV//ZlwTDqKkb5P1EWN7hs2Y0izSPcjCKv4DhAr1
         JdlbpQ/cvcunPwQ+uR1V+ItzCmBo7+iIhDK7gl/sNM3YCe/AZrEZVGxZ5AMb7xgWpTOr
         Es08m1GGLbiXZUrFW1OAqcq0qv0+n70H0HEPtsgNMfvdYau1spkIlZgbpPCvdpJuYN43
         0fuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464447; x=1773069247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pxmhxlsdpHuelB78+3YE0t0LkGzrS5SfPUfh1V6r7eI=;
        b=lkivK5LDtd3PwsJjBz+dW3jJV5m82BOFHqNG29DVb/xg80iGhPd8xz+smUg+bKMeRj
         sSLyzyEXYmE8NJq16P61rTyH8lMc6E7G8BR4s5qdj1jZNjIoLGgEsuGn/VOR4CWZUj0r
         Oo1aoj1YoXfh9upvW13Feht0sFO+JsE9Q7oQiqM5LgqHmf5NvPh0IdFL2plSzGW4VAVa
         GpU90HtziSPCCxmV2kwRbCfo/BsSaWne2v77wQx0dcv3O8QHtOW7eKNVUfi9h+48Uyo2
         9SLQl1FF+B448WQGOdW5kSu4XFOtMU9LRbMG5firygj9F0m2a5iLEbTI4yHdixqLkPAo
         8xrA==
X-Forwarded-Encrypted: i=1; AJvYcCUaPbYiVnt7iKA9g9jok3HlndObfNzqYQnqbvAaXWdhSlcCXtELkRA10UxzjLaw3QHkwdxjdRd7tOnS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdz6Ok+p6JIGCSP1BgTwgn2SjY1K2zKv1TGQco0Lfwkyuxl2gd
	dU1batglMjuO68hvo7whEdQ2N5q1Czc3l4hmjal9/kGkE8InR1V3/mBi
X-Gm-Gg: ATEYQzz4pqnqYd2w7y/oCUw2dQFAreAuZBUjAktZUWc8n22dYUWxhXiALr73sDt30f8
	7W81+1wpCqouO2HQc2CeVtjQaTAqy8tjCoWR8a6RzfWDRb9Qo+Jd8KCg3lr79W15AuZOrOrBfjW
	rkm4e1dbxgpHyem9lFbDrjGuHjyLNMQ1/t1nR5nA7FcOZpBf057c47IG9Wjs89kM5f6Qs8oXRPS
	o1x1RPmVyIhRYeDRF6CGC/zNsaCVZe5SKHIEcfHQXUb93SjlhxgOvncaqJqLMylDY7+Tj3GIx5h
	fFNgCKWWzqS0USF13Wx1qwLPIKyALuYSjZj62pAO6G9Q14Y5JAXG/lBTeaV2+Fcu+FJGnYGoKTC
	7ieAdiTwu3VlRJBB3DqbVSCS8gbknVDB4IyoIoK+QE0/aZtzN6/TjsiMRe8uPwiYoCXlzJzJEI4
	jC+wuHRUcnTz14wQrsAcsUpne1bbYMPFqLXeqyfmhjQfAIgmejEt8oAmKEumn3ftqKSA==
X-Received: by 2002:a05:600c:4fc8:b0:47b:e2a9:2bd7 with SMTP id 5b1f17b1804b1-483c9beaca0mr263703895e9.19.1772464446760;
        Mon, 02 Mar 2026 07:14:06 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:14:06 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:31 +0100
Subject: [PATCH 10/10] riscv: dts: spacemit: k1-orangepi-rv2: add SD card
 support with UHS modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-10-89c219973c0c@gmail.com>
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
X-Rspamd-Queue-Id: 19CC41DBB45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270095-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add complete SD card controller support with UHS high-speed modes.

- Enable sdhci0 controller with 4-bit bus width
- Configure card detect GPIO with inversion
- Connect vmmc-supply to buck4 for 3.3V card power
- Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
- Add dual pinctrl states for voltage-dependent pin configuration
- Add AIB register properties for hardware voltage switching
- Support UHS-I SDR25, SDR50, and SDR104 modes

This enables full SD card functionality including high-speed UHS modes
for improved performance.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
index 414b03f5e6480f05f5d7eeaaa0afb4e86425ae36..f22f7427b3370a6b6c1cd8360b33efc2a285f8d0 100644
--- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -140,3 +140,24 @@ sd_vqmmc: aldo1 {
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
+	no-sdio;
+	disable-wp;
+	cap-sd-highspeed;
+	vmmc-supply = <&sd_vmmc>;
+	vqmmc-supply = <&sd_vqmmc>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	spacemit,aib-mmc1-io-reg = <0xD401E81C>;
+	spacemit,apbc-asfar-reg = <0xD4015050>;
+	spacemit,apbc-assar-reg = <0xD4015054>;
+	status = "okay";
+};

-- 
2.53.0


