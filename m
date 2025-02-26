Return-Path: <devicetree+bounces-151579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 714EDA4640D
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 16:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EFE83A7AC7
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296AE223321;
	Wed, 26 Feb 2025 15:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gxUH4izz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84E22222CB
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 15:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740582367; cv=none; b=MqV6XmPS3q4rr9wjNal+VEyql0+DjEM9yJ0nrGifvn6VF2eK5mSFxTQK16cLmHrwPpwPP+K4FnkwfE+SqUkmW7D1OdKfS4XZSv7OKv1hLhPIZrUwDxR4vk07slQnaGNeLnDYz9DoSiY5Zdrn7jz1tzCK1c5MS0hzuD9bfy/g+j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740582367; c=relaxed/simple;
	bh=vRZ/bL53bzCw1yyvx7x26B2NV6/gdhQUZCkdhC0OGdY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MFAjYtsWAlauhPPEOUi7pckdSF4ViPcCyJU/eg1ymJZE2nfyDMfSaK5c0V4TPiXotNeVNo0Dawyoxofrke6XLpkK8RFrsYlugEYbWhjiBTFCi4Ju3n84hGy1uawnAvmcmgFMZuVw1XPnFV7DEVj2l1SZRB/b8cP39IEUurm3grc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gxUH4izz; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4397dff185fso60793875e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 07:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740582363; x=1741187163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zDaO3BY71HAKuoTRgTuSjDJ2RyZhtvPwoshdk+/Y5f8=;
        b=gxUH4izzZNiVYl5smDjfWmZA8tXw3XS0YRbmScQcw01u50o2Ea5WshtGZTvl4oKJUd
         46RCeIZpksEhW3PkuiiUf5Ny+KOKpoF87qX/GWUaD9cEBLtQDJwr6VyRh2DKX/3IquL7
         8jA0FnwLGby4iQvHCJF4XDru2s/JNw8cgSYT+li+h0Ne3xR7GvnF5byaWNqIC0bWUG33
         MARui6Rg44YEzcSGPEce2v5AUL8sWgZuTVHfGGeOlwpIb3B7tYxr0tuo7fmCIggx8RVw
         drH2ZPNwfl4WtjKaTTSTUl3xTnRE9OXRLKyGvgkPc29gcEky/RudPNBUGrqw0q5PDP1m
         nwRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740582363; x=1741187163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zDaO3BY71HAKuoTRgTuSjDJ2RyZhtvPwoshdk+/Y5f8=;
        b=l5VokdnraVSoScGVkriG3Ed1JiFvECegIk+d6+bgtn1CUXWksuIq01kF+iFgbZAs4i
         67yWH9mJVhzi1kgnwmCPxKy/hweM2sdqwabjxoY7MgpxZ1gOr4Abx5HprLKSCWRckxK3
         m8P1/2JxvzYaFApsI8lCWhFkxsw23SpbRheXJ9zgDqPnKfuY1JHXE0qQOmjiNGUgm/+8
         PdhTqMC4v4ggxst4t1JLKQp3LRap3OHGOKfRQHtKFXWqk7x03y6Vhyp+sS+TxDNZeNq+
         W2KmjOSz6G4AZmw7DB4oB8ewtF1+xbZ/Beg8e/E1ybPpU6uOk78nZi0mnXckpSfD1YvH
         w6XQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwAVNoe77QWwVsXJqC+xUalmdWI++Do1niwIFKojMVfgfiyr2kbAnf3S6QbqywpDf5xGMe+pos5Eoo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkeolk9afT8LTgo9tE6jKNA2Df0NZMEyLl5eFT0+xoUbSxHTfZ
	veYhZ0ij0n6aKFVfVYn2Lf4WMePhzXUXbDRIXWz7ffxael4L54yWFt7LxjVPrX4=
X-Gm-Gg: ASbGncsa2WjdUr7+ZBaF9Ixbaws8DLAgfL07BtJVHOrl/ybHDDXbdUz5NheTSBDc2fZ
	mz69yhhAJr3j2INX3PEl+qDfXRjwqp5Xd5/w8PUFPOPEqHYQkVaRnvCyzSFG9nNVaNOEn9otlLe
	CARGVUcPi6YGB4dr0G8ZM84MyGcQDMsfBZM/TEFrbgJT+LVnPz3Ik0eODOlunr5YFu8/t+S7PtJ
	cB0TiLEvll0Sm31kue1YqPO6Mhhq6DpqBoS/awinMRrkQ03OfggUwoVYOxyYIv15rhp1gdEMqm5
	u4wcwxlHBHcjCex9zM2ePiwHGfcf+S0Ndid/Bp992OQk
X-Google-Smtp-Source: AGHT+IFxW406nMpESeWK5wpzY01hTDi5yOdxdaSstbB/R+kzLqrjAky18gB4IKJyz6Q3V4p/RrZsmw==
X-Received: by 2002:a05:6000:1848:b0:38d:d5af:29af with SMTP id ffacd0b85a97d-390d4fa3e25mr2712639f8f.49.1740582362779;
        Wed, 26 Feb 2025 07:06:02 -0800 (PST)
Received: from loic-ThinkPad-T470p.. ([2a01:e0a:82c:5f0:ad62:b2f0:914c:91ae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd8fbc31sm5768155f8f.85.2025.02.26.07.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 07:06:02 -0800 (PST)
From: Loic Poulain <loic.poulain@linaro.org>
To: neeraj.sanjaykale@nxp.com,
	marcel@holtmann.org,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: amitkumar.karwar@nxp.com,
	conor+dt@kernel.org,
	linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org,
	Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH 2/2] dt-bindings: net: bluetooth: nxp: Add vin-supply property
Date: Wed, 26 Feb 2025 16:05:53 +0100
Message-Id: <20250226150553.1015106-2-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250226150553.1015106-1-loic.poulain@linaro.org>
References: <20250226150553.1015106-1-loic.poulain@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To specify the VIN supply for internal buck (1.8V). This supply is
usually referenced by both the bluetooth and WiFi nodes, as they
share the same combo chip input voltage.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 .../devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
index 04f55fac42ce..275c1e5a6f72 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
@@ -50,6 +50,9 @@ properties:
     description:
       The GPIO number of the NXP chipset used for BT_WAKE_OUT.
 
+  vin-supply:
+    description: Input supply phandle (1.8V)
+
 required:
   - compatible
 
-- 
2.34.1


