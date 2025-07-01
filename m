Return-Path: <devicetree+bounces-191695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B57CCAF01BF
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 19:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6742C7A4C17
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 17:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3ED327F728;
	Tue,  1 Jul 2025 17:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VZ/zFZrW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66EE27E048
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 17:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751390937; cv=none; b=gb5A6XfdVetf/gIYLw2Xac2f2/3th3mnv9tAnN0Z+tc/2gwo2T2p5HJv3EQk4n+8bPmyUGzJVnY0nW8tD08CqPGGoY2HyJOBMVNjCFOIIKmXDJFqPdfQH5HIx7+qDPdUJpST1aR2on1A4Vknn8phLJ7NsKBk3oq7/wP5GHDejjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751390937; c=relaxed/simple;
	bh=3IyHkvcQPjT+L7Hw7Xdc4sAUW0eW1K5VesBjPPWvXGA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=blRlXb6/UAiBb/ZpSxpgjf3IbpQX9yFPabXS5ClzmECy2XkHsuXQdpSnD62reEPbgnuFqMFQWwebdzTUOvhrjoUVUFv9zdjf+nu2tBxprZ2qbprftmivDYlOrr/+TfDGg9Cxpf1EA76ZpsvyTDpqiM90gGpPlgfojQQWQltlsck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VZ/zFZrW; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45363645a8eso41574505e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751390934; x=1751995734; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9y0xKUQz6sJ9RW7ntZ21D6nwLji1yQQHh6OPtk5BYu0=;
        b=VZ/zFZrW7ahTV/sbU0j8irOlop2ubwfjGC0a0MWNDNeEw/A1XmDpJL3TNxuYEPGB9t
         YvIhrnmx6hiC7PvEhUs47Bp2CjsAzVZlISmeQJAEpbrZSY4XYnayHFzmtxDtuINj7l7x
         +S3yXYZpWrukhmqdZneLE0SPSd/cgHsmx6g3gE+wiHlgd1HccJ2e1a4fMUdzLY4J7TRn
         ojVpsYJhDkUx69cH0SWPxxM8ZPleJ7wZ/mSGSu5GmXXl7TmiqLSgUhS355mNZPH9/3gK
         fcGZUSGGYmhUVG9NyU6pWBWOWGE5yzc9Qmr6Iks4D9lk3mub8/ZEM1s00qmjBqz4EYtK
         ePqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751390934; x=1751995734;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9y0xKUQz6sJ9RW7ntZ21D6nwLji1yQQHh6OPtk5BYu0=;
        b=Syi0AkQifB8MJn3XI8TRZmAXcGk+mWl9NhqxxxVk9Ch2MyztkXuesePmy1uSEsGvzt
         PS4VEemBXQhjcwStuY5g2GiyCRLg7busUiwH+mlN5v5ZS44tce1j/nhderDAPNIw1jBf
         y75EjxfWJL3/BDYDd+8jS202NS3ATBdGXOakL7NYLAuDEzoxi2FgIajNCFzK0Xnk5Qw6
         T4zx9Wov4Gy3EnWECy2eukfTb8c2hb5Ran5lafGFD2H8tYJLZnim48+1zhUmXj+NNHy1
         4STjozi0T65NsQ1gIZUf2/5wIp8pCt/RW5i29NsPzxV/BYijViZNHSaofmDfaHFBvCLn
         VZjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2fuQHx1WdDcEuVWmICZjpAzev0HjdIW6EuPBbzOTj3W2SfmtEL2qTRd0tMWfEGDBKfcKpsEg44UB/@vger.kernel.org
X-Gm-Message-State: AOJu0YwKSA0ce4adz7CDqcE/wEY81luhsNflzYIY2AStYxat5AfNTNim
	EfxUomO+fCGXtuNS7iOmLmcbEwu0r3mHlNmWj5a40vUzUkOV3gKD+Fv6SCOLFZMK2Cw=
X-Gm-Gg: ASbGncvFaa/1/e4DRBwrrM7NoBY7suoiupVK+rSAWVGsZi9CMM/SOv7/HvNJm76prC6
	/Ud2ZA5UAY05fOSFDDl9E5pRKVyQQXH9dfa6dvLkbev4FjA7L77TmVf+A5cugOtU2/0gjfUzcKC
	oTnmhNfQbDw69NHDP/cV020YrDlRLn3FhEKsuszaYdurrS6RCpM58LNXEsKbut9VKwQwAUV7Sxe
	YKrv8VZIhn1TG7Jx2CItRbzNe6sDzIv3Pzwj4MYNxrgPKbli8jTCKhi4axewBbztKXOyJn62EAA
	/k92QKSL5xIusttUGoy5use4mckZT9Jr+26qDTSw0aKWzL9SUvhJPJgR8f66uWv4nT4KBZvHjf+
	JGw==
X-Google-Smtp-Source: AGHT+IEVPWfLWerA9EVdvnKKYjWG1lZ011oDFmffIcgOCtKr7rOwtYs8Wzefb09xq5LURBKmZ+ztig==
X-Received: by 2002:a05:600c:c169:b0:453:9bf:6f79 with SMTP id 5b1f17b1804b1-4538ee624cdmr155141935e9.26.1751390933910;
        Tue, 01 Jul 2025 10:28:53 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:1425:eda1:87ab:f850])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538234b1b9sm198716175e9.11.2025.07.01.10.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 10:28:53 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/6] clk: qcom: Add video clock controller and resets for
 X1E80100
Date: Tue, 01 Jul 2025 19:28:32 +0200
Message-Id: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMAaZGgC/x3MQQqAIBBA0avIrBMcy4SuEi1Cx5qNhkII4t2Tl
 m/xf4NCmanAJhpkerlwigM4CXD3GS+S7IdBK22UVSgrknzZU3JOogoYtDZ2WWcYxZMpcP1v+9H
 7BzuhM6VdAAAA
X-Change-ID: 20250701-x1e-videocc-10f1f2257463
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

In preparation of adding iris (video acceleration) for Qualcomm X1E80100,
enable support for the video clock controller and additional needed reset
controls. Since iris in X1E is largely identical to SM8550, reuse the
existing videocc-sm8550 driver with slightly adjusted PLL frequencies and
adapt the reset definitions from the SM8550 GCC driver.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (6):
      dt-bindings: clock: qcom,sm8450-videocc: Document X1E80100 compatible
      clk: qcom: videocc-sm8550: Allow building without SM8550/SM8560 GCC
      clk: qcom: videocc-sm8550: Add separate frequency tables for X1E80100
      dt-bindings: clock: qcom,x1e80100-gcc: Add missing video resets
      clk: qcom: gcc-x1e80100: Add missing video resets
      arm64: dts: qcom: x1e80100: Add videocc

 .../bindings/clock/qcom,sm8450-videocc.yaml        |  1 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 15 +++++++++++
 drivers/clk/qcom/Kconfig                           |  3 +--
 drivers/clk/qcom/gcc-x1e80100.c                    |  2 ++
 drivers/clk/qcom/videocc-sm8550.c                  | 29 ++++++++++++++++++++++
 include/dt-bindings/clock/qcom,x1e80100-gcc.h      |  2 ++
 6 files changed, 50 insertions(+), 2 deletions(-)
---
base-commit: 0672fe83ed07387afb88653ab3b5dae4c84cf3ce
change-id: 20250701-x1e-videocc-10f1f2257463

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


