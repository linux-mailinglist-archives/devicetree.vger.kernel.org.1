Return-Path: <devicetree+bounces-68371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F7B8CC0FB
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 14:10:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB02EB22E5B
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 12:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15921411D2;
	Wed, 22 May 2024 12:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="S2UMlNhv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D779613E3F2
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 12:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716379739; cv=none; b=BcDit4kUdH7859v3LTGQ88rbpvzLVqY996lXIz6gddgkCda8RGuq7HXXz8fpm1VzefTyvgfLpO16Q7rKOslMXOfzk/lMUAQk0xUpxb7drKGQBXe0RZL9/VSuL1aUEchfOvAVVXAG9JkLswALjE3QfCvvSUEuBii8qY95l/xfuk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716379739; c=relaxed/simple;
	bh=3EDAUHsXKoG/qKpImUuoYQAk+6P6yudy3+ZtIt3JzhE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oiWwn/nVIwN5m3QPt/sbCFk53qcSDwtR2yKEiixYZw/BFAlfMzZlGNhj+VROzQd22ZHPCoZAngLffisnIiNL75EU7WsCs3yW9I+bx+Zt/NJTZOK5CNI/Rfj5Z1QrW8jy4UDGb59vOGAEy6k6Xgu+Vg7gpiTjQFuBntR0vCcetbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=S2UMlNhv; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-34db6a29a1eso4024052f8f.1
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 05:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716379736; x=1716984536; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ee+lz1uwo7ctAXz2XE2Pj87WD7POTM2aqHSnKbmZAtQ=;
        b=S2UMlNhvzSyh6Wm5wdRCB8+CFM53KE/vF9cIZHv1G0GZM+WZQhueylbO+8adV3gTWk
         XsygfVdXPSvbJygDkwIYmGZmLaMPvP0z8S2kKxbJ/g/CUaDPJyIuuADIlnszLmfCrzJF
         UmTqWqU+OteHw1QyubopF1CsVJV2k+Ng2ZoKR5uuy0rIa8XXqw3WeYv2nnWIKTb2L8Hl
         6fUrUk6Yl4Ew7rKkOtOyUSWbN1e2mCWWnIFxzGs5nspN6A84uNFSKJmokofwRMcTcmNN
         8KI//NuGqxm92PYBNUK9nVrm5n7ibvIbvx1xbokIy6P6r/MTLkJk+tHsXm5AuWYZFPPW
         neQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716379736; x=1716984536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ee+lz1uwo7ctAXz2XE2Pj87WD7POTM2aqHSnKbmZAtQ=;
        b=O/VSP5hBVCe8vdPHdIvgPcekwFRf24e3EuqV5uXFNkp6NMBbViwJTdnVE1HID1v8w+
         3ZR296U63XchiFz5ilDSpk/XmTMom2nIA9cyNElWGO8pBhTXcuS0teGSKidx/Cbcl/co
         DYVukx7WLLr5U63dyf2LiZw9Kjmj/f7lzeBdO8ify0Nke+faCQqigJSC7f0Bm/5CPfMn
         iaAzpxgYyrKPaYIjlBpuEIGm3ejofmLJPNNBJeRbJyjeHDnTNpEfqJAnEwLOlmfOnzQP
         vt48Sg/YzEhcBHk9EvVtDPuyzaarE+RHOgdvQZZnhXKYKkUv0BPlr0tSTC7rLJ+r7rYL
         2l4Q==
X-Forwarded-Encrypted: i=1; AJvYcCU8gckgbRldcFxkE/n/zF+hEHjlxeGBbN1iYCNHRK3W7ONTo/6uIvZAXXDIicQLmwO0AiNFRondN7CAU5GbymVbxhXBm7R3d2Kj6g==
X-Gm-Message-State: AOJu0YxdmcaToCgQidoaHu5rG4FJv6Op7p+JU2SV13RiziZJ9bZnB21y
	rnJKC2k8P1bHRovJaPsXbqJfApZathSwaA3uq6lB1usOmNsShWJjqyB2nyu4+hw=
