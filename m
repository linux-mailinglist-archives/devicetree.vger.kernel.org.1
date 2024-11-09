Return-Path: <devicetree+bounces-120510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 984AD9C2F65
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 20:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C350282163
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 19:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1C119F10A;
	Sat,  9 Nov 2024 19:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="FzkFqWnb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61791E4BE
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 19:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731181926; cv=none; b=GKnXDaXboGsGc4tBoJvyVLNHoCWKeFm+1oUr7xE5ojrPiSS5wY49rlqiiLpQ6FEBHGhuGPW24bjEeTkiKGsH/shra+O8+6iBYdBZ4HY4TrR3x+ctb8ZrMPcwngSPuOrWF7JwTPIXjN99Sifi4Mg2/+23m2YiMMUqCXKc4qq3iK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731181926; c=relaxed/simple;
	bh=vkgqa1XDhQho/ObtNpHjG7xX0oIX7eHBG0SGh4kUpok=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HKXsfP7JEeESveMCd0PJQItaIGrqfgsi3Bmt8n3oh31iT3qlbxo9oipXew6GCdc99lbdKsJ+1NX1dRosjaXbHZqmzfzTHhM6cj/q8qeggR/tSmikQHptNaYwuhfgOCtIu6PsYG4uMxRcrhNbGGVh07jqK5UfEqS36nuLOufTTYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=FzkFqWnb; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71e79f73aaeso2690194b3a.3
        for <devicetree@vger.kernel.org>; Sat, 09 Nov 2024 11:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1731181924; x=1731786724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w4Ndn+TqgzvCUIFwQEQmUxGWYk+hOIvU2GZ46oGzAqM=;
        b=FzkFqWnbSo0eil9AotKdSacg3hiruGu0mFPI22iEQpnbSSDfLtDgVw2OmvLrwvZeTT
         /nJhLzFbEpqezx/uVKmKyeHZ+sBNj0lJx1avMXp++PZVO2vazJA14pK8ognAL5h5DUGW
         RVYFEojAxKqjjWG9bQcLVdbWikdU0WRep/TtfyJ5hr4WMNMm4f2WZpQb9iyBKG4pWacw
         1CbGfPWLG2vCSt5AXrdPKWBGV3Xq/Q9AOCIr1lmhHP8TFYefHADu3yNG3ACbDRjLjkhW
         WPZLjckH7MDHX7oRRJZdSbVKA0iMAUW8WuoveY8yRCK9bxb7yVIVlZzlajC1t2YlaUpd
         4MFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731181924; x=1731786724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w4Ndn+TqgzvCUIFwQEQmUxGWYk+hOIvU2GZ46oGzAqM=;
        b=tKQjzYSjnux6FIp4HaJVN4HKYCwQbz8z9VnHhKWq8yvt741+m7WKA09ubX/llOJvvG
         G9n+V4ajvqKJnNbr3LmVPYS1aC5RKAF88gc+w+ft0B/lVQzA58T2nWAsp7qscvi3+GPm
         RIf7v3qYrAeA0WtLfmIt7YibdYqjDEwULr9lCrue+j0jW/UJmGT8KQzAzCfQRVd23x5Z
         gm36hab4F1OAzALGepsH4X0VNrBHmDRJFmD8ahs3PCffAFiAkZkfgcDFY/7skkRXFgOH
         OU/jTsW1pvrqzWHSyWxZEZeXjZitW34ODJYBRhtsPOwb24e3Fd34d4fa+wSviHlpkyvr
         BVLA==
X-Gm-Message-State: AOJu0Yzj17pIVGflg+rbW98au/7IxpUjbjYIq4uZVgfujWa6tWOPh26c
	YROwOTe4EKGIK3KwQ0MELDQlDvL+MMOrmqVs5GrInrOTwJ8w4FB9Bg4Ze4sCnA==
X-Google-Smtp-Source: AGHT+IEe5Dgr1Ip5UqWlaIu843liXX9EvkYLeRVWY5DucuJKxfmp4Yx5LeTR4Q2bmJZU5YYcyJggGQ==
X-Received: by 2002:a05:6a20:6a26:b0:1dc:19d4:3754 with SMTP id adf61e73a8af0-1dc22b00b32mr8729356637.35.1731181924116;
        Sat, 09 Nov 2024 11:52:04 -0800 (PST)
