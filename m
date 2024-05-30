Return-Path: <devicetree+bounces-70908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6CE8D4F51
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 17:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43D71B27AB0
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 15:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8186318308D;
	Thu, 30 May 2024 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t6SSyZS7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE492143C40
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 15:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717083833; cv=none; b=Bu+Uy9iMadRAQohmwsrRu6dBinXNUEros/9RO2SpnXU89FiaWQWA9Zru2WS3xRSr32p2VY7ORLxDyde+0kYJII75vT+xNHIItMXWa7CnKbgR4y62sXIC2e3DutrRXRCBjX+cfRkNNy8UQPPTOclT1V21KByj9jCXBiRC+VVie3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717083833; c=relaxed/simple;
	bh=5oBOHQel4ka53KkFs6xUQ+3F6B0cFRI74r2BNtEPQ4k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oqctx1oXsNj4sbLQQpOulTsn0apwfVovqRCRwPXZZrP2hxMFbyCiqETlpFesHntMPyhCyDXhbh/0tkOd90WNQnU3ogZpzgJqPmP6qdcI5Vls/gLu32YxfDibuhE0X/RgMYTSZ0fjbMtJx/vGWv/uFk9bnlL4ItHwFztIHduY7yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t6SSyZS7; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5785eab8d5dso1188100a12.3
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 08:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717083830; x=1717688630; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JQpTBahTxOGk4TBqf+Sj60y9QnuKyOmuysSvVUM/y7I=;
        b=t6SSyZS7mspfZFUWgFqI1Qo0fjSG+/AMgNij6qbd2f8YGYwJQHis71j2Lr7lHSMQ4u
         cXxDdt85OWY2mOe+xM6IO0TfHDSkEabCg6kHavyERDzcpmcT1qwscIhnPIFydP7G46LX
         LUwDAKazpnw9t6rxAJJ/pFeub7FwtS4Hlp96/V6SWmseBRcopfTPFFiEmQM6XKhwGFrI
         oExGlwDtIgv9c+1vj6ERBuSyVQCnrqS9XlA2fuCWE8TlkJ1rFajGlyTIKSpXnafszZmS
         tmtoJVg6XUbiSHRhgv8arMV7WmflztPbegn40H0oSVs7B/gqa70rav6mmv7ccyaKqF0Q
         WMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717083830; x=1717688630;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQpTBahTxOGk4TBqf+Sj60y9QnuKyOmuysSvVUM/y7I=;
        b=uoJfudAlBUqGM0Ft1upF7ALmM6Dx2aSxB04Z5/LknQsVlkcOUBC4lpDthsi0yKLNNl
         QGA58/qV/ikizaj0hX5T0LcrywPKs5cus9UM9L3uWfUZfw/pycl8d3C48VKkzwRItY0S
         1wqgmyDBCvpu2LtPhAu4HQBgO2xO/Fi8teO2RjE8Pel6J491mQt4ALETAqa2AjjZq7Ky
         Z9cHUhvEchYVg8K7HxPMZEP1Uqb+iHyYkMUH17p9EDVaeRAtVP6xCIVO7PV5U4uiKrDK
         Z3RcO8HIVYMboXOm0ec3SzioKclMuUqwOxtfmUc7vReqmhSu8QcnNdkC+Flo3vN/B8a9
         NPXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBBY0tSU+XZRKrQG9dyzL+EAx6E7o9j6pzeRZD5WCNAZGHriYV2yNmLx9dbcZglHr/UqpcOcm4PGvM9gLaLAXWpMnnB91lG2WYjg==
X-Gm-Message-State: AOJu0YwH4+KWTqKNrZnPgKCvuCjQrFjSpliotVlOvODlrVOUWOsbvTnZ
	WlGcrfEr+92Trj7WqpCps/rB/RPyRX0zQqIFh5wV70x+jingfyy0odsSEZhrS5Y=
