Return-Path: <devicetree+bounces-72489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB278FBFA0
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 01:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49E82289388
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 23:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63FB814D43A;
	Tue,  4 Jun 2024 23:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="S2mGH7OF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA58E137C37
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 23:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717542555; cv=none; b=fU5/Uy35I49yxVNgQT/9oRXiiuIxscnLV0z75J6YgspSY2lyGaDkdN4ixK75NIpiSkJBzphRKYjMA2xjiWFe7QrmLGEpvdRuQMdXUpsLHb95GS1OOIlOXNCqCCj6OSA/V6hd40drOr++NLnOx4Y1HQMsW6Bi5eC3jMsdujFbbes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717542555; c=relaxed/simple;
	bh=ufbo6wXUv/7/O6PQcOhZPqwqHPdfMgSnEXdoVS4AW6o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jPrUipw190hcABy/HgJfbDzkr6IknrNnnWfkEx/Ufyw/8GVNUEAz8bjAqLcJz5rEces5AmDqOKXXvS8bR+9OJ2NvANBefqH6fGgzlqjHQvOoT2WYMd7xDxIEWVpyB2snhySRUe9O8TIJZyKIXxFazAFY3udKaymfP1tI1lKocPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=S2mGH7OF; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1f32a3b9491so45373205ad.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 16:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717542553; x=1718147353; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GRmHr10zcqiKdy1zq3Dm6wpWw0zDxbHdcb1D9LB0h2Q=;
        b=S2mGH7OFn0XCzohEvXP53vzlawIgIBhJnz8g1oPoX0ER9W2+Is3kZ3YTArFggv68qt
         ra6kXIauOXTY669oVcxANbdCTb22w7sY2Y3lbaTeaWISRa/R90Xl2XnJSFIC3WgvsNeI
         6UH2t3jo64d9xatzz2WvNAGfG/PxHUqWebdzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717542553; x=1718147353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GRmHr10zcqiKdy1zq3Dm6wpWw0zDxbHdcb1D9LB0h2Q=;
        b=p5GFJkAA/paIvE/UMaEkJwgJd3CTbjzLslJH55SUT5dcu2x7HFusxICi1egxNyoHiw
         74JiQkcqsjEmgDLub/fdVToXWkUtsfLIQUOscLxaauYb+61MGGjAY/Igvt4uKwGHlG6E
         Qx+K3RA+mFxYw2SX107ppd9/d1ljkzx2TO3HzYCQ1hkvHsbYluqr1/nMV1DQEXEiBo5u
         pfEnKtXID6v+6/YubqC8I4HOqsJ1cOBWvyVWM+/6LGd87KtQOjDFAZONsIUg0juBoXGZ
         REv8FTZ7YhB1k8D8V1V7y+Wk7QVvVgK17MIh6bxRw6KAPDkWBZoPn3F9aCd3UYUb10D2
         pKmQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4tR69Gtvf88V5tKAt1aVQ0OBEUrLi+ik53eMiepFsI/8j9I/3Z8NNrAB7A/JSGVxDQh9h0JEXwcNj6D60JTt+7l0qvVe0R60/IA==
X-Gm-Message-State: AOJu0Yw1W+otSCPLbpZ6HbJeiQBRBFDlp7V8rItZ7lsCp1H4562mGvVH
	Ld65l9Iz5xCM/7/q23LHDo7x7U5aIuAw+P6yMCEY6NoJHqeGmMNoNEA9bGeubg==
X-Google-Smtp-Source: AGHT+IHnWH9hEc4PF47lfY4aRUd4vNVTBVand6byLkxwJvo2a9nf6yRspGXP9pmHxWpf1jKlMfULkQ==
X-Received: by 2002:a17:902:face:b0:1f3:675:a68c with SMTP id d9443c01a7336-1f6a5a0f4bbmr8509325ad.23.1717542552923;
        Tue, 04 Jun 2024 16:09:12 -0700 (PDT)
