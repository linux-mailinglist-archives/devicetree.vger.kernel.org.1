Return-Path: <devicetree+bounces-207936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2C9B31347
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2954F1C20630
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E86B2F6186;
	Fri, 22 Aug 2025 09:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l6auaDi5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C54E2ECD07
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854949; cv=none; b=pnDMBnGQ4fyOcHsn30y17HrUSEPdXfg4wYogDi4N/3CA4IT5Xk7sVn9aSs6qRKqbeaE21KL8ujj6clN3kRqh4XaIDSEMzVhqKFg908hzeuaZ/6Lw0pseCruijJNDYiLQwLPrxFXTa/o/7/5uHaSN0HAmVZJqoaf9v3AXfIZ7rBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854949; c=relaxed/simple;
	bh=KTn6vbVqVwIQjrGCMmz+yYtiW5sU/DuQSWNcqBhTWPE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=onZnvSyuIsvH8ZvI5KkH/IDkBlembnukqsgmFgMsKqlFPo/u7L2DiAjrnQ5DU8uQwQ56fwmXrsgS/n+Pc60kchGi4uLe1bkenDQmEvcZzyQNecjICE8EshLCLBpFm0V95QmZTCnt4Ne6mZAa71z0MabBnIGieWziBt/9miZtP64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l6auaDi5; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45a1b0cd668so9831525e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854946; x=1756459746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aDaAQdKRC/QElueN4SD7JG4KlVvvsfus2+KgJMaOEsc=;
        b=l6auaDi5nddH2EuqyF82mmFIVySgpZe2UE5KlkPqyg7g5jvTmNgndA5/GwaO0SEj64
         Us1HGdohgB/lXqHZh7LWXmmnHHnwtx11rxW5FIbwf1IHwR7YScuVeU4HF9WRfPB1eujM
         khTmWxVGDWLXoKqdSrBNK8SaxflDtGyiHf/wognqH5v58e2hycPD8y/PiIWDMO+bXPxI
         7kewh8/zENf4ytekwWLdmLL7M111BnPVZyiI9vjhrS5mbvXx9W+NeIoIWWZszF2IKHIs
         1P8iF9qYrp+kk6jXXMFpn9/xUjvEZk210GB7amFib9JGUsvv1w4QJyICbNO8UflI2Yu0
         o0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854946; x=1756459746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aDaAQdKRC/QElueN4SD7JG4KlVvvsfus2+KgJMaOEsc=;
        b=AyfXPCX3GnYThDyhEUsOugL2bRxI8Ql1BylR1HEe1M/iu+MZxzD0EsQqFySLyARnGE
         xZh+XSSynSPyzpKAr1YZ3RfkW+2dPMlp16yC+AVXxqrqK/TcQ8gVMizf1lHA0LQBr9Iu
         u+bS2X5TTz5+0rwgi2jjmxWv/AaDovD5u9kCJKtCMaUmmkD6db7tblxyMaCDnWqiIT0Z
         ulYRUbV5eWasPUXbTsWt9Wb3JyPS7GT1ZVnjaPHkfOV7NDJqb1BN0eJv4+6Mg3y8ATWH
         GXQ69ylp73TEMnETB/FcEPOdn06YbBu1uqczmqjp8vZ2vFbs39Fwp9r3JT1AmyWpqLcT
         kzgg==
X-Forwarded-Encrypted: i=1; AJvYcCURrIDEPrLLdjWqVEwnjXhZ40UQYayAGU3b/634EI2YB+gJCppbhNngc+la994QWSbRqqXw+6Qreh/A@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu6so+096fiKl/lxF7WMZCz7kEgvhGPUYL6SG9uDkS+uKOmJ2U
	oR047brk7JvHuzQYhcr4FsZkkZNk20N/woaTAGDnf2z0of5IqH79RsBOsCnIgTn9cWg=
X-Gm-Gg: ASbGncth2Wdfk1VuIWBMaK0lLUGJIOYfvtW8Enmlka/XTbz251AReT7pDXWW7p5JUCh
	XaEfoPrHwF+CJztdCz9UmXfwKG0u26DKrSlh3KNiUiVMRVt1nZCQX65vGkMSn0dWxF491MVP8Eh
	c3t53wwyy5Nj7EWx0GOpEpXZj0f1Ip9/ucZ+FdVVi0B1WDCL2tSdGyamfj0x+uneWhT0HjAvB8E
	Z+T6G6Xdjv9eej2ZzbjbvkcVMMWjNEMqxY4WsacE5lgrccADapqiKDii84cy/kiK6C59oNE6jnp
	Ata26SFZEv6fJfJgsMGIjwA3hG5/9XDotmMiJuNxu8hhZ19cgiLXdCCDdgKbctCbzZhgLyAXKcu
	rlbvgI5aABsmTYOT9YB033MJdDfmGBeEnOpjpLw==
X-Google-Smtp-Source: AGHT+IE98olllF50n/P1P+GEkLwCm1VNHU4/tQIHf/qa8FuDV/x8gbbK0X0a5GOq+jeMBdChlo6QLg==
X-Received: by 2002:a05:600c:3f18:b0:456:161c:3d77 with SMTP id 5b1f17b1804b1-45b54c306c8mr13475315e9.16.1755854945709;
        Fri, 22 Aug 2025 02:29:05 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:05 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Fri, 22 Aug 2025 11:28:53 +0200
Subject: [PATCH v2 02/10] arm64: dts: qcom: x1-asus-zenbook-a14: Add
 missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-2-6310176239a6@linaro.org>
References: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
In-Reply-To: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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

Fix this by adding the missing pinctrl for gpio119 (func1/edp0_hot and
bias-disable according to the ACPI DSDT), which is defined as
&edp0_hpd_default template in x1e80100.dtsi.

Fixes: 6516961352a1 ("arm64: dts: qcom: Add support for X1-based Asus Zenbook A14")
Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>    # FHD OLED
Reviewed-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
index 16d045cf64c08c02c420787e000f4f45cfc2c6ff..76948160634fe8b3cd20aa02d6edd53b37be0689 100644
--- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
@@ -1001,6 +1001,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp0_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {

-- 
2.50.1