X-Google-Smtp-Source: AGHT+IHBCgz14NB5dJx+1S06rTmSeSeJPBfJ9nF6yhfJXruTzBkDCcgGIpEcZfeLTlLFuSKJZE2NRQ==
X-Received: by 2002:a05:6402:2313:b0:57a:2f7c:c779 with SMTP id 4fb4d7f45d1cf-57a2f7cc812mr231728a12.37.1717083829921;
        Thu, 30 May 2024 08:43:49 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-579deb8f406sm4879700a12.34.2024.05.30.08.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 08:43:49 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: x1e80100: Add proper support for
 NVMe (PCIe 6a)
Date: Thu, 30 May 2024 18:43:38 +0300
Message-Id: <20240530-x1e80100-dts-pcie6a-v1-0-ee17a9939ba5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKqeWGYC/x3MwQpAQBCH8VfRnE3NDjZ5FTnI/jEXtCspeXeb4
 +/wfQ8lREOirngo4rJk+5bhyoKmddwWsIVsUtFaGnV8O7TiRDiciY/J4EeuParQqkrwoFweEbP
 d/7Uf3vcDoGMXb2UAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=744; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=5oBOHQel4ka53KkFs6xUQ+3F6B0cFRI74r2BNtEPQ4k=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWJ6tja+OzRMpzDF3tf3EAUaCCpApDXeHbKWlY
 8KY7WQQCI6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZlierQAKCRAbX0TJAJUV
 VrZtD/sG1L7FeJTjOcqdrtA1ogIeWgngqpC+p+KuyIRa2S0km0drI4xGHGhVdO7USU9hsPL+zSr
 Ed2c8tomCPz65+nlXNdLQZxOzN1Fy2NlZnlkSXS3bzzkVkKmzZTD6lWZJosGksfgprSz93OY9mR
 Kat4ho6/kR9DAE2+Cas6REa3Zj+0wNf0MYkXpiRPqKxqQ6V7xBpj+y+9TURRQ59qgSq0iKSoDv6
 n9V6w8lPOm7aZWa+phs1XCSuTtPVwN1d+3cdN/DuiRzclb5/+SSESJnB1gP1Zh/QN7sptQyZbLT
 o2jb2JJRIh76w720pcGEdPwR6/xvg1f3FFKZfyuiQRl2NtPCJQYAfjR7CZ/mR25nWn0XUkr4Py2
 ATNOZaGvfzVVnqz87gQ5Ngpfvb5aP623s4B3M3qaFHCQ6HdMGfT73ieKM+d5aXDdl+JN5ij8GSA
 QKAhLOJsLubTqWzdG0cVWMYBGF65GmgOwF1ThzgMY2PWMu/S7VB595uGmd/C4GZ5kB/FSYtVKkp
 za3NzjlJlBGSxdTd314cn3ktgdR/PUUdcuVkCZZgW2Q7gO2UY5jxNk0Yb+yi+L2Te2Wq9xYUuo+
 zFIpv5QQCBLVg4OiZdNOFM6R7IwOM3AU+ftDfTFcSxgU4nn/jhrKiTXno0EO0NJjMiDhDKM6xiS
 LMgU8FrA/RyaZig==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

With this, the NVMe is fully functional and stable on both CRD and QCP.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      arm64: dts: qcom: x1e80100-crd: Fix the PHY regulator for PCIe 6a
      arm64: dts: qcom: x1e80100-qcp: Fix the PHY regulator for PCIe 6a
      arm64: dts: qcom: x1e80100: Describe the PCIe 6a resources

 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 54 ++++++++++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 54 ++++++++++++++++++++++++++++++-
 2 files changed, 106 insertions(+), 2 deletions(-)
---
base-commit: 9d99040b1bc8dbf385a8aa535e9efcdf94466e19
change-id: 20240521-x1e80100-dts-pcie6a-46e3d8220d6e

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


