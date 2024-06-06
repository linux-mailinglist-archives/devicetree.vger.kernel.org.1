Return-Path: <devicetree+bounces-73227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAA18FE47F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 12:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC2FBB21AD1
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4DA4194C80;
	Thu,  6 Jun 2024 10:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CnhRPDEh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F93C13AD25
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 10:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717670529; cv=none; b=Fh5SVJn43gCWohVnXVE2CPHv0kg3FcnEnzmoE4MbRBWMe4ukwCjMwfPp9xiZsPxLC+5GoTgMn6YJDFZ1Mizm2WswMQ3ZhC53AV8/H2W3JY0w+6GC8WIGsiU0dUACNd07XN0Veu10dpUMaysYeRX+0+Lb5h9gqurE6zS0Vq5aD2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717670529; c=relaxed/simple;
	bh=hNNb3uu5lIklT27wmBQeBH67uwc9FjU1a1qJJk57yq0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mdKFKmvNsTKunqrYy3UDDlMx4xffJkjchfF1/n3vyUb29MlLtVmyuLWKVnPxEid5DBpMKzmUpWnaIkbgn7ffvvA+rpydmQR0og/DwtOXz8MITljbMtNchwDdNYt3vzyJIdLwim6rFugj3gOnaDdcweM+OVL9zU8lf95QyHImXU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CnhRPDEh; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-57a1fe63a96so857820a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 03:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717670526; x=1718275326; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SooWuqQXauSzxphu70p3G8Eh6c+zvS1vBd4sPGE4ZNk=;
        b=CnhRPDEhW+ntTRYhv41kGJaaTUPOMwMtpZDk4LS70QjzRML+1PD2brJb3DmxqP6Nzr
         D5uDdxoFDyviv0nsK59vO3tW49hWW1tecViypLx3hYrQg0LgDHBUyEXUiOAYzCVHrfDc
         q8VaNDGVirZsB0to20wo1IyiiuLXRR6uZtRQ5BXvMlfFTgH0qORUf9q4B6hoAUZuViI9
         wUocxqJXVzB5ls0Nnu4E2h/WbC/9tYu9TW+c+ySwVIAALC4l8SydDz1/jCyNoD+Hc+wz
         gm1JKsOV9AKCLoi9vTlV8UGipIo0wvEJlryPqQuEgKVaV+6tC4OlQ+xfWwR1/OoBAvr/
         EDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717670526; x=1718275326;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SooWuqQXauSzxphu70p3G8Eh6c+zvS1vBd4sPGE4ZNk=;
        b=fGTIWTe373RwLUXQEK6cIWO7yjgnG0zwwXqtxMB+379NVmNamuDiKBaC9gVvPFFCKC
         K7dT8OqwfwJdGGc+k+x8WIIIrc/5dd8tTB+U+ntgrXEkYN9giVq6ZcZOqD24DKOhhbEx
         feSdGzsMrf83XXzrOP++xIUYSeCxyrjtyluMreJxaGkTpFcAfHQaQmmQ7Kd/x495qrRI
         qJI1kO+jPrUX+LkU3VlmrgGXhsHR1fwGt0i1zSOT+mrtJowDzwvn7Pp0q3krGWD9r9BW
         zVCbaS/0pyrMDaXC28oXLU4M5BROxXUwXYYB5rIqtVJTbMzjpH/Ft5mBTTJ53TYl7KYx
         fSLA==
X-Forwarded-Encrypted: i=1; AJvYcCWWj+SY9nNF+kqc6IMebDUIZHIcJ8AwemPwG15ICQiFJEOLnENJXn/LcqlaL7zJPWKM0wuXRQ7q5+FLTdt61lxA4u2Ujpzxs4/DAg==
X-Gm-Message-State: AOJu0YxK+/gM6MqWDmlewRYMxaUmx5Zp0AlT830OwSzFKHXLem8ViJLe
	Y4WlhlyeTwWtxpISgyuwKdOn/8hZ61ecAE4hSQxXloZxeQU5nbaRaC/BVHIAPiA=
