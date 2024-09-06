Return-Path: <devicetree+bounces-100965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0841D96FA2F
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 19:56:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D8951C20AFC
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 17:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECD11D5CDA;
	Fri,  6 Sep 2024 17:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="cAPbZ5HQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493C01D45E9
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 17:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725645378; cv=none; b=cP1hNy9Pme6q7iHbHg0Gh3JDsoztSeIemzdm2J0kLNJepwQt4X9EeU9almSHqYH+rTSZkLK9VqjP5f6P924zz4a/0b+ln7+wAVmrC5qZ++w+TsWr5QrmKXIQvUYjP9WIxvVFnNM9PGR131AYky0HcVmLRfGUQ7srGzmbxOA8VFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725645378; c=relaxed/simple;
	bh=FHS1nCJmr5pCziBIMWQ02d4vRB9fiaTTS8EelXAsTr8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dg8DpxvL/g4By7M+18+LFI1sDJFO8+hFk4QXev2rZZppbumJxj16BZeYUbV8bPIleZAZbjYGj54rqBY+AQHAdWS8EnnrPX0FPjLvppGFvf0UkgH8bWuhKGWmJXYKylb0okUS1wUg9z8PBa52MFQwCrhMtvpdjT2UTTEcvI5CeqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=cAPbZ5HQ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42bb885f97eso18961995e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 10:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725645375; x=1726250175; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hQYrrFnq45FQZpy1CBFZK584cpJrAdAQCel1rZp9QxM=;
        b=cAPbZ5HQTIDk54KJfl4nShwpQ9Imbt9rsTVYIeuOiXo/oXUEaLHs9oQXAzz+29KQ6q
         sQ6I7KOursm17MDM4bvReU2LusGZmWTzfcBzHu06dWzJCf5LhaI7GxMRJSq3Le4kueZl
         c6m6EX3Lrq71FjTc0xLeYmGSk0AqsEzhUXx189qDsMFENr2yOPbgokviseQtlTFzPLmY
         fm4X0Zeco4Yff8XvwlUUIRiUDe9WFjZ2PrxV7zsFcoBMm4l3U8PuNNcShi7w4Hf1ZxBu
         rOFMiJ5JKx8pGsEINmWAFuR5/ttsqccOPuLvIj3qSefyL4bV/1YHWFA+1i7+8Sk1JaUv
         NQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725645375; x=1726250175;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hQYrrFnq45FQZpy1CBFZK584cpJrAdAQCel1rZp9QxM=;
        b=NidIota3OGVSPDnP0Rlic0PwgqutdQmG6/jYuz9sPgCuPzm9+LccAlVmV6iWFGsfXy
         t3KfiGDubXo7SdBjJITgCT8xL82b4LQO53o11hdHSLHNJqdIUnZ0Xc1sRh4wOCLcB5dY
         U3tPVBSN2fuD5gJxdamWvMrXjx1EJsp18nGajJ/xMe6aDl7aaP02bJe73jJlWCwltH7j
         rJ7ci5D2DzBaPQ3FCV/3M8FPBbJxBqMRlmhXzP3QKNqCeyXbcMXZ7dK1Mjlt+S8gIOaL
         jp8QJ3es/AGSRpUp+7pbY0SxPADGnxx7bpITdjqo/+3+1CcTTuiZZ2V8id/3zD2xUBrf
         5Lhw==
X-Forwarded-Encrypted: i=1; AJvYcCXanwCz8kRsbdA+c/4xNC3V8TyYI+QdWRf/wRLxOOPQTeoqrtr6t27iVwwcSQH4A6I8ZuVu89oelA8F@vger.kernel.org
X-Gm-Message-State: AOJu0YwpTfAv86ZZvTmLGsq+1P9RfdxZMfc2BR2pqMgnwtUVxccXNjg9
	Jc7xsbMvXv9csdeO2mFLOOl0GVTd5hdPqaSNMs0B6ZgOFLOPtabyqOtpEehTF40HjX6I3iHzf5P
	Q
