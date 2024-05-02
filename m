Return-Path: <devicetree+bounces-64449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 907BD8B95FF
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 10:00:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44735281BB1
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 08:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE70928DA5;
	Thu,  2 May 2024 08:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZQWi7QmC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A63200A0
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 08:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714636844; cv=none; b=VfN5MkgvylwbbmJCmsSHPDENExBjPZsHmWtP4/Qg/oX5oVj39OQImd/KcO0Xr+vgzuvBUhNCIMEjGF0TiOvFM8UtMnx38mRNQFBFf3zATOh6vU3APmJBq8vGPIk25SHqIm/8P3dwrs7IbDZy00tcXFAk8kaQtbCIWkGgdZJgjuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714636844; c=relaxed/simple;
	bh=73l7/9zYRz8oMvFb5Yd0wfyFvCtOTbBlRqTwMn2d2Ms=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pd2oll5EGT1ICZS1Plr7Uu09ngv4kmkUpmOCYkSs1etd0wvhpp1NT9d6bKH/4blBhvaXUOYDI43BCgN4jhp9FTlvUhG7eXOZyQjyi840/sjZkg0e2NQb5wcf+s75OtwwRY57A6H+Daf3mhnP6exyzpWXm3idcavEsjJKpeT4WmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZQWi7QmC; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-41b79451145so46911795e9.3
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 01:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714636841; x=1715241641; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Fi0rYZtxwQk1WlV8gU4S0DhnF2ucSMtf1zMs2zJcfMI=;
        b=ZQWi7QmCRYO+nmJgmnkmpUMftEhbsTy+I84jSlak5AZXUpgp8N0+XrUvdhuZK7rSNs
         apScDxeM0ceTBRRAH88X2okpIEyqg69mcaipZI10vwVikuNZ8PkOpKMda+Yn8OpGZz09
         GKlvo8ASMXKUah1QPEYETn52vW2gmTpKXmbnBih7Jh6K98SufTd/KOYeEqDrNwj3LDAY
         07Lq671JWXSwWXF9aPaG8Ys5ZdN3NVpAuXL6M+IvlS13SuEqSIqpUJW3LgRnlgRg3pDd
         IpKQ7UqqClzgsv1miGveb+Fs4L9KqsP2WhapWepvunqonBT2cs0nAKzQ3IwwTsEd3mCs
         hggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714636841; x=1715241641;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fi0rYZtxwQk1WlV8gU4S0DhnF2ucSMtf1zMs2zJcfMI=;
        b=Lai8nwrSdNwWifTcVvn45j2HCFiv35ukh0ap3is6i+OflSHvyZkKxpG80qBeFpiWtq
         A8pd37ZyBSnC8E4XMnHjZxI5nULK5smzFP3AbwE8I2JZ3w9XDVeNUdi1tgwNXF+Crxs7
         g/fM8BQMRx8I/c9gmCMRvGgws8/pM/mf+VjEt4Hly14H2aWk6UTn12ww+e0z5TNvA1uq
         vqhjTO3Es1WwqoEeUdsAcejYIZj5YaVIhQ/BMn+NA1LcuxZzJPuLKNGualvvSbBqFYax
         STLH3CKHAX016BC+kzV7Ow2I7mw8NdWT775DEhNYBz9UPxD0l4ZUa8QN3YFrr2TEbLwI
         82iw==
X-Forwarded-Encrypted: i=1; AJvYcCVZiDVMbMHcw3GbBxACCzRAXiroi3Qe4PavOSQtOLfa8H8IKAeNWLQ3ey35MerCqRI5s/HsPkqifoiQIPS8ALgptU5RHdYgrHuKyA==
X-Gm-Message-State: AOJu0YwmSB4zucOHq5NA0Vqxn6NVM25cSgoP+qxxm8OVb7dxDnguuC/y
	cV5I+8YrmsE96380nbvUceHvuBZNSXW6E+Amq4C13t/MdxtMuMJ3euA+Az3qPQ4=
X-Google-Smtp-Source: AGHT+IEmSwY6llMlNudWiwj4VXuE98wgXoRQARx8FbU8HS6XPewZclNFlM51TtsKo7G0d9GFlIWSGA==
X-Received: by 2002:a05:600c:3592:b0:41a:a4b1:c098 with SMTP id p18-20020a05600c359200b0041aa4b1c098mr3082169wmq.19.1714636841067;
        Thu, 02 May 2024 01:00:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id t15-20020a05600c198f00b0041c02589a7csm4806597wmq.40.2024.05.02.01.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 01:00:40 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v5 0/3] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