Received: from pc98uv11.mtv.corp.google.com ([2620:15c:9d:2:c108:1a83:e639:e62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f632358e78sm89337325ad.83.2024.06.04.16.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 16:09:12 -0700 (PDT)
From: Daisuke Nojiri <dnojiri@chromium.org>
To: 
Cc: Daisuke Nojiri <dnojiri@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: cros-ec-keyboard: Add keyboard matrix v3.0
Date: Tue,  4 Jun 2024 16:09:07 -0700
Message-ID: <20240604230909.2879006-1-dnojiri@chromium.org>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
In-Reply-To: <20240604005354.2294468-1-dnojiri@chromium.org>
References: <20240604005354.2294468-1-dnojiri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for keyboard matrix version 3.0.

Signed-off-by: Daisuke Nojiri <dnojiri@chromium.org>
Change-Id: I18957556bcd01c74ded84571638de2583dccb93f
---
 include/dt-bindings/input/cros-ec-keyboard.h | 104 +++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/include/dt-bindings/input/cros-ec-keyboard.h b/include/dt-bindings/input/cros-ec-keyboard.h
index f0ae03634a96..afc12f6aa642 100644
--- a/include/dt-bindings/input/cros-ec-keyboard.h
+++ b/include/dt-bindings/input/cros-ec-keyboard.h
@@ -100,4 +100,108 @@
 	MATRIX_KEY(0x07, 0x0b, KEY_UP)		\
 	MATRIX_KEY(0x07, 0x0c, KEY_LEFT)
 
+/* No numpad */
+#define CROS_TOP_ROW_KEYMAP_V30 \
+	MATRIX_KEY(0x00, 0x01, KEY_F11)		/* T11 */	\
+	MATRIX_KEY(0x00, 0x02, KEY_F1)		/* T1 */	\
+	MATRIX_KEY(0x00, 0x04, KEY_F10)		/* T10 */	\
+	MATRIX_KEY(0x00, 0x0b, KEY_F14)		/* T14 */	\
+	MATRIX_KEY(0x00, 0x0c, KEY_F15)		/* T15 */	\
+	MATRIX_KEY(0x01, 0x02, KEY_F4)		/* T4 */	\
+	MATRIX_KEY(0x01, 0x04, KEY_F7)		/* T7 */	\
+	MATRIX_KEY(0x01, 0x05, KEY_F12)		/* T12 */	\
+	MATRIX_KEY(0x01, 0x09, KEY_F9)		/* T9 */	\
+	MATRIX_KEY(0x02, 0x02, KEY_F3)		/* T3 */	\
+	MATRIX_KEY(0x02, 0x04, KEY_F6)		/* T6 */	\
+	MATRIX_KEY(0x02, 0x0b, KEY_F8)		/* T8 */	\
+	MATRIX_KEY(0x03, 0x02, KEY_F2)		/* T2 */	\
+	MATRIX_KEY(0x03, 0x05, KEY_F13)		/* T13 */	\
+	MATRIX_KEY(0x04, 0x04, KEY_F5)		/* T5 */
+
+#define CROS_MAIN_KEYMAP_V30			/* Keycode */	\
+	MATRIX_KEY(0x00, 0x03, KEY_B)		/* 50 */	\
+	MATRIX_KEY(0x00, 0x05, KEY_N)		/* 51 */	\
+	MATRIX_KEY(0x00, 0x06, KEY_RO)		/* 56 (JIS) */	\
+	MATRIX_KEY(0x00, 0x08, KEY_EQUAL)	/* 13 */	\
+	MATRIX_KEY(0x00, 0x09, KEY_HOME)	/* 80 (Numpad) */	\
+	MATRIX_KEY(0x00, 0x0a, KEY_RIGHTALT)	/* 62 */	\
+	MATRIX_KEY(0x00, 0x10, KEY_FN)		/* 127 */	\
+								\
+	MATRIX_KEY(0x01, 0x01, KEY_ESC)		/* 110 */	\
+	MATRIX_KEY(0x01, 0x03, KEY_G)		/* 35 */	\
+	MATRIX_KEY(0x01, 0x06, KEY_H)		/* 36 */	\
+	MATRIX_KEY(0x01, 0x08, KEY_APOSTROPHE)	/* 41 */	\
+	MATRIX_KEY(0x01, 0x0b, KEY_BACKSPACE)	/* 15 */	\
+	MATRIX_KEY(0x01, 0x0c, KEY_HENKAN)	/* 65 (JIS) */	\
+	MATRIX_KEY(0x01, 0x0e, KEY_LEFTCTRL)	/* 58 */	\
+								\
+	MATRIX_KEY(0x02, 0x01, KEY_TAB)		/* 16 */	\
+	MATRIX_KEY(0x02, 0x03, KEY_T)		/* 21 */	\
+	MATRIX_KEY(0x02, 0x05, KEY_RIGHTBRACE)	/* 28 */	\
+	MATRIX_KEY(0x02, 0x06, KEY_Y)		/* 22 */	\
+	MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)	/* 27 */	\
+	MATRIX_KEY(0x02, 0x09, KEY_DELETE)	/* 76 (Numpad) */	\
+	MATRIX_KEY(0x02, 0x0c, KEY_PAGEUP)	/* 85 (Numpad) */	\
+	MATRIX_KEY(0x02, 0x011, KEY_YEN)	/* 14 (JIS) */	\
+								\
+	MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)	/* Launcher */	\
+	MATRIX_KEY(0x03, 0x01, KEY_GRAVE)	/* 1 */	\
+	MATRIX_KEY(0x03, 0x03, KEY_5)		/* 6 */	\
+	MATRIX_KEY(0x03, 0x04, KEY_S)		/* 32 */	\
+	MATRIX_KEY(0x03, 0x06, KEY_MINUS)	/* 12 */	\
+	MATRIX_KEY(0x03, 0x08, KEY_6)		/* 7 */		\
+	MATRIX_KEY(0x03, 0x09, KEY_SLEEP)	/* Lock */	\
+	MATRIX_KEY(0x03, 0x0b, KEY_BACKSLASH)	/* 29 */	\
+	MATRIX_KEY(0x03, 0x0c, KEY_MUHENKAN)	/* 63 (JIS) */	\
+	MATRIX_KEY(0x03, 0x0e, KEY_RIGHTCTRL)	/* 64 */	\
+								\
+	MATRIX_KEY(0x04, 0x01, KEY_A)		/* 31 */	\
+	MATRIX_KEY(0x04, 0x02, KEY_D)		/* 33 */	\
+	MATRIX_KEY(0x04, 0x03, KEY_F)		/* 34 */	\
+	MATRIX_KEY(0x04, 0x05, KEY_K)		/* 38 */	\
+	MATRIX_KEY(0x04, 0x06, KEY_J)		/* 37 */	\
+	MATRIX_KEY(0x04, 0x08, KEY_SEMICOLON)	/* 40 */	\
+	MATRIX_KEY(0x04, 0x09, KEY_L)		/* 39 */	\
+	MATRIX_KEY(0x04, 0x0b, KEY_ENTER)	/* 43 */	\
+	MATRIX_KEY(0x04, 0x0c, KEY_END)		/* 81 (Numpad) */	\
+								\
+	MATRIX_KEY(0x05, 0x01, KEY_1)		/* 2 */	\
+	MATRIX_KEY(0x05, 0x02, KEY_COMMA)	/* 53 */	\
+	MATRIX_KEY(0x05, 0x03, KEY_DOT)		/* 54 */	\
+	MATRIX_KEY(0x05, 0x04, KEY_SLASH)	/* 55 */	\
+	MATRIX_KEY(0x05, 0x05, KEY_C)		/* 48 */	\
+	MATRIX_KEY(0x05, 0x06, KEY_SPACE)	/* 61 */	\
+	MATRIX_KEY(0x05, 0x07, KEY_LEFTSHIFT)	/* 44 */	\
+	MATRIX_KEY(0x05, 0x08, KEY_X)		/* 47 */	\
+	MATRIX_KEY(0x05, 0x09, KEY_V)		/* 49 */	\
+	MATRIX_KEY(0x05, 0x0b, KEY_M)		/* 52 */	\
+	MATRIX_KEY(0x05, 0x0c, KEY_PAGEDOWN)	/* 86 (Numpad) */	\
+								\
+	MATRIX_KEY(0x06, 0x01, KEY_Z)		/* 46 */	\
+	MATRIX_KEY(0x06, 0x02, KEY_3)		/* 4 */		\
+	MATRIX_KEY(0x06, 0x03, KEY_4)		/* 5 */		\
+	MATRIX_KEY(0x06, 0x04, KEY_2)		/* 3 */		\
+	MATRIX_KEY(0x06, 0x05, KEY_8)		/* 9 */		\
+	MATRIX_KEY(0x06, 0x06, KEY_0)		/* 11 */	\
+	MATRIX_KEY(0x06, 0x08, KEY_7)		/* 8 */		\
+	MATRIX_KEY(0x06, 0x09, KEY_9)		/* 10 */	\
+	MATRIX_KEY(0x06, 0x0b, KEY_DOWN)	/* 84 */	\
+	MATRIX_KEY(0x06, 0x0c, KEY_RIGHT)	/* 89 */	\
+	MATRIX_KEY(0x06, 0x0d, KEY_LEFTALT)	/* 60 */	\
+	MATRIX_KEY(0x06, 0x0f, KEY_ASSISTANT)	/* 128 */	\
+	MATRIX_KEY(0x06, 0x11, KEY_BACKSLASH)	/* 42 (JIS, ISO) */	\
+								\
+	MATRIX_KEY(0x07, 0x01, KEY_U)		/* 23 */	\
+	MATRIX_KEY(0x07, 0x02, KEY_I)		/* 24 */	\
+	MATRIX_KEY(0x07, 0x03, KEY_O)		/* 25 */	\
+	MATRIX_KEY(0x07, 0x04, KEY_P)		/* 26 */	\
+	MATRIX_KEY(0x07, 0x05, KEY_Q)		/* 17 */	\
+	MATRIX_KEY(0x07, 0x06, KEY_W)		/* 18 */	\
+	MATRIX_KEY(0x07, 0x07, KEY_RIGHTSHIFT)	/* 57 */	\
+	MATRIX_KEY(0x07, 0x08, KEY_E)		/* 19 */	\
+	MATRIX_KEY(0x07, 0x09, KEY_R)		/* 20 */	\
+	MATRIX_KEY(0x07, 0x0b, KEY_UP)		/* 83 */	\
+	MATRIX_KEY(0x07, 0x0c, KEY_LEFT)	/* 79 */	\
+	MATRIX_KEY(0x07, 0x11, KEY_102ND)	/* 45 (ISO) */
+
 #endif /* _CROS_EC_KEYBOARD_H */
-- 
2.45.1.288.g0e0cd299f1-goog


