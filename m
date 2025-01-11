Return-Path: <devicetree+bounces-137617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFB2A0A1EA
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 09:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2E513AABC0
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 08:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8FFC189B94;
	Sat, 11 Jan 2025 08:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="rhM9LaCg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85410188A0C
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 08:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736582972; cv=none; b=AlIbkqH0a68tqL0Ad7yd+1NyXXZXs3o516LPt23v2QSz7IV0OB6Wtth6NI/f+LI6asVRHBkNT+0ueYLjlLt3CemiqAwIENxquLnOQGXQrf9Ojh1JQ8esocCx6A59zE0BSNZOe7zaKAJ2I2BSwzDcJIyMeKiUPgOAmt7Peu9XZu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736582972; c=relaxed/simple;
	bh=QeLi9rN/Y81guSYpnmIBy+QWiBOTr/C3o5Sn3h3tGHw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NdA031XlNJcvUSQY6PJF0rAVjlXEcXPZecDyCWGl6wIoWHr/ZwrpNikUvL6geueTd3j3oBIMUhhW/hq4LFqsh0dQag58CIirpHjeQf0+9+l1UmQiMek4vnqDiMUtLuhfZ5UqyORWIvs18C7VV6R9dq+9YXGJ2wVpViJrVYivX8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=rhM9LaCg; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2162c0f6a39so68247865ad.0
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 00:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736582971; x=1737187771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iYtOCvBtRy+GJqb4Nu0sYWtJIb4DzvtcXV+G0BBPLpw=;
        b=rhM9LaCgnHhBCwiNTaUh2+0J1VMch6h0oFy1q64tc6l/zHoXqOdi76HeWofKgndYiZ
         SD9wampZoGewyJFfBSb/4ekqXNsQ+gO+6TibFfg3B5Ju92b+RQ/9aend8DP0N2aSb3BX
         NyrnrQF3Hxj0fRRx9ROvOFbpax6GjGswC0YETUNoTAYazNmzigfSmh8Z1+5wGoJqCx6A
         CYzflTe27lEST/db6lXATMUWpScSbqwY5J9XTyj91faXG2bLWNinqUwqZsgkXaaBdqu9
         nxVf0Gnn1RlPQFTarGhuOjD/NM9KE7PVTi228wIMd5bFfG4G6gKFeJ39KN0+ZPEC74ae
         fc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736582971; x=1737187771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYtOCvBtRy+GJqb4Nu0sYWtJIb4DzvtcXV+G0BBPLpw=;
        b=TIBjXMj2ZH5qmsrqvY/JL8jCZKICfbU3geWJ6cuLFtH27rmH98dDkWK/u8JIxw3EgP
         Bnr841gR3E90p0fMT6OWCXoBKe+nd+nsl7AsV3h031dYSFlfvROX0sTBKrr3sf83naZX
         +wqpQ3AGKGQqa2zfSVLkxqR+zMvHmMxc2TbWfNOIK1z4ATsLYbMMbv+dbg2JoOnXal/z
         Ba6VSfZZfDo5nboyalcz66d9/NJ5upWN2uzzhQh5liu+dhqHXuWfPrdzL+TcYR1ugLUG
         34XRa/GrCF/apwgzZP4WmOHu/oVkHXxRgSwoS4xvjJeWcXaQDSrXzCgKUOtGj6iVma7z
         6vew==
X-Forwarded-Encrypted: i=1; AJvYcCWHWWx1arSGBniIRYzweVo3lvH+WuXPItSe7eAxtiGlIvX4wGJQ+8BU2cXSpiW0l616VVfvy3DtGpLq@vger.kernel.org
X-Gm-Message-State: AOJu0YycojlKz50q2vvTjRtEiI1ASbAskezR1qsEW3qp2KAFZXoV8dbg
	uVfLz54K7hy+e/93MzffNEUvvzFutqq3bVFRgNTSbpK6M0aK0ayVY1cO0eToCRSeLsXg+K53tQ=
	=
X-Gm-Gg: ASbGncs57+BmcdcHukrdGa1xk7HuCRsNni6sL2Qy0VjVxXEXyG67XV5va8fEt+6xk9L
	yVHAwAxn1Doy6phQ/UPhBhqfssM1eRJVYv4VoTIYUOCdo0jXOjRpIZlDZw3uT2SlgC0MLXceL0P
	dvZDeTDYLWm3289qIvHZNa15YT9Y0089rQNonQAXRKoy2vWnHAycl1n3vQkrk3Jqj038HJZ4O1k
	L5brfa4CjKfAqdLSK+cKtXnMmH9aoqiYiepnQokE6FQqTCL0ViggEOIRg==
X-Google-Smtp-Source: AGHT+IEGRfgKX+kFYzNCu9oGzJKNeMqUdJW+ydknt0Uo1OVsYm+SZRMugsPQogJVA8Iyl7HqyXu7Cg==
X-Received: by 2002:a05:6a20:6a05:b0:1e1:eaff:2c23 with SMTP id adf61e73a8af0-1e89c9f27a7mr15199395637.12.1736582970954;
        Sat, 11 Jan 2025 00:09:30 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:aeaa:a1da:95e3:2274])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a31ddb9e3f9sm3778699a12.73.2025.01.11.00.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2025 00:09:29 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 2/4] dt-bindings: vendor-prefixes: Add Yuridenki-Shokai Co. Ltd.
Date: Sat, 11 Jan 2025 17:09:01 +0900
Message-ID: <20250111080903.3566296-3-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250111080903.3566296-1-iwamatsu@nigauri.org>
References: <20250111080903.3566296-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entry for Yuridenki-Shokai Co. Ltd. (https://www.yuridenki.co.jp)

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index da01616802c768..5e26fe32a50e7b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1727,6 +1727,8 @@ patternProperties:
     description: Shenzhen Yashi Changhua Intelligent Technology Co., Ltd.
   "^ysoft,.*":
     description: Y Soft Corporation a.s.
+  "^yuridenki,.*":
+    description: Yuridenki-Shokai Co. Ltd.
   "^zarlink,.*":
     description: Zarlink Semiconductor
   "^zealz,.*":
-- 
2.45.2


