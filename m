Return-Path: <devicetree+bounces-53622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B45388CDBE
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66209B27ABA
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F50013D28E;
	Tue, 26 Mar 2024 20:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t6mXq35j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14D63DABE1
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483381; cv=none; b=jNUEe9pZVlHOGZ+hhRg/jtTmnN1o3gMGmGHUki2/LfefWG4r/N4OiJ+ZIoYwcRO6nydpOwlG8lQyG5lKb7jNs0mCNHLt+6VGaWCesLZRwEKo/Sd4+ASVXIHYZzcg16zx0ljJ6bOuXaWLnutAVeV1WbqeHjlv6E9Th7Dmd6Ph6Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483381; c=relaxed/simple;
	bh=RWQXQAKN7KVRdFiOpjgCoEEoGNI1cTcKyz/5WyufIYY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cOQnPRtTNR6ak2BKXleCRLwGPYOzx5V1IJcm/66VesA0zYR81LhfjtwCAKgrkvqEw/jY+kzmeSxKud1Wf/JFt9v8DQ0gGVJxsNE8j/RvlT72IjMpjDcy1BqiOBX4AbedV0r+2yQm8Aqt4pzlQy0Sdx2BP//qB3xsDXkSNMQbSUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t6mXq35j; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-515a97846b5so3232208e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 13:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711483378; x=1712088178; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j2lHV/OHCqfe7Nek5g8QCJ5Ns0UmvS2CSdkqiB49C5E=;
        b=t6mXq35jMiFGTFHU5ItgoCHBuQ1QeEMYBPM3E/0TR/N7WYWq0mkmgSYZwz2q+t4Rce
         0w9CfNJ2bRQzrVakmYweh3kMmd/9Z//zwGj5AFRuUlJ5VyuqQRQB9EVod+8JutORoCkt
         gAEcxhBc+3UbDS+TXcfYW0l/qo9OY+HwNzDJOILnfBS3/D47Fr0Xx3/yJ98jlD51gk5K
         gCJB4CkKDrZwvokkWe79Ph17Mass+1XZqR5Hktzri1X8AV6I5WQOwUQEY1icROPsuUXl
         hk9n/sk+1znSf0ZWJ6IFBAkxkZw7LkwEHf++NwaAmwcZxlSGdJDPw65H77vWjpUXYpFf
         YbQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711483378; x=1712088178;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2lHV/OHCqfe7Nek5g8QCJ5Ns0UmvS2CSdkqiB49C5E=;
        b=SlwpzmCk7lqFXhfw3CChRxGL5RT77nNB0tgWlp8MAmRvTlcR6HgVxsJ1dXGXpI0WAg
         13AIGAwt0vNtcIgeKZ9881gvYor46FhDaNDjhDVzRW+SNQXIVlCBUtdkHXLk7r3oR+ET
         Foaz4iLHyQreH6L04hst+B5AGaOkrJVoECRyRpgBwya+bIiPllONv7ATSLpb+dfKLvvP
         Sw8kwnzjtMsHLNaAAvfwPhASjMf1Fl6LyPau5RdafQ9NztZCojKZcuDWn3rNIz8IBQs1
         dB0z0l11EuN1nN2KwkXqMaPZ9h6RDDVNGs+dpdQj5N83kSTp2CC0jsc6ZBuZRDNUP6ne
         uGbw==
X-Forwarded-Encrypted: i=1; AJvYcCXj0XhFzw1BDIbaWBIhSKxE2XZEA5ES91tdk65hKEsRIs+rZAmo4jthQlv/1O+B9Z16k/TaZ+gbENyNCVOEtoSCNZD8VmU71hVvCA==
X-Gm-Message-State: AOJu0Yx4zWcDQZ7SEaoeDKltgyDv9FBcKlJdy86475ksj9hd0xPXvCob
	AH2lSOdTRZUSRmS2qHBUh3GFVwSLXnPm9lzWbab62gW6WRaP35Wl9WxVulDCF1c=
X-Google-Smtp-Source: AGHT+IGZo3966n6r9TccyzZ0QA/JixvswpLjAc92CRn92e6XWXB6dSZNAnLZOUf4kh4wEQURJripFg==
X-Received: by 2002:a19:5e58:0:b0:513:a724:3b9f with SMTP id z24-20020a195e58000000b00513a7243b9fmr7416124lfi.7.1711483377475;
        Tue, 26 Mar 2024 13:02:57 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b00515a7984acbsm1279408lfr.94.2024.03.26.13.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 13:02:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/4] arm64: dts: fix several display-related schema
 warnings
Date: Tue, 26 Mar 2024 22:02:53 +0200
Message-Id: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO0pA2YC/x2MywqAIBAAfyX23ILPwH4lOliuuYceKEQg/XvSc
 RhmKhTKTAXGrkKmmwufRwPZd7Amf2yEHBqDEsoIrQaMASM/WNZEu8fFyeiMd1ZqC625MjX7/6b
 5fT95QY4XXwAAAA==
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=798;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=RWQXQAKN7KVRdFiOpjgCoEEoGNI1cTcKyz/5WyufIYY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmAynw3ac+cfKVGKWXENlS14UmEQ6NE7Jl+Axwr
 5bJiyMEMS+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgMp8AAKCRCLPIo+Aiko
 1ZKpB/wLHJQ+d79aFqPld+Jyd1moiwje+nvFXrNZvI0OwBY4KfhCPBGJyMCLmbv2MWbfghtwoZC
 vgLZAzOOzxoZrCcSZCIVxU5Pvh2TeZuj0Ra33TkWVq8pciT54nuX3C+RMGoLIrJ7pULKtgY0EKg
 NtloV5GhibGmeWDpNMBpfEGHj7EJFUOS+Lv+B0Po5rWooujP8wmquvSB3vyFU1BiSyOxUjjV+9+
 8IRq5XoW5JX3pmi/LuG4F/n/CdkjjcPvp+ouXYZZpCham6Cf/AsaLHNLz0/Qr2uAesUHNc9pHo2
 xpq75TuFHXy0uc56XHQm3FB4id6o2edrSozRii80L06RcHIx
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Fix several warnings produced by the display nodes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (4):
      dt-bindings: display/msm: sm8150-mdss: add DP node
      arm64: dts: qcom: sc8180x: drop legacy property #stream-id-cells
      arm64: dts: qcom: sc8180x: Drop flags for mdss irqs
      arm64: dts: qcom: sc8180x: add dp_p1 register blocks to DP nodes

 .../devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml   | 10 ++++++++++
 arch/arm64/boot/dts/qcom/sc8180x.dtsi                       | 13 +++++++------
 2 files changed, 17 insertions(+), 6 deletions(-)
---
base-commit: 13ee4a7161b6fd938aef6688ff43b163f6d83e37
change-id: 20240326-fd-fix-schema-b91f94a95135

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


