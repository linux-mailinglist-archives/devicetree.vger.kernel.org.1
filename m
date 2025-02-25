Return-Path: <devicetree+bounces-150828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC33A43AA7
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EEEC3B5B53
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE650267B8A;
	Tue, 25 Feb 2025 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HMzQesoK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81125264A96
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477563; cv=none; b=AzvtfttaRs5WKRFIlvsITrSulfhqyxphYmsp4z29IVTsBOztfggzUHcXDr9d0igT0bd6a98R1RIRPYJ+2NjSa6QgDOJtHORBZbjse7y3HSg/TzWPFAvF1hPUeYOTPewc4ANzRGDYRl2El3a3vO2ICHV9F7tfsRwv1hjXtQk2i8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477563; c=relaxed/simple;
	bh=WE9dgMDk94L26TE3o6edZD+8yFJ4YY9ACaejqY9X1s4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PgrBoXS1WasPWhZPXhvszAVcfeHXD5TV0kfU/uQ29Dj4rf6QFpHEb4100xpjTzp48sBTU4QWAspAF7lynbgghz3d5U8e2lG+vff80wVqCYtCFE6Bn6HzP89UX+rEFM4IpO4knUYBSUDBLxQJG5eBR35EUvuwQPBRxCx8gnojHLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HMzQesoK; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5dc050e6a9dso1403820a12.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740477560; x=1741082360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vitMg/JdavxTQWg7So3ThI1uGGcw468ISbczDQMGWr4=;
        b=HMzQesoKrA65YlLdfAjgTtOubYcdDXeme/VLJ4bm0eVkyy8ddbHVCoEER2VWMMO7OR
         nk4ZKZY8RRK8WYTAoYjP86y74LQAD9WyVd7GUuv+SS5Cb6hKKRf3K2MTnGEJ6+SI9xoP
         QFxxzMaxQZ4PqSp8BakuZNPebu15oECf6ACGzQaK5oPWO+hRoftNeSgvpvxG9m1zkbr2
         kQRw6ESY4ZhWMPTuli9cw6RwmOJeHSZPSO/9gJSQ3ErDe/hB6gxWDeOEyk+SMFk7rvMF
         f7mXo9TxZbe05DWqNdakjNijsU90ZAGwj8FVUu4R5kBeY0difSA3+C9wgMcootMvjIm7
         Vk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740477560; x=1741082360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vitMg/JdavxTQWg7So3ThI1uGGcw468ISbczDQMGWr4=;
        b=EZ8KxA5ZUtcLAQ5cDuJwIy8edrfPcNjc3KXAImK7Syabid+I55MQ9EvCttK1K0Ngp/
         o4DUvehH5/+odK+4nIKTaHaVQsuoFgOnpIXH0f8cBKjv2AmvyDI8rDcD/sE1W6DfpbDW
         oM27F9hIfKtfxo7GI5OVuA3NTJk5I6qNV+8meXVRT6vsIbpUYQkWtHnGLaqgMVTDTyVL
         Sg41Q6wqHrGijdWpK9tFtHWX6T5r8/0tGtWITtQbgc00U9D/cEgPvDOV7jwAl9/4xeo4
         kIH8CGeABwXML0tb+f5pM5C0FU1z4Pr/2jyoYOeXUI4BlyjSaLAJZLB+JLY1QSL+Mptd
         lOzw==
X-Forwarded-Encrypted: i=1; AJvYcCXxN0GiJhCbLjIvkv06zN9B63zUBBPecouPMvnZ+tejQ627e7XHs3b7ffLiB0jh9It1Tl4QbuACF2xv@vger.kernel.org
X-Gm-Message-State: AOJu0YwFalznLnsXXfyhoP+2TZ4TRhg7xS4gix6Nuhy3wdNk6KiTuBOF
	ZvtYE2PwVyp7ZdRzRXktYV9uXXwWLO/A1e6ra3V6UOY5xU8gyQ036em6tTNMSGk=
