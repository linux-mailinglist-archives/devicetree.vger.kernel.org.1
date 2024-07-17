Return-Path: <devicetree+bounces-86345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF27933AD5
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 12:07:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FD391C21218
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 10:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7110F17FAB2;
	Wed, 17 Jul 2024 10:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xLJYM0gZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E0317E913
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 10:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721210771; cv=none; b=oaWcX92NDo9i7rYkF8Rj9XeetJXvhYHD1YG/BR2ZRugE3Kfn7/Hg7A1K5yHl/sf442YGTuxuskdnaie21rLUDu2ySRb5HPXPk6I5LiPVhRnAMw0M6hcyUW1syABWX1UyX2z5Qhb/YISdNX6U7jav0jYm8M0J7IkME+BoZjcFolY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721210771; c=relaxed/simple;
	bh=MYghnEZMNWq78HgnezOmQfeHxZDLKz1Ar/qEuPxda/g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=G629k4eff2sVU4PTbrSLc8UIwqPfsAH5P52Sy+dTZkB+yNl+eT+0Z8Tt3KAccalNBI71/m0qmsoZutL8qKsLV/wbIqp4jmKyY98s2Vl9lTiVFPxu99+NppBpNegxNStaTz7aSTGcyt36pESd4Eqir7W/2qihrNkm5piKBlqH4t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xLJYM0gZ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42726d6eca5so47897605e9.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 03:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721210768; x=1721815568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MLMUJK/Z5vNN4i7adZ4/craWA542/Fh4HDOAyVU3ijA=;
        b=xLJYM0gZ88czsPwWWSUDyh0qL+DTiHdjLzIV68VQ7qG0hO7dUTErKw8c1B0QdGrF0q
         VDDh4C7YTA82iLl3J6ss2QWy/TV6vPa309Z6mME64QF9XrQ/6ik/7FQ0vpIoJlF9IZk1
         UEGR7QzrwNSsPAN0MPdaKFSB4DjENRZ344vHvOBCbGhMdPT9YkmKLp0ZY2W7CY5ssvqC
         N9i8K6Fp7KN6HRGY5pfq2VGdrxc4+AU0Z8rSvuLI4/OKhm/wZS8nsq7L7LTWZo1Cw/3P
         2EKanVNnifMHF3tKVw/cosqcSkU1vUatfWwCDCPJXQyjZBNpY886BCJeVsaDE/KPcI/Y
         foRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721210768; x=1721815568;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MLMUJK/Z5vNN4i7adZ4/craWA542/Fh4HDOAyVU3ijA=;
        b=tElWGZaOn/9aARYtdJyosZV3VHetEFpzoejSReDqt+eiz6yFxmhbc7apA0T1irIFYl
         MwgTaPeJ6qXAUoLkoup3en5I7+uZX/KzJgyqvjFIXhD/pYjSrn7EqUJp/eIiwpnqXKdg
         HhwrvucTu+9Hc3phyHJGCHhJ8NtFhjPYxbCPb4Iv8IyDyvfgdwiM0BqHPvitO3Sp5P//
         3PN6J1tidzEJrKmlIlOmKDvoB13Nv47e2Q/H/GcraTAs0SUCqX8BpdI9xjBcqMbhpl8C
         JQtdM4oUKreIziJt2a9fBM/uad+HYIOLv+KNkY/DwWvHAJBQ3Pup+WWBuo/HQjkii44F
         Mdhg==
X-Gm-Message-State: AOJu0YwqMjFYI/c5No1B6aEMZ6imUnM5B+45gdZNcrU3uLlxiLCeGiZH
	XKVmd3Rj3Ovmya05RhgTwaqWNzuaOnBv+pRbzKffnOV99g7MqevfCv1FEH7G1uFizmsbjMhpnbQ
	Z
X-Google-Smtp-Source: AGHT+IHatreA6hJ0QZHIOG65FDXwkYQIK0dFa6H1+KKDy+5XlVo+HPtc52LX7l1aTKAS1Ci0+3S1KQ==
X-Received: by 2002:a05:600c:3c9b:b0:426:5e91:3ff1 with SMTP id 5b1f17b1804b1-427c2ce9008mr8122645e9.24.1721210767690;
        Wed, 17 Jul 2024 03:06:07 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e983e7sm163259245e9.23.2024.07.17.03.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 03:06:07 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	de Goede <hdegoede@redhat.com>,
	Jens Axboe <axboe@kernel.dk>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/2] Convert {a,i}pq8064 SATA AHCI controller bindings to dtschema
Date: Wed, 17 Jul 2024 11:03:05 +0100
Message-ID: <20240717100600.19005-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,
The following patches convert the old text bindings to dtschema by using
ahci-platform.yaml.

Note: patch 1/3 from v1 of this series has been sent as a separate patch
for v2: https://lore.kernel.org/all/20240717094914.17931-2-rayyan.ansari@linaro.org/

v1: https://lore.kernel.org/all/20240716105245.49549-1-rayyan.ansari@linaro.org/

Thanks,
Rayyan

Rayyan Ansari (2):
  dt-bindings: ata: qcom,ipq806x-ahci: use dtschema
  dt-bindings: ata: qcom,apq8064-ahci: add to dtschema

 .../bindings/ata/ahci-platform.yaml           | 33 ++++++++++++-
 .../devicetree/bindings/ata/qcom-sata.txt     | 48 -------------------
 2 files changed, 31 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/qcom-sata.txt

-- 
2.45.2


