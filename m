Return-Path: <devicetree+bounces-252371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 816E5CFE07C
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 327FA302429D
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363CC340280;
	Wed,  7 Jan 2026 13:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c1MCj9sb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5022032D7FF
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767793202; cv=none; b=GZATcCayjPhuMqP75Ijw4EcuCIBL/7hxMOhW8McndxWvV32tOq+Kx/E+CsTohf/XsAq0i6IclDZ2hQlOlzn6BbdCd0VJdy18TTSMBoXS24/8YRVRYyIQFZOVVAIWjJbmg1eFz3/oBAQ1z4paqU1btA/DCR57aJz+hEOKEYxitnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767793202; c=relaxed/simple;
	bh=m0D9V4x0TDiYMScx+B2rDcfNHpt1W4utB08H2EYXkTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lHstK67sygVfwZoNEhjQkQDXuWeFDlMaElkELl8ICCCQTbX2Jm7i4Fx7vgoYGDMBlrTgLAajtB+2nSNuKobhL4SmxmU5dGfXpbX3tmd1M8HvjUZvHz8FOmlyUypUd1qqYSi2EMWcJXU7rhy6iFqk4DBDN7F4B9zBZSHJSxZVCHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c1MCj9sb; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso20021105e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767793198; x=1768397998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=c1MCj9sbolerNjOMN9gMJ4G6Vdx9y1omxk3sisMGw3VZ0UPpB2Uusu7g/h7hx49OTf
         nLoVJ/AJCCMJsF51qfpnz3hCA5HZHhn9mogFmA9O5PxkXuRBGjPkDysLWLiuuYLIrHYT
         4cTLuTnS0/yd2PcGSONVWoY82fyMFuJGtOpBF1x/Y22hNrBTMaK2+8oqjNrSxSIMjqJn
         az8d7PGgpti2tZots9Vu28NcYcBVgUz2no22bfE4VpFWuZHRwj39zNa0qRn/vq2X+Csx
         5IY9boglXzlRupC596H+AnxWsNEfUreDnbBP7r78wansGKvDrAFt7C4l3Zgopobxle4q
         OXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793198; x=1768397998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=reHYsRVhVlhU9/XLdVBvX/hBxL5PqvrIU5ifd6VhtQI=;
        b=CIi7rOwzIZkUdvLwn9gkyNbdSMIe5P39sxGQawb12dKIJR/p7Nwrsy06/DQZNf8EHp
         lbwt8M2xPeIXhHcMwVQAc/ZbI9VZmcAk+LbmmWB0Ah0GmcSI3J+DfbQNcPjEB/wydNlk
         /DLdmTv/JRruAVt3tvqoe5tMYGnsG9/KZhRFKsa+8sYBhmK67R0E3d8saI0/jqUaF+0n
         wdFZgq8I7+gEBi1bbBkaXEx4Xs99MW72h78E1NfBCjG7Lz4rv8LRYwjWqHATN68eUv3D
         hWDY+xw1aFpdw8jM3lqr+juCMQfDO2ecJRLjNNAPlqZMCu13mNbx6KdoKIIzGCnrcmJx
         hIAw==
X-Forwarded-Encrypted: i=1; AJvYcCXnOpdpOgZ1o87jMFSB94AQ0rczwA7jJgm9QSr4XSiZ+ySITEHSUgcZnY0URbBt8Mjj3PHS5Pe1eM3v@vger.kernel.org
X-Gm-Message-State: AOJu0YySxQXhP7r0EMcFWUI5BmpBgLyywtzt2jWXPrzZQg6sCxHEZxLx
	JRkdOsz3dt5rgA3PDQ2cwDctsZq0LSDuLworKpgL1jJBucaFkFB5EFl3yCVHCGE9nxuP5t7aTbl
	7LWWt
