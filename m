Return-Path: <devicetree+bounces-165031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 120A2A8327E
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F0AE7AF90D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:38:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CB6221F3A;
	Wed,  9 Apr 2025 20:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vm497A+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EDA2144CE
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231075; cv=none; b=ri2OyVWZoGm43UoHSo2pl2pUwbFf8p8N8HDvUNCYIkLUugB65GvP5hX0suYcttclzjAHW11PJqr++RevoL0LvDhzdqdVmqqpI8FVn97C91NYiBGomoOIvg0PA8iOoKv8+1G0C+w23G/QBWvNEc9nl6ypBDCY88TEuYpmckmvo+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231075; c=relaxed/simple;
	bh=MOwN2YKQRpsoNetHBGgHFyjhqmCGn2sEj3wN4XKb40M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NwAAWrG5TUYKxVpV6DKYqRWUvgFdCaOldd7yKvEKHNwm5vLVjyaREV3AOxxds4+CKA7IvYKCFzCLsby8Jr3DsyasMUtzNhyCNl8BxdEESduqoZPoQHnFcFoIcPp+r/FUwwfVbEHVSaUQHVvsc8r0Ky0Lmx9d27lZIlEEdJ053Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vm497A+j; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so145040a12.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231064; x=1744835864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mKIEGv3zVsS/tvIgE0OLlPL/FateDyHpIQVfqm7tXaQ=;
        b=Vm497A+jx1EVsnEcAwNyYtILjLg/h8AtRd4f8kz3krTaccpoQpSFgQFyjb5fRM3mnu
         0gREPRuSqIVeGcsgrcw5Xjc2QgboErF/SfDeNoHSve8QPuTEK8tF5hNodZGTTELP2QvZ
         7P2svcFnz9I3kFpga/CWKZxHjMGLSxbi6siT+q6BPTrchYpvUaRyJVXOyiQNwApfnUGP
         XEK9wBVfX1O8dugaFuFEbCzl01Dq61xTdCVfzW5kPLJ61905qEVZu2gYHdUBuF9jCa/x
         eeYJ0e3UzHObjvCJrc6gthnoulEtuZj10SZejvZtfJvhnTlFi44dVYXI/8vpD3AVY/ZG
         d7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231064; x=1744835864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mKIEGv3zVsS/tvIgE0OLlPL/FateDyHpIQVfqm7tXaQ=;
        b=UEkNkX7Q9M/NBv6lBlGaGk7kfsAiFKYLcXBPWbPfPH+SlOjICAQinuxKEFG3UUuFxi
         8ycBs8XBResPHxlFZrqNumV12tVNb5Lr0tlmmHrfxKlApvp+cKlATqC4zywRoZwjHJ/l
         6Xcny83Jy5ekPpoyTfJtyUOh4Uyt+GFc1zrF+mVWdqRG73FpBLmkSM7Qj/e4HDUlt3VY
         VtN7tV5CjI0gjpNwxAJJs/nQUjrWc9nNqm+oDLNqhxlnPJjYa/oy3/ISqAWTUUc6Smfs
         L8aVCUsJC2dBAzgI5rSn9V80P4sRIIQ9Lb0WAQ2VONabUUSs353ZspOqWfUjQ98T0tGd
         Oe7w==
X-Forwarded-Encrypted: i=1; AJvYcCV5jjXaBqyyVXCNgimVjrC8NfKiTlnDcCZWy7cBYcbdsMJTXOA74WJqtuZgQXvTR83tGe/xx7qjGDa7@vger.kernel.org
X-Gm-Message-State: AOJu0YzKnLLtj/ATD85bxyok7LSisksIzO9kg4pJa/mrkupGfHPIsyj4
	fHfKJBt27BFy4W27VMU1+uYzwLzCqz35RQ9DxC1zfhKLHnOI5+rfZtL6J/ofF6E=
X-Gm-Gg: ASbGncuqsULvOQOFXmECTXr61/PUg1mDJLZhJQm4ADlGjqztAzDET7lgg19MkIGASAd
	tvFg7+CiOAAMNpdNlGmJT2ozi1TSGrFAywPVWoOLWnuK0H8zAhXhRykzxfhPKz8wt0FE2p3h5Rj
	mdcfFSGm6YAE42xGiYw8epNZteyi+t8iD1TrBJ5L0ZNR83vpzgYgnBBSW3HwVWoUle4C+sn5HGN
	SuXr2cXpSp7bvoLcfD25SdHiMpk/dS/wf+iuLrPpOKzF4e0pt5dAFtAH+JcuFy0YdZ65LiDzfsa
	E7R9scnDrzWPDfF9zcs9Ka+ckVUXa4eufRX7ITxKFrqn1QZ2Rm7kvyVpf4NdVCIMciWf6FE2efV
	ErwD3D01THdsAOnvHZkuZP1MUGQoUaFdggQqZCg==
X-Google-Smtp-Source: AGHT+IG1YTLblK2ZacnQ+muHHFTtW2fsPo4+YsM4khlJQ2EKJXJA7UZyAbkh8L9PKTjc8rDv/I4VCQ==
X-Received: by 2002:a17:907:7da3:b0:ac2:cae8:e153 with SMTP id a640c23a62f3a-acabd126d26mr9987066b.4.1744231063960;
        Wed, 09 Apr 2025 13:37:43 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:43 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:49 +0100
Subject: [PATCH v4 28/32] rtc: s5m: fix a typo: peding -> pending
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-28-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Fix this minor typo, and adjust the a related incorrect alignment to
avoid a checkpatch error.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index c6394faaee860427e8b84e9c6df2d8229cf06d93..095b090ec3949e0e8074cc344105daa00b795245 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -243,8 +243,8 @@ static int s5m8767_wait_for_udr_update(struct s5m_rtc_info *info)
 	return ret;
 }
 
-static int s5m_check_peding_alarm_interrupt(struct s5m_rtc_info *info,
-		struct rtc_wkalrm *alarm)
+static int s5m_check_pending_alarm_interrupt(struct s5m_rtc_info *info,
+					     struct rtc_wkalrm *alarm)
 {
 	int ret;
 	unsigned int val;
@@ -451,7 +451,7 @@ static int s5m_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 
 	dev_dbg(dev, "%s: %ptR(%d)\n", __func__, &alrm->time, alrm->time.tm_wday);
 
-	return s5m_check_peding_alarm_interrupt(info, alrm);
+	return s5m_check_pending_alarm_interrupt(info, alrm);
 }
 
 static int s5m_rtc_stop_alarm(struct s5m_rtc_info *info)

-- 
2.49.0.604.gff1f9ca942-goog


