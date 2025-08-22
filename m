Return-Path: <devicetree+bounces-207935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FE3B3135E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:37:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC057B0151B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 313492EF67A;
	Fri, 22 Aug 2025 09:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PscnfzYr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F042ECD07
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854947; cv=none; b=aSFooBR0CKSv7WLJbOUrse7iHuOTBC20amspbErDMbdYMOoIC/giHGJIcI8ol3aXCbGwoDlSe08kTqhqOXZPgD6hyubv+S0PK6/vqdqyDgrawJFHM3vEuleRY8jc/IstVQrrHLg7yDJVMoQu1e1uISgMWYivSiScu4qiYxSFEKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854947; c=relaxed/simple;
	bh=59UJ9vti3y5HQowQ9v/ukvvTpxHZBBs6imD/48YGVbA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OxM+W3XU/BZ1rkR9KcIlqBB0qBodC7toy9hi9TNtHXE82MFsncEa+UOS5rOMoWz0NFIn/qqz0Zcom6fcnNzQrnkGAYdZAWo7dtQpZv3UmvfL9SU+M/f6SNN9drUBAPKp7WJ+m8+VDOYmqR0KJhi9ik86TUc4XJYK5jyMrKD8sbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PscnfzYr; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45b55ed86b9so729845e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854944; x=1756459744; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/D3BZdjh9JY8ctH8H47t9DwTnhsJG8Q7tetbG0g19Ok=;
        b=PscnfzYrMhLovR0YpNIQt4DZwDMDeAR7TtsuKf3f7+bPJY1xJCod5apGgXK7X2l74n
         WbYdpwqoaSs8bHm0C6UFgMXPDRvL6rXXxmqT1jQXcjJ30pR3GAC2SnVI4I5fyWvLd1r2
         AqkuiVGvsZEki1pENWNeJIPdYmVXIpIzfthV0unij21WK1q2IFrgNsFOtUwrUotJRlJh
         +DYCWkgPnNfLokZHljzy7gDlHIa4IuAb85RQUDHqB9fFbxp6W72nuN5CuP9Jyds2aIYy
         0asUpbDkvtQVbPgwb5+F0v3/ID+345PtB9WH97osmovYjHNj6D8XC6myxUEm7vVY6xFX
         GJzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854944; x=1756459744;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/D3BZdjh9JY8ctH8H47t9DwTnhsJG8Q7tetbG0g19Ok=;
        b=PWY0bUTRMUoki1gl/IMmbMe6UwZjDpoLVtmYjxtEl5gbcHdt4A9+CvRAMrWX5whA5P
         e/wwvOc480V6bIrDkUgem6jSCOIFcjmg6isX0V4Gc5TSM6x6/ct4t7f0v4RnRnIYnyhF
         XVMvrjSs2D6YY4Gaa9Yp+2phvI0jYjMEZpAK2VeFSD0R/qJP4ZfIYQyz0drcYEAyNRpR
         WZpVjIrdHPa0LBLtOJoHZlwq2kXBskhI0KsbPrPi3pZI5xRVI03FoQP9r8uEsarSIZUw
         h9RcGOPgNgw0U2L29l4bklcsFaRP3b+4v0v7j0PgZF/rOu3jtsOXCLydBChcXnYm2vyJ
         UCyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJe7h2L6dJzV+S50vV8v/IpfvrczCXTW3L9eIwJuvD/db/4d8n1Ggdik4z0g82GO4hnGs1uUJcZtZ0@vger.kernel.org
X-Gm-Message-State: AOJu0YyMKN4hXB525lk0TbZtPfVuKo15u8yfxEjaFeXZgkwioNYwEdhW
	l8tRg1SPy1wGYSz7CMzcYaZgA2So1JdvYdcPSDHKVubze24ySCgIE1CgDG1odEnprv8=
