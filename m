Return-Path: <devicetree+bounces-207966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 930D7B313FA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD8AF1D20F9A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001E32EC55B;
	Fri, 22 Aug 2025 09:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S7nxXvcR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A8B2327A3
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855565; cv=none; b=P1BlIQxt2ihzHYKIuHKBao6D5KazoVfcxNvgOwyUFdiZvzp7nXKmhi0dyk4z7x2IRdkRBAx1Art1V+cFHVmCGBG5ULb+xlesGvRNvLn1v+n+ULh9IekKDh6TBmIHA4j1G8tk4FNDTYtmb9LKlQ9vx/8ZLC3VYEFT80LVyv0zcjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855565; c=relaxed/simple;
	bh=TIqaNaL0gX7EiN8vDS4n9ZA4L0xlzt9xa/4X4cyRVQc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Y82kloEemsI1bmnOFE/85pa+IEuk58gt1wQxbSD5N9z7/j3LIPL5mqKIaYdLkRAIkmo6cOLqx4zA215l+DD3iSzjnXDeQ/UlM9Q2uh0cAUis06owa7q7uOy06Ld+Baze9T7Tnp5v/+645ewi5LxzDejUaGUPeiJuxYLHlFfc00Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S7nxXvcR; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3b9d41c1964so827199f8f.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855562; x=1756460362; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Srvxyt7qia+o9DraeIvmf5P7b+TsFXGBXi5TRfM4NGY=;
        b=S7nxXvcRdzqGtOTyNRZt0nO5wQ/Q9lqeyLhbCBj2KNnYsX4No+V3yPryWKPIqAHuoE
         zRRqCDz8Nup7WNFLgx3yOn9MaVz6TXQzY/eHv2l1ZJoUbOedLrZ9iXmFNNU3rER6SLy7
         vCQWEFLszbCGJ7Xbv/5SICNz2KETr06hD7eB+nN2OY24KUL/AYvOToyla8XrV9xLsBII
         Er+siuVdyx2OuIAqKtiwOYMye1zUOZDmaPVUGQnAuY6M+tPuE403WrzGceP4pVk3jBrq
         39o8GY/BLovxwXsdGcus27xdFxuU8vF065hwabt5FGtB6WilYBTX4Hnpontv6DztZg+t
         9sYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855562; x=1756460362;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Srvxyt7qia+o9DraeIvmf5P7b+TsFXGBXi5TRfM4NGY=;
        b=Qevr8g4emRLVlN07/A7hD84XAZ7scsN5qllmbCKHzu01oeTtRHbryDUUC28S8keFTs
         b0/jfr7zx6zFn2YhIgC7eTNord9a8TW4+skxRm+bH8qo3m8j793C+TvPfxignFIfQJVr
         87Wc05s4sAFi0kWJaqe+lWT30MAVMvbbrzSDJyUkXJfGcsv1c8SNrRoX9pjy16lcBUl2
         xlfnNDWhzQtWdPWiDEyD2b28ssVhjFBvqyB9GnAG0SuzZQx8oYgDX08GLFnc/AOPl4c+
         kz1u8VyORK5k8tNhhLgGYdiHoPI2BdsSAaG77QGV13rKuhumgDmWalPbZ0lJOrXUUrkc
         Cpgw==
X-Forwarded-Encrypted: i=1; AJvYcCW5kAw8zFA08eu4bz2uc3NCu946Y3WJI/r6Huzw+Ga6allcrzeaI2H2SBVtKsWJT1XZfRA2PwVN48Ou@vger.kernel.org
X-Gm-Message-State: AOJu0YxVcG9weoDWi9dThma9N4D7sTEnZngC9UMt7sc62RVpH2jAsrBL
	LdNyayTwzhtA/oj6SARS5vc4k+1AULYe7DVhTMI62jKXGG7KQzY7TyQBy2tw6wQx/VA=
X-Gm-Gg: ASbGncvTlZxk42h3Bq46pArG//Fp00+Al0Gb54CbQxK3nAbKpPCtmMdBPl2on0l/vZm
	2CvakSjJL4oLizEFLB9ka6z5PRGwfp8iJX339S6x78jg3Ia+4GB96aG2Wbzhmmr6Ua8yvYYLu6H
	6EX7MOhfYlgQNQL8iN2nUUYwndtEV04XqqYt4vOS1+YP0Cm6Ikttn1CzjRBykHbj/W0bLmIfZbJ
	WSy7h+3I+iawdovXV0CTinmZMrbZvnMlAgRWIQy7p2aY1jdOHCGUEbAq5iTtaV55PK/em+3/ewU
	4OXzLPzT7icI2suWbFumxwV+mdo9ZBiyJYKOekkP7yoX1WQL22SxNJbpCOEaFJuICmoVoDnISLc
	iYeNmIThqVsd469f+Oj31SJhm5MZotyuBWPxCjsvDSESkDkeJOC6gAQ==
X-Google-Smtp-Source: AGHT+IHeFIBzV2r3sYOLFd7iddmZZKUTrFnHKzrIxe3IQQc3wPOkW2LDawTIdP4/CvycIRR/Cn5GxA==
X-Received: by 2002:a05:6000:3105:b0:3b4:9721:2b32 with SMTP id ffacd0b85a97d-3c5da83c440mr1673951f8f.10.1755855561507;
        Fri, 22 Aug 2025 02:39:21 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:21 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 00/16] arm64: dts: qcom: Set up 4-lane DP for sm8[56]50
 & x1e boards
