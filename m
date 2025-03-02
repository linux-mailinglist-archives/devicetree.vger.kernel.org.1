Return-Path: <devicetree+bounces-152993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A3CA4AEF2
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 03:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A00318947F0
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 02:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B826F18BBA8;
	Sun,  2 Mar 2025 02:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V/dgRWX/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A779585C5E
	for <devicetree@vger.kernel.org>; Sun,  2 Mar 2025 02:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740883808; cv=none; b=cIPBpkj+nyKJVDJbLVtWN/cwaciGKmZ4VYl/AdwWOJKmxc/mZaYxydS2Pj24xpJonJlu1U5eHvo9mxlk1AJEAuOQ1X6b9ekksws3FMqxxD/bV9Ozm0cSV9/X0vcZfRAklCdpb/DCj4IQhmVsCS61neaB/NST1cUvkIz6AfEjSwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740883808; c=relaxed/simple;
	bh=qAR+2aI86HiCDVAutTSZwo5vqE2IWuPEOFNyO9gS4X0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FYk9hAw1EAnTQkYI4d/eFa4eYRRU4uwsJV8KRpnbq2PXmZmjX3JZwg3w1O6yy7qpynsv+pcRqhaJPLJC8ozCOMKeGVl+7p991mRxgdfwNhk7P+SffQ3/vZvaJuNu87Ez3S5Z1+cJcbQDx89IK+j/Mj/iRsaBXAY6N38s1VpXrJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V/dgRWX/; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-390dd35c78dso2289374f8f.1
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 18:50:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740883805; x=1741488605; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jXrj904LpqaBDNpwd4ntDUN8Z6zfCaWzFIMN5cqT0Ig=;
        b=V/dgRWX/kasi9BGC+suiji15TF7vMle1df70zeY2vVAcTX0JxeUYTMtfQL9kHqoh2P
         GrtUn6jG5nvuXkg+RP1e0cWPwYBkEa7PZEDshpx6DsgL50qOGZKl3m/i7Xsjf9MqGDi6
         U2clEu0JR85XG0x8UW/ulbWQzu4KZlGRmHhobhTOSRV/J/5ylP3jwKdnLciyKzMmtf5o
         /MZCVHQQ9ducmfWwtBX4tDZAaIsOjvRC/zJPrX0EcdaA8TLXRq+uJeZt7ld7BKxzF30N
         gsw8LfMCZPFvYmFCslv5F0oRrCnzdxOUIOwVKcocuBG3KnXUq+7kOEUC/gCT7uhetFPJ
         67AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740883805; x=1741488605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jXrj904LpqaBDNpwd4ntDUN8Z6zfCaWzFIMN5cqT0Ig=;
        b=MpqfpVXMOQ+Pt/vXeEI0E/7mTN4Qa935jzOPZQbB5UROlS5bmpd+PD5AIZCkE2EzDV
         8P/gW2r2d3FFTvaYkW3uv6uGAF3HkYGhS9JRCI1kmqYul05LFZnt/GbGna/HHxvEUR6m
         Zt0LsogbXTErewgMvW7wgpcbk6dIdlgAKTsrU8aJGC4cfinAgYPOMSBaIOqPA6iskANw
         F0n/8zeF4L85gCeDMFiyUSXJgPu/o0APvDybCazwnHN1xWqiWx4Hn6HC/JaF5IJ0agxA
         7JjzMGinCPeX6gXHMnohJoubLGmUlU14Ve4ee7V4SMx+YJwFuvQcZu6XXbCobtgK1PGo
         YRpg==
X-Forwarded-Encrypted: i=1; AJvYcCXXqAz1XPSt0HK8Y8Lx4B9NfrTV1EiyBaq+jh6UssTj+lstN5IpbnQS6kbUlYcOcmvKQlrWqibSYunb@vger.kernel.org
X-Gm-Message-State: AOJu0YyypiKKP2XECTjN+TOTQvTMc+YGTd6UU9dOTie2CmLnybNMhHey
	vgUMA8oTAjEKne0efg3WIMFc6TZygf2mtPaNtncJW50jSlAPiB5COwBtTumSHzQ=
X-Gm-Gg: ASbGncvQPvfNwmBo2PxJDAhC5VZ9G6vvRtaXMwSWl3mRUwG+U9HMzQEdTqqbCcYpM1K
	ZbBte9x3LPHdAAx0hPaINwnkl5GdduO0eqA873p7HlICL3DptTEYJ4xJIr+prOjjKphahg9QQ88
	JJbqR062OfTaZP90OMp3N/osjSXL1fbC/FE9WxMwTb2P1Z41wqsrFsFWTpQFr1nJEJXe/ax4Wdh
	+qNKSoPrIW8wfAINjB/ghnTcWwizYPo5lfC0acBumkYfU/iF/gvPcw43ifdrdGf9GPAcjG19nQ6
	CgM6eJ+kI5tW1R1ziqeyH+9pPIfOFowLbIQ3vnznyEMTAeR95nfT4Q==
X-Google-Smtp-Source: AGHT+IHMo57UE3ntf4TEinRfNmdjYzDDdeSWceSngBtIaTdafTS9vFTWddSzhUXDAaSR57yX2SA2bQ==
X-Received: by 2002:a05:6000:1f8b:b0:38d:e363:494b with SMTP id ffacd0b85a97d-390e166f24fmr10125606f8f.8.1740883804957;
        Sat, 01 Mar 2025 18:50:04 -0800 (PST)
Received: from [127.0.1.1] ([2a02:c7c:7213:c700:e992:6869:474c:a63f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba532b0dsm137845975e9.13.2025.03.01.18.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 18:50:04 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Sun, 02 Mar 2025 02:49:52 +0000
Subject: [PATCH 2/5] dt-bindings: sound: qcom,sm8250: add RB1 (QCM2290)
 soundcard
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250302-rb1_hdmi_sound_first-v1-2-81a87ae1503c@linaro.org>
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add soundcard compatible for the soundcard on QRB2210 RB1 platform,
which at this point seems to be compatible with soundcard on
QRB4210 RB2 platform.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index b9e33a7429b0c063dc5f5b806925cd541e546cf6..2493ed99268bf2ff8343020150c2c9aca4262514 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -21,6 +21,10 @@ properties:
               - lenovo,yoga-c630-sndcard
               - qcom,db845c-sndcard
           - const: qcom,sdm845-sndcard
+      - items:
+          - enum:
+              - qcom,qrb2210-rb1-sndcard
+          - const: qcom,qrb4210-rb2-sndcard
       - items:
           - enum:
               - qcom,sm8550-sndcard

-- 
2.47.2


