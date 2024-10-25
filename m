Return-Path: <devicetree+bounces-115739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAD49B08BE
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4D86B266D6
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4C6166F33;
	Fri, 25 Oct 2024 15:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yICnfuxX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B1A15B992
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 15:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729871011; cv=none; b=RLABZFrarULp2z2boeig6YffgJkunYMXoKRy2Zg1kmFMx60GtpsP1mIHOALpyVWjEtsKnQWku4iqT9X+jw3QNKBfkXvatEZ84jT7EJwP/GbqeSg87zVV4zPz2uB2ywoat97hjh1RNh6/gMBYBJEgKUJkLeb4Rv9wgpJ/1t+444s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729871011; c=relaxed/simple;
	bh=kmTctavQgDHV1WQJ665/sMMhzSlzxhDHLk7W3MfKgRY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CmkO+76XkhoEP8ItmEAoqp/qACY6/jABCNQPfrfqb3OyuR0n+yXmMqi6DhaWNOLPM4+FmdRuay7TffUEpw4O2j2am2WAT+aPxU4XNMe6q1j7VrrvX7uvlYQAj4qRdNVo4FYdq2msAgMdxYmDdWKuGD1trOfBXPbZ1AB+MiBiXE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yICnfuxX; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37d4ac91d97so1704206f8f.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729871006; x=1730475806; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A19SWF8cZ8jpezoswd9dTv1UcUhXtoHX2w/uo6Xt0MU=;
        b=yICnfuxX76xo4jvfZG3r1VtICQBjwcR3PzrOTX0dQXlGUhFgazo4f71abc+/UW6pBs
         jhhwyRz9+1bwFXiWQEmDIDgOli0VuuTDcfiVp88CIiebBkM/mdTrij1pfYaLagc0ZYWp
         S2MoG+QUJWxZJLV2XFoQse1csf3qmT4uR7kwSjUVeO5QX2fqJAv+QVRDibQb08RViJQU
         s2aRyZ2r34Yext6fM7+7cdrb5dIDV2qH+/TRpZ8qRipM1Jjc5u/VarvptUwwFKyf7IMb
         jWngaUI1TMW95IB8iG2eDZYuKLGMgX+PkjMmDxTISBBlYDcRgbRTJTMzcYWED19OxlKE
         Vq8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729871006; x=1730475806;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A19SWF8cZ8jpezoswd9dTv1UcUhXtoHX2w/uo6Xt0MU=;
        b=KrPstr7FN/0oWt2vldCVI5wqu0yadYH74tF65ZE0cQQUrl29patLljlixRvR1K2MBZ
         Uag3Cuw+/PxyxziYGny4MKcfss41E3609U+N5wgG2N2O5cRL7q0OvAxaKWBhtjOBldOf
         TMfjYbsTARrLnr/ZgHR45taHKhDHHgIujrzESn/FMHujuRDYl1n69wMMtCyqKbyXUcsp
         oNwbBzVsFSCS6XM2HtIQxtBDhpKB0ez46GJRGkMRZMk5DjhWx1mO0NYuyAG3AbvaP5Ar
         VeL1Yw2n8XC7oPzhbO5/wM0rsc3Bf2Xi2wEseXwP/scPTHHWYBs9CUh8Qm7rq4d5lWTw
         k0Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXzRbqHBXZV8ZbP0Ax1L5ontXsyJz+pvTJuUuxqtG/BJur6ahaMeN8OUXqF6sk8XIqO8PMONLFo97A3@vger.kernel.org
X-Gm-Message-State: AOJu0YwtZp356uSfx+nXBWijrQX9pGKj/oy2uvuos6LzdcDVBBPEt4SL
	c5JUAbUe6Ix8igvGhJ1ZZ0xP0HlPmH/yqIgpEwcJgWl4+LCPCdOzLLBVsH5SU9k=
X-Google-Smtp-Source: AGHT+IFGpuLALqSBvTN7KF7uWbZnKi/jAWWq0+CWqgqXUTcp0W/Q5TxtDHUSrdJ35giIWhVXIl26Rw==
X-Received: by 2002:a05:6000:1e4f:b0:37c:cfdc:19ba with SMTP id ffacd0b85a97d-37efcf18afbmr8143373f8f.28.1729871006327;
        Fri, 25 Oct 2024 08:43:26 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b479ffsm1829092f8f.49.2024.10.25.08.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 08:43:26 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 25 Oct 2024 16:43:23 +0100
Subject: [PATCH 1/6] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine:
 Convert mezzanine riser to dtbo
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-1-cdff2f1a5792@linaro.org>
References: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
In-Reply-To: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Depeng Shao <quic_depengs@quicinc.com>, 
 Vikram Sharma <quic_vikramsa@quicinc.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

Convert the navigation / camera mezzanine from its own dts to a dtso. A
small amount of additional includes / address / cell size change needs to
be applied to convert.

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # rb5
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/Makefile                                  | 3 +++
 ...-rb5-vision-mezzanine.dts => qrb5165-rb5-vision-mezzanine.dtso} | 7 ++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index ac199f809b0d4e514878518604a23b4f1ab8ef79..7145748afaf53c816e7b3efd8d5f583a2efbb82e 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -116,6 +116,9 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5.dtb
+
+qrb5165-rb5-vision-mezzanine-dtbs	:= qrb5165-rb5.dtb qrb5165-rb5-vision-mezzanine.dtbo
+
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5-vision-mezzanine.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qru1000-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sa8155p-adp.dtb
diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
similarity index 88%
rename from arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dts
rename to arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
index edc0e42ee01735eda96b2c5c68be247ea37cd534..0603954e24d88fa203679279f01705eea15ce6c3 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
@@ -4,8 +4,10 @@
  */
 
 /dts-v1/;
+/plugin/;
 
-#include "qrb5165-rb5.dts"
+#include <dt-bindings/clock/qcom,camcc-sm8250.h>
+#include <dt-bindings/gpio/gpio.h>
 
 &camcc {
 	status = "okay";
@@ -33,6 +35,9 @@ &cci1 {
 };
 
 &cci1_i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
 	camera@1a {
 		compatible = "sony,imx577";
 		reg = <0x1a>;

-- 
2.47.0