X-Google-Smtp-Source: AGHT+IG5NM5/ZE8ywwZcIByklcnTb11nbfTJMIqyGgvzCbQGpT5W3VlKw96Nno+5ZmuQw0oIwzUtmA==
X-Received: by 2002:a5d:4851:0:b0:34d:ef22:70d9 with SMTP id ffacd0b85a97d-354d8cdbe59mr1347080f8f.15.1716379735946;
        Wed, 22 May 2024 05:08:55 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:82c7:3445:3b33:6c0b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-354e720d9afsm999226f8f.113.2024.05.22.05.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 05:08:55 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 22 May 2024 14:08:19 +0200
Subject: [PATCH 5/5] arm64: dts: qcom: sa8775p-ride: enable remoteprocs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240522-topic-lemans-iot-remoteproc-v1-5-af9fab7b27f0@linaro.org>
References: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
In-Reply-To: <20240522-topic-lemans-iot-remoteproc-v1-0-af9fab7b27f0@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Alex Elder <elder@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1173;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=ltuWgnMWBVzAFPrqL4rpwFznsQIrPKuJMFtG5UNQsAY=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmTeBR1uZXalkX2xrGfsq/SM1fgHfaFptvwi521
 t2pezyZ9t2JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZk3gUQAKCRARpy6gFHHX
 coBdD/0T7qi1zHTGuexnRqWRenkfob3q2HZpY1B1HyofNAZYJ42r1OZ8ocnJr7H1gj8M9IrzLO3
 6XEStf1kIFs6mFXNa4JmZuZxjgPO9vvh8CsyUj4NnC23EfpfBFGwRDhiIzIJi/xDQzNeDCI7ukj
 0AzsrxSjHGQ0KiSHBfVwaU2ie82vJ8x+beoq1Fdi2qZKEphRKxy/QiM0nYvYl3fbZ9A8vH7eR56
 HDs1Nx/tILe7OiJ0oGHG7iqozN2TklumKeIx2mfDO5Zla8FERlIqHyoMMEKSScdY/9SVunk++pV
 nFqVfSuQeYZDoIfFNAhZ731DtDoIHEOSVUfQSOts4h29sgxnjOtdzPXcWmOboyySB1PgUqfwZb8
 h9isRAWgxzgJMFxbKuGgYU+RTcC7F7IvDEtMq18G/cN74N99mpwjbx3FbO3yf8iz94WEGkLNL/g
 rzeKynJoRkLxI1LioQAgqjv30XMVs3wRM+1WCgwyc0w575sOFIduYyZOVp0LsWI5etwgkhQs61E
 KDWIht5cM9GNzRUl3RzhcaIkGmYGSHQ/FoNiSR6wu/TV53opfZLExRa4XPKWwBM+MbOu9QrsExo
 bddr8aSa2dAGBvKCMoPEYofIPz4SVbh7Y8mG2jiIX+cF9GjJbd8TE9PX/MgF1RYU3fx/1fnEJ1Z
 n5PiP/Q2GzVSmgw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable all remoteproc nodes on the sa8775p-ride board and point to the
appropriate firmware files.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 26ad05bd3b3f..071fcaf09364 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -727,6 +727,31 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sa8775p/adsp.mbn";
+	status = "okay";
+};
+
+&remoteproc_cdsp0 {
+	firmware-name = "qcom/sa8775p/cdsp0.mbn";
+	status = "okay";
+};
+
+&remoteproc_cdsp1 {
+	firmware-name = "qcom/sa8775p/cdsp1.mbn";
+	status = "okay";
+};
+
+&remoteproc_gpdsp0 {
+	firmware-name = "qcom/sa8775p/gpdsp0.mbn";
+	status = "okay";
+};
+
+&remoteproc_gpdsp1 {
+	firmware-name = "qcom/sa8775p/gpdsp1.mbn";
+	status = "okay";
+};
+
 &uart10 {
 	compatible = "qcom,geni-debug-uart";
 	pinctrl-0 = <&qup_uart10_default>;

-- 
2.43.0


