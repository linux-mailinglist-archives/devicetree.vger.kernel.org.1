Return-Path: <devicetree+bounces-252162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 84373CFBCD7
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 04:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 060B330028BF
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 03:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C674259CB2;
	Wed,  7 Jan 2026 03:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b="AvtUVP/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8961C2571A5
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 03:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767755270; cv=none; b=VMEcTyK5Rb3HBSsHH6gR7unU1ZI18xHwZo4woiAknsSJpLasbX7m8He2tfHN8VJDdBZ9bhtAqNJN9Wbo5Tff1+qtD4Ziln6WeUTzg6DZTRn76AShzan//bcc0xJtuZ2NLbnYxfj+ygp5Gme9yd+yTozerw7UmWWsz8JJyEBXOjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767755270; c=relaxed/simple;
	bh=pv9Ul14Hhl3C/6tp4wzR+hrKRSItog/0e3CBoNlER7o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H6K4cmI9oYDEol6iJdh/IiDW6sKs4TRUHOKH1lYCBEKge1/8JESvqQtUUTQd+KH/0CYWdSNE0zEjs5LQIuLcLlLN13DwA2Zsxc+yLN8YQl/HWFUD4kJ9+zIZJr4PvEfGLzpyNC2e2mr+VmF3S+cOxNcHzj40zYnf+IvhM7/I3Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=AvtUVP/T; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a0c20ee83dso17064255ad.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 19:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1767755268; x=1768360068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8iCc64Rjmu7gwf6ybOiip/8D2NfZmfyUw4QOx0iSAQ=;
        b=AvtUVP/TmSpeeB7k0Dl4mX3dYLflcknmJSfNVHblYMTUZXfafaKmxWhLLKhzIQok7A
         +sh2o8qtYHRLEkBS5JET3IPxB4daTBnSHtBunUG49mGYhq+MPZSMTdfTybnJgW8RXs5S
         4clpv/YtBgojFa9RvBKaAHdbB7VDCPA2/5zqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767755268; x=1768360068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u8iCc64Rjmu7gwf6ybOiip/8D2NfZmfyUw4QOx0iSAQ=;
        b=ZyCb+ev7mZtqbtOvybXtc04qtRNwJ23w4DQVNub/HZVJgLD5ajOyNcjh61AlR61oAX
         dfi7AMSbuXYpnpytSu9BIzdoRtKsG2H4ja7hjQ5pWWDiwbmLI+W0buVmo/jU77aXKmxk
         rqwiZVXFt5uHtHMTE/Ytxxz8B9Ux379lfOJayJXxNkiji0lmbx2KD9cVq9Qf00MicxX/
         EMduf0tXDzaYhPrpxiE9GP7LUx5QZNDYstVhNySS5A1/NBiivuMw5uXS6OFJiP31WIAI
         pRSUcjK1M61xF7vhMLe0c5aYc3fA6xrLh2Fm/nhGBipWDJ7KnUr4aCWt9/g2EghHeO/F
         yxhw==
X-Forwarded-Encrypted: i=1; AJvYcCXoEocTR5+IwzRvDPrIE8f52940iz45CckHHsm4NSkA0zpIN1DRvb5MmzV3+47CN4gPiG7eDNoTPmpV@vger.kernel.org
X-Gm-Message-State: AOJu0YxT3pKKWpkyMh41+HKdMDMQmrIZSFxw21yLHS1E6ugrqzoPtN2L
	wjvzdVIHx8/Phv68db3+K9l1QVZfFWQok6zCT6RDRsFYLK+b7UZ2qJWkvFq1Sks8pFE7j67Ci+X
	FCO6YpFI=
X-Gm-Gg: AY/fxX5av9EBcKVByMBfq0dixn7zCsZ3HbNI4dZruaBV3/TOrMr+zgXRRw5cBNsaTga
	1hRxzZQg4ox+XU1RQA122gWQ+v8niKLnOKKKsi3rARE/rWUCPskI8QHtaCP97ACKQVrKamuzzPa
	oYD2e5z3CiqWAKiQiJcuzIayIShW9FLLUjpqez7r5BR1nQtAMM3u9hEUcfZnHx4V3vNLxgI/BHJ
	J+kR4/v6FtWqCOzBABj1DtjuxafIZ2ddeLiBOkxdq2hogh9aEDQlKs9JE/ZS2DdN9khim8mrYXu
	MKaBKS59ba0UASTnDpm6ymsVSB4YFh6L5FG6aRwmIip2ZZXcy2iE7QW40DU0d2pSwIlnls+3BtZ
	B75NOw59B3EHEbYT+RcyW90v45F6k+HrsAGWFKoX7z+avj8PXUPrqvTNs6tzlKF0ipluvu02zDd
	kr+HP86fUoOjZaWemQxw/n4jHl3SZiofmk1OSgexy25miOpSk9GZlk+okhISD8pzm/fPRwa02VV
	Vs=
X-Google-Smtp-Source: AGHT+IGszkSXtL7GhVTTV5pPCscn1qVDfJim0T8bRvyNHJT7IeORevR9ZW/WKb1oqJD5skkQqiz3Ew==
X-Received: by 2002:a17:902:ce88:b0:298:6a79:397b with SMTP id d9443c01a7336-2a3ee4b8d62mr8864915ad.56.1767755267806;
        Tue, 06 Jan 2026 19:07:47 -0800 (PST)
Received: from kinako.work.home.arpa (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a3e3cd4bd8sm33694165ad.102.2026.01.06.19.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 19:07:47 -0800 (PST)
From: Daniel Palmer <daniel@thingy.jp>
To: linusw@kernel.org,
	brgl@kernel.org,
	robh@kernel.org,
	saravanak@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@thingy.jp>
Subject: [RFC PATCH 1/2] of: Add a variant of of_device_is_compatible() that can be build time culled
Date: Wed,  7 Jan 2026 12:07:30 +0900
Message-ID: <20260107030731.1838823-2-daniel@thingy.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260107030731.1838823-1-daniel@thingy.jp>
References: <20260107030731.1838823-1-daniel@thingy.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In a lot of places we are using of_device_is_compatible() to check for quirks
etc that are simply not possible on some targets, i.e. a piece of hardware
that needs special handling is only on one specific ARM machine and your
target isn't even ARM.

Add of_device_is_possible_and_compatible() that also takes a Kconfig
symbol and checks if that is enabled before calling of_device_is_compatible().

The Kconfig symbol is build time constant and the compiler should
remove the call to of_device_is_compatible() if it is unneeded and also
remove the data for the compatible string.

Another merit of this is that in places were we are checking for quirks
outside of drivers themselves, i.e. in the gpio and spi subsystems where
some legacy devicetree handling is being handled for specific devices
is in the core code, when the drivers that need the quirks are removed
their Kconfig symbol should also be removed and it'll be easier to spot
that the quirk handling can also go.

Signed-off-by: Daniel Palmer <daniel@thingy.jp>
---
 include/linux/of.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/of.h b/include/linux/of.h
index 9bbdcf25a2b4..70be20b0be22 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -358,6 +358,8 @@ extern int of_property_read_string_helper(const struct device_node *np,
 					      const char **out_strs, size_t sz, int index);
 extern int of_device_is_compatible(const struct device_node *device,
 				   const char *);
+#define of_device_is_possible_and_compatible(symbol, device, string) \
+	(IS_ENABLED(symbol) && of_device_is_compatible(device, string))
 extern int of_device_compatible_match(const struct device_node *device,
 				      const char *const *compat);
 extern bool of_device_is_available(const struct device_node *device);
-- 
2.51.0


