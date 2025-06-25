Return-Path: <devicetree+bounces-189409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C96AE7C58
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:21:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0AA14A44A8
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1BF2BCF41;
	Wed, 25 Jun 2025 09:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="viGbI74M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA9729AB16
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842883; cv=none; b=e/VBb17u0QaGsKvivP74aFiciARZSKT65H432ysjpo9cv8XjOUApRhTy+O8Pb97QvMvBygHxCO36QgK4oURZ5KxQeYVeSd6R3jk9Zj5gXrVJkM36ZS8fqBy8uAHFnKxeqBN1IXHODc9BfJnjMyi7BdL00FCoK6/AaDerXdNh3IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842883; c=relaxed/simple;
	bh=PAGDNepLOywQBabUDSRzPENpMzvIh8vhIPwgCFVMPTE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=htDhjokdLILE2jWxoZvSvl7wkxODLtJxIpOf5p6oHZoxR8Levs6vqY2TGY6ujRAibQhYev68ENvnVOPtO5GYO/oG5j8rodXVN7h0lLVi1J/SWQpP7+UqseohkuszwnC65/uwyNVMIrm9NxPXR/t4ZzeGnng+v8d4nxPwg7SM6Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=viGbI74M; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad89ee255easo1150186966b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842879; x=1751447679; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tNPdorLxClaT/uQLIG+PJ7OfFR9MMk+m2oDiINzPpBY=;
        b=viGbI74MkQ4mBIlVJVUITiIYtPdofzw6+SzUrQurZ1/Ds/YVNC82s8VXaalXILQOl3
         LbkGtBcMOcqKlLL0Xj25tCa8AomWs7GqGTG4t/ffUVJ2sbEI+Pmwfeo8s74ykq1mxTQn
         IAgietsITqYemsdRkokbmq2N0jXjDuS6Clu5qDnCqOKhM5oqeFU+E/jfSytxQBwxYfEm
         4nTb9xPf+8Y5zcrUaiOkrLfwyGuv/F3Q6LcoZoDKL3vEwLKLLz5sirQkS7nBZytYRR9y
         VJeFcSU2uLwswC6HFyqDO0jKXTpicJIjKrafRojewK0z6TzoJQaM8oGYSzoTTZ0d9Xa+
         /RdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842879; x=1751447679;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNPdorLxClaT/uQLIG+PJ7OfFR9MMk+m2oDiINzPpBY=;
        b=QR/21omOGgs1zRj9eEkwuAfI6d4ZF6Qio1fYf8JoBZpeabki5T04WSKeAhFprar54Z
         DpRc9wP0NduFjL4+sC3yCxJ9yne/a3WMQJW9N5BcwHp7Nje9Mh1eNL8a5skEiXUfTgjI
         FukR55tUkR9IAsU5dssGZRNB/8mNCcDQjCPekdOuHCAA4g5kE47uv4qc0iy7gzzrjOxF
         YvqM30OfN97P94QFTxLG+IAA1+SWrrM9lJaeZsOT65FB4/qcIMzCzgMV9VvJ+78xfeew
         4XN5aXted8wwhgII37nenWPiabKUWpXRkGbF27it5puwvwE5pJtOiCL7m0jeYMFvcg2g
         S9bQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3k9w0Y/tswcaPlzUOb6Sk3+rUthxzbLIZB/xOEbDnzKlRdhW/5CVfhCmnp5yna5yD1wfPYT4Td/ZX@vger.kernel.org
X-Gm-Message-State: AOJu0YxSt+IoqgjcFoN20QKL3Y4Nji1I+HE8vjg9D/jzpvgl/K+5F2Hg
	DNCLqdOKEqVb5TNaUCY96C6idg3kSQbS+Uyst5+5ij7i36cxpIkCe4BShSFw43a6MYI=
X-Gm-Gg: ASbGncsh+0B7NazPdWP+vuV53xiBXiZHUkj0QWOiAuYBLDgdwh8FPD1D1AtSaKuu4zW
	X3323W1ro13uY5N6+SyxXAKJUsya2QkIN7ZyHVF/j7OVrrHQyMsLxVkiBchHkUecZXNU/CxhpzE
	OhAHTZaMeNjbSWUkYBbMflg1ABwpa/r9HILXI0D+C2SruY8rQtmWAe2qkVWwAoQuaZTon7sC8T/
	jopEpg97czU0xQWZu0tc758dCH6hPl5rDHK91Zrl0qLalMUqGOGF8yUUOSEFsr5OPWTMqZGyqnu
	uFw/RmY25Zs2xFllfczPO50QZZz9Fn0daUJRVL3lbA38JjOrfrtX2gEzYdWPM7NbJ4ahdd7HETI
	/1eEedIRvukgaWkvjjQGklCggrceUTdNW
X-Google-Smtp-Source: AGHT+IHpq9unqR2oaBvwa38Bk0ZRvwuj5rdTKcuQ+rG7jUe/JThlIksCFQb3sLZOckPwpcJlB25wYg==
X-Received: by 2002:a17:907:d2dc:b0:ad8:959c:c565 with SMTP id a640c23a62f3a-ae0be7fdea7mr236805266b.6.1750842878906;
        Wed, 25 Jun 2025 02:14:38 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:38 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Changes for the eUSB2 PHY on SM7635
Date: Wed, 25 Jun 2025 11:14:28 +0200
Message-Id: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPS9W2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyMD3eJcczNjU93U0uIk3YKMSt0U46TEJDMTi+SUNEMloK6CotS0zAq
 widGxtbUAVRupiGEAAAA=
X-Change-ID: 20250620-sm7635-eusb-phy-d3bab648cdf1
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=875;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=PAGDNepLOywQBabUDSRzPENpMzvIh8vhIPwgCFVMPTE=;
 b=RIhv8EznDuMD7oLSF0eD0DTG+LFSs9onAwJO9X6ATkc4ve/pGpLEQM3tBajj27EkSJyGXiNRG
 gika5+0wZNRDRMnR7hBSfSIOi5tnmca0nZU59SyhOSKu6R+orpFTrxv
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the eUSB2 PHY on SM7635 and add some driver changes for it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      dt-bindings: usb: qcom,snps-dwc3: Add SM7635 compatible
      dt-bindings: phy: qcom,snps-eusb2: document the SM7635 Synopsys eUSB2 PHY
      phy: qcom: phy-qcom-snps-eusb2: Add missing write from init sequence
      phy: qcom: phy-qcom-snps-eusb2: Add extra register write for SM7635

 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml      | 3 +++
 drivers/phy/phy-snps-eusb2.c                                   | 9 +++++++++
 3 files changed, 13 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-eusb-phy-d3bab648cdf1

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


