Return-Path: <devicetree+bounces-45264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5021861439
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 15:41:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74BC91F246D6
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 14:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC421774E;
	Fri, 23 Feb 2024 14:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H9nFt6sd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7A78C06
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 14:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708699090; cv=none; b=HqMEr1nGKnbGpIdcJh62JLf8GewMeyBAQQl1EY4HgoIfw+s2tiWVpjZkLoB3V7n6/VwQf0/hjpE8u+BS0h6Xal6JjInC7RFWfeHibCbql+pX1rC0tN7zV1iHfPDG85EtZkY8DmX6R/VK3t7ag7ivSAsapDwGgfzCGy0/q+Fwy5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708699090; c=relaxed/simple;
	bh=Vru7Abk2Quxk5CLTZUtZy/YG6VNsSxUg229AHrVS6ek=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t8unQpyJ23vfzYfTyghMZPWTFB/g6OOE/SC0ACFlx60kD71nwtVbswUZFrduNS1ArnjSt/UIQGBPMPPnr88DYegBN4gYpLSNEkUS/TenZu/azpbjoa6UQXWP6rrVevS5REu2K31An/xbUOvbOqblYkEs5MH+XvfV5mMgv9DzWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H9nFt6sd; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5656e5754ccso893420a12.0
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 06:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708699087; x=1709303887; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/vU2SpBrEstlNseIoIBGcYhAQw5N3Vp4LBcc0YegFqk=;
        b=H9nFt6sdHBE6krc6RWLG11mJVXfVxroP+/a4QABc9SklynjaR4Cv2woT+MFrrHb/He
         l5YNvksB45H3rdhplSroflNAoCkcv44aVz0D5hcigFg5TonHPOjX8DH/TT7HJfyD4VO2
         kyqwOW5up54NGaK2Vd4mQiGN94p/o37GqipXMbwsce3g91Ga30G2FNtmNXAqeV1UhEkp
         nhBdyl/YS3wxlCIp3KTF9d0AokSdjZLdBco447FucVESriYKv53VN8NPGDmaZFH3fWl9
         ethNalA3MR/uEOVeT5XM4WAVItWtqkCvDbbhQ/MAioQGlEjwSzOohXLwOHVQYOg37QbQ
         YAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708699087; x=1709303887;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/vU2SpBrEstlNseIoIBGcYhAQw5N3Vp4LBcc0YegFqk=;
        b=NAcVrkkz8ptGc2vwdH/JaC1tS6vh0CkzUaDgRwdoquIIs384PwmsHmIfjfIXZvHRVN
         3MqhbaDcPqUt3a4XJ8gcyMlkgPnd19mTEuH+IgCHyb9HWv9WInZrv75HtUfM1jOSNeJR
         dMQC2eml41BLX1aVgnnuwzfLOA00Ph2t4B/eJEfyYUw9kidWMOFCYEpeLaFhL4kh29Ed
         Jqo/bdUprCXcqH8zth9Bol54PD71qR5rBNmdUzCbXtnwx0AKLeSvoieZ8VZQ0RDLRwVg
         XNKqejzZQ1CDt0g0K1xzYt8UeKWU1SDU58GOcS7xRA1ei1dIsolqYlyUsd84qp8Op3n6
         eb0g==
X-Forwarded-Encrypted: i=1; AJvYcCVbPnS79KUz0obbuBer3l3jcGVMHc4bB6Eoo9B45wPMyVvr6xpC8fomlVqxo/UqjY/OHtGE6od8XoHS0uuGOPOhgMD6uRZstffuhg==
X-Gm-Message-State: AOJu0YyVxaqP4TM+g2II5N1k6ODDefc6uv5d3ALYgEA2nnhKOfnriXdE
	dpipwuEv0JfWeZVv4KOZujcwu70s7RzQsUHHv4OfcSgPXGLYE3o8cMGyxyrACmw=
X-Google-Smtp-Source: AGHT+IFnpznVQpvUYFFMdw+27KJQjQ/vWqkdjsmfve63Dq0te1knoCvcTW74cSudlFStansZE3VTjw==
X-Received: by 2002:a05:6402:5151:b0:565:7b61:4c82 with SMTP id n17-20020a056402515100b005657b614c82mr18592edd.5.1708699086719;
        Fri, 23 Feb 2024 06:38:06 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id p27-20020a056402501b00b00562d908daf4sm6637536eda.84.2024.02.23.06.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 06:38:06 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] soc: qcom: Add X1E80100 platform and SMB2360 PMIC
Date: Fri, 23 Feb 2024 16:37:54 +0200
Message-Id: <20240223-x1e80100-socinfo-v1-0-be581ca60f27@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMKt2GUC/x3MQQqAIBBA0avIrBNGjdSuEi3CppqNhkII0t2Tl
 m/xf4NCmanALBpkerhwih1qEBCuLZ4kee8GjXpErY2sihwqRFlS4HgkiZOxLkwe/WihZ3emg+u
 /XNb3/QBjRBnCYgAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=661; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Vru7Abk2Quxk5CLTZUtZy/YG6VNsSxUg229AHrVS6ek=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl2K3FG5wQvJwdlDoXFtrkc5oX6uuyIvwpqxiuR
 DR6sb0zbWuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZditxQAKCRAbX0TJAJUV
 VvxLEACWHiPJDlO/QaowYXUyUQTW76l+u5BPo9yBKxOmcNJKp7y6t2cwj6sBqohMEKETgbcNwSU
 fJi15Nsrnb8ZN/23pNzUICFRz+k3e1HkmEOeF65xF9nPcyHONq9EeSpG4EQOhT15nKHQEOWpzgX
 GxYS+LBTBZSE9Mj+e6ZmaxnnQ9cGnx4fAvpid5zdN8dCtGU//s5+U1Q+b5PaQeboAUHYV3j3hsa
 Gl7uzXJz0hhEj0yeIn1U9VQVxc7CMD3zVCvyHm446Jmu4d2/xAVSx3CvRqydcbWzZzx3y0Qcf7N
 LWcIkBvlg3ARwTwJAFn6CXMp0mPcCCJ4+CvmilzPHlWwR4sk2Eqk5HQzeSz7ZUu649p3gZEslgG
 ghu9gSIkhP6jD0Zmkw3J9UTGUOAOxDgB5/ViDxgz5U1CZFB66UakU34AXx9PgtHAnfOHbgcwUXL
 ZwE/9Fby0O+YafUdiYYtjiWhKrkycZZWckhuqJZobn5ZMw4xNWHItyXhaMc84LtDRIPgxR5m70e
 TDfhZpPLuonYfoPPOteBDcYHp4l1AXHmmO8uWduAvZhoZttje+oVjeD/lHZKP35ti44mnRT5v2Z
 CFi0RxLOW3I9amDGkBHI+pRo6NU5ngoei/QEVdxhpq1A/dTDjfoA3id2GZKbwTl7rNqFBFump40
 JdY/lsb0C+HK5Vw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This patchset adds the entry for the new X1E80100 SoC and one of the
PMICs it uses, the SMB2360. Rest of the PMICs are already added.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      dt-bindings: arm: qcom,ids: Add SoC ID for X1E80100
      soc: qcom: socinfo: Add X1E80100 SoC ID table entry
      soc: qcom: socinfo: Add SMB2360 PMIC

 drivers/soc/qcom/socinfo.c         | 2 ++
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 3 insertions(+)
---
base-commit: 33e1d31873f87d119e5120b88cd350efa68ef276
change-id: 20240223-x1e80100-socinfo-06378c690947

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


