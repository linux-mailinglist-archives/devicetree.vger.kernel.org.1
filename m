Return-Path: <devicetree+bounces-254255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3EFD16950
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FCA330136DF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260DF34F253;
	Tue, 13 Jan 2026 04:03:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF66015624B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768277011; cv=none; b=ZPtPvy2gnDxGmoeoEBg3s98TCVoAXw34Vkh/iqer1asN9Qimim0AxLspRmzDQ7dCZn+cf8yHQOqalIj8kK+OZ6ltn556FRlkkS9sPKJRRUG4yAEVYPWyjIaUGUPHfvRuF5lOsHlOGwPW9lZ7HmHx9NZktlpz1NxL4JNDIRujy3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768277011; c=relaxed/simple;
	bh=4rhW+lqh8yx4MRL9+ykYiG9ztcwailoQR0p631n7x4M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mYb/mRTVk6EBSP0s3mZmOT0Y0SwpjjlT351+kaukms5J8JHF2KgEputgkLLSsXk3PRAFMIB3cZ4f6BLuSWW0xBXfHp0RnPr+7BeIx8wTfMoY+3zx+i9gohwsYZ9ngYb9SvU3nq+a34NcreqcaQU27FvUCm4FuF5sevd0QFZt1EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-81f3b4ae67bso1312313b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:03:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768277009; x=1768881809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oNlx+dvD5WQQtQmd/Zj78M/kYz4+lKG43Clk7XuZhDA=;
        b=MhVAjmfdDPzBIm7wTL/SaNKnpLAiK164dAtWMlxJQ38ztBkaFZC5Ixu+r7wtEOdXtW
         QP/lq2JgWu8eKM/tHtpZ1GS0R+t9//o/pIx6rnNAvtaqM9QG+LYpi6j0PJf+fK9H5LOQ
         WaRxne5/x+Tb6Je1FdbnZqCDbINCmEOE04wsSG6VWwNzGE0fXPm6fdAwbwJwFwZOCJpJ
         hvf85xws6yT9l2AnTt3a9jVxKTrCwXWZoecytq8N+3gIO84nlYY+li9FC+KxsB5Xp24n
         ASXXjhEol0TmshG9EuF9MxhdZspp0jM6wxFEo2+VJPr0ix/HpbUyQ4YsgWuFzPaw9vfQ
         7aHw==
X-Forwarded-Encrypted: i=1; AJvYcCWttSdtQYaH+9N1VArXl6/Icu5o9cCY1B2Jxd51Q+l2xv4et+/Pg1eBvs3sJlmZX1u58tgmKDazZy+7@vger.kernel.org
X-Gm-Message-State: AOJu0YyBQM9GcoRviD2hxzFfMOx8Cg4MkGD7Lb4dYIfNQSjCnALFDMWw
	s28q08x7hEB5u4lTaN6xonjDrWQ8Bd3r+lQ7J20GRMJzKmI0OWIF+K4W
X-Gm-Gg: AY/fxX4+ydsJpMq5OWQynSnU0dd7lLpIJ/qBShQ1vcWy4J4RCKRny8MdiT0OdjScxq2
	Cio+GpfPSmnA/YISwgMtLTHRWdE/pJOddjEsCmw1ta8PQZh67z1S/u6tqXh3Mepe9n9V8/39iwj
	98lRo/yp6HceFaD8l2THKe6GwbvztTqz4F1LMaJfIFEriQDxcXhTQOJ8m1IA5lvrtlC+BfYCUpb
	vwf3a4fmb02U2lLhOoLloB7/emaCgop7r5jZ8QoBtiHXHG2RDtFIGv/mb0nk4nd6gK+nqzQwuzd
	wUD5Ew6mlJ8erqWw/J/GJKqx1ta7wq8OFj2Q+TyUBcPIK0+w8X1/NRyJ4KZ1T19RVNQxCh+hvmO
	lH1jQc+lybCSkW96jZbiN1s2IS3jmlyB84iWV6LvpVg7e2rbTRbfYW74sfruRnvR6dpZrxdSsY2
	aPUxGNmbZ4Hk9yZ3fAew0UP1A=
X-Google-Smtp-Source: AGHT+IG1Ir1/v24oTE7hw5nYOrPwMU5BXR8droriVbgQc7JnxAMbxv6pESG2Jhxen65aEhyXsjDo3A==
X-Received: by 2002:a05:6a00:4399:b0:7e8:450c:61c9 with SMTP id d2e1a72fcca58-81b80ac5d3cmr15011436b3a.57.1768277009078;
        Mon, 12 Jan 2026 20:03:29 -0800 (PST)
Received: from DESKTOP-LUHV3PD.localdomain ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f3ce8df8bsm7776016b3a.40.2026.01.12.20.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:03:28 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: andy@kernel.org,
	geert@linux-m68k.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add titanmec
Date: Tue, 13 Jan 2026 10:02:39 +0600
Message-ID: <20260113040242.19156-2-email@sirat.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260113040242.19156-1-email@sirat.me>
References: <20260113040242.19156-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Shenzhen Titan Micro Electronics Co., Ltd.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..2fd273ccd66a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1654,6 +1654,8 @@ patternProperties:
     description: Texas Instruments
   "^tianma,.*":
     description: Tianma Micro-electronics Co., Ltd.
+  "^titanmec,.*":
+    description: Shenzhen Titan Micro Electronics Co., Ltd.
   "^tlm,.*":
     description: Trusted Logic Mobility
   "^tmt,.*":
-- 
2.47.3


