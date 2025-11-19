Return-Path: <devicetree+bounces-240065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AB687C6D09B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5669C352359
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73403148C6;
	Wed, 19 Nov 2025 07:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kPcL8d5k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289A62F5322
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763536311; cv=none; b=Mgeb42lMF6wOpRJfDi6M/C6+OBdKEyywkd+uikSEvjeoklErD3kN0SKID6HZTMQaCekBygO7PCZu8ogk02q00WfdxLBDZgRnbTtdvJAAfiA4V9674i19xMz/KnhYrNN2QGOpuz1IxL9QmnOo8nYu9Osu3d0YqQ6CYLJ5xhPqK3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763536311; c=relaxed/simple;
	bh=lewKTD6NLFHdDtQ7f7/vxDFUy37j58RvCE9wZLaqFZw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pUFsIjx0ch0tYvWXLCaLi/xpRbo3Zqz2+UVQSutHwOV1eUKh0rcQrntDVuiMqr1ZuXyfppyuOlZeGpFLX8JNb+AS/E5aGO1EUj2RQnvinxF/m8FFT1DkDhpCpMtuiZ3UFNkmzcq29r2TQTJIMbsr0m2eTABfeNcwOGLY0n3ekfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kPcL8d5k; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-297d4a56f97so72457085ad.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763536309; x=1764141109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kYHfBeSzfHHxVu3uMn0kynACtSYKaWfSTnHHUJabxhI=;
        b=kPcL8d5kUfwccY9poEyC+Om6MkQM9cWa3wOMMHSphpnLjJOhTSFOh7nqlr63LugQ7x
         N1hk/YQnvNBZY2g0GxxWvVuh3ym8tax0Fv7S012p2DDgU7K9Xyc7akCVUZHyucSBbibH
         NBSUawlYaU6Ito7foHNcRHXe7UvgpA+mbKiRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763536309; x=1764141109;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kYHfBeSzfHHxVu3uMn0kynACtSYKaWfSTnHHUJabxhI=;
        b=eMdNydXF+OVJtuhmCuTui9YyQ7bZ2ePlViklf76F02hgeZLCHhSzxZ20dCRND11Q7v
         1qhsCKm0157Sy3FluRmvcJZk++eh324Gt7EVfefNWQPvtHkvZWtFc0I0t2ZYOZVCat+K
         4m90Dls9sSeLyBbbYwzO6RmOpqJ5MJD0Xg2EAmDBihd6vVo728B8a0sT/AAHdyq1hwks
         fW+ZhUytDeS2/nOuiYd8w5hCgXdiMpEjT4iaxQvaG4iFE1WZ9YetBu6m7uq0kCEDYACh
         s8RbjDVZwbeIQ5aM1FARgdDjxlaJO8FLjXCGByKeFrN5PDafbmU0eq2qCbvy9Hm2UjTo
         wOtw==
X-Forwarded-Encrypted: i=1; AJvYcCX0NzImK18YnQ4MKpUgREHq5oNwmhkkNoKSXcrrO4Aomjix7Zpl7d/a12LnAcS7ONCONcPgaogVTXHs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwk6XqAuRdhSiqXTjUFY5d+9Y3utfwhI1qerDB/s1iyZpsArzZ
	7YCc7tDcf1JMvyou6PhS3N9oHSfnvfJNFn0/LAqTHANPwC/+ZtLFfHE+nohHcObSqgF5qjUd0zW
	rVhTlxA==
X-Gm-Gg: ASbGnctN6Bumu/Bxlh4H5GcRsa5kicb6J6HLqwmsdEKZuNKrQIReorU+hfB0sEBO+MM
	hbDsYCib9l5ctPWyPyD84sfw9lkq+EnUb2H1IwKYq2GNzrzXkj6YTT0X1tO6Ds8qE90MiRLkV49
	nqE1/BkQIsDdff+ib0KJ1o0hKdkJrkPHugwS+GhEJGKTTdUL9j+/UpO0GCsbe+WN2xr/VVybCyL
	UiJ1zl0Gqk/9k9lkI66eqAhwOe2DwYfS0+4Y89+QrJSMquV8u7yaVH3k7bDAAXmINz/PZPy65zn
	2XdigzE4hgJpFvKGxEozlQCpDJfWVV9LVMTifWXp3pHKwOjCWhOHeYBEhp8HQaWG81RtsFcM7FQ
	dnylmpmkB3a5ctWMA/2NBuSVxn0RZ2dKhuuXXSI/PLFsnHFDVnIjFOc/io1yyYambWESmMl1WUy
	hRSlIJBs5+CGe7aFzu72pa6HZoXcCNh7HinVZx5XY3i/AxrsT5PxjoKu1a5NNbWn/RQxgW
X-Google-Smtp-Source: AGHT+IGNuUZZklbSnAwcwjH0fvBJN9XmBWel6ilOI6vt+JGrwzQllOqIu2jGWlXL11D1C3baD1ynRg==
X-Received: by 2002:a17:903:247:b0:294:ccc6:ccfd with SMTP id d9443c01a7336-2986a6bf3b3mr209119565ad.24.1763536309538;
        Tue, 18 Nov 2025 23:11:49 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:d42c:6a2b:5251:a121])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2bf1ddsm197554725ad.92.2025.11.18.23.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 23:11:48 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	Julius Werner <jwerner@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: firmware: coreboot: Document optional device specific properties
Date: Wed, 19 Nov 2025 15:11:25 +0800
Message-ID: <20251119071126.1719405-1-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.rc1.455.g30608eb744-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Coreboot, or the ChromeOS second stage bootloader, depthcharge, will
insert device specific properties into the coreboot firmware node when
there are valid values.

Document these properties in the binding.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/firmware/coreboot.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/coreboot.txt b/Documentation/devicetree/bindings/firmware/coreboot.txt
index 4c955703cea8..0d04ea482aa9 100644
--- a/Documentation/devicetree/bindings/firmware/coreboot.txt
+++ b/Documentation/devicetree/bindings/firmware/coreboot.txt
@@ -21,6 +21,15 @@ Required properties:
 	0xc0389481 that resides in the topmost 8 bytes of the area.
 	See coreboot's src/include/imd.h for details.
 
+Optional properties:
+- board-id: Contains the board revision number.
+- ram-code: Contains the board's DRAM configuration type.
+- sku-id: Contains the device variant SKU ID.
+- fw-config: Contains the device variant FW config value.
+
+The optional properties are only populated if the values parsed by coreboot
+are valid.
+
 Example:
 	firmware {
 		ranges;
-- 
2.52.0.rc1.455.g30608eb744-goog


