Return-Path: <devicetree+bounces-142662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9037EA2607B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33DE03A54E1
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1CDC20B1F7;
	Mon,  3 Feb 2025 16:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tZ5GglMa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA751804A
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 16:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738601214; cv=none; b=NSz9eYE/e9hWMI7rK/MJBV8KSB+bId7+TxuMhhqseSqC6XmrqIJTW+kquAbyiR3PNPU/pl/GrInQmvZLqfGOtil/47eo+0UyxhZ7fz+MMmFN3olcVXvlkSMCa+oDIB9t4fB++VGg6EfwM893SIlDYaAA4NJu/oYCMC+M48hpbHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738601214; c=relaxed/simple;
	bh=R7QAl/z0BDS+8/SB5d/6NZpgDzEVvDhMqImUpY+IXrQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FnXJtXNemRBr3JCca6i7eWAVNgIog5pHNPli+bvpQ1cXCQwyUEKaYBmzVSk8U97e+LLK8PceKPy/mHhTKUORyCBPW0ywdIQlpL3jbpdOPJbLXOf/FiHkzxk0DE3xm6IPRGIH0BtgivLPedbgIG94yH0uellYeu+5O4yAu86QZso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tZ5GglMa; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-aafc9d75f8bso927347566b.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 08:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738601211; x=1739206011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pkc6t1WnYS+t6lBmtnTcScgre/BqbdAm28uFQUA8mfE=;
        b=tZ5GglMa+IPqi7cx+DvlpASvJiBMhKMrYYrfWfPDXkwRf5/cweS5bGEW+pGHIQIzdr
         2rjlZs7oHtOyjr/O8UM5bhKcP39dF5Zz9HaYKcsmYbhTyTKcFEQRT+fP9pinOlFwBvwx
         PUQB6HYfZ92J2/Q9uM2ibRw5aDpIB172YuYSBV5rY1/OGPrTG4Sd9js8SrkgssI/miFd
         TIVdkGyHwRoDk7v2dPcHDsu7huFBgYZUvlDWoNPmWygHEohSaKZ9b5v7+FRYtaGyXl9Z
         Qrdyg3ER1koPep0OsAIjdlAfaGz8dsnm2+MTG5LBmhKo+YZDYfSFbuyMTO0Mcte5sMyp
         i/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738601211; x=1739206011;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pkc6t1WnYS+t6lBmtnTcScgre/BqbdAm28uFQUA8mfE=;
        b=p9lllWUeF3KQg/ThvQ+iCOzwZ1cvlQ9+Pe8M9eEC+/4RHs723FN0MIcBdx8eSWjD9s
         lkTZpGcvmqajJMDDe1hs7OOZOr+UneDHGIMf/iPYDgCQ7AKQ71dLyZJnW+nGeFkRaIet
         oolGfNHjfUyeyQWUwwTxc60pAEU3FJ7Apl5bo4LybN3yppQggz+p8J62/2GsXV3bB12n
         OHVOawfGJZF/gU+cJKqVZM6WlbO+NfGsKQ1MiFD0VZ5UzA5KtL9Z776vFG66NbplZufR
         J5bTxNFf9Mr6AvYJCig/O/KcSAFcKl7/R73OFw/tHvNS7vV7bQnbVBUkhQeuP2SrnjTk
         vUFg==
X-Forwarded-Encrypted: i=1; AJvYcCVNhFbEXHiaX7UD3P+h6SexbsmfdaDqxsaNXZexqnpAqnpXP/WAdLWHsxioh/QKGbHNesP8+K/jeMXF@vger.kernel.org
X-Gm-Message-State: AOJu0YxC8Kqj6mo1Pf40I5k0TwkrUW1ruevrJdggxs0IZt/tMxoPjyfQ
	UWtF/HEdqgkjxnNwkW73xDP4a93ngD4fe0TtMN1IKfTV4RkTtrESXkck/MKMGlk=
X-Gm-Gg: ASbGncs4OmZi21BA3ewpiKoPbwf7BzWdQSZ5Eg1Du1CjvT5cVQmoF/fKZEOA0SzIubk
	sRFxao5xN/lEl0meF30HU24Mvs8XD7ThI4Kw9b838Yw9FULN0t6oeaUTcx2XMZ8E/Gb1K69EUKf
	N3qHRTZHju1a33NTHzAh5UlGaV5sDlks3QRRixdg4zO5kEXbbdHdQqzJZCU4fCVMVk68PkAOTOe
	bM4avUPRvmOjtxVFv4ZBRr5fFrC4Ztdv1RjqzyvQeGnntE5+/uAABHuvT/YH+5UzjVb8oFIf/Lk
	Lc36e1V1+QYZz1ktv23cOgIEr88Uu8dOT8qBLZb3GdTxmTDFmQwpkQ87bQ==
X-Google-Smtp-Source: AGHT+IHO770jfk92Mttnp7BBnckYBWePcZNUS/gRCytxdy10Cea5/p44mZtHqa1Ad7gj0COvv0kFkQ==
X-Received: by 2002:a17:907:7213:b0:ab2:d721:ed8e with SMTP id a640c23a62f3a-ab6cfda4266mr2160723566b.39.1738601210571;
        Mon, 03 Feb 2025 08:46:50 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab70e4e3b5esm444814766b.138.2025.02.03.08.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:46:50 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] ARM: dts: socfpga: Add basic support for Terrasic's de10-nano
Date: Mon,  3 Feb 2025 17:46:35 +0100
Message-ID: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=878; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=R7QAl/z0BDS+8/SB5d/6NZpgDzEVvDhMqImUpY+IXrQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnoPLsQ7RqMIdo3YVVpnHyfdmGb3rZZRdpHAGsW 5RO7a4/8HWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6Dy7AAKCRCPgPtYfRL+ TpMeCACt8WwSHNiT1pQV2y+yXXY3e7hgYdOKZkKL+JzgAgwGyWbsIva+C5nKdhqPlkHnfO0WHlM vaZ74HxbrBM98F3ygxFt0h0A/jJQa1og0kRXrGIYDqzpNIBE3Lbj72CSuCUKCuGyl3Ddy4iddfG nwa2K7526nktZjJ9u1HjEAiJMWl6DEJMiambnUuLCUxlc1W7QMyo//jzsN0uTmbjbUXzBiimHWi gSPt8T4oO/HbbvEH42/cyfIz7jLR03vr1K3ZSRj9JqTJF+KGRjAbbVa94VIZ1VbRQDo8H9QZyD7 DQiYJXdLcakuUv5/HCGGqSmS8+KgRN/mzC6AuRNi/Ahgaxho
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

The only change since v2
(https://lore.kernel.org/linux-arm-kernel/20250130074553.92023-2-u.kleine-koenig@baylibre.com):
is that I added patch 1/2 that is supposed to fix the warning that I
failed to notice with the testing I did. Thanks to Krzysztof and Rob for
their patience with me. I hope I got it right now.

Best regards
Uwe

Uwe Kleine-König (2):
  dt-bindings: altera: Add compatible for Terasic's DE10-nano
  ARM: dts: socfpga: Add basic support for Terrasic's de10-nano

 .../devicetree/bindings/arm/altera.yaml       |  1 +
 arch/arm/boot/dts/intel/socfpga/Makefile      |  1 +
 .../socfpga/socfpga_cyclone5_de10nano.dts     | 95 +++++++++++++++++++
 3 files changed, 97 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts

base-commit: 00f3246adeeacbda0bd0b303604e46eb59c32e6e
-- 
2.47.1


