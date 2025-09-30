Return-Path: <devicetree+bounces-222800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EC3BAD1CB
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:57:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E940919268D6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FCF23A562;
	Tue, 30 Sep 2025 13:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="NzRhiqGU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055BB26A091
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240639; cv=none; b=O69R2CFaPSQecCAfiHwWIV5eZLwKQUGLTzimPZSR9WS9jwhlFujqa26ap4YClsHpE+GXvZeLD0Jqsprd8Zk1r+q8Sz5Po6LKjr2kUAXOaatIgW7PwFS1sDdJPDR/4d5nCG3uVtTp+mxDi8BSWF/Qr7eR9qRDP8E3cXHUzXRwARw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240639; c=relaxed/simple;
	bh=LvoK/fU0u4wr6mRtgdT7avBiMc754iRAL/avyJ7a/+o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iDNtZZrsEcNu9wWdUO82kJq0wfiE36LPhi8t33mJTgKhBYvY953iXqjbw8u8vnJaa7MOR7sOO3EoEtWg0B+knkQ/2A5xb6+OH4Kl6askyudS149mfvmQjJfSPScw6hbiIq2bM+PprpRwhFbwpz6m4u05C4LnyqfXrmpURk0keoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=NzRhiqGU; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-afcb7ae31caso871657066b.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759240636; x=1759845436; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eUr7vsKJmPNDRIs20r13nEz41hFknG/qraXbAKvVO/o=;
        b=NzRhiqGUDh498dEWpEe7rKJ8/3G5f0O45Ju5nXQu28UNz6wUWgZc32wWrw6ZCerq9A
         VftOqfCYplEWDsrfelFkcMxptOPlsxZX71A6pTaXtiZmSZD0D9WZFJtPgM6LURLCGS9e
         XJ1xZ7wDZN3Kvq2/WYK3dw2flt52Flzv7ybWZyHluobf4GfaNSHM/AtQ7js5CIz8gtU0
         EMHC75owQcZRd6YVhQlfbkf1aR+ff76LiGZ121W+Xhuk/ow4QAG68FNLkTMWT3T/SZNI
         yGgKrlgpN3vedgN5OdTFm0nUSHsYNIKNg52h5fzFgHvhI0tFaRHZhBKPMKrtvaYjNb71
         zQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759240636; x=1759845436;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eUr7vsKJmPNDRIs20r13nEz41hFknG/qraXbAKvVO/o=;
        b=UOnhfxMXJYOiFsrhlpTV26FUAjOzfpM2a6umkydyu8O8SRr48uj39X73G3TNVlh+Ax
         MU9XNvzu6AG1bf3+Eha9ZHuT16yvQPIBnNkvplaA5mgRHTfYo/1V9O06JxTY29mcDxK+
         DB+jgPdLNv2atIIRu6PJeQMt6lDZTXbPhU/uLcVu1OH1DSmFVdh1ur4vbB47JcVXNuKo
         RUSgySn2h1JRrEOWLERE8EAnDxwcW1R3tMMatUhsB3ym45noXlNkVTO3h0bxUchvsUNF
         B3+zsPErePdI9IIb2zNWRMcp1XPYMSUh3uzjj1UGOlOxLoAYU8ejVNeznA0Qya3ioGgE
         JOGw==
X-Forwarded-Encrypted: i=1; AJvYcCXdAfzZlzBwnbeIVfANnzer857CL0HJjrEkjPgmwpKqEcgbrWDBmORbcZwQFNp9US/NzuT0HXbNhu78@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdze2RjMA/3EM9cA53jKwcxGidP8WjOoTFCrwReYxFoP7z7iYz
	G+t+yjP9EAO8WSJ9DlX2fHyg7W1AZXXFZwirPVTTu+1GhZD7rWfURCH4JgHUaB/1o7otL9RXn7F
	ZLr+j3N0=
X-Gm-Gg: ASbGnct2dQmBW1G4VU0fGgfgHV4cHfR+Y3fYlyq4DWfhBudeToqZDUHiTFfDG/2N8/V
	bW1XkI1nO6wzGBjZ0PSW/GjUtpcBbq0zw/rx+HDrKUfX4dr09TGTdqs9bS+UjWKf6C24SceTa8p
	ckxKw0b/F1rSyo5Mm0kx0SiCaDjBAG6OXFBZ+reZAlBjBDmMu/3UK3GMoACfppUfiTaFBhxizmJ
	a6iiJo64HtOuDBreZg8c8bP77d6Tb07t/A0Oq5eie5TG/PFvOJnHdEeFR0yuSdMwKG4V0TwVTYr
	3FnXIK4cRYZYyk0bGICeh24j181mJA4nzUGaJOZj6pkG7OPnTnSMiYqoTf8WmyIzJLTiNYAzHc/
	5Zp+3CocvxAU8oQv0RS7cG0VDedbg+UpmVFYejpgx9EImrP3DnNESM56RMZSfwh9YpRhQ/u9xJw
	A2fGmEx5FPcRXIxx986w==
X-Google-Smtp-Source: AGHT+IFYeOgKWJT7YPQFm0YeDty93OJbZCiOvEyhMTrBgicIfyRCh7ByvycGfhKCy0N/oNg9ro2maw==
X-Received: by 2002:a17:907:948e:b0:b3f:1028:a86a with SMTP id a640c23a62f3a-b3f1028b47dmr844768966b.3.1759240635975;
        Tue, 30 Sep 2025 06:57:15 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3fb818fb90sm370234866b.63.2025.09.30.06.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:57:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/5] Mix of dts fixes and improvements for qcm6490/sm7325
 devices
Date: Tue, 30 Sep 2025 15:57:00 +0200
Message-Id: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKzh22gC/x3MOQqAQAxA0atIagNxVFyuIhaSyWgKFyYignh3B
 8tX/P+ASVQx6LMHolxqum8JRZ4BL9M2C6pPBkeupq4kNG5cS+hPw1WNkWvvqQocmoohVUeUoPd
 /HMb3/QCizpx1YQAAAA==
X-Change-ID: 20250930-sc7280-dts-misc-c5dd04fcf74c
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759240635; l=1094;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=LvoK/fU0u4wr6mRtgdT7avBiMc754iRAL/avyJ7a/+o=;
 b=H5yzZH2WkXZYR+4lSp/dVFM49LH1oXDP4ygon7l785TAFzcmY8soqxtCdDZ74m6LvtCG+dBhy
 YRiXQCs2xCwDBBfEKWtUQVlGYrtt19LUwP9/KRphLv+OUW4yWD0tlpi
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add some fixes for Fairphone 5, and use correct compatible for
lpass_audiocc for qcm6490-fairphone-fp5, qcm6490-shift-otter and
sm7325-nothing-spacewar to make sure that driver can probe.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (5):
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add supplies to simple-fb node
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add VTOF_LDO_2P8 regulator
      arm64: dts: qcom: qcm6490-fairphone-fp5: Use correct compatible for audiocc
      arm64: dts: qcom: qcm6490-shift-otter: Use correct compatible for audiocc
      arm64: dts: qcom: sm7325-nothing-spacewar: Use correct compatible for audiocc

 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts   | 20 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts     |  5 +++++
 arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts |  5 +++++
 3 files changed, 30 insertions(+)
---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20250930-sc7280-dts-misc-c5dd04fcf74c

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


