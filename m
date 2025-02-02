Return-Path: <devicetree+bounces-142343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D9AA2506C
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 23:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0AE03A57A0
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 22:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7921A214A90;
	Sun,  2 Feb 2025 22:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="b7cID80U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBC4214800
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 22:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738536376; cv=none; b=SlvwO/qK/XQKKdFv6VdISpkUpJviceMUPgANV63z+aRddnFPtAeDNueXIQVfketuwm+KdCUwvKCcIedWybi8dRV2mQRf2YzAtAW3mTDUL8k6SrS7tOpiu/k4iTrElXUzP5RVaYEl/7+roc8F/ZG8Nlu5ku3mX0HGMYi68RmKtxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738536376; c=relaxed/simple;
	bh=YnNSE/LPAfAe/u2HSLYj+o9uJBnXbnpQ9KgSWsMPZXE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZWa2diekNxYeIUeo703WqjBRPoN7/KUIMh7yZ8+95T1LqW6QemfMvni9wcQIK4g5ZoqBZGyAzxEBUe5IBAhUwB4F1RErpxrxjQJqZdW5yD56n9RehTzFzJNb6IoM14tmlYKkTakN7jkZoyonLZCYgFoe4HBIFCceVdmpnxTu94Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=b7cID80U; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43625c4a50dso25716355e9.0
        for <devicetree@vger.kernel.org>; Sun, 02 Feb 2025 14:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1738536371; x=1739141171; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8RI53vn3X23eEEDFRotITDuCiKS/4aif1tdWU0fr4HU=;
        b=b7cID80UgQ+VIi32X4t5rICT6N4nRqY8owH39oNJKBX4CxW2CFyHStwaj66+T50RtE
         SCIBxAeefY9TLfR8i1rX1SV1b0ru9Tfw9luX5japSKJwMZx1JwmLTmCc7piSrpIVElS/
         +yW1nzLQN+uCDBg1qaqdrcnV9zl5ABc+YmcaeWEUdOGvGvYfoT/Yd5+TwDhHTY8EtT9Y
         oDRqntj+UQiEKpLrxTPl8fYy6L9MMAg/GJs4DjRwkLyoraOfWw102Zj7bdrbZdVdmqn7
         i7GywM7CVBUcsEJpflubFQ+nLPkbIlpCIcnjl4pkmrTZgCjcLaX4qViOFwPMKxGdBzcr
         c+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738536371; x=1739141171;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8RI53vn3X23eEEDFRotITDuCiKS/4aif1tdWU0fr4HU=;
        b=AecQD+gtee+QOybrrjtxEruNOHfy4Yb29yiPWj0b+ik40sgUiGWgwDd56C5i50HsQX
         Uv55YhLExsertaxSRdiORTlPkDs3YDhNMT3gzrqteROpSd+cJgUJqd/3CjoQqlPD05TT
         a1563vH9a9AbxwpmYXQR7DlwAK3htLkh/M5cGgtj90cOMZoNBe0MfKUJcH6I+zaiEhzU
         vWG86evOFfYrq/TQemXa5ZitAh52PfodsQYSr1NaUbZK5/xWd7P4BfmBcyRfz9Qujsef
         ROWsm54J4xzWzFFZQb8KmJTpkbhncD9pG+yrT7Uuek6tNZ9yqhTutyfvHGAamIEpZ6DY
         tyjg==
X-Forwarded-Encrypted: i=1; AJvYcCXz1YSZt8i6oDp6hghTzOqGYaWFr5OueYyvujkOA2kp8cXyO8nXmU9Xdoh0Ntx33jmaXlpCP4U6JSiu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6jMF9UsfeuYk9GRAcvniXGpdyAhY27tiQnjGl44V0eS2lg2uA
	K+O1+AjPUJa+spMyu7XqoFLgT1t2OGz4u3M/RxVlT1pP7zzLiq57GmGGu1NtiwI=
X-Gm-Gg: ASbGncvIZK+DRSjwUIytxWA73jL9xSHP/GYKex1VLiy/8hw4MK8NfLQ76y9mqViE1O3
	K5CLH00pm3TeJQKrYysB8tcIPXrt87o1kHg3wORVeDaJj5AMRFtE7uaCmmd9XFWPw4vQ/gI9/+w
	Y7LsEogtvBGP06tSS0W+n0YmXsNi/x4Rhl5jwDgDTNZfcFByyWe+FynPxc/0MPNwHqo6qIKXf1g
	LfoL0twiOD+puvMtAfkeh6EQgb/ECfyPRISweVBbgNZikrsrNvA9ZLXk1gfveM1Ul1E/DGpgQe/
	pyFwUUvIfm1bSsEkHOkR2sT7m9c=
X-Google-Smtp-Source: AGHT+IGBX6lu1OSNvz8aeULWff/wDITldKG3wzn8oH2zHYByjYJKUn9rdrJm/tqoC8tJVosKX2xovA==
X-Received: by 2002:a05:600c:1d26:b0:434:f5c0:32b1 with SMTP id 5b1f17b1804b1-438dc3cb5b9mr167114485e9.15.1738536371121;
        Sun, 02 Feb 2025 14:46:11 -0800 (PST)
Received: from [100.64.0.4] ([2a02:a03f:6bc3:6b01:62c7:350e:556e:d0f0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc80e61sm170849605e9.34.2025.02.02.14.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 14:46:10 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Sun, 02 Feb 2025 23:45:52 +0100
Subject: [PATCH 2/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable the
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250202-fp5-display-v1-2-f52bf546e38f@fairphone.com>
References: <20250202-fp5-display-v1-0-f52bf546e38f@fairphone.com>
In-Reply-To: <20250202-fp5-display-v1-0-f52bf546e38f@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2

From: Konrad Dybcio <konradybcio@kernel.org>

Enable the Adreno GPU and point to the correct ZAP fw path.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 965e32473a58ae4748e4cb748980fad1d2b06ab6..582b19277de414fa9cbb8f9929c6eebd697e8033 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -651,6 +651,14 @@ &gpi_dma1 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcm6490/fairphone5/a660_zap.mbn";
+};
+
 &i2c1 {
 	status = "okay";
 

-- 
2.48.1


