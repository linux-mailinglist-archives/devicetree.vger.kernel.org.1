Return-Path: <devicetree+bounces-312806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ByPfN9xJMmqwyAUAu9opvQ
	(envelope-from <devicetree+bounces-312806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:16:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B276971B3
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:16:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jjuzYqvU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312806-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312806-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 616EA302FA9F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 07:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 581983B19C4;
	Wed, 17 Jun 2026 07:16:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF083BAD90
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 07:16:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781680591; cv=none; b=rJr4psnDNRknRfMdKlXfWAq6FPChlsfjumOiM+6jOkt4uBMxuVMAUbK0Tx5jDnuRZg9oiX8jLNMnk/26TGPHLvEOq4YBr3hV2+Nxa1Hj1nsI3+75Y0yxqhrPgoYjGE8JIwGnABxV7LapIYxU1M069ivAuqlGxFHbhg8c6BDgWRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781680591; c=relaxed/simple;
	bh=lSN8fwJzMoOoe1Em8kYvhvxEFsCMOPfETF5wp2itgRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qD/AFQb7ompRNcq/VmC5JM7I1RsEe6Z29sUtxzqpHAWuLXwMp4Kr8oBsmJ13U/11Gnz1iwL191PIcw3v5MF2S6vHe1ZjVLFuTOSY9wS7pigZiB7Jp3ANQ7WwuIfiRQOqE7Yrh4ZPlGU99x0PmMuxE0gZt5u0VWlEvnd0Wz+1U20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jjuzYqvU; arc=none smtp.client-ip=209.85.215.176
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c8894560c89so830a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 00:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781680588; x=1782285388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9WzTe+1vlDzzoGxy8+EdE00Q4JOiUjNnl8CApnpdjw=;
        b=jjuzYqvU0NlWLrpNangwr6rAAud2Y9MNt4ckbfjGw0sSMpyTptlmkmve3uo+IGzkH6
         bEbfAhJVCspNwmZL8Sfnju2YCky8ZOZLrJByzX3ZsLOruwtmzd7uke67J29yzH5EVCgI
         ozXJDY7I6uAE6bNs2McltZIZrNUCcNeE1zz2eeU8KTDh+kLblwx9KTc1FotKNi31w4Eb
         6UhBfjXoi7LZo8Sl/1qEeNyg7xX9rHMecwE15nDkzt2/kUOmxtqF4mDpLVWpeokrGFBM
         eMRcCA5d42rS53Q5EMn0dIiF4JgyVWLLxlHh9F/9kslbEvXNCMOi3e7shJT0nt+k3W2O
         1GMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781680588; x=1782285388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O9WzTe+1vlDzzoGxy8+EdE00Q4JOiUjNnl8CApnpdjw=;
        b=XPMHGIbIk54lDVo/PavGBwKpyBlFaoMbOndW2RGPc32Nf1Kbg7MlBBUIF5IW6HI0Ma
         iJSm6eJ+gJ9YEcjhXKed5Zi4DuzdRv+dRIMUd1JzvSBZy1nMvB2kqXDs+iDqX1u5zexv
         EZQTQkDblc4wvAREtty/uo2DQX/LJN6SxQKwDp5C0mk5QnWchFLUazs8ZEQkna3FoEd3
         VP9BwKzOFXV6Fqcvo1/uX21btfvskj3ZY7YnYTUU+HwVxr+qvF6Sd7BXP4oKB45Dgiz2
         /J8DjKAdVy3g0hz/nDmi6PbhmLKjtNMUtveGuZRM/DmJXU5pNI23zYkLMBqnLKJxT32R
         8+Jg==
X-Forwarded-Encrypted: i=1; AFNElJ/QXUQe/UG6xLBzCwWI9H0sT4NHh5sGfZZ8icJhcgKUVB7ey/eAViUJG0yXE9ycf+TVLBOzyL274IS9@vger.kernel.org
X-Gm-Message-State: AOJu0YxcNlZaOBir0x9UPUhzKB9p690bMb+uu06I3EVs4/tTXH7o6I5A
	JmtCqIO+/92GxajyIxwEiFbEi4+uAhX/1piMwljcQxMsZWU7a5TQR9+I
X-Gm-Gg: Acq92OFfeG/JyzF7VGad6B4a/EmvGhi9XR5MiMY6lJUaznsDIvaGQ5mArAREHOnhHEq
	6ZsOIYN9PLNI+HIl2P1rb0ZnAEoT+mgdWeG0DcPgnhFDFHO5q0WQTWhcJQxw+Wyslu5VS+wByYx
	OD7OrHFhybnFTJrJLRJfLCVMDxNiHb9mCvJo73qMFMCA+JXcL1ukPqKYGN/ci0BeJh4hVB083sA
	sPbq2Vk6EfmvveGnYJDBHHJHOB37JVHTfIQT3NbR04jBwPdI3L0AcnuD2Q8rs7Reyt+ITy8cer1
	NiwAVau1KuTvlayc6ndGk9cR+GWScaWIIwwFsqdviYK9rE/cKEt7aq+zPx10nJIa5rpPUgO6FkV
	lJudvfP0HnmFBKhzgCxVQ09XqjdUGLzbum+I7a5rhvb6F5VrDM1Otenv4RIacA17m5bJ+l5Nx42
	kQNcWWL0xqBw==
X-Received: by 2002:a05:6a20:d494:b0:39c:1f:3211 with SMTP id adf61e73a8af0-3b8b64836f4mr2769367637.20.1781680587671;
        Wed, 17 Jun 2026 00:16:27 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a52:c491::1002])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c866519faabsm13653439a12.24.2026.06.17.00.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 00:16:27 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Arseniy Krasnov <avkrasnov@salutedevices.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] arm64: dts: amlogic: meson-axg: Disable nfc node by default
Date: Wed, 17 Jun 2026 15:15:56 +0800
Message-ID: <20260617071604.635627-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260617071604.635627-1-jerrysteve1101@gmail.com>
References: <20260617071604.635627-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312806-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,salutedevices.com];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:avkrasnov@salutedevices.com,m:jerrysteve1101@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61B276971B3

nand_rb0 and emmc_ds share one pad. Before enabling nand_rb0 for nfc,
disable nfc nodes by default to resolve pinctrl resource contention.

No mainline AXG boards enable nfc currently thus no extra DTS adjustments
are needed.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index f1f53fd98ae2..6457667d974e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1999,6 +1999,7 @@ nfc: nand-controller@7800 {
 				clocks = <&clkc CLKID_SD_EMMC_C>,
 					 <&clkc CLKID_FCLK_DIV2>;
 				clock-names = "core", "device";
+				status = "disabled";
 			};
 
 			usb2_phy1: phy@9020 {
-- 
2.54.0


