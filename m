Return-Path: <devicetree+bounces-142341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFA1A25064
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 23:46:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91B7418850FA
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 22:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40A92147F1;
	Sun,  2 Feb 2025 22:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="fuN52ii/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025BA1D5143
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 22:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738536372; cv=none; b=CuGIM6u9rb1YG/yU1Euk9SV4Hq2T0QMoDI2eS1zp5Yldm2MeUc9GnrSUOzMK6tYfMgSRuIVYGwXLal7TjVTfFjUh+xJO0IaUfJYwfKt8TACO87OLCAD0wMFzcsbPUknjYNMyDwa2qmGWukz6UOEAbNNxksj+xCRp9z6e2QbUOUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738536372; c=relaxed/simple;
	bh=AgL8Vh4o01HqqDUJ+cWv0Odl6D4wHVO6sMsIgzd0wkE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Rik/7h7NdbDUxU9ya9O1DYGzkITVW7M2wWiXJ3t56iacBRNvlnzoV6q7BEGEdFcuC5cuk3yrCS9ka+CBy3Q5Jf5tQrxuiNAR4PwrIUT/+oNlXINU4IctW7tESR6uwfNHvSk9FhvXMIEE+Ss47/MAtzdeDckoO+7Cay70p90XlpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=fuN52ii/; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4361e89b6daso25596415e9.3
        for <devicetree@vger.kernel.org>; Sun, 02 Feb 2025 14:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1738536369; x=1739141169; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YMxp+N8AKPgVkLLt+tNd5Z5gGgVjKJ6HI6C9QfMvPDY=;
        b=fuN52ii/hTOy3qleFmXOZlsz7f5wuimSH6LILVnaC6e1QCacxvOPpY++PV6hls7bLk
         Q32pjDUBgMdoW/Pr8hqLHyHVFhBO7co62VBmpxuvLULCK8XRV6Y/ijrB5NnI5eTLX1hu
         5MWFVXJE0meVofQLwE4e3o2D3rGrWqKOIWB0+h+DV0jFMGvaVeAs1pCf9YcNJj4xB5pp
         W4kpnBgEns5tslGl6WLlwZwKh/kDNoJ3CLszjCKVjgz+LDyXmvA/v3ayCVWNs33KukfA
         0PTovCGWx2H1v8//xLB70WqV7pqNzq2386ORQRIX9mkSB/iaNDWmxis6hBehMRrDw0FF
         pUTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738536369; x=1739141169;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YMxp+N8AKPgVkLLt+tNd5Z5gGgVjKJ6HI6C9QfMvPDY=;
        b=Glr3PcXSJOIg7fppq+VnmfJosm9uteCecLyXZyUmm45QzWB1Kz+15ElJwJk1p4+Jep
         m4tot9OpomTLrBXQuBmg5yCZD/1VMGvtmevjSTLyS4D3+jkb0f2xtXGiCLYT5zR/ojjw
         hptULtqZzrSEprsWouXUBgE1nr2VzzHOxjQiq1UDCNe3HBSA9P22NjF1CIFDja2uB8vX
         u1ilFEw8nQ0ZkSeRSV22usEcQ4T6zLQj1G+evzBFZAoX86mb3iPzoJEunLiDwP4yeysI
         Wkg7B6eHbw9OR6zrfMQ2gLCY5mae9IjoEoYSF8aIT35LGPh6S2zKuAYFcJ/Mbatj35YY
         t9JA==
X-Forwarded-Encrypted: i=1; AJvYcCXPiHtHZPMdk8RAh7IfuxfxhXNQ/qFwmSf5EedWN2DM9kmtcYsSz3DOaeSyb7gHCbGT9gzuq4B8h5gl@vger.kernel.org
X-Gm-Message-State: AOJu0YxTRgbhPHQ94ls7+j0ZBi+MlPTJkM72Buiz7ZzAmW6EW2k81gVq
	XRfo0BnQTWYduKwhCg+emL9VB+9tnufkdzkryCF7jRwW181khT2k1jI+Aj4jLj0=
X-Gm-Gg: ASbGncudro5gELn8ds9GL7bMfLxClFYFI2chR/i5GRVxGJwKVtEC0UcZcA7o/HcEG9a
	hRJo9ZQIl/Xznwjs8Q+q3U8BhAlVL1kOdCS8g3hUyxFxW29RnpyZNKfs8sJcuYc8lg/94p82dV3
	57s3qEHR1vtArq5e14oBCQ/4lviDnrE3AN/NdGV+8X/ckZHrjB/GOTndPNAi+IPZNd0C38iDJk1
	cWedccAawPRGfBLilvtZ0dw0jDmDe25BMfrqDp7MLRpsSLLSHykw7ilosoGaey9Bae9Rgp4Pr76
	LjtOFROVcK4y6jJhfyqMtJ+0Ti4=
X-Google-Smtp-Source: AGHT+IGcFZzU17tuXtMYl8AEybTSN0illAVTYf2xaoCzTK9YBwUnEwlsFBobc6i+n1sl9bjYkSI4Bw==
X-Received: by 2002:a05:600c:3d9b:b0:434:ff08:202b with SMTP id 5b1f17b1804b1-438dc3c360dmr159424395e9.12.1738536368984;
        Sun, 02 Feb 2025 14:46:08 -0800 (PST)
Received: from [100.64.0.4] ([2a02:a03f:6bc3:6b01:62c7:350e:556e:d0f0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc80e61sm170849605e9.34.2025.02.02.14.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 14:46:08 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Enable panel and GPU on Fairphone 5
Date: Sun, 02 Feb 2025 23:45:50 +0100
Message-Id: <20250202-fp5-display-v1-0-f52bf546e38f@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ71n2cC/x3MTQqAIBBA4avIrBvwBwm6SrQQHWsgTBSiEO+et
 PwW7zWoVJgqLKJBoZsrX2lATQL84dJOyGEYtNRWKm0wZouBaz7di7P15EnLYCjCKHKhyM9/W7f
 eP08/RqZdAAAA
X-Change-ID: 20250123-fp5-display-75cece20d3ef
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2

Now since upstream DPU driver can use 1:1:1 DSC topology, we can finally
enable the panel and GPU on Fairphone 5.

Depends on https://lore.kernel.org/linux-arm-msm/20250122-dpu-111-topology-v2-1-505e95964af9@somainline.org/

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Konrad Dybcio (1):
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable the GPU

Luca Weiss (1):
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable display

 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 102 ++++++++++++++++++++-
 1 file changed, 97 insertions(+), 5 deletions(-)
---
base-commit: adff68376f7a6872be00d87720764b30f3ad1059
change-id: 20250123-fp5-display-75cece20d3ef

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


