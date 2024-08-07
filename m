Return-Path: <devicetree+bounces-91787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6700394A98F
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 16:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0853F1F2797B
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73316F30F;
	Wed,  7 Aug 2024 14:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PKt0TU2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89A350271
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 14:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723039974; cv=none; b=aL95aTaZuD04ov+GFYLwvE5EBovfqq8M7y1TI9tPI79qP39lNpE0mSW+T2VL2PpUqSJwDbSVgxFbVNyJ5hmWLZx2DZw7uobD0rNhaRyua+2IdSVRxJoQNMXr+j60p1ExmOVUenC2h2LjMltpq5YyUCowLJP1sJvxpm3WqL54/r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723039974; c=relaxed/simple;
	bh=G53h7iK7equCI+YAgbuXL22KeDRVYHM1PGJrRCk2n3A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sv1+18mnBTbWMAREFeubc7s3VusLApTUuIuMkCJrpqNq1jc4RKN5+YQfHaEy4fL8pN1h5rC8v5x3qevB6ER9ycPqix3A1c6CsLTEFz3LKNwWiwfBJKjxVoiNTiCnATCCLIpIBSIOUQkX5usGNSV+css+pjl/hixzjflL7sGISlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PKt0TU2o; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52efd08e6d9so2835097e87.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 07:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723039971; x=1723644771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5C8r3Duyh4k8zPXTMuRthG6AYE+Xab3qX66upD04/4=;
        b=PKt0TU2oq+4p6tLspbrj9btjzCWn8Wcyz+t8d8wx8JrpLnwcCT/IVQ3ANXxxBaxoG7
         ImOOqBIx3CAZotrA0xPrPXiiHsVX0ngdsNGj6TRyFhp/KZjkDuFQ+sFu3bl9UiQIUoF6
         oMDmFd9mo7EswuD5aeaDeDjhbw7TS2VZZoruofRWIntOhuMmt7bP/tr2h/8yvL7MN49y
         D0pehhghzftlXhP3zsBK3u7e3khtFg4RVVBxueUMQfE6iDPelLbHDVDA7u5lmdn9md7O
         4qCNkQ3T9kPOdmE3i7JFSlVgmDiW8RiDnC33M6kzRs0T17eQXSYUXxlhPs7/U/ro+WLz
         rrWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723039971; x=1723644771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a5C8r3Duyh4k8zPXTMuRthG6AYE+Xab3qX66upD04/4=;
        b=d55YP7Br4IUcdF9Q8aFzNZgoyeYPTMijCx3XM8QhmjywZ4dzN/6S8yss8LUN0Alhfs
         iAsxJ+zhGI/Q7aFfuptboxtMAnn5xA7fkt/dswkJvXJxd4vbk4NGby52YVJRobXB4FPK
         nged9r4SvkrmM2XE3cFLBuy66MXxjiRdP72GZun1pta0ejveAOi4USFeYeqPAqLYsqu1
         ofbtX95BwHOHiyWbRcbxGiOZ3qvvPNm8XWVebRmvAqztQAyigiml7I+cD9LKShLBQJWJ
         fCBySQRUxZmluDsMhj5sNeC6UwxThM3xgz05Qc/udpL16wX8KLJdAFYDv/vx44KDdscF
         o9cw==
X-Forwarded-Encrypted: i=1; AJvYcCX9ONrgy6c8jtDFrbcIlrAmjQiNek0Zcif225koXl7PCBZJ1SdrASs+iW1TA6rWHjDlXJCUqq8dKVvWHkN3ZDymhrLzNKixtaLFcQ==
X-Gm-Message-State: AOJu0Ywm76/opVYkgkshvGiV8widsnQGySwNJOxcmhgegn2XXIZvFOul
	fR1RHmmM7C5jaIhrja735NKzOUR4/9TuMOQTpMNQrgNU1cdhxkNjLjwBzrSb68s=
X-Google-Smtp-Source: AGHT+IFosTI6Kk9S7vVp+2KFUmR/5pvfyiB5Vr1uhy5ZefdQG7LKhdWRJvxVgUXiBD9CZ+Mjmb+Ybw==
X-Received: by 2002:a05:6512:3c98:b0:530:b760:92b3 with SMTP id 2adb3069b0e04-530bb3a2247mr9912329e87.31.1723039970563;
        Wed, 07 Aug 2024 07:12:50 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5b83b92cbccsm7057525a12.68.2024.08.07.07.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 07:12:50 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Ronald Wahl <ronald.wahl@raritan.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Udit Kumar <u-kumar1@ti.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/5] serial: 8250: omap: Remove unused wakeups_enabled
Date: Wed,  7 Aug 2024 16:12:24 +0200
Message-ID: <20240807141227.1093006-3-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240807141227.1093006-1-msp@baylibre.com>
References: <20240807141227.1093006-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This field seems to be unused for quite some time already. Remove it.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/tty/serial/8250/8250_omap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
index 1af9aed99c65..02d4f3073696 100644
--- a/drivers/tty/serial/8250/8250_omap.c
+++ b/drivers/tty/serial/8250/8250_omap.c
@@ -144,7 +144,6 @@ struct omap8250_priv {
 	atomic_t active;
 	bool is_suspending;
 	int wakeirq;
-	int wakeups_enabled;
 	u32 latency;
 	u32 calc_latency;
 	struct pm_qos_request pm_qos_request;
-- 
2.45.2


