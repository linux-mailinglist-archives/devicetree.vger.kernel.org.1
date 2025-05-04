Return-Path: <devicetree+bounces-173380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC348AA83C8
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 05:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 240FE1758D3
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 03:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A38154BF0;
	Sun,  4 May 2025 03:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="K2gPVk2p"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ECA146588
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 03:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746329720; cv=none; b=b8M4VP9E9GeIhQJXAlTZum4smKEpJbq3ValF2vVTlnLpwFjXIdtMlYNsa2hv+pzzes1URB4IYChbY6fBx300ZEBvp8hWR+ldZhFp3uYxIMFFUKRbcDY3jHrCcokVIaecUQtxSPugZn2lQQarRUqKFPFQcWNisBEKeWizQb8SJwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746329720; c=relaxed/simple;
	bh=G38Y6ejHHNy25foI2rFjn1QAdikdVwNhEtaER9WcXtc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CMmvnmeJee6oeJe/6v9ByMG9CjaTC+VeOr7v+DJ55P4V++AvvcFpfcPvLVKHCOfc12ziwTYqArfDB9C7X3EMVAl4KihZLnrh6v06IRqN7F8rCBrgPtxmcaelOfjLMsDYdBOt0OrfOCaqhCwW3daccj/tJd2ghLXclcqb2sFYhSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=K2gPVk2p; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1746329716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0v/OjtH+AYMPDo4HyiUOT8RSQOKjvKJRz99zAdE5I5g=;
	b=K2gPVk2pSpjEGcAT/reeuoPNxmiJ2Rh9zQ68QoflNknv+jx/dHYKMI7tLeagyLZzzFlqld
	xPn6l/52EV5l0vJxAG85T6CC1d4t7j53/geIlCuTKPzHTDoXX/Ago6U+8iPdBuUpt0UUu4
	3iAVUh8FB48gok/zRZ/hivijMFjKt5Y=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-541-QiXdVupIPgm_51vgNDnd5A-1; Sat, 03 May 2025 23:35:14 -0400
X-MC-Unique: QiXdVupIPgm_51vgNDnd5A-1
X-Mimecast-MFC-AGG-ID: QiXdVupIPgm_51vgNDnd5A_1746329713
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-acb8f9f58ebso247559866b.2
        for <devicetree@vger.kernel.org>; Sat, 03 May 2025 20:35:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746329713; x=1746934513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0v/OjtH+AYMPDo4HyiUOT8RSQOKjvKJRz99zAdE5I5g=;
        b=QDykD9TE5whMgjn4Vd8xl9/FAO4+2TSg1JokzbYlAKBX8tteNwS3ENx38mrabNvDVv
         KFECt5ylqmBW6g4rqg0qnMgGQUYmcy3aUsZV82AfCZMl82QnJ1IZfb+AEv6GC7V/7NE8
         xND66NtSt43RyybM7TqKK1b5D5EgFdqSZYRQRHwghFUpzpiyZUXwEaNNRHvcivKuPf9t
         tnlz5Mqnqp+8UIiF126dvMLT/loYSPJBZvpWrEioGyKOHXyhU7Bz26ryJWcNJSQrC0f5
         vICRvE4jdYzsGAU0R3WfEIbd1chXt+Wkr0fE9FQGPINoMGbNtr6EVtIWCMPpTeQjwW6x
         3wyA==
X-Forwarded-Encrypted: i=1; AJvYcCWzHjBwyHUJ8fpFxfxMYMEiGrfskmcsq9gqBkT/mzcH1e34AWFApJjzFb0W2SpkMUBbWOtlePLaUu3W@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcj4uyyiUTpAyulE7MylQCwPVpwZDOoTeS72Pp14K8ZiHWGUgl
	1aBeiKWh5LFkxOhbHxzg5hxDEOfLYeH7p+0dv4Gwcy+JFJbA1Q0lLypbyvZ2ZqoFCJJO68OPx3/
	IBzGJRzgE8CYq89myoUWmK/yNpBoUseG3BpG8VlKS8tD5h6c6gjbcpbkdtkStELz5vjw=
X-Gm-Gg: ASbGncuoO+YNYsO5NV8g98ryqJkmbbJgpQraoO20E+xuTklF4Oi/u5n0Es+KfG050LU
	ZDDM766n4F1vZsYSy4nAFobsL0z/ZRr/W6i6HLexXnztstke7DGvJz3ar6+maAnim12boeXPVc/
	7LuPDbRvGFp3yaTeDmhTI4lc69zGoeXzIahdn3dJ/Mfstufr8E4wJR1cFHJiNvm81irj486AJDq
	FlP0vjug5UhtBfWBskqJlyHXym5khPAPk85CEgHbMCl7HfwqV4n0CcOXhNyaCwY2UT89ty5OKOM
	IMLiiAvio9zlfK7zvy5KGhPejllYpm2BTnBPGVPl+wcnZhGJ9LlgBHZ3Tg==
X-Received: by 2002:a17:907:2d07:b0:ac7:e815:6e12 with SMTP id a640c23a62f3a-ad1a4a09f38mr245224766b.33.1746329713062;
        Sat, 03 May 2025 20:35:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3DPNJBEfULAFRQwM0mCppaXVmV0b1Gm6boTIP80Vx6UREkQTGIelmuYJ6z6ENgBGk1YNm4g==
X-Received: by 2002:a17:907:2d07:b0:ac7:e815:6e12 with SMTP id a640c23a62f3a-ad1a4a09f38mr245223866b.33.1746329712719;
        Sat, 03 May 2025 20:35:12 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen9.rmtde.csb ([2a02:810d:7e01:ef00:b52:2ad9:f357:f709])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189540751sm269222266b.166.2025.05.03.20.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 May 2025 20:35:11 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: David Heidelberg <david@ixit.cz>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: adjust file entry in OMNIVISION OV7670 SENSOR DRIVER
Date: Sun,  4 May 2025 05:35:02 +0200
Message-ID: <20250504033502.37809-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 59b24c0047a2 ("media: dt-bindings: media: i2c: align filenames
format with standard") renames the files in
Documentation/devicetree/bindings/media/i2c/, but misses to adjust the file
entry in OMNIVISION OV7670 SENSOR DRIVER.

Adjust the file entry after this renaming.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7b78a98d1f42..78872ebb1aac 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18163,7 +18163,7 @@ OMNIVISION OV7670 SENSOR DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
 T:	git git://linuxtv.org/media.git
-F:	Documentation/devicetree/bindings/media/i2c/ov7670.txt
+F:	Documentation/devicetree/bindings/media/i2c/ovti,ov7670.txt
 F:	drivers/media/i2c/ov7670.c
 
 OMNIVISION OV772x SENSOR DRIVER
-- 
2.49.0


