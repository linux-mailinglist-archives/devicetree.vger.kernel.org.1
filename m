Return-Path: <devicetree+bounces-12079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6202C7D7D5C
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 09:09:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91FE11C20E29
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E057814AAA;
	Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="n9J5TpYi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB061E54E
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39C06C433C7;
	Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.dev; s=korg;
	t=1698304136; bh=/GtJaouCP9uYvnQf/YrQKxvci6Y4JpBN0GXQjS2r29E=;
	h=From:Subject:Date:To:Cc:From;
	b=n9J5TpYidezIblJXGajSjuAGMsIB0iQ8lxWEqWgto77GA6J+MmoJ6+3xazy5CmQ8L
	 IS89D55Lg/QGM/D5dODhxw366HMfhfCGC3VKs8m12YRWMwEaUYE13EsXd8aVM8/jDP
	 L9tJGxQr7ebvy6PLSXfyn1rbo1zcqU0qG/EU935k=
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20BF5C25B48;
	Thu, 26 Oct 2023 07:08:56 +0000 (UTC)
From: Richard Leitner <richard.leitner@linux.dev>
Subject: [PATCH v2 0/2] hwmon: add ti,ina237 support to ina238 driver
Date: Thu, 26 Oct 2023 09:08:48 +0200
Message-Id: <20231026-ina237-v2-0-dec44811a3c9@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIAQOmUC/2XMywrCMBCF4VcpszYyM7WWuPI9pIuQix2QVBINl
 ZJ3N3br8j8cvg2yT+IzXLoNki+SZYkt+NCBnU28eyWuNTByT8iDkmi4HxUGMtrSKbjBQTs/kw+
 y7tBtaj1Lfi3ps7uFfusfUUihMkj6TKRHRnt9SHyvR+cLTLXWLz4oR82cAAAA
To: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 devicetree@vger.kernel.org, Richard Leitner <richard.leitner@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698304135; l=878;
 i=richard.leitner@linux.dev; s=20231025; h=from:subject:message-id;
 bh=/GtJaouCP9uYvnQf/YrQKxvci6Y4JpBN0GXQjS2r29E=; =?utf-8?q?b=3D0tI3/dPziYw9?=
 =?utf-8?q?MSGLgP4np9BF9AJSZ2F7UAb/TMp0Q9VBuy5n3mYqM+tlptr9PzIZ5Ry7Nh3zqkVY?=
 Rw49LwMcAnEYWN8DrDuEHdJAHZxMWhV1HXkKjLNHKC3636hVLHYJ
X-Developer-Key: i=richard.leitner@linux.dev; a=ed25519;
 pk=ZYa5+0m9RFYtnNU6DLet7sHyPehnVHa0ucJlYiAu2NU=
X-Endpoint-Received:
 by B4 Relay for richard.leitner@linux.dev/20231025 with auth_id=90

This series adds support for the ina237 power monitor to the ina238
driver as those two are very similar.

Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
---
Changes in v2:
- Drop separate MAINTAINERS entry as it's covered by hwmon
- Drop separate dt-bindings for ina23{7,8} as discussed with Krzysztof
- Link to v1: https://lore.kernel.org/r/20231025-ina237-v1-0-a0196119720c@linux.dev

---
Richard Leitner (2):
      hwmon: ina238: add ina237 support
      dt-bindings: hwmon: ti,ina2xx: add ti,ina237

 Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml | 1 +
 drivers/hwmon/ina238.c                                 | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)
---
base-commit: 4f82870119a46b0d04d91ef4697ac4977a255a9d
change-id: 20231025-ina237-0f1a9c14fd5d

Best regards,
-- 
Richard Leitner <richard.leitner@linux.dev>


