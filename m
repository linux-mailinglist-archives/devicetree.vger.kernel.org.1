Return-Path: <devicetree+bounces-237445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A5EC511EB
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 78A0A4F0914
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6362F658F;
	Wed, 12 Nov 2025 08:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cqDX+qAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9D72F5A16
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762936161; cv=none; b=kvh37+7Vbab9JhY7J+4hMZkkO6G3HkL9N0A+DJ68Gh2UuViCLtv+YLwsrpdpLfkJS9fTqpcg5GR/EhhgV8oXswAnQ4EU9pqlK+DVD8qlv63qlJFEWnuBDwRn1TzS6LyWcAAdLnabSkEfhHodzs0+eZOPk1avwAi6Xw5lXHY71EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762936161; c=relaxed/simple;
	bh=7rM6ipANT27ulRQJdHPgB/KMFu8QO3gc2s7q+k9b64Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eXhVblahNl+QFLgEmU81OQ9lynRdqoozxWfFNyaIX0+cQ2vSk8eMD5b+eNS9M8on06Hqy/QIY2DmMGl+bdS+AGZp3OW9GxEK5YRw/7DhzHFHIK64dGY9hDnoFBCnkW0S+P7yjS4GyWCB3ZTLjHXcjbcTvXpbeGSjNYbammJPi64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cqDX+qAt; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b3ac40ae4so227288f8f.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 00:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762936157; x=1763540957; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nLVC1yr/nkYxv5RM5OgIDp9oj0yRWmQJunkOHBdVjz8=;
        b=cqDX+qAtWNVu+9S0QQy84Cud+eXfAfxMj2gQUL0h2onk+GdGfyLkyLBk2aXhl4woG6
         88J5wpawkTzcGhJkHby0Lmc3wgFHzdgjdRFCpMl6B9sNBPa61ZpdTvA4JyKQKmGHQCCp
         ZCq84l0GK743TIzlISUgu6SzCBZZNtBq9xxlgIiwBBytF0z3+sPDX1aZH7RF9/pVmumS
         BQobX8SJNpgcxpRLpnV2WU6NcVt4k+oxdXzk4BVpFHDeTGuGG1eeJNpZmTME9efQnyms
         NCdVT94gj5WgwuQDgmklTI5XQt6Ax1AgBAjwTKfubTOkP76gEYyra145ygTrf4+uvGzn
         4/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762936157; x=1763540957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nLVC1yr/nkYxv5RM5OgIDp9oj0yRWmQJunkOHBdVjz8=;
        b=IGKsrWLY5ssEuGFOOUMX4pZet6imN1bj07YSeVotVqaRiXF6Rf1X3ZhMk1UP0EkBY+
         KUJhkpO1dvaMKtABUs2AlVTG6HVyame2Hf8NvfYL3nD0cNxMAzyZVitorhgCqIlXch0s
         xb/Zfdo+JYRF3MBuaZkca7ddOMwXoBO6ytzIbc8PI/P68LHsC47sAx0RYHzhePd06oo7
         ND569w7Ww+6t9doik9yUEUSJ/mdlpTDyH9QegQc2zXJnRlwhTFHaAOfIBzcFu3wI2mHH
         xMkozFwNIw2xSDebakz4702OhBnTyhs1GM75/rlNtL9KyYTnS430pBNR7uphFg9dj3Uv
         gJjA==
X-Forwarded-Encrypted: i=1; AJvYcCVQHbC+YC9Ne95kc5tVnzRnirRNYG7A+W4i0uOajwDCBppWu/Rp9zcJP1DwwqMczGaqEbDPXisfR5Nx@vger.kernel.org
X-Gm-Message-State: AOJu0YwqGbkKpcipfJ1d/63qZ+I0z5jqpl4hNuIkbFxakd1PCr1f/wIt
	rvdrUMDJEW7haGxVxU6/WA/FcbaIWiZUW5nlw7y3pCpSr3LReqp5+uMhlmd9O2Eac50=
X-Gm-Gg: ASbGncsawcKg+HpaSLEfy0QoRftGqgJ+O/X2nsf8wgDnDHor6tHcIhw9yAFMBLdi3fB
	cBWflDSnOLYi4vucKi/El8moP9vYasKNzdYt+A69wUgk3ZjpJh7wRv20LA8ukDgGg6SpufrX95U
	fGtEobMEXdTCPdb4ujNWfH+JA6xwPtyAxikUjKrKOKLMH03y/8AcAS1FK5uyQpGTOD/DEZzzopi
	Ve1pqzTGIO3o5mNez1Rjzhx6ghSQW3EW9bzks8k+ATOm3iIFQ2HkKXkhb4kKQ37CnG/82piCERv
	y5g8ACuxey36WeAYccoqbnnUCUBCDYsiN5vHjqcUwbymWo4G1N8ukNRFGOPpAKJAsilOAKH8YeG
	9PjpcJGn4TKE6V9BvmJPi0Xg5W5/5hj8A0ImECADO1mRz4o7vMTUAgxG5UyOiErB+MWpcR8iNez
	HmyCtPZNKsWvu+QovIw06XNmYpg+igGlhop23UmdOsBInyC37tyQqkBkn3Dq9iumvt4uw=
X-Google-Smtp-Source: AGHT+IHFW/GKxKCw0ILsA/SJT72Uei+QJ38/wrMr3u+rGJwwJXDKwY/90elYIzeiZ134HBFWWuCaMw==
X-Received: by 2002:a05:6000:40db:b0:42b:3c8d:1932 with SMTP id ffacd0b85a97d-42b4bba5627mr1678878f8f.23.1762936157486;
        Wed, 12 Nov 2025 00:29:17 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac677ab75sm31571428f8f.35.2025.11.12.00.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 00:29:17 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 12 Nov 2025 08:29:09 +0000
Subject: [PATCH v2 5/5] MAINTAINERS: add entry for the Samsung Exynos OTP
 controller driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-gs101-otp-v2-5-bff2eb020c95@linaro.org>
References: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
In-Reply-To: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762936153; l=980;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=7rM6ipANT27ulRQJdHPgB/KMFu8QO3gc2s7q+k9b64Y=;
 b=Lurn43cxRReGlo/BJV58dAB7nj1wlW2HtMqDlBqeLRMi1dZmQeHSO44u6JwfT0f2fBaR1GlW3
 aM4MGm3X4kVDqVIjmlIkpfG2dt6YhPsVYTKuB/TqOfTIpnjc+5/W5gh
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add an entry for the Samsung Exynos OTP controller driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ab00eca640e02d40dd80949986d6cd6216ee6194..813a098475ab7d5371c811020ea022f63d1acb35 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22775,6 +22775,14 @@ F:	Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
 F:	drivers/mailbox/exynos-mailbox.c
 F:	include/linux/mailbox/exynos-message.h
 
+SAMSUNG EXYNOS OTP DRIVER
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
+F:	drivers/nvmem/exynos-otp.c
+
 SAMSUNG EXYNOS PSEUDO RANDOM NUMBER GENERATOR (RNG) DRIVER
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-crypto@vger.kernel.org

-- 
2.51.2.1041.gc1ab5b90ca-goog


