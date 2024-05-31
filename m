Return-Path: <devicetree+bounces-71340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EC68D664D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 18:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6DA01F26DB5
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3CB15B96A;
	Fri, 31 May 2024 16:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m9GAWTwS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF744225DA
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 16:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717171617; cv=none; b=XSn3x8GTyn6OEe4rte4i73N6HD9efeVp5zsFuplcikP1IZpEhbfvOwwkEIioD8WGzVqPWh54EvTz/zc4KgOuRzG1VWvuoyOJzMNWyoP8Pp6Za4HypeGWEobSugytLzTTbrbUcxF3QT5/Qa5Ewvkeak5IjAoZf9F03Iuu+3I+Tv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717171617; c=relaxed/simple;
	bh=grSrVDhSfTbD009pKZqLVmksSuvVt7nHFbOAVP58svo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NwU1zHMG1RbDogZryi/lQ+S9DHbnAiYSmHe3oTb/TRtA/1+Qxer+ewDZe77B9dj3nmqQ6CKsajI5njr9aERIxMFddyvovWmBLk9vPwv0YyCs2PkV22tsZKRbM01mGjgJDjAOdS0p9Alfo5gqQzmi3RAdAvQt/5OQt8OlDCvCWq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m9GAWTwS; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a62db0c8c9cso238657666b.2
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 09:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717171614; x=1717776414; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lAlOyuxLq40uKFygEFg6vCKpbB0JOMz+nnMl6D3JEa8=;
        b=m9GAWTwS9sEqkrJQwiojPPZN85o9mSQk42iC6YLK+eoNXPmdjlpdtA5WnH+NLP4E/T
         /9iKJFc+orE1AzKXEUXU/taocwoELo/uvCykxP6zq8UPiyVaiDkMEQBpPTMPOApcciQY
         jjtYKFW7DuzxjqyZeyYWmL3cAxReRKxSmWobEcacwVlbkltIEad4rxadwJJv2TnIpwag
         6oXZK5mxE/N06og07Qu6xkNGZS8zBT1BBh20ps0Tk0NMeNKoofJALn0fzgkuPTBgkI2G
         4ESXeNKaa21qq97lwIu9qrdXd8v15DKJpSZTXeAeqlbO+ET/FO418Tk2JDLMKYi5zKvR
         +iZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717171614; x=1717776414;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lAlOyuxLq40uKFygEFg6vCKpbB0JOMz+nnMl6D3JEa8=;
        b=EkPPwKklfWrL0alWRgYPEQRFs4BAbTVlbzy10l0bK6Xc7ILFhmqYrT2QWgsikgsC2q
         7+JQp8f/YLLJNqer3dug9JPWnAv7LlaV39mRfxl4UddRiQh4YWkn5lZiDpqjaWtrnydk
         +UvIZ+1NhVlQmDeBJmonbyFRNEr/SRdFDKXEBYKXKS29tXcQQLK27wD29LY2L/a3RRGV
         +UDXcGvqyrscbeht3fH54p2ESS6KVhqAJdB3VRAhL8Q+w3s+97tWi9vUIVXSoHZyIWtk
         Wh2B4cyWEjKnOaAj05wFpeHpi9m/juEnYtCY8nRVNw3gyanuK15yL/wy8Gb6SyNOOvRc
         9qWA==
X-Forwarded-Encrypted: i=1; AJvYcCWcW5FntHCUTXMMulAJFN1REH9q9Vz0wiHkQTGwqfyIJ0XHcjyAOnfxHJ6mr49DGgsRQDedn0scn3KIOcL5/mo1byw5XU3/aUc1HA==
X-Gm-Message-State: AOJu0YyUOG4nMDeAcGLu5NZmGA2DVzA5Aig+Zsp2sSNIZkNqRicel9Hd
	YGp5eWHU1QUXSW1ELnahflEph23NceJ5sLVF56QQtpOukv2IrCt1lOs9Jp0AgR8=
X-Google-Smtp-Source: AGHT+IH0GwuBKMyEd7qzHgXQK6TawsZtYrpdIeATwNspSXc/G36o6tAJpE8Z9zi1e8gFHLgQatIzjg==
X-Received: by 2002:a17:906:22d3:b0:a61:ac3e:2b4c with SMTP id a640c23a62f3a-a68209f9535mr204682366b.40.1717171613800;
        Fri, 31 May 2024 09:06:53 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1b3sm100802566b.74.2024.05.31.09.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 09:06:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: Add support for Gen4 4-lane mode
 for X1E80100
Date: Fri, 31 May 2024 19:06:43 +0300
Message-Id: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJP1WWYC/x3MQQqAIBBA0avIrBsYUyO6SrSwnGo2FgphRHdPW
 r7F/w9kTsIZBvVA4kuyHLFCNwqW3ceNUUI1tNRackZj0dyTJsJzv9GHgBtHWyyuvjfknSM3d1D
 rM/Eq5T+P0/t+K4+2tGkAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=870; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=grSrVDhSfTbD009pKZqLVmksSuvVt7nHFbOAVP58svo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWfWWvNZyiI9ri2SCtVX2wfHjvNyelu8aaTLZK
 83w8uDrJpaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZln1lgAKCRAbX0TJAJUV
 VtktEACsB0QeRG0nfQy0mlvsp5CDJXhoWS3qoGUhJfVVJCyiysZQwHeGoIPgNrI3n4WzY2a0E5S
 mesVvMoNSnopY5uxL1qibkiEnvffRtwB9O8GqKqogRIr9tlmG/3NfylM+f/DHLgWyFReYXZX2XL
 77XdRpaw/VvtsRuSXE6OBPxbhheRS1PF0T8faJT0CTTCp5AbBeYmUXXYJuYQfIuZs+tcq6EBT8L
 tfbb1Ir2ogA4qTdkVeKrEUKMYW26fKmJ+qN6Y5Ypb63LLslTQMzphtcYxU6jOE/uMOjndkPqGv6
 Tv5h+F+lxRe6l9gRZ5APbY++NgbPFYGhb62kfYRltsxnRofRmHyNe/BGnDU/JUu6+BCDp6Zt5z0
 hB0QevQAzyEardkpuj8O6hoQZMowRly/GliYPUhP33kRDNMSUWTPT7A6yOJo20wR3IuwNq9DYH+
 1SYdLsF73mKcO9t+k4aeONBBkdN60DFNomjFl0LUy4jA47zSf1tf4b5SoPAgielcMDWJCnxdGCN
 Zmt09DkmCIepuo+rXVFzRqMWQKuL/KavRuXSbbvVHAShLF2D4FSpPNmhf73xFxf+wVwmwGvJL9m
 hiTRALa3Fl2uU4BwYBi1QDDrl38sms/qrspJtIC/SFp/DiEOA8Ag6mHcyV/xK3WO4r1byoZnDkc
 s3q51jZzCfvpZxA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On both QCP and CRD board currently supported upstream, the NVMe sits
on the PCIe 6. Until now that has been configured in dual lane mode
only. The schematics reveal that the NVMe is actually using 4 lanes.
So add support for the 4-lane mode and document the compatible for it.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4
      phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode support

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 42 ++++++++++++++++++++++
 2 files changed, 45 insertions(+)
---
base-commit: 0e1980c40b6edfa68b6acf926bab22448a6e40c9
change-id: 20240531-x1e80100-phy-add-gen4x4-fa830a5505b6

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