Date: Thu, 02 May 2024 10:00:35 +0200
Message-Id: <20240502-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v5-0-10c650cfeade@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACNIM2YC/53QTW7CMBCG4asgrzuV/x2z6j2qLszYEKsQW3YSB
 aHcvYZNQaxg+c3ieaW5kBpKDJVsNxdSwhxrTEMb6mNDsHfDIUD0bRNOuaSCWRhTjgj11C2KwpT
 rWII7QcYYgEHuz+CmBfD4C3InFNPWUOM9aVwuYR+XW+r7p+0+1jGV8608s+v1jcjMgILl2hsnE
 X1Hv45xcCV9pnIg18rM72TOX5B5k0VA6qzWXvH9kyz+ZfmSLJpsrJVGOW4Qw5Ms35Vlkzvd7Zh
 yrH1EPcjruv4BWDZvWu8BAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3136;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=73l7/9zYRz8oMvFb5Yd0wfyFvCtOTbBlRqTwMn2d2Ms=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmM0gmMvV2y6rMjTJC4FpR15t+rIGRhPjgqLltOvLO
 D83SUXuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZjNIJgAKCRB33NvayMhJ0Y7JD/
 9kX8tlXSZg398NU/Dn8KXkBbXM+cwF92ui5Tt0j+qgHVr5BdBj6BSmkO3qijZjpwewDmhZ+GKH5BFg
 BV6bdPDEoXBzOBHeOnDfMTwb6coYVxUkH/u35dSNNXfO4gKtuujTiH3wIHg3GVXoPTNsyeQKE6FyZk
 KlbtyD6KB9oR7usqg4cFF6RXkTJ/Fr5gD7DWS+XW/rzYc8nl3AFXxMUTNKOpbStZ0Z0YChTKWStewU
 SqxGySF7AOkgBBSrwnApGJACRFg5cENciWfEogtDg9bcf6gQOeq1saoDtuYBZ7H1BTMosLO4+iNIb9
 d0TJIlEwB0v3c8xuwkZyuJ0t3liiSlwHFXbx9U/ylhc1mFjUg5ggrNEmLR+pJgQaJWXs6fX24KPUwg
 kG28u0CCDpnEpk3W5IhQD8zSk2UX0jEPg6vIfyXZdKj9ujk5QM7JM7k9MhiRoyN9IndNrhqmCRJ8st
 XYhpvQJJnpqoWS3x06b6kcIZIW8vcgonungXZ1Hoo3HgxCcuI8mWg04VTwK4f5QSaRYmRsSqghLHdW
 /aCfmi6hPtNUIjFXiE5Eg3mtu4MnRqEt/3KaA29sBa8rMglNQnoyhqeY/GfLfM5CVzfGAkHrI/szaT
 Im8syxLB//bH4fosC/iOTxizCqzARzmNLG/Ts7/XoVHKh84VnseTWc3cL3+Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

The PHY driver needs a light refactoring to support a second clock,
and finally the DT is changed to connect the PHY second clock to the
corresponding GCC input then drop the dummy fixed rate clock.

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Changes in v5:
- Reworked commit message to include more reasoning and details about the changes
- Link to v4: https://lore.kernel.org/r/20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org

Changes in v4:
- Fixed dtbs check error on sm8550-qrd.dtb after rebase on -next
- Link to v3: https://lore.kernel.org/r/20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org

Changes in v3:
- Rebased on linux-next, applies now cleanly
- Link to v2: https://lore.kernel.org/r/20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org

Changes in v2:
- Collected review tags
- Switched back to of_clk_add_hw_provider/devm_add_action_or_reset to maintain compatibility
- Tried to use generic of_clk_hw_onecell_get() but it requires to much boilerplate code
  and would still need a local qmp_pcie_clk_hw_get() to support the current #clock-cells=0
  when exposing 2 clocks, so it's simpler to just return the clocks in qmp_pcie_clk_hw_get()
- Link to v1: https://lore.kernel.org/r/20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org

---
Neil Armstrong (3):
      arm64: dts: qcom: sm8450: correct pcie1 phy clocks inputs to gcc
      arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk

 arch/arm64/boot/dts/qcom/sm8450.dtsi    |  8 ++++----
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 19 -------------------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 8 files changed, 12 insertions(+), 57 deletions(-)
---
base-commit: 1d0a6cdb7d77a14da03246bb6f10a489ad49af41
change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