X-Google-Smtp-Source: AGHT+IGjrvdWppFFzb4kg/Oj4OT0vWpAdWK4Lk32DK7hqmqzem4f3+si8L6Ep6lBQIZt5XqIf9J24w==
X-Received: by 2002:a50:c314:0:b0:57a:2ccb:b3f1 with SMTP id 4fb4d7f45d1cf-57a8bcb420dmr3193123a12.26.1717670526168;
        Thu, 06 Jun 2024 03:42:06 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae0cc36bsm871477a12.26.2024.06.06.03.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 03:42:05 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/3] arm64: dts: qcom: x1e80100: Describe 3 USB Type-C
 connectors currently used
Date: Thu, 06 Jun 2024 13:41:51 +0300
Message-Id: <20240606-x1e80100-dts-pmic-glink-v2-0-972c902e3e6b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG+SYWYC/3WNQQ6CMBBFr0Jm7ZhOoYKuvIdhQWGEidqSlhAM4
 e4W9i7fS/77K0QOwhFu2QqBZ4niXQJ9yqAdGtczSpcYtNI5aSpwIa4UKYXdFHH8SIv9W9wLL4Z
 zQ6a82spCWo+Bn7Ic5UedeJA4+fA9jmba7d4slNHl3+ZMqLDkxrQV26LT9p50E/zZhx7qbdt+B
 Zv2778AAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1488; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=hNNb3uu5lIklT27wmBQeBH67uwc9FjU1a1qJJk57yq0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmYZJ0BRQUKiqMVDyYe+ca76JCBCF1raVxp7Gbe
 2ajHxtb7IyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZmGSdAAKCRAbX0TJAJUV
 VnlsD/9zzGjeT1mphHee2RW/h/n2fbKZKbp2AJi3WDeuVKNCPl6rh+fw4+Mp1l0P5KQoQn4dgnz
 wfBaHH7koXFyCEvboFhKC77znBg+Jg/ZsjA6v6zkpt+90qvlIP1YeUrrO/8B9LbTyspWMGbYOCZ
 EPO6pp89BilkeAgh3BzHDfZT6syOGdswqOyzcHPRCWnSj2jndaOp3nOoUkZLbKF9mbarC1BrqAN
 whY6l5oNv5q7Kvy60do4wIkcdPFgeFKWhRAWwaafcs5MbhdpQ4fgLgSuLx2cqd/WtOqETPaCkvW
 jbBgrZPBqxTpaj2uYN1xEldRmiUuo/tngWE3JZTh/2rXoF91L7BJkL6rregeH+pDWdvGvcCdhxK
 MLYszXy0zhp11K3Vyok8g5ktg5yIMM1vCSF4HQXr9cRST5DRh9p28QHTbxQvDVelMk0thiEtisO
 lFSWG+cC1oIBimOxU8TpqPa3IJFxT1hzaXl1rni/49GuZUtUCL5T4XFTj+UtNWv1tq+4WsuGKGP
 CWjVr0uferfJ/+XAiEw7bV099sLM7MVSqwntFmr/cSN5LiQ4LUCmeVioZybm/1YylAb4TmrU4M3
 qPqGy2JiRK3GIiMLE7hXeUUhnJnQXnhR12ka7bu3NdwLrPUK8tQ0HiSU4P0T8p2Ip/T4otW6gER
 kFqn+xUQUyJREJQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Both QCP and CRD boards using X Elite (x1e80100) make use of 3 USB
Type-C ports (USB1 SS0, SS1, and SS2). Describe the graph for the USB
part of each one of them for now. The DP port will come at a later stage
since there are some muxes/retimers involved, depending on the type of
board.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Rebased on today's -next which already defines parts of the graph in
  SoC file.
- Described the connectors for the CRD, like Konrad suggested.
- Dropped the remote endpoints assignments from board files as they are
  already described in SoC file.
- Re-worded the commit message to talk about the plural w.r.t. DP ports.
- Link to v1: https://lore.kernel.org/r/20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org

---
Abel Vesa (3):
      arm64: dts: qcom: x1e80100: Add remote endpoints between PHYs and DPs
      arm64: dts: qcom: x1e80100-crd: Add pmic-glink node with all 3 connectors
      arm64: dts: qcom: x1e80100-qcp: Add pmic-glink node with all 3 connectors

 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 122 ++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 119 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    |   9 +++
 3 files changed, 250 insertions(+)
---
base-commit: ee78a17615ad0cfdbbc27182b1047cd36c9d4d5f
change-id: 20231214-x1e80100-dts-pmic-glink-65e351579b8b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