X-Google-Smtp-Source: AGHT+IEAO5eQ2WsjpFGOiTZ3rP5m6MHZ9LofXG6FrIx32amj9VumgP2Se3jrYC2I+/fj9GkT6+YpVg==
X-Received: by 2002:a5d:55ca:0:b0:374:c11c:5024 with SMTP id ffacd0b85a97d-3779a612bdcmr6744851f8f.16.1725645374584;
        Fri, 06 Sep 2024 10:56:14 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:b9fc:a1e7:588c:1e37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37891607e58sm442920f8f.24.2024.09.06.10.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 10:56:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: [PATCH v6 0/2] arm64: dts: qcom: extend the register range for ICE
 on sm8[56]50
Date: Fri, 06 Sep 2024 19:55:59 +0200
Message-Id: <20240906-wrapped-keys-dts-v6-0-3f0287cf167e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC9C22YC/x3MSQqAMAxA0atI1gbqjF5FXFQTNQhaGnFAvLvF5
 Vv8/4CyF1Zoogc8H6KyrQFlHMEw23ViFAqG1KS5qU2Jp7fOMeHCtyLtin2VZWSHIiGTQMic51G
 uf9l27/sBnlO/NmIAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Gaurav Kashyap <quic_gaurkash@quicinc.com>, 
 Om Prakash Singh <quic_omprsing@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=977;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=FHS1nCJmr5pCziBIMWQ02d4vRB9fiaTTS8EelXAsTr8=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBm20I41/6tNEv9qOsMFd5ooEmVDQqNfRErMBPKa
 Iltd/PSJVGJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZttCOAAKCRARpy6gFHHX
 coGUEACPBfqHURpAg3GQxrXFSJ+luezgVWtIx9vgznL1+EbvvgDNF3Mh+kJBtLl6FSaLvsWr8ir
 DR1RWMQ99h7eSsKNKaLxS1zV4tGioJkLewo2qByzDg9nI1C4ayu6l8XGanyuPk/hQXseoOsXHlM
 CLg/A2Yzuidk0+Xzcc1g1vccPSRSiMy8bpoAGBJ2UYP4JwA39CJBhVl76u7Qz/2yni2B1k/7gqm
 Hoq5l5yAZ5FBa3u06jgUjz4F5adbsrobCrcECUWuUtjb1z+p5coXDHEus1nAtnnHjzKfotW8VR4
 +ofC0eZLnl6XcnhTqWCOK/LNIk6AJc4p7rZqs3L0kbERV2JGSYApH75pbuC3e/nlLaY5wyy413+
 7VlGJGWfgjBVFhqBZ3mzn1ctLKw+KEccao/aLWMVbsIwwYafmX1S1ZSvOjNhFXZy0HlVw7pB9Z1
 SiXhJnv8TABTZtzc/JneOUKDEXA8sU4FHLft/CgAlJMHciOgejPSTx5T2Cs4gDGzd7bFmon/FsL
 CfmEmIgIzkSvAL9fXVoF/FhOdOqMkNB55A9lpaTZ4uGbqvaG9KSmcx2vYZBcyjNF5Zr+Dr43wv+
 7r3rv+Lpq+Mlv83XCirMpxCULjXeup8p8cxao5krPd6LX7XqQ0YDeSG9jiynchYF9Utw4QUvKYM
 0jwBxhKA5yn81bw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

The following changes extend the register range for ICE IPs on sm8550
and sm8650 in order to cover the registers used for wrapped key support
on these platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Changes since v5:
- split out the DT changes into a separate series
- remove the new DT property from the series
- rework commit messages
Link to v5: https://lore.kernel.org/lkml/20240617005825.1443206-1-quic_gaurkash@quicinc.com/

---
Gaurav Kashyap (2):
      arm64: dts: qcom: sm8650: extend the register range for UFS ICE
      arm64: dts: qcom: sm8550: extend the register range for UFS ICE

 arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ++-
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)
---
base-commit: ad40aff1edffeccc412cde93894196dca7bc739e
change-id: 20240906-wrapped-keys-dts-b733dac51d01

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


