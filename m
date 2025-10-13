Return-Path: <devicetree+bounces-226011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AA3BD2EB7
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:11:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E36BE34B95F
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B90652701C0;
	Mon, 13 Oct 2025 12:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GyUCVXQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0B7271443
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760357438; cv=none; b=FRmmNdjY0gFZGrzCbgaBxJhXGMYFhIV4HEH0hyzUeNGgDvzQq1+zQk/aRS7xBMjz6SLzXe8H+McGEiZwHlBLA5WuZPNXxpQaHwsS+vYjXPLCW+QWxjd/WN2NnhbRaITOYZOpilXZ4E7yPKTZuxKG5NOB0zauZH0mDBpUbzYthDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760357438; c=relaxed/simple;
	bh=/UL8ClL1TChG9maoeTDyUv+AFngUHpA02X3Cek9Drfs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pezJzNcv+r7xLhGZjatWqYAoReN5J63NifVAsI+xQsOlmOW481Nmd+cIrdJfG7oO0l3+1yqj/kTTruNJJ3XOkveJWgjILhlOyTMudUDfNXvIY5pYDzcGsmLaE8CScWS9bA55RxxBdk8q06VTRzIWDC0ArCv68COIL0lw6/ULjrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GyUCVXQO; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7835321bc98so3957741b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760357436; x=1760962236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lzBgszwUIJdj2pITMIqwCF2kxKK5kVVnHly7yKNXWBk=;
        b=GyUCVXQOG1fDDVqPyzjoxq7zq3QrOSd5v6YoNmiPAQk12pGZfn0KmbOXDOk7VoAsP4
         /cxocbQna34QIE1eA9Bf0rNp/3unYdIayBJ+INBR/2TGbP0EZPOl/0aQWNKdhHq7LI0y
         iUZ1VEARJZ+z/HuhEvkjjnxvMH+Px+P60C05SMMGuKrk4YjvBy12AmN27381pbG+njyt
         XiMKGXLN+ftQKbYPj++AvIChdVq2OVsWg1vcMTXxnDk7MPa8k1HiarkCIajHQQ1UoiG8
         qZj9moGhU31L5TYQw2C9DDhKZ3sjIjwhfwMMc4LowhXe3Jgvs/y9fx7IlZoBcZUZDxx1
         QJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760357436; x=1760962236;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lzBgszwUIJdj2pITMIqwCF2kxKK5kVVnHly7yKNXWBk=;
        b=D7EQDDVlUqB31ndsUwLFsCUaaYPx8rgbKKMM6uBYjn37iwvuwc/umiTLKWsMTJbUEV
         4cPz9748TPROKCwkmLd1iDQrCUtLN+978iYCtLzR1PahkpsGbAxYcsUWygbARXucOJbt
         1eKYddQ2SHw2P8CgO02EfzyUnJVkkimXoZrfPtI1eg2IHH6tTiZApXskYQzgFbXhuMPh
         AhUgX3GIYQj2lkCMMzEbSaRtdKEkDjkilk6TYxBgdbqtpXlhBUXY0hdpfzO7DxR/Qr/1
         o37Jq9DeMg13maYUOITAq6GY1Uf6XXmjjHKtr5jPFErJ/Ea8h7JynM7hcKNTE3r6GvzM
         EI4A==
X-Gm-Message-State: AOJu0YxkS7JeQ5/Y7rx5+Z8DT70rv7Rc4q+M8/iXvC1NN79eFXpQ0UyW
	aXiTJ/FtsktZCAqoMaNakk+89/wtcQfJNoi7me0+6ox8MZlzHFsi3NPB
X-Gm-Gg: ASbGncuV0CKC8m935CopuoIGG7F86KDJ/ICUclhAkNX0kgnoUhD2bbT/g0MlMWilIH1
	Fb9dqp5+TWJp2L76C6gVkzAWxleGurqWYNV+qtQH2yTk62gR8sxshSceqz0MDJZc4QJbeEc6l1i
	whDqQLdhw0qaNTHBXYJnLJCkOSKiAffeg5xFCvgg85XFTLrqngRxKygXRZsGL47D44Z4u3zTxNm
	mHWLe1qkDSjqbMLJlI8feq3WFBHhYKLVqpEBUO/FqtAhRYIp26p6LNoGqFYpoo+Tm7hCsrl3Svh
	sL2qO/VebRU39eHZ+aWDdyo6/ui82jGfYGQLbhL/LIXy28UPwstaVggNurFB++Y4WUDCyKZhs/0
	wUfGOMq9iN+NBYFChNU0xFdvJaelmG3avIZaizy6SZoxKKgFfl5gtdI7Rw/jF
X-Google-Smtp-Source: AGHT+IGrfoT/bqpcaxwCJ6pm89bbGg1SBZTMeAu1UvF5nVYhh8joboK5UxNYcACKPY6tv/hz8M1NNw==
X-Received: by 2002:a05:6a21:3086:b0:2e5:655c:7f92 with SMTP id adf61e73a8af0-32da8462bd8mr27128764637.50.1760357436544;
        Mon, 13 Oct 2025 05:10:36 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.98.89])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df48a83sm9633354a12.31.2025.10.13.05.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:10:36 -0700 (PDT)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 3/4] dt-bindings: led: add virtual LED bindings
Date: Tue, 14 Oct 2025 01:09:47 +1300
Message-ID: <20251013120955.227572-4-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251013120955.227572-1-professorjonny98@gmail.com>
References: <20251013120955.227572-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Add device tree bindings for virtual LED groups.

The use of the virtual status function identifier allows users to distinguish
virtual LEDs from real LEDs in sysfs.

If a virtual LED and a real LED are triggered at the same time, an undefined
state may occur. Therefore, it is assumed that hardware LEDs are blocked when
a LED is under the control of a virtual LED driver.

Having its own function definition helps reduce ambiguity and improves
clarity in LED behavior and trigger resolution.

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 include/dt-bindings/leds/common.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 4f017bea0123..39c34d585a47 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -63,6 +63,10 @@
      "lp5523:{r,g,b}" (Nokia N900) */
 #define LED_FUNCTION_STATUS "status"

+/* Virtual system LEDs Used for virtual LED groups, multifunction RGB
+	 indicators or status LEDs that reflect complex system states */
+#define LED_FUNCTION_VIRTUAL_STATUS "virtual-status"
+
 #define LED_FUNCTION_MICMUTE "micmute"
 #define LED_FUNCTION_MUTE "mute"

--
2.43.0

