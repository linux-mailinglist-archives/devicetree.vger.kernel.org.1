Return-Path: <devicetree+bounces-137507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0FFA094F4
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E19B53A9E2D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5232D2116EB;
	Fri, 10 Jan 2025 15:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XRRFA/0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB2E211466
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 15:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736522488; cv=none; b=ne+jUpDlfwCwJvtlQ9KrhM4U5paQ7zPCqopEYdqsAOYpf+MpniXTyaXTweiXfQ99JEZP476XJv+jTN1t514EYi/FhVrU5YId/KAT5AnhAPYW6imilA12k7nUzeRbtP4Ku4qIJYcX+zv4fyoAoAcEiQMvDBu9p4sKKScXyjw08bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736522488; c=relaxed/simple;
	bh=JnqFWSB3iJHN2sZQAq8AP/OtACXVIFWvAsbe/hFx6B8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gvsummD2RoR4J7uJMhU9MWP9j9mMOHBSZUAHmBYNHLFTiQipbr3ajYI4pSuiwPDnT8y7tj1RikkWD8qeqAvsmwiTxZkXYw0pXxj88mjRjGbVw8smIgcBOpy1lPGohRxbj7EBK0KUlITzA+w/F+2sYeBJt3Cds5bR+2sw7zsFL/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XRRFA/0L; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43625c4a50dso16724735e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 07:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736522484; x=1737127284; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/mYQvssNBwc29hpj1QqQP20JVpNfZ61yAfUKzfc2V4o=;
        b=XRRFA/0LWs/CtReS7Ed5BHM7z8sYLVaMYgRsQGz2cDeiJaJPL8hN94Pc4iWM/mirWv
         /mpSvf5o67MwhCOj/B8CbtLXlox7mTgxPx7Fo1/tQuNEFaXkChpKWH0jR+evCUwdCt/k
         mgjfZPPKMBghNsZJCVF/Nz0Ab9wzvZUHeSZ3JvdLh0MzHXE7nVuQGXyKngeW/lIl8J94
         ksXIqGCKXSPb/wzXHUQnmmr3jYJa1mtp9hIihipfU4560aRjWpAgEaRFyTIg2Xf2hOtz
         OU893NtR3lwR+zd8kaZBUR4lYttFZHI6rsW0GB4D0Wj3IwLK6Zvm6sr2TzYKmfmDfVKA
         8wRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736522484; x=1737127284;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/mYQvssNBwc29hpj1QqQP20JVpNfZ61yAfUKzfc2V4o=;
        b=DFdLhYwpCNXy2c8JLirt1UVrWaV9o8n2+Z0nPrviZz3PP3u35xhYRxwbyvV9VfcgNr
         YNgCHIHcENhKa9WjICR/Jutrpy0hoIDBbsLH91apWvGgL7Qr8ov+N7HIJI6nyQ10QUfl
         NPDxND7xI/rH7/8BfGf7YQn9BWZ3NeUrzjQ3R/aeIqqRemHK88yVjbJyynVa/qF8tgs1
         InW7RmutSnpteZGnNM2B2Jw1pJlibfv41k9c+0gRM0t8Ot1wLeTwXxQL6BQ0XNaDJlEz
         tey2tgJnZY+tw1edQ/aZ9NaGqfDYtUh5GAaPk5hZPp3I5yhu/IbxGfkcuZcug5tbccwY
         AwkA==
X-Forwarded-Encrypted: i=1; AJvYcCV/cx+7NXGQeU3rke/D/pVYk2e0T8b79QPf5zxcXE2En5FgIPS7GT935G5DqjzPUUPx4iREdIIn2w1w@vger.kernel.org
X-Gm-Message-State: AOJu0YyBRUTBwBjKCnyoHwAzLTZhsXjce11QrwJrCWRff8h2GjublWTp
	1bs7EbQngaPVW9elRN3q7iEEqEKXGG6MwN2JUXh1aNuztTL7VbDXWPKWDo5CPwNY62kEdju3dHs
	v
X-Gm-Gg: ASbGnct2DEk8RIXg4tW3J8B2Yk7uJp1d7CTUuBrdX7QFU2EqSaRNdDHCNtoP/mwZaHU
	xSZqRZrls0eHqFc3/znEBC7dDYZQOitmJZYhpxVdNtYZj6aEqq6GsxEUQJ1z5wSDPx91frfOKKv
	aSFE95ka+HDYF987TzLdmRpBIY3KrtufsMo+yTyb/l4h1IKGNZM3BpFxi7rbu88UZHANSVWY+kj
	IkU0PMTfjp8haMghIW1YPqNQtUmcUoP7uQ2k6bEcaLDo6w2qVZEwhLGf/KDORDYDAxlkzmavkVE
	Lg==