Received: from [172.22.58.163] ([117.250.76.240])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724079a4177sm5972288b3a.99.2024.11.09.11.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Nov 2024 11:52:03 -0800 (PST)
From: Ayush Singh <ayush@beagleboard.org>
Subject: [PATCH v2 0/3] Update aliases when added or removed
Date: Sun, 10 Nov 2024 01:21:32 +0530
Message-Id: <20241110-of-alias-v2-0-16da9844a93e@beagleboard.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAES9L2cC/x3MQQqDMBBA0avIbNspJlFTu+o9ShfRTOKAxjKRU
 hDv3uDywefvkEmYMjyqHYS+nHlNBfpawTi5FAnZF4OudaNq1eEa0M3sMg5jE4wxfrTWQMk/QoF
 /5+r1Lg6yLrhNQu4cqMa0nW3vtkOt2h4VRt4wU/JIi+MZI5FsF6FE2eVnnNmT3AaC4/gDdgwb0
 KUAAAA=
X-Change-ID: 20241016-of-alias-bc4f333dc773
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 d-gole@ti.com, jkridner@beagleboard.org, lorforlinux@beagleboard.org, 
 Geert Uytterhoeven <geert@linux-m68k.org>, Andrew Davis <afd@ti.com>, 
 robertcnelson@beagleboard.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1250; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=vkgqa1XDhQho/ObtNpHjG7xX0oIX7eHBG0SGh4kUpok=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBnL71eHANUYQdUXNqrQ9sRd1OaPSJWrYrVlgewm
 lSF5M7l6N2JAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZy+9XgAKCRAFzvXHieVa
 dEFvD/9vUGWXtPZF/yPslaijKceOQAHpUcHI4hX72F552gLn+mOU/O4CL3lwlgI6jWMYxGEytAA
 lFQ5aF5LYF4mrVG3XAcVyRGVk0uiadaEJLOP+IUWEkutRPkhv02tWYsBimZb/CR0ppm+30MFhaL
 Ef+9uXBL14yezIF941ecrfvwU/3lbsw0UAx6pzP6ce4KgyO80wbScgdfEgZq5Q1TRQXjO5p+HaD
 xhjEKZM+Y+6Bn2VLE5lHeh0Jej1GjVnystXHTmSm9yTqvbSZp2NW4xBw9aAjXGpZKNGDCl1jFID
 M/xzw15QNiEbjJJioFbFhmgoVmlLPkvURrrnxKTSQEyRmpP1SPUydC88YlFz2wDGi09MqRB0SlW
 v3ZcJ5W8ZZ2AOox33M9nN709WPj80bMMjY2MH/uUmCr43Oac4ElMcUDXOPqG2jQGGdV6/7aYGG5
 lKlD3f00dLLVx9d8oI3eETiqbxY+nZudQw86HHVi/GjIc7i8RZrUItzQIphte1E7B6quKriOFS2
 T0cJ+KDlVD4oHDjKxWH0/1JcvjulW4/ZJuNkRu266mDdtbWpvN65dlTo9FU8nWd8MLNVXf2gtP5
 jYp9dkfOoRMtDkLweLaMFB956SE7kyZ2cJ9EgRLVJcVYjXjN5AsJWl2NT8PSo+R9hNVrD4gVoRr
 GEtlL9BikrV8qiw==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Currently the list of aliases is not updated when a DT overlay that adds
an alias is loaded or unloaded. This break drivers (e.g. serial) that
rely on of_alias_get_id().

This picks up the original patch series from Geert Uytterhoeven.

I have not added unittests in this version since I am not sure if kunit
tests should be added, or if the runtime unittests (CONFIG_OF_UNITTEST)
need to be added. Additionally, it would be great if someone can inform
me how to run the runtime unittests since the unittests seem to fail in
my current setup (tried running on qemu x86_64 and beagleplay).

Changes in v2:
- Use `of_reconfig_notifier_register`
- Leak memory when freeing alias entry
- Link to v1: https://lore.kernel.org/all/1435675876-2159-1-git-send-email-geert+renesas@glider.be/

---
Ayush Singh (3):
      of: Extract of_alias_create()
      of: Add of_alias_destroy()
      of: Add notifier in of_reconfig_notifier_register()

 drivers/of/base.c | 132 +++++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 95 insertions(+), 37 deletions(-)
---
base-commit: 929beafbe7acce3267c06115e13e03ff6e50548a
change-id: 20241016-of-alias-bc4f333dc773

Best regards,
-- 
Ayush Singh <ayush@beagleboard.org>


