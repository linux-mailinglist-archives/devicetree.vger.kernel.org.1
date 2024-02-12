Return-Path: <devicetree+bounces-40719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E528514D4
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:22:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3573EB277C4
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33BDA47A7D;
	Mon, 12 Feb 2024 13:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="YVfhB7/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AD446551
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707743672; cv=none; b=emF/raWR4i0PCk0kWM/kXTenhF7FZoOr91frJr2N71ZhQ8qBwz0oDHwz5V64t/JHQc486GSt+q8iBHeb+BsE8zrXfElMPE9tvg33dhqi5t3uJzP1TS/DHap1ED3pkism5CDYkgsmVVPY9HseWn6+1zHL+ZcBwW5yWR6szlR+XKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707743672; c=relaxed/simple;
	bh=NdMiTtGUPnnvJjmNHvIliTvDWwAYmwJMytgJIs+agUg=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Pgxroxd4swnXc/K8f8CigsvgDx9z1U6koXgWoqtGTEpjfZtljIfPJ/fCSO5CcUDZnaD/aM27KhAbnAtRwTDHHQvn+4NCsfmq8hgevQbyhSEihwnr3mwGtuUUrNvMObBEWmuvGF6BIr5DTDxPD08z78Mykr05uwew9HwRVgSUrfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=YVfhB7/a; arc=none smtp.client-ip=209.85.128.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-410c65efe5bso6197375e9.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 05:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707743669; x=1708348469; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RCSDKBlfQwozprcRZ3oUdFL3KROvOog8qplv+oCSSMA=;
        b=YVfhB7/aqosYLzDMv7XIyEgioXA9DQeUzuQVwqlulfIBIJu17jMIearJxsFlTLsVpn
         cKEjvwF79MIvGnisoOYb4cF54JU6MK3jf6nyjlS5Gi1NGNvuxk5+GFQ9pJAR+GEJ/s9q
         4w9dk71h7gBCEDPAkmRwZxkgA06aQ0YLQEUgAnzwUKqKF/R08p+pPbxU9ph4XoI1K/HK
         F0HZP81F5FykYjGmvj7A7hxB8hk/fcJHpvFIKKicXzE/HIAFk65oXCyIeHH8HZP/f1if
         qUjVknv5+Rk0nDmKPIb0rThCsKtfahci4z3sHMz0ZN86j0VvZ+JWV//E7e9wns0m04Pi
         ZigA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707743669; x=1708348469;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RCSDKBlfQwozprcRZ3oUdFL3KROvOog8qplv+oCSSMA=;
        b=I5kTmCCscJvn01K+t4smlWVROQqIokkQUqgWFkJAsYW+0/yOI4I5NMmTJZC5l/Tk/Q
         2jlQMIHrBHJ0zjrD29KboWbAgK+GXXhavoXIO7GPzpRjQHw4p3ht3RPt8BEMJPSA0MKm
         NGgHxXZW3dKBB/9cS/fH+11x3K8t/uXW189f5VzQhhE1VVKG0i2fLsQBBBgwQ05PhYGF
         0MqVhtQf/h+5Aq1fZIKoH1u4NY1O4U2WXFcwjhAe9TIxHkp60o/bw4ZI13yMSIaB6iqC
         wYgyameTSR2qa0BhMMffkd1mYZDrzUS+HZNdlawsxhGLAFzoBxlno7h1YqqqFuz6fuwG
         5U0g==
X-Gm-Message-State: AOJu0YxAyhx19h7Pvals93QujPUqKzZVDBcqF5qtt0lqrAyVMQnbcwPX
	Oqko1Kqa1xuwOKxQCPKQc3V4bfYvYtwucHvQkj9cuqNRdlR1mC/FtA+5UQPOfv263+hS0Loty2V
	e/0AwJ5I9ag==
X-Google-Smtp-Source: AGHT+IE9OvhFws010e2ne69d30ZH4LLamrT1DYOdh40Fj0M1L/BfU/9QYgsVvgd/OGJebKb8iXxYPr0SmhAS1g==
X-Received: from szatan.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:2d83])
 (user=panikiel job=sendgmr) by 2002:a05:600c:6002:b0:410:e190:b1b3 with SMTP
 id az2-20020a05600c600200b00410e190b1b3mr5577wmb.4.1707743668739; Mon, 12 Feb
 2024 05:14:28 -0800 (PST)
Date: Mon, 12 Feb 2024 13:13:19 +0000
In-Reply-To: <20240212131323.2162161-1-panikiel@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240212131323.2162161-1-panikiel@google.com>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
Message-ID: <20240212131323.2162161-6-panikiel@google.com>
Subject: [PATCH 5/9] drm/display: Add mask definitions for DP_PAYLOAD_ALLOCATE_*
 registers
From: "=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
To: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	chromeos-krk-upstreaming@google.com, ribalda@chromium.org, 
	"=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Each of these registers contains a single value, but not the entire
8 bits:

DP_PAYLOAD_ALLOCATE_SET - Bit 7 Reserved
DP_PAYLOAD_ALLOCATE_START_TIME_SLOT - Bits 7:6 Reserved
DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT - Bits 7:6 Reserved

Add definitions to properly mask off values read from these registers.

Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
---
 include/drm/display/drm_dp.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 3731828825bd..9dee30190f14 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -733,8 +733,13 @@
 # define DP_PANEL_REPLAY_SU_ENABLE                      (1 << 6)
=20
 #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
-#define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
-#define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
+# define DP_PAYLOAD_ALLOCATE_SET_MASK	    0x7f
+
+#define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT		0x1c1
+# define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT_MASK	0x3f
+
+#define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT		0x1c2
+# define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT_MASK	0x3f
=20
 /* Link/Sink Device Status */
 #define DP_SINK_COUNT			    0x200
--=20
2.43.0.687.g38aa6559b0-goog


