Return-Path: <devicetree+bounces-58118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B03D28A0878
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 08:30:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47483B213B2
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 06:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B302D13D242;
	Thu, 11 Apr 2024 06:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="czIca6VD"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63A813CF91
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 06:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712817010; cv=none; b=QxBHi5jqkwFLkIvge0Mop1YVG5pLomZR62PJRcVUt09fbI8jATrVWgKKKk/La2IXPNuwdlH0fe5x9yxQtv3ShmvkhITNBp9j+Eu3uMcVQsyBo0PNPrhl3BV6hc4MSMYCetRfw0GuLwXVRNgQxbirzq/t9kqaWgLBAOUsU6Jlgac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712817010; c=relaxed/simple;
	bh=GjQLh2SS+UPCwTeY5t5wo2LRXFOxwUNhEd58olpc3fQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QB22fBIoAdIxF9yxse5EiN5jna0rszGcZ0FXBhjF7neVKbtmgiCdLVy18P3Iyjldnf/fbK0F9u8lDhIDborUnLgCsmYA5U29SSy5IrPNaiE3vkxsXlA90ZoNWz48pZ4zHhB9Q4GlTnf5CGSHbbeHtVUW6NdwXzK10Pw3mqA6WDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=czIca6VD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712817006;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QjytyvFJKqQcE9RcFAinE6xUHtFSAIxr5mwB8QS48zU=;
	b=czIca6VDyLkQe/8lnOF+9J+m4oBHVCPearTA+Ce9vUOKnjbkDmDoDCvyGMkYHygLPKneu/
	YDrQObIqRNSICGvpqvuYDV/5cBSFAA2m/fGMW+vOAPyUcdm2ZJjuWKGOhNczeNGwu7HOL9
	Ubh1ShVqhLV0omUv8wf0p0DHk0Ds4k8=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-445-r7DtRX0ZOR2KfJbl19xg3Q-1; Thu, 11 Apr 2024 02:30:04 -0400
X-MC-Unique: r7DtRX0ZOR2KfJbl19xg3Q-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a51abd0d7c6so417294566b.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 23:30:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712817004; x=1713421804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QjytyvFJKqQcE9RcFAinE6xUHtFSAIxr5mwB8QS48zU=;
        b=nXXfpO3xlVMHYV6TOPGF/IzDu+z4yedmOW16M01yTLXtlZNOKrGMpKZeR7esdOHX1T
         9k8ByFvKzfY6XFzVdj36sAfwCsjK8GxYMEQMthTwSO567GGYgKXDIAdZj/RgUko7ebR4
         a1ftZWcjDc7zhwr1rYhylrKbQRD9iNkCC7qVkz9bWH8B459iyxoRhBiY7mqItIDBVJMd
         E+QxTmdktjmEXjqT6rbAg+/KSFSYi+5w6ErLfiYr2dhjoMuF7mDL/uwlcmoiMNhUpTfu
         yUyIMmZv4xW9xxMhOofeXIiB8UTjZluUDFDTXIhNfVjKRMdqrNnX6JNVCZSgjopSSKWB
         RFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2c7krnUW+cCpkH64NhATKmHAgOtdIRsFvxRYoIyLVUAzoBs7ZGEKizIi5aFBhDz/ZWFtK9+s5KKckxpAW84WwnZUTjL+vCE5GlQ==
X-Gm-Message-State: AOJu0YzHgZPfO1bsf6xMlvGwI176BJ6ajfiC2oWQcEvypJRA6qu/dPGX
	UB4XO3iMPvo52jZZNCXCMW18wbB9Zi9evxFRG9cqjSe7XsQ62ZPXvbOUWC446zuPIs0NzOaBh+Q
	ZTZAjyqE/DPMbqs1zVfNLG+gT8LEE/PjThwEzxp2nxkJ/MLUYdGBj2OO9C/Q=
X-Received: by 2002:a17:906:52ce:b0:a46:d041:28e0 with SMTP id w14-20020a17090652ce00b00a46d04128e0mr2888126ejn.59.1712817003802;
        Wed, 10 Apr 2024 23:30:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuaTV6OOaUHrKVqTyvBXdctBjECsiWe/03rza41UgNLqH9ZqvOo15Y132Jc6oe7ETPBxBFzA==
X-Received: by 2002:a17:906:52ce:b0:a46:d041:28e0 with SMTP id w14-20020a17090652ce00b00a46d04128e0mr2888118ejn.59.1712817003426;
        Wed, 10 Apr 2024 23:30:03 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen9.rmtde.csb ([2a02:810d:7e40:14b0:4ce1:e394:7ac0:6905])
        by smtp.gmail.com with ESMTPSA id kf20-20020a17090776d400b00a51e9b299b9sm433138ejc.55.2024.04.10.23.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 23:30:02 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: adjust DRM DRIVERS FOR EXYNOS after dt-binding conversion
Date: Thu, 11 Apr 2024 08:30:00 +0200
Message-ID: <20240411063000.48794-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit ad6d17e10306 ("dt-bindings: display: samsung,exynos5-dp: convert to
DT Schema") converts the last exynos display devicetree binding to json.
With that, all exynos display devicetree bindings are now located in
Documentation/devicetree/bindings/display/samsung/ and the directory with
the previous txt devicetree bindings, i.e.,
Documentation/devicetree/bindings/display/exynos/, has disappeared.

Adjust the DRM DRIVERS FOR EXYNOS section to this change.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 03204db05027..c2d913c64704 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7221,7 +7221,6 @@ M:	Kyungmin Park <kyungmin.park@samsung.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Supported
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git
-F:	Documentation/devicetree/bindings/display/exynos/
 F:	Documentation/devicetree/bindings/display/samsung/
 F:	drivers/gpu/drm/exynos/
 F:	include/uapi/drm/exynos_drm.h
-- 
2.44.0