X-Google-Smtp-Source: AGHT+IENrY8NBnNToJJmSGO34BCcM4kSpUFWWK4T1gTw9QcuOAyOmPgeSHcQAZlYTWlrWi2W3O57tQ==
X-Received: by 2002:a05:600c:3c82:b0:434:a10f:c3 with SMTP id 5b1f17b1804b1-436e2696082mr101321745e9.9.1736522484024;
        Fri, 10 Jan 2025 07:21:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2e92794sm88714725e9.37.2025.01.10.07.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 07:21:23 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/4] arm64: qcom: sm8650: add DDR, LLCC & L3 CPU bandwidth
 scaling
Date: Fri, 10 Jan 2025 16:21:17 +0100
Message-Id: <20250110-topic-sm8650-ddr-bw-scaling-v1-0-041d836b084c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO06gWcC/x3MwQqDMAwA0F+RnBdo6izqrwwP2qYa2Ko0sgniv
 694fJd3gnIWVuirEzJ/RWVNBfSowC9jmhklFIM1tjFEBvd1E4/6aV1jMISM0w/Vj29JM0ZqXR2
 njuzTQRm2zFGOe38N1/UHbTvQLW0AAAA=
X-Change-ID: 20250110-topic-sm8650-ddr-bw-scaling-f1863fb91246
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=939;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=JnqFWSB3iJHN2sZQAq8AP/OtACXVIFWvAsbe/hFx6B8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBngTrwbhAkA4yrWtOiKbdeTc4YW6EHqsy3ZrZaur7C
 Az+xEoSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4E68AAKCRB33NvayMhJ0VkoEA
 C3v9ea9whcNFKPh8APJpLKz1PP4DiRYa9Ds6q36PsRQVY1raZr3k7F8vFrwSI+LvcATsVWD5jFMqMH
 pF8DhjsBZ2bfYMo1QOd2rhGHLWJK5Gpd6jS4L2NyLxMgN62+83oEuozkBa9RUtfFx7/EaLOIPVAtlE
 SfvoEoRMSwso4zEZMYNUvIGL+jMHaElk131LFdtw5DFpkHjZ2eYjzuEniPLsVNQr63fcrCN1GCWkDG
 n87lGQuEwdnYoA7FpUKFMRbL7VOngpmW5ShadVu5bbOsUcPi2OdujS95AFltAazTGcdwu5HNF9AJDV
 GcgsuC4dsQvB1KD2lN4YF1D+63GwdTde+k4VK+OrzXKbSsrPX1aeTWF9sCQyba7BpndYERUryqOi9I
 Nnf/l9sIUI00zqbDwhJVS1k3ofev9XrxOrBrrcFMJ8yRmlX1PQE8NKUT74XcVrC7Qd86XmWxpJ92iv
 +DYuWNUaK3BQnJ27nn2PJ5v07ETMrMiILwP1AzdJb2+j5KfoDqzBllQql8s6+uFfioCdr7m6l8Xcr5
 o8grkpX5Obnu+WWkFDTlETyxOKmD7x1bL6rgkYMErpKyQ+jnBWGCaTLd/hE26evIZKcXgz6YYAIEGE
 51EGWtPGlZz2fE80qooreWotG9DNxFowVetkLZ1uVf0cF0c+IR3VlP/dctRQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the OSM L3 controller node then add the necessary interconnect
properties with the appropriate OPP table for each CPU cluster to
allow the DDR, LLCC & L3 CPU bandwidth to scale along the CPU
cluster operating point.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (4):
      dt-bindings: interconnect: OSM L3: Document sm8650 OSM L3 compatible
      arm64: dts: qcom: sm8650: add OSM L3 node
      arm64: dts: qcom: sm8650: add cpu interconnect nodes
      arm64: dts: qcom: add cpu OPP table with DDR, LLCC & L3 bandwidths

 .../bindings/interconnect/qcom,osm-l3.yaml         |   1 +
 arch/arm64/boot/dts/qcom/sm8650.dtsi               | 938 +++++++++++++++++++++
 2 files changed, 939 insertions(+)
---
base-commit: 6ecd20965bdc21b265a0671ccf36d9ad8043f5ab
change-id: 20250110-topic-sm8650-ddr-bw-scaling-f1863fb91246

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


