Return-Path: <devicetree+bounces-30667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2949582899F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 17:06:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CCEC1F24B8A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 16:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D3693A1A6;
	Tue,  9 Jan 2024 16:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GKH8HYD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF4B39FE4
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 16:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40d604b4b30so24458225e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 08:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704816360; x=1705421160; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5Qc/vvxUtut28gBqiU/tMv3dTcetgCjY3qqi9afW9Oc=;
        b=GKH8HYD9mr+ZqCevcOgC7cU69zodoQ2Z3YIIYDdRFrvL82M2fi8RWvLd3DyfMEDvR3
         VvO1nP61u9hOxqBwRLHiNEx340UZnNTfW8P2IqDguIvlqg+iENrh4F1p5WnWSuYopYDU
         ZJcM8w9MbpISssqucsKhZslrBeu3gjSFmVwyQrNaRUzZf5KFBU0hS9eTVIWQMH4TyoR/
         H4K+JaV8Bwpa6HrbPMZgl9fqQOGaLMaJJ2TBv4Zqw0oPqxApB0Qg3PaYR7BDrMpWn1vM
         B8rDfzigLTG5QbSB1tR7yD7/Wc6aKggId2QFqQYHfjTjf98Lvx+VJKjhI7Kl96ZA/uIM
         zyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704816360; x=1705421160;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Qc/vvxUtut28gBqiU/tMv3dTcetgCjY3qqi9afW9Oc=;
        b=QcixT9v/o+TqaIbZKuzxNLk9IahsQzsPYDhtjUzqMIv8Gaq5f1QctXjyieErpdNBoi
         Hc+h8EQkJ8LOztzHnq+zQkoDyaBD63Smi9/bD8A46LiIjThbx4Ybq0ddr/A8Dn2zjVoJ
         Cwxy7oSxIMyS20IM2vWvZfwklYaPKMnNuaE8o07AmqXUyfBwLCSUwhpV04nVcWEQ2XP6
         XgR8QY0auCWQseO8dnOsKyVCUlQHFOFQZi13V4PrUXMZUa10k9D32zkUZiozpB/dAp1H
         ryuUbJgcPYEySG+3LrSDGSrzJ940po1+/bqaQMU9KENclZRzt4OBVVDRcK68d8GAzl4H
         LeAw==
X-Gm-Message-State: AOJu0YyTqWug2RTgLauVN7jZmQNB7kHzW84sFMxyn4XPHr3uEQNAKWLK
	7UxkBYORkCZggkH05SQma/G3r6EZDPWh5w==
X-Google-Smtp-Source: AGHT+IGQRaFP2/kECYnlZAZufs5Gb9JPYK1yZO1uA69A5fVjjPu8GoWpAOZrUQsutcDurnBk+JStAw==
X-Received: by 2002:a05:600c:1695:b0:40e:43d3:209d with SMTP id k21-20020a05600c169500b0040e43d3209dmr500493wmn.168.1704816360088;
        Tue, 09 Jan 2024 08:06:00 -0800 (PST)
Received: from [127.0.1.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id z8-20020adfec88000000b0033762d4ad5asm2726490wrn.81.2024.01.09.08.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 08:05:59 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v3 0/4] arm64: dts: qcom: sc8280xp: Add CAMSS core dtsi
 support
Date: Tue, 09 Jan 2024 16:06:01 +0000
Message-Id: <20240109-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v3-0-b8e3a74a6e6a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOlunWUC/5WNQQ6DIBBFr2JYdxoEFeyq92i6GBGVpBUDltAY7
 140adIuXb4/mfcW4rUz2pNLthCng/HGjgn4KSNqwLHXYNrEhFFW0JwyeJjxFWHUcQZWAM0hbV5
 JJmmcQOHTe1DWaWhnb4AJTrHshO5qSZJycrozcc/d7okH42fr3ns95Nv6DfFjoZDOgA0qxIpjX
 eXX9I7Onq3ryVYK7NdeHrSzZBdYikY2VPBa/tnXdf0AMBFKxkcBAAA=
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-4e032

This series adds the yaml, CAMSS and CCI dts definitions for the sc8280xp.

4 x CCI master busses
4 x VFE
4 x VFE Lite
4 x CSID
4 x CSIPHY

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-24-01-02-sc8280xp-camss-core-dtsi

To: Robert Foss <rfoss@kernel.org>
To: Todor Tomov <todor.too@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc:  <linux-media@vger.kernel.org>
Cc:  <linux-arm-msm@vger.kernel.org>
Cc:  <devicetree@vger.kernel.org>
Cc:  <linux-kernel@vger.kernel.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Changes in v2:
- This series depends on "clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC"
  in linux-next. - Rob, Krzysztof, dts Robot
- Drops cci_src clock - Konrad
- Adds sc8280xp-cci - Konrad

Link: https://lore.kernel.org/r/20240103-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v1-0-abacaa63a961@linaro.org
Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-24-01-02-sc8280xp-camss-core-dtsi-v2

Changes in v3:
- This series depends on "clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC"
  in linux-next. - Rob, Krzysztof, dts Robot
- Fixes spurious "media: dt-bindings: media" in patch title - bod
- Reorders pinctrl declarations per dts-coding-style.rts - Konrad
- Adds Krzysztofs RB where indicated

Link: https://lore.kernel.org/r/20240105-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v2-0-7a57b8b07398@linaro.org
Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-24-01-02-sc8280xp-camss-core-dtsi-v3
---
Bryan O'Donoghue (4):
      dt-bindings: i2c: qcom-cci: Document sc8280xp compatible
      dt-bindings: media: camss: Add qcom,sc8280xp-camss binding
      arm64: dts: qcom: sc8280xp: camss: Add CCI definitions
      arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |  19 +
 .../bindings/media/qcom,sc8280xp-camss.yaml        | 512 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 546 +++++++++++++++++++++
 3 files changed, 1077 insertions(+)
---
base-commit: ab0b3e6ef50d305278b1971891cf1d82ab050b35
change-id: 20240102-linux-next-24-01-02-sc8280xp-camss-core-dtsi-2730a5f7ef98

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