Date: Fri, 22 Aug 2025 11:39:12 +0200
Message-Id: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMA6qGgC/4WNQQ6CMBBFr0Jm7ZiZKgquvIdhUekAk5CWtIRgC
 He3cgGX7yX//Q2SRJUEj2KDKIsmDT6DORXQDtb3guoygyFTUmUY5zBpiytLRUyE19F6SWgr5+4
 dt6681ZC3U5RO16P7ajIPmuYQP8fNwj/7r7gwEtKbLTmqLzn8HNXbGM4h9tDs+/4Fy5mKzrsAA
 AA=
X-Change-ID: 20250821-topic-x1e80100-4lanes-a8dd7f1cd569
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2878;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=TIqaNaL0gX7EiN8vDS4n9ZA4L0xlzt9xa/4X4cyRVQc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrBn5Knle7ab5jQ6tTSPSwa6mZx4CftwvSOA5d8
 j/ENNqaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6wQAKCRB33NvayMhJ0QzvEA
 CZH9RwnWiPy7u3Uxp6tHmhBwZHDrJpB1Wj5hxKCIllJz45WiTX6vvMTMI9WiuiBpvzQ2fFu+jqLohr
 MrgN1TWQ1SYnLZnWb2pObXkWEEnsNfcFKgxzX8aEjcf8s3qDv4B2IEouLC5/ZynkDRzHMns4aTkwLQ
 X9T1WC+XSsNN3VsW2Vg84WTBb9h6NwXqKxkpsayHu8XbOC6ycNKYqdyJlpP36uJsELzbkDWO2QnvVJ
 RSHXXtJtgPU7wEN4EE7DhV/BwDD3A1NRg4iLQvneNy7JqU53RAefkal96UX5p2YV9Go5yqQH4i/9U8
 hdoq68ykuHLwrIvHPK7mwXETyf59PxtACNM1MwGx3vPJMC3cX1cipy4evJEXepuDxUdkZLsf7BJ50o
 m6BjpjxejnK7dKkHOhygEH8jUafiRw+xWjh5rFV+Ri7bQBxd2XFaISKwbamAdeOuDGJ6+Pqz8Zyo8Y
 F/RIVklPI/ei9eYPTSYI9CAyFSASekWB+HvdE2m9iuTceZbBah6kWpbijdI+8xYNg/B0zAAPnxK0c0
 /lS+6OGbuuTK5ICCcDPukxCB2lrUvqgqwhm6NBikElPxoUvyBw9dmem/SCS3jkoRXVj6G0s6cTQGox
 g0uroU52ebe9m9DeV2OhQMXhVbf8ltwqlKAVXJ0L9m41RdvXB1+I3hxUI3LQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Now the 4lanes support in the QMP Combo PHY has been merged in [1],
add the required plumbing in DT.

[1] https://lore.kernel.org/all/20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Add missing x1-asus-zenbook-a14 & x1-crd
- Link to v1: https://lore.kernel.org/r/20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org

---
Neil Armstrong (16):
      arm64: dts: qcom: sm8550: allow mode-switch events to reach the QMP Combo PHY
      arm64: dts: qcom: sm8650: allow mode-switch events to reach the QMP Combo PHY
      arm64: dts: qcom: x1e80100: allow mode-switch events to reach the QMP Combo PHYs
      arm64: dts: qcom: sm8550-hdk: Set up 4-lane DP
      arm64: dts: qcom: sm8550-qrd: Set up 4-lane DP
      arm64: dts: qcom: sm8650-hdk: Set up 4-lane DP
      arm64: dts: qcom: sm8650-qrd: Set up 4-lane DP
      arm64: dts: qcom: x1e001de-devkit: Set up 4-lane DP
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Set up 4-lane DP
      arm64: dts: qcom: x1e80100-dell-xps13-9345: Set up 4-lane DP
      arm64: dts: qcom: x1e80100-hp-omnibook-x14: Set up 4-lane DP
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Set up 4-lane DP
      arm64: dts: qcom: x1e80100-microsoft-romulus: Set up 4-lane DP
      arm64: dts: qcom: x1e80100-qcp: Set up 4-lane DP
      arm64: dts: qcom: x1-crd: Set up 4-lane DP
      arm64: dts: qcom: x1-asus-zenbook-a14: Set up 4-lane DP

 arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 2 +-
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts                     | 2 +-
 arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 1 +
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts                     | 2 +-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts                     | 2 +-
 arch/arm64/boot/dts/qcom/sm8650.dtsi                        | 1 +
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi           | 4 ++--
 arch/arm64/boot/dts/qcom/x1-crd.dtsi                        | 6 +++---
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                | 6 +++---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts       | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts       | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 6 +++---
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 6 +++---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi                      | 3 +++
 16 files changed, 31 insertions(+), 26 deletions(-)
---
base-commit: 7fa4d8dc380fbd81a9d702a855c50690c9c6442c
change-id: 20250821-topic-x1e80100-4lanes-a8dd7f1cd569

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