X-Gm-Gg: ASbGncv2fEPeG0HIl+H1qhytrF6jvferVhS4BIXfLRnQIke9WM7nSFgoBnLhctXwDEy
	tXTwyyqaliMFARfukrkP+R3cNRhIclgWEq85n180XEwjxCBFOOj0shhBDpQAAzsqTYxF64woYLS
	4mwttudStLEIs33xQ9ppDLDKT0uK6n1B+hIMcw6NZYEJg8II1v9kgcOaABO85YBUw3zujxk62nX
	NsPVySK2W3KICgnongSqoF758ZQoVe7O2vYu1tDso0ieYwa8YKeDDe2wO4HsVEC8igMO21iW3pW
	K3AIsitUREGtf/EGX07bIQxIMkB4cJQPPHBnEqZwD3grH/CDpGRZMR4af6pvObwlJTH5cyXIOfE
	q
X-Google-Smtp-Source: AGHT+IEkszTAFJYEjfFONhK1AW+il0Z901P0AVaHZssDWv/e0RR60wm6bTM6+nsV6uq/3lMpZ1ZxAg==
X-Received: by 2002:a17:907:2d20:b0:ab7:bb4b:aa49 with SMTP id a640c23a62f3a-abc09a0bf7fmr683716666b.5.1740477559752;
        Tue, 25 Feb 2025 01:59:19 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1d59391sm115164266b.56.2025.02.25.01.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:59:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 25 Feb 2025 10:58:59 +0100
Subject: [PATCH RFC 02/13] arm64: dts: qcom: msm8998: Switch to
 undeprecated qcom,calibration-variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-dts-qcom-wifi-calibration-v1-2-347e9c72dcfc@linaro.org>
References: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
In-Reply-To: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1079;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=WE9dgMDk94L26TE3o6edZD+8yFJ4YY9ACaejqY9X1s4=;
 b=kA0DAAoBwTdm5oaLg9cByyZiAGe9lGij20NQqEKq6YTDywdUOWriyR7E419074VLl/cKCzW0r
 YkCMwQAAQoAHRYhBN3SYig9ERsjO264qME3ZuaGi4PXBQJnvZRoAAoJEME3ZuaGi4PX4CgQAIpn
 XupluihXS0D7/6lRgI2pb2I1tYF1gciuaYOSeeAjjCJXHJCdUOeS5KC9TmnM+6XU3jUglSu+3Rp
 BquzMUb7jYbV9Y8wn5ybG9gtvAAA8K9IZnFqeq9UOcLJIjRJm4dZr37jafThpp8MCUHXp8KFJ6D
 HdAxZJl70m/ItYP9bp0C/zt5biBpWu6PGpqhTGl1CHoxobHPMfRtZ27v71a4V6i+53dXRxaCwpB
 YxWQdxUGS6G7ETZfMOJcXJ45js/6UXKh8N5jY1v2u0F6XItzESen4xMPpNiZ71UYrZSIjVNS7tW
 BBuORLXKyvWDN6ZnfXicELEWDOuXAMcWseFWdou1xUYc8cnLYccTST1hImIFlhhclwKVbgNiXTf
 8nvgScDfVgKuCizegtSlVFCB8s8ocC2PXGzP0YrMBe9wuKf+z1Dx0IpbF6KWVuTamdCGP3sqUUi
 L9g3NdCXFJM0EW8MpHl2DIhhU/cpw1aBE/8F/5QMSKacu71OxW8+CWD9k7EKo//Q1D4YNBxPojy
 U2uHOYsaFR53zxajSRno2CHwYfJec6T0dpyVqgN0AyZMJk4EfDQ0KqeaVplfUuhn/BT4W3JgsAZ
 Lbc2g6HmMnoMiZwJDtRntYxfZKAJdmkQS+CJ+pBk5R7/HcRrkNK+9f54Xn7KPgZk8shVsjjuhn4
 jvoO1
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please do not merge until corresponding driver changes hit mainline (see
cover letter).
---
 arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
index 901f6ac0084db3df02608b2e52a8e8837aad7d96..f160ba562b0af505bdc1357731f75a394b5eeeeb 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
@@ -101,5 +101,5 @@ i2c5_hid_active: i2c5-hid-active-state {
 };
 
 &wifi {
-	qcom,ath10k-calibration-variant = "Lenovo_Miix630";
+	qcom,calibration-variant = "Lenovo_Miix630";
 };

-- 
2.43.0


