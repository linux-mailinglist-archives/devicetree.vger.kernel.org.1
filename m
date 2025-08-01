Return-Path: <devicetree+bounces-201358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D81B182D5
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 15:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4B33189087D
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 13:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2A5267B94;
	Fri,  1 Aug 2025 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zWurBwwy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872C325BEF2
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 13:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754056282; cv=none; b=jBd2msdQB5ENckpFEu/J67u5duC4mYvcDD5/wGDBkOMVPRZIFgQpXGvGv2mf/l4V7qz/Y1UMXdr94oG++n/7HGRMnXC5wNsk4D2rQe9P5awElcpoi/L2i0KrET+GUUaMcb3QEoHBJcBWr9onY1ozI9iTm48kx5FnNZrqR/GP69M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754056282; c=relaxed/simple;
	bh=5wYZLPrjAgyvLrT/2EjpWd4qfw44TDTvqfBJ6GFqBfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UdAAWl5rF/9Wr+ioHTwq/+GGQ9MKVD1yCSKrkgJiep5IWwIc2tDmpN3f9WtgkeB2sKdhU6U7AW1KERFpP0D4tcGLrrpWq7sIHvdkVcq5x+cA66WYjdIX6t0Fq5ZsoD5o3PRNW0F/nXmAcoFNO1ts3RRkI7bamaaKDbS7SoOV8iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zWurBwwy; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6153a19dddfso2552537a12.1
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 06:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1754056279; x=1754661079; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xRA5IQz3Kxl9BVoXiCV4QgbhBt0GVpIwT3gqGgrohiw=;
        b=zWurBwwyHdm/bTlpo1VmxJzCrBh7LSx/NvV0v6blxKBDcGVT57G9RBkwJcJuPI973i
         6VJwR4OYYZsKaduPHanBvxsYVOSheW9+LHvoXDQ1J6VC+vdCdMmmIMSslxLLuPnkcfF1
         MFuPMiTxC7+x1JsByKSWD/4fqqF7bzWgMEsFJ8L187ih0iV5vHxwJCKjpF6MnB9GjhlC
         wkwl7QP3h71loVYUdKFP/aweGH1YFEm3pa3PV/lN9pZsf5lDIkMglFDAks/10MgIpXm0
         inDdKKLML2sUMXVgy8pyzLAlzXnm4RPttDeI1oiF9vPZierR9SwEsX742sNoEhJsksUN
         Zsjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754056279; x=1754661079;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xRA5IQz3Kxl9BVoXiCV4QgbhBt0GVpIwT3gqGgrohiw=;
        b=NfJnt1KEOTEygwKRecYIILjdTjGLe5QmQrEtvqQyYQfcFMtliC/tJ6tLy2Yt7s8Ce8
         6V3irQ1hiog2b6k87olyA9HvfZbV9dj+0VlXyGoVjdEPqchKrk2qa/w4VwfLg6rCN/9N
         cSuxH1wLSJGiNqZywLoq9p4NvJBERjqHqc1gXJQa8YstdeigcQ3i09g7dxMqHGoNvgAR
         62b519dvtW2sF2xWEUAZV8IlsCtbI0GHn1RywYS1wCPGOjzZO0OC95HnRNSojgB+evW1
         uS6v1pMgu2O0a7/weilK4ZUCGVe/BELadCzlU2tw4qtNvot3IAlyuOS4lGR1J3aNw0oK
         sQ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUvH9QNGnH/e6Kq0LIORljfmD2Ok56dmZkGFR4RwcW+dgwnS4bc/JWzyI0qa21kFq2WrWvYMDLds0pf@vger.kernel.org
X-Gm-Message-State: AOJu0YyAOWO2yZp4iniGNI7URiKe5SsGdE8YR95pIHokYQQ8NB9AZOZ+
	NBpN2RMXE8YJ+gBJ1POZNJU8tPVQQO5Q9bgB1hYNnanLgagDlqoTuVL1zwNvqJjd/eM=
X-Gm-Gg: ASbGnctywvvmgCLAiO4m7w9Q9/mGDduP+7sVptSINCWz98qyendh+RvJYvETzkPdeim
	5FWF9BboAg27C3NLwsRb3mDgycs9ifTnY+V5S+JwezqEGSZG5+KQ5HmlkRBT61SI7ulF9Cb5Y9W
	JZ8aHzHBCxLNjkqw1BQpMtf30rnGWpfz2LegwZCq787+LhHk0CloH2pLWZWRG+c2Qc0q2Ay6nkY
	GFIZM+4v1XSHLGGTMQ69/0DXUK4LW3gKNo0lXv1Lk3+JsEwlcdOvGtYXgB/t+tCW1AwkCTbQba3
	IUOZDSK73VOQ9We/KXEOKpaRxDBFv6Hfayw9nATRlfMFn94Y5eTBDkR2YkZv0XRIQ8G7q40QaX8
	A3Datk84iQspdozf1LZ3qVsw9Rdtvzr/nhU+I1weS8rkk9IL8x9N/8qLpPROouPI9C3CR
X-Google-Smtp-Source: AGHT+IG/NhFjdelh+0q5nIHa+0bLUeoecZlUq2UNEZ57VCYPAqMbnzkMpVQaT95gwgE6ewaOotJlxQ==
X-Received: by 2002:a17:907:72c9:b0:af6:a10a:d795 with SMTP id a640c23a62f3a-af93194b7fbmr371594866b.55.1754056277620;
        Fri, 01 Aug 2025 06:51:17 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af92a2ec9cbsm180542266b.79.2025.08.01.06.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 06:51:17 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 01 Aug 2025 15:51:06 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable USB
 audio offload support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250801-fp5-usb-audio-offload-v1-2-240fc213d3d3@fairphone.com>
References: <20250801-fp5-usb-audio-offload-v1-0-240fc213d3d3@fairphone.com>
In-Reply-To: <20250801-fp5-usb-audio-offload-v1-0-240fc213d3d3@fairphone.com>
To: cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754056275; l=1288;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=5wYZLPrjAgyvLrT/2EjpWd4qfw44TDTvqfBJ6GFqBfA=;
 b=4nUFJKVqMX7jxia0FxvzjfDDiNCpGQYmclq2OpXFGK5swDfbtHsiVXXgOtMJnLv44VVMRM0le
 jpdj5BSF0vqBVjYI8Gug3yIHfIORYs0v6d0+zrkb7cvhu/rgITzSPJP
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Enable USB audio offloading which allows to play audio via a USB-C
headset with lower power consumption and enabling some other features.

This can be used like the following:

  $ amixer -c0 cset name='USB_RX Audio Mixer MultiMedia1' On
  $ aplay --device=plughw:0,0 test.wav

Compared to regular playback to the USB sound card no xhci-hcd
interrupts appear during playback, instead the ADSP will be handling the
USB transfers.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index e115b6a52b299ef663ccfb614785f8f89091f39d..d30912f952db271aa4fbc2570ca04b771ffef3ca 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -1176,6 +1176,22 @@ platform {
 			sound-dai = <&q6routing>;
 		};
 	};
+
+	usb-dai-link {
+		link-name = "USB Playback";
+
+		codec {
+			sound-dai = <&q6usbdai USB_RX>;
+		};
+
+		cpu {
+			sound-dai = <&q6afedai USB_RX>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+	};
 };
 
 &spi13 {

-- 
2.50.1