X-Gm-Gg: ASbGncvbAO7b4jwhoUCbz92Q57c1wJsnv3aPKuT9VJD2iLt1VJxnzkCeeV3Ud0s66WV
	BQQgZjBzTWIVAkOcWfOQXuDsMpBwn5Z3FYqd75+om2JrYRvefUj8xwHTYE6z3+ldQBwug1d8fkF
	VTcAFDhWyh7aVoznoL8aI4E5/fQCekr6qYY4sDlNdET6lZmXsUZ0vSTUYeQpjZ8YVGcftu6OYjK
	gXZuUDqMwnpWT24Fnn3IBv/vh+lklPZ5+8GPo4qhezqNjR0cRFYIBew17cQ2IV+uZwjPgSkZNeI
	/CmPSIzMZqyhOx7e8f1xHfiPdLf1YVLuTmYeiArIG4FBU8igQ8nRwE7bwVNTRaaHaqxKfd8P8oF
	PeOMb4duvWsb9e6S04JGe8DDdERHKXGOPQbDbQQ==
X-Google-Smtp-Source: AGHT+IEDZwDvwedlmRbHo8vijFqxjapX7lnz425tPxCqmfGgoZonCtmTk3StURpDZRJwaZjUyT4V2w==
X-Received: by 2002:a05:600c:8b0e:b0:43c:ea1a:720a with SMTP id 5b1f17b1804b1-45b53594498mr12969975e9.1.1755854943541;
        Fri, 22 Aug 2025 02:29:03 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:03 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH v2 00/10] arm64: dts: qcom: x1: Add missing pinctrl for eDP
 HPD
Date: Fri, 22 Aug 2025 11:28:51 +0200
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFM4qGgC/22NQQqDMBBFryKz7pRJNK266j2Ki9SMOlBMSIpYx
 Ls3Fbrr8j3472+QOAonaIsNIi+SxM8Z9KmAfrLzyCguM2jShmpV4qq4JkWE1jlkF3AKDhulqem
 NpasmyNMQeZD1yN67zJOkl4/v42VRX/sLVv+Di8IsjK6pcg9TDpfbU2Yb/dnHEbp93z8qAn0Du
 QAAAA==
X-Change-ID: 20250813-x1e80100-add-edp-hpd-91209c5a0720
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Christopher Obbard <christopher.obbard@linaro.org>, 
 Maud Spierings <maud_spierings@hotmail.com>
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
supported upstream, using a &edp0_hpd_default template in x1e80100.dtsi.

I ran into this issue on the X1E CRD while testing some things and had this
fix in my local tree for a while. Chris made a similar patch for the T14s
[1], this series fixes up all of the boards upstream.

[1]: https://lore.kernel.org/linux-arm-msm/20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org/

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Changes in v2:
- Define &edp0_hpd_default template in the SoC dtsi and only reference it
  individually for each board, since it is exactly the same for all the
  boards upstream anyway (Dmitry)
- The resulting DTBs are functionally still the same, so pick up tags from
  previous version.
- Link to v1: https://lore.kernel.org/r/20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org

---
Stephan Gerhold (10):
      arm64: dts: qcom: x1e80100: Add pinctrl template for eDP0 HPD
      arm64: dts: qcom: x1-asus-zenbook-a14: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1-crd: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-asus-vivobook-s15: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-dell-xps13-9345: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-hp-omnibook-x14: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-microsoft-romulus: Add missing pinctrl for eDP HPD
      arm64: dts: qcom: x1e80100-qcp: Add missing pinctrl for eDP HPD

 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi           | 3 +++
 arch/arm64/boot/dts/qcom/x1-crd.dtsi                        | 3 +++
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts     | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts       | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts       | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi                      | 6 ++++++
 10 files changed, 33 insertions(+)
---
base-commit: 1aa50d938e88fcad1312467bd09be4037bfe68ff
change-id: 20250813-x1e80100-add-edp-hpd-91209c5a0720

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