X-Gm-Gg: AY/fxX5AbgWJ0cFOE8ZJlvRg6T1koH03zHfliPpUNirqbCCO9VF9jtcc93Ig0ASfNOE
	ce/+2lhAimzb9glb+F29DL5f9bEtXX5QuwNa9+n1k7HQCa4Fpfj3yMiTYq79q/PRxThzK20R/c3
	rlG+CbM1it1CVLfMDOpVxyIDKKy2ETQYQN8XTHsavNBK14AUdsQgz4poW2eO9cevZ/8iv3RLkQY
	jym+Wroj7riDAIDEw6Rln+t9lCUjXr+z+EPceZcboo1un8hYQ+JG0f2ut3ZkhFVQb0E1MMDJUxg
	owbNqLCAPozUrJTXxzsK+1e7s2KHIVDpVbuw8x+m5ChfSZcsasjYk6hAO8YFYTkQ2t34QcEtcY6
	nw6ZA6YCD7jeEcw6mYBaI/Zm5Wrmdv36C2nn3iIxwHkXEsz232lLKL9265/r08OfSkw/JviMZBL
	zYsZ+73d7Dc4CRrjXE1LRQePZtDl8LAX+lGwlJG2A/Qw==
X-Google-Smtp-Source: AGHT+IGsXFTEj4VT6TREhqzbbNBgMjGQPUdJHu/PUzy+9Vp/LyXJd2kFDSR3tgJFYV0qZeNTBlTjWA==
X-Received: by 2002:a05:600c:5490:b0:46e:59bd:f7d3 with SMTP id 5b1f17b1804b1-47d84b34819mr29682965e9.20.1767793198615;
        Wed, 07 Jan 2026 05:39:58 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:39ee:bc4c:aafe:6bd0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dade5sm10595542f8f.9.2026.01.07.05.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 05:39:58 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v4 1/3] counters: Reorder the Makefile
Date: Wed,  7 Jan 2026 14:39:50 +0100
Message-ID: <20260107133953.2094015-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
References: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The next changes provide a new driver. For the sake of clarity,
reorder the Makefile alphabetically.

No functional changes intended.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/counter/Makefile | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/counter/Makefile b/drivers/counter/Makefile
index fa3c1d08f706..40e644948e7a 100644
--- a/drivers/counter/Makefile
+++ b/drivers/counter/Makefile
@@ -6,14 +6,16 @@
 obj-$(CONFIG_COUNTER) += counter.o
 counter-y := counter-core.o counter-sysfs.o counter-chrdev.o
 
-obj-$(CONFIG_I8254)		+= i8254.o
-obj-$(CONFIG_104_QUAD_8)	+= 104-quad-8.o
+obj-$(CONFIG_104_QUAD_8)		+= 104-quad-8.o
+obj-$(CONFIG_FTM_QUADDEC)		+= ftm-quaddec.o
+obj-$(CONFIG_I8254)			+= i8254.o
+obj-$(CONFIG_INTEL_QEP)			+= intel-qep.o
 obj-$(CONFIG_INTERRUPT_CNT)		+= interrupt-cnt.o
-obj-$(CONFIG_RZ_MTU3_CNT)	+= rz-mtu3-cnt.o
-obj-$(CONFIG_STM32_TIMER_CNT)	+= stm32-timer-cnt.o
-obj-$(CONFIG_STM32_LPTIMER_CNT)	+= stm32-lptimer-cnt.o
-obj-$(CONFIG_TI_EQEP)		+= ti-eqep.o
-obj-$(CONFIG_FTM_QUADDEC)	+= ftm-quaddec.o
 obj-$(CONFIG_MICROCHIP_TCB_CAPTURE)	+= microchip-tcb-capture.o
-obj-$(CONFIG_INTEL_QEP)		+= intel-qep.o
-obj-$(CONFIG_TI_ECAP_CAPTURE)	+= ti-ecap-capture.o
+obj-$(CONFIG_RZ_MTU3_CNT)		+= rz-mtu3-cnt.o
+obj-$(CONFIG_STM32_TIMER_CNT)		+= stm32-timer-cnt.o
+obj-$(CONFIG_STM32_LPTIMER_CNT)		+= stm32-lptimer-cnt.o
+obj-$(CONFIG_TI_ECAP_CAPTURE)		+= ti-ecap-capture.o
+obj-$(CONFIG_TI_EQEP)			+= ti-eqep.o
+
+
-- 
2.43.0


