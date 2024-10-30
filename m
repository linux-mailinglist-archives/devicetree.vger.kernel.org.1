Return-Path: <devicetree+bounces-117572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A3D9B6F14
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 22:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0E161F26491
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 21:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F5CE21A712;
	Wed, 30 Oct 2024 21:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J2H7JwTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E18219486
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 21:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730324043; cv=none; b=p3H1SMThIO1v3tU9bU+jKS2st7MBAYjK1Cc26sAFGRlrFUVYygyAuWAFsmqtFTFXF9KpdwTUaC93FVAX89u5gSgYUBAVwooM8ZnhM4eZhHOhpm3FgzZJy93yafSlzteWq+vjTsUvE7rl4tRgs7kdDYlUMQIUuVkw7kZRQsDXewQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730324043; c=relaxed/simple;
	bh=xAD+6+J55DPemJek11kr/Jq/FAoAyraxtOihtWfhZRk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t6QCjrIF5qMKDYrpLPo9EkbTnL2Bsi5rAQ9kwv+xAECqQFVkwRBDR3Kh2L3rEv4GgHCmUIQnT2+eNLqFwfdGzn4PEDQKl1MxNbdDai3IP8/kMxBg9WCDtWSB6SAPQZmtSWABQp2xW4g2wm43oY6gVqWQSf0jMrwGhlBhhBgJ3x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J2H7JwTk; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3e5fef69f2eso233272b6e.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 14:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730324040; x=1730928840; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Y7RPUx3KMPE26yjaIC0NfMX0BGsi69Aouu0wh1lVz0=;
        b=J2H7JwTkCiCd9i7XnVvL646uqVJ8QCNBd+cw5HDmjWiIrMcZ6pmVlEBKi0mvJ4TJWI
         Xg2VgFkOBdTrK0XWqB/ZTxBqPlowEteOUGO6Pyt6AE7DkkCeNxUZjmo2ZrWz2/i0nJ+e
         SEJPQiK7X0XmiWH6pJZ7Ncih2djf5MrWAVB0AhN0JxojfXHJHKc43RU6kmoWq7tNq7/r
         W2sZkVgOl1kYFHVtPR9uPl1BZyX2NQQ7ja+TXmiVjwrJqOnCpgQSTWdtM0bRlagHIQnm
         FRafP6GbP35MWDtNrfnZxbAGoJ4fYL4y/19TdBu5u94QqdiSBmUiIw802tD+dq1K9PML
         Td4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730324040; x=1730928840;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Y7RPUx3KMPE26yjaIC0NfMX0BGsi69Aouu0wh1lVz0=;
        b=W3V4M4Lluh/GBH3VWC9hSU92kzE24QbRn+o6l/UPoimKHOORIxaxFMAnrUU/12SlYH
         UPujBOKCG+CmO0/sK0hKPHkhGX9ZGZm7m2HqrRZ4XkiraSUlKPDlroeW954EIsYTJUaI
         Vv8pIwd6x1E74gbZUtJa3JUARywVtQQ0BZaaJgiFQYjPBys4sd+KJQQOsZ/wjNTzjYmc
         V9FLbxfq/+0OcLHClrJ3lubafcRc7RVwteQHG7kHHfRIArAeHxYSkndhyu5rMWdA8Pd1
         MVISQBGcqzQAukKEqOBlXoT8c4d1WCha6o6xp4g2iT4pyixV0gUmK1oATPM+gxdC/RVr
         UNFA==
X-Forwarded-Encrypted: i=1; AJvYcCV+S0X9+dhdUcoh8q4LnOQDABuZha2+DgGwzbUi+/Y0e3bySKQ0Mcakre4JkErQv9mHvgdvb9udnY7H@vger.kernel.org
X-Gm-Message-State: AOJu0YzwEhAs/vJYN5Rj3uII+Agqg8nLHwCS7SaUhorrW5a4uEKXGHba
	U6ssGWNZlIMMXpjY51ZCr5x4DOenG/yAmZ1yGlbqJHivXFpMthHO545tRvG1ej0=
X-Google-Smtp-Source: AGHT+IGB2O9gRZPROliM0Hcdi8+6D1eD/5WXD3xdEwRwuS1KmFiAzuK+QNPzUly/kACYth4P/XB9hg==
X-Received: by 2002:a05:6808:3c85:b0:3e5:db57:c479 with SMTP id 5614622812f47-3e6608a9bfbmr932021b6e.3.1730324040252;
        Wed, 30 Oct 2024 14:34:00 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e6611a661dsm52127b6e.14.2024.10.30.14.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 14:33:59 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 0/2] dt-bindings: dma: adi,axi-dmac: convert to yaml and
 update
Date: Wed, 30 Oct 2024 16:33:55 -0500
Message-Id: <20241030-axi-dma-dt-yaml-v3-0-d3a9b506f96c@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEOmImcC/3XNTQ6CQAyG4auQWVvDlH9X3sO4KDNFmoCYGUIgh
 Ls7sDIal++X9OmqPDthry7RqhxP4mV4hkhOkTItPR8MYkMrjDHVMSLQLGB7AjvCQn0HJjeFJot
 cV6zC1ctxI/Mh3u6hW/Hj4JbjwaT39b81aYghLxskTKvSZsm1pqWT2vHZDL3auQk/ieqXwEBkS
 DmbwjaY6S9i27Y3ckDarvQAAAA=
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Convert the ADI AXI DMAC bindings to YAML and then update the bindings
to reflect the current actual use of the bindings.

---
Changes in v3:
- Picked up review tags
- Fixed rebase botch of patch 2/2
- Link to v2: https://lore.kernel.org/r/20241029-axi-dma-dt-yaml-v2-0-52a6ec7df251@baylibre.com

Changes in v2:
- Picked up Nuno's Ack
- Added more than link to main description
- Moved source-type enum definition to description:
- Moved additionalProperties before properties
- Removed unused label
- Fixed node name
- Link to v1: https://lore.kernel.org/r/20241022-axi-dma-dt-yaml-v1-0-68f2a2498d53@baylibre.com

---
David Lechner (2):
      dt-bindings: dma: adi,axi-dmac: convert to yaml schema
      dt-bindings: dma: adi,axi-dmac: deprecate adi,channels node

 .../devicetree/bindings/dma/adi,axi-dmac.txt       |  61 ----------
 .../devicetree/bindings/dma/adi,axi-dmac.yaml      | 129 +++++++++++++++++++++
 2 files changed, 129 insertions(+), 61 deletions(-)
---
base-commit: 52a53aecddb1b407268ebc80695c38e5093dc08f
change-id: 20241022-axi-dma-dt-yaml-c6c71ad2eb9e

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


