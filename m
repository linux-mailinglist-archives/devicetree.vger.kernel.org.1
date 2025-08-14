Return-Path: <devicetree+bounces-204703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AB7B267CA
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:43:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 622B55E6D0F
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77B7303C82;
	Thu, 14 Aug 2025 13:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qtH4mgru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF94E30101E
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178245; cv=none; b=t8z+cuQtsDwwt3OEewddrIX3jKoXYSBSqly4/0u6IkparDVRPscIX1ejQ13RxtNNBcujCP2GpykQDmyZBJDA1dbGDLaRPSYK//un2XihKJP1dJo3gXZ93DUau/4PUzM+rvJ93g/mdORGa3jf1v/92kl19tIHOOvfwjZFzaCO5jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178245; c=relaxed/simple;
	bh=1c9h4jSCfIJa9IllJoy3l19vjPB9EfbWt2TwOkJ64nw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=J2xYNYJW/Whn0nAQUV1cTrJfTNk+hk+1y7n/RLcFMAo0nd4aFjz/QpsxZUHFp1shsazAdhIZa52Nv7JZ0nF2iY4+fNa7iVsHloV15jGRmDVqb3fijOy2lQC6va3nTt7Ue4jZzLUf6It/9HOZpAeko5z5XVEseqYMu65tVwlwg3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qtH4mgru; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45a1b0b2d21so4713145e9.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755178240; x=1755783040; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+b06tuUFwG+aodZWJHCSKblkyc+YbMovEs13xFG5ai4=;
        b=qtH4mgru/6uElEUP0B0arAocrISPIlnMey65YGFxVLcUVKmXEx7lQrGlKoFGw5otdn
         uwMmkHqKMI8rpkTKNhqaSfYY0qsIzFD3KV8Dkqb+Fm6guTyYDDYHCPJFyxUu5lg5pYTF
         5qflSns9VR4m8irYjDWMMe87eZ1P+owYSh6Jm1Fl96984ck2FB0P1ezAuieq1vEAjQ0J
         x+iwocDGWxSBNrBoWel6w5OFCQzzB6CHrY5OqT0xD2+2yjZRiO3yxAUfjvdfuWtn18AD
         AGnOfjHYK/I61SuHIyuWNXzwseiGGjTX2TpDfuCojkPHlTwvpyi2PHUmkLHepm93oTOB
         sLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755178240; x=1755783040;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+b06tuUFwG+aodZWJHCSKblkyc+YbMovEs13xFG5ai4=;
        b=a3XPgsFtutF9wwWdlNlUi27fbtA+YT7SYuwEyKpikwdzlW+/2SdrWf+yoqJvZgbOFP
         mXRKJbSIOrs1WkrTgACRo32CepdbwZak/pRHSD5s4bcctDrIYRKwqLHn1oXWaL8k/7ep
         HIRPZxDgFZNr34UhDBl6Pjt4F1elxFKTEH4spPZQeKaumWDn272jDzN618+CMI1UoYS+
         YJ9iMLzRuJNVsICsJ/t23xMvtgipcoHF6GHYteEYzfc3AN0gGW7yjVXMfoWCFTSCC5ht
         5LOCcnv0BadFwwuyGVbYYNkTZHBRNcChVuwNwhtdaXyXeWZLNaqtCsMNzRTe1LgBVMNU
         NO1w==
X-Forwarded-Encrypted: i=1; AJvYcCWFD8X0qgAmBm+23ohSXWo2GNftoaWMh3s+DMuYbEtHZlYaUfsm5Tu72zD4YW+0LOEpnqZ2ANqvyQz4@vger.kernel.org
X-Gm-Message-State: AOJu0YwkSg3j//9UeMQmNCIhdB5oQtevkTP/pgVJG2CZA18fPFyvyCJR
	gvmBh/XbjzW25hYS3tiNFqPf6djdkUohCEHhPX1tAygUnujHjnrvXnjLC91SPknDUZk=
X-Gm-Gg: ASbGncsI0fSosGN77w13GmIrwtwEFe+b6FXJihBwJF/YRii1/+kbwRxUi68noRCrLWo
	AR1x9Vx4m4avpD+XQDbkprB2ADDvovtSt4CyiMiLSXIZfkBqpyDYnekva9LopzXEoDA4XCE2ym9
	LK9NIdc07PEYG6r5m45ZlUda3KEFMZu8lnvl/etuND0HN+go8lc5Qnjv9JBqLEM47OtFE1C5j0z
	ee2f3i7meIW58lBu8FZul/W0uA2PCJe0xQ3DvD2Gxqy3O8F6WGkVsLnrdMNkY5GAad02dz7ckCt
	XFXw3wn2mHKRrcL3sfQMd81Fyf4u3UbXxdwb5WzX2gnQ7iEzT7heT0x04yMkQ/lsNjgMWMi9s2C
	9sO5pSfnwtcOcW4W8JU2IfdM0Sj3KRThS57So6xGBFngov4o=
X-Google-Smtp-Source: AGHT+IH4II5i5j5NzWBCbNzsvTmaupMtg+t9JB2fDAE5Tm6J2vqU0178FXZFpritPOrMtJFLWEfs7g==
X-Received: by 2002:a05:600c:1c15:b0:459:d494:faf9 with SMTP id 5b1f17b1804b1-45a1d1f530bmr21113245e9.10.1755178240015;
        Thu, 14 Aug 2025 06:30:40 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:9c1:e029:fc81:a800])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc85csm21468385e9.5.2025.08.14.06.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 06:30:38 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/9] arm64: dts: qcom: x1: Add missing pinctrl for eDP HPD
Date: Thu, 14 Aug 2025 15:30:27 +0200
Message-Id: <20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPPknWgC/x3MMQqAMAxA0atIZgNJRaxeRRyKiTaLlhZEEO9uc
 XzD/w8UzaYFpuaBrJcVO48KbhtYYzh2RZNqcOR68tzhzeqJiTCIoErCmARHdjSufaDBEdQ0Zd3
 s/rfz8r4f/nePQ2YAAAA=
X-Change-ID: 20250813-x1e80100-add-edp-hpd-91209c5a0720
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2

At the moment, we indirectly rely on the boot firmware to set up the
pinctrl for the eDP HPD line coming from the internal display. If the boot
firmware does not configure the display (e.g. because a different display
is selected for output in the UEFI settings), then the display fails to
come up and there are several errors in the kernel log:

 [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
 ...

Fix this by adding the missing pinctrl for gpio119 for all the boards
supported upstream.

I ran into this issue on the X1E CRD while testing some things and had this
fix in my local tree for a while. Chris made a similar patch for the T14s
[1], this series fixes up all of the boards upstream.

[1]: https://lore.kernel.org/linux-arm-msm/20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org/

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (9):
      arm64: dts: qcom: x1-asus-zenbook-a14: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1-crd: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-asus-vivobook-s15: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-dell-xps13-9345: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-hp-omnibook-x14: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-microsoft-romulus: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-qcp: Add missing pinctrl for eDP HPD

 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi           | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1-crd.dtsi                        | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts     | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts       | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts       | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 9 +++++++++
 9 files changed, 81 insertions(+)
---
base-commit: 33a21dab19b31540dfeb06dde02e55129a10aec4
change-id: 20250813-x1e80100-add-edp-hpd-91209c5a0720

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


