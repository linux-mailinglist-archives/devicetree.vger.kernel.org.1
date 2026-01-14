Return-Path: <devicetree+bounces-255089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F4182D1FAA1
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:15:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A5E13024285
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A168431AF17;
	Wed, 14 Jan 2026 15:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i9Jr79n9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB75431A551
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403666; cv=none; b=aWAYkr/onLkh+pKEg11VsTF0DckFK+ymqQdl8HBHE5dWIF0rXH33NJ/I3gf2FhMt4k8Z2SngCMcwiAYdIllYDcRkU5udE/aJ/yBjSYWRkqHtvHFaJnHt8aSIL2jWqw/N7I07/OMvLVbn1lUXFeK2/xh6QcGqlvn+W7IqRkXDoJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403666; c=relaxed/simple;
	bh=37ssBE3aanUugoLgxto0YwPyHpxoTGe7/lnWA6Cd1/4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AIzdKt4pOOzeXpL0RzndDUfukflH9Em+FWRLJqUbB/I289ToIK89DNdA+r9uSLx8FEMAC/9VGJSIVfLx2+qCt+rJeMEJnnNA4O8C84V3KIvB0BzMJukW2Sniy38G0ZZE/Of1HHwXo5Oa7ieEdlXsazMOEh5HvgdQFsyJ+eroScw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i9Jr79n9; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477563e28a3so6466775e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768403663; x=1769008463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M11xPiXaInwVnEMGq59nYgno6MdcMcqZX62iafSYodw=;
        b=i9Jr79n9u00iGKFtEf0KcXHdST8yKeccRGmnphWvbiYgdVVIx4aWRfxSwviqz1HT4Z
         TXGF6mBg5voH8JWrTiThPwqPIZuccqghQnXSNPF9ZOGUnwfSwOfVEprp4pSrEWtEu1ji
         uWePaAzzHVSvzts5q5NIm56+9EjTwdK4VCnREx5UhMIyKup9GgPG33/tapHihejhlh35
         G26BNX0+kwZhbHz3kR4VnFKpHJC/POJcplvsqjdsGUbgKdS3vkBtFQzmbVzWf6EnQkiy
         LLNHavHhVY6ZgMuaBv4KIeNEKL946EeuMxBl6XJuzqzPt/ULBYLHRwlyCcNTo/seSVfM
         fFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403663; x=1769008463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M11xPiXaInwVnEMGq59nYgno6MdcMcqZX62iafSYodw=;
        b=LFqCgqU8/DODg/pL+NZupzvJ85uTi3HPjIs0jChNm+BVs6i55q6fuiHWK9myRPyCGM
         U6qmP+WLh75fIkEeq1K8ZDQowCmP69TKv+mRCAV0/lPFAS/bXF4z58C1ttpd82U8585L
         cnr5BO/xrpl8fvP5usbrS25NlxYKzfVAWFlQLFWL8Fcyyyt9KTbdowN2K+GOfLnPjD0n
         aujCladWhNSFydBOsxCXRPe6Kt5f5JBeCu4oPRz+GLK20rBufHA65FYUNiBZNXaVe9G+
         kq0EAVRzTLbMiHPjsG2gJl5pbNHvUSOGIsX2CH7BZGq/d9Cpmz/q58dp98x3/mIhuntA
         zOng==
X-Forwarded-Encrypted: i=1; AJvYcCVA687oMVkqaKsKzzz8qbbBwO6RutYhXMlaXMvVhnn+tF+wPNZxG/azcCSiQgYXr25a8ceeug8ZSPXP@vger.kernel.org
X-Gm-Message-State: AOJu0YyDr6nJNZ7ZAprrTln9jn5L+ehtEJbfyMgJB4Y0Mi4xwefLR6qT
	3wjHb2OgJ0pBQGlK17r8SBbCI1eRm4040lsBNTUFg5QriqptjZXBl6Ne
X-Gm-Gg: AY/fxX4IqwRnB9rjpqAJnoMuO9ZmR5jwwITRyVf9pK71yLncDmXYI1XYx+2U8jFPqY5
	KjTO70X2boj8UYrUBrHQVDaj7Aka5Omqg/QrRED4vgFdwZHQWbBLhvdS/CNQkVIAz0wefT+e7iq
	paZbHd0VpP2Ort2o7sjd9It9Wyce1q4g1eT9jn7vyQ9aWTWOf0O27EOY8pfd8yx77zCRMfmbki9
	WK7LVzujujYr20snaSqbfm+hFFfCt8T+VSIMO+vPb8Ys9EEKWPIF/Yw5U9soimKExytl/zJ5/Ct
	aPDXDZINSVi2S1cRyCM5STWxgIl89pa0/k15YBowKwqFuxv4nlnzkKqsTx/H6mV7J7VpG0jTBfr
	3mCkoFUJ+yRbXCgj1VLqs+eQhIr+8bpUQ8LoIvWmul/17kDNuT1AXHcW561z1bX3gbM+317wzyJ
	Z9Ft4qZ9F7ExV9N4kgydz1Pr57mCaAf875sQSTxWLz4GMjtHAl9rtxvmrlj0BYS9zc
X-Received: by 2002:a05:600c:6992:b0:47d:403a:277 with SMTP id 5b1f17b1804b1-47ee3775159mr32707045e9.4.1768403663365;
        Wed, 14 Jan 2026 07:14:23 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee5914232sm40373305e9.14.2026.01.14.07.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:14:22 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-gpio@vger.kernel.org
Subject: [PATCH v5 2/6] gpio: mmio: Add compatible for opencores GPIO
Date: Wed, 14 Jan 2026 15:13:11 +0000
Message-ID: <20260114151328.3827992-3-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260114151328.3827992-1-shorne@gmail.com>
References: <20260114151328.3827992-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On FPGA Development boards with GPIOs the OpenRISC architecture uses the
opencores gpio verilog rtl.  This is compatible with the gpio-mmio.  Add
the compatible string to allow probing this driver from the devicetree.

Link: https://opencores.org/projects/gpio
Signed-off-by: Stafford Horne <shorne@gmail.com>
Reviewed-by: Linus Walleij <linusw@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Since v4:
 - No changes.
Since v3:
 - Order this patch after the binding patch.
 - Add Reviewed-by's.
Since v2:
 - New patch

 drivers/gpio/gpio-mmio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-mmio.c b/drivers/gpio/gpio-mmio.c
index 5daf962b0323..edbcaad57d00 100644
--- a/drivers/gpio/gpio-mmio.c
+++ b/drivers/gpio/gpio-mmio.c
@@ -724,6 +724,7 @@ static const struct of_device_id gpio_mmio_of_match[] = {
 	{ .compatible = "wd,mbl-gpio" },
 	{ .compatible = "ni,169445-nand-gpio" },
 	{ .compatible = "intel,ixp4xx-expansion-bus-mmio-gpio" },
+	{ .compatible = "opencores,gpio" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, gpio_mmio_of_match);
-- 
2.51.0


