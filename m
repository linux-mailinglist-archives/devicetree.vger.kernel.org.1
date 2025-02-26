Return-Path: <devicetree+bounces-151449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AC3A45D0C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 12:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DC8B3A5BF8
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E461021517C;
	Wed, 26 Feb 2025 11:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EyQxRAVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC38215166
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 11:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740569361; cv=none; b=Qpo9uSNShJ0+vm9z03bbBZGk9GHNaxAhAj2S1k2Q4xtZvdrc74ruXHN+iLecR1JsIO2PWKk1iVtc5NyAHApvL69n1nUiBMynVQkhOltmpcCQ1evgvcncs+xqFNb3faqadmPwPP20Tmya+yIYKZ0a6teX2QpHxkP9ZWqXz2J+FhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740569361; c=relaxed/simple;
	bh=LA0Cvsrq+8BiKo6ol0t+mnrkriJeADHplK/m/Yv3P2c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ka+C/cAsOMsyd1thb55hwK2QRrw5JoqZies/8CWcV6TQB2UCR5SvlTWa/dMXtaOkW4yEqj4SUgo636EPH9T0R8t9F0ecJapIsJVDdDJIP8G5ShcCBafJglaGEOaqK6yBcPmtkkJruOSjOKLxM+0+F0r/BrBZwr1orFksX2EO5Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EyQxRAVp; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5ded500589aso1260167a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 03:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740569358; x=1741174158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s/LD16G1ckmo606r8mTAAXLS++qBREtl47/upA6EvrE=;
        b=EyQxRAVpiJvtjEplkmTMnyNi0OwYgp9+GtZo975owiswoF0HcyZnvRlLp+F7riwg6n
         1CiyKJvlIFJomsTktLtqI2sri0+GNrOGbzsf0aYMPKVvo5AtWpazYAIOBOEpAsYCFg9n
         k4kMgDZQqm5GH1CSJ7TXfolA24HgnYvspPm9fj9Jod+nNb21vDjSHXWF3rc/2OCgYIT/
         updspicA2sGDmadm+Ls0Jv7AQBUOR1mitV84/zPBDICn1Q/4S6CYBvtRn+XytM4eJwnX
         POdTCae5J3WqYbiK9rAbfJANUv0jJvMQImg2re299GyQ0TnMCUKR/tp6JWSmdqdxgafa
         1N3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740569358; x=1741174158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s/LD16G1ckmo606r8mTAAXLS++qBREtl47/upA6EvrE=;
        b=pivaavCQ7G6HqsLmlMSFXh61UM7IBPlTXBUeDBrqUxi1VDqvqJs3hpRfLmsvHD0ECI
         AGQ+oTKI6Yx5FoFeHWG/2NfcIWUEooqEzAXY+ZtD33xQzVfYtil5Irwbdgw5Ie2IbqK3
         d/pb4txc0dTltG2SGjjap3mcMiOjVSMfUpIVsOniWlbHR9C6vKb1p9brDrn0Qnzn3XqG
         h/gpe0UFAU5vazlOcELqGlJx3Qj2AOYYe82wf4p7m+T25QrSc4/6Jjw9ntP6OFhoyuOA
         V+H/V5+DflXNKa60HrSRh0SHT7yxH1wL5DQ+dvsrzhdc/f9kRY+O/mR8Tg/soW24kYEZ
         VvXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb6gdXHQxY9XORQkal2voZgIbkXC3e2+oUMAxotpBNvrZ9d5jyxMrZz5pDkcbOXm5opu965wkD22Xo@vger.kernel.org
X-Gm-Message-State: AOJu0YzAUnFmmUnTo7vZlaYEWvJg6ALd82aOqeHQHIjxxvk+qDBIFBS4
	zg/quHH91aRwkYnIFUpkyuvgYDjeLyvzYHxAFy+JXaT34JpmjSeuoEmWvipwTl0=
X-Gm-Gg: ASbGncsYmugeKtJt8225ZihpvNmh3ermQRNC90zIVGRVRNFZuZ1+a8srfWXMURd+Cgr
	gwVbVSdTvLc6sC1LAEmBWIYaeOIGnUpsZoKCmICDaF4hwuiIU3WhrkH7uqEUVrD+HRjHq7kAtqH
	vvZAIvsI8BCaYbCzKc0YSOZEoyJHJFzW3xiomCjj/X+JW8pX61af+b0NeCE3EJapjFdPQdQq0rM
	sGDLkdUc6JKiLsKQhyEFjEP0N1ZOcEy8wC9MJVKGoOKjZkFvy7aKkUceOpAuhstV02h3eOuZEzn
	rSETj0mLbT4wSCr1SOvieojSYuupb2whvHYwnrG+9Y5F/N5jV6h9fV0XcIlzJK7aT0GkWo1ltTk
	=
X-Google-Smtp-Source: AGHT+IEfpVAmUdzqLH8Eb8qd4lEgmjl7ga6R1U3aAJPOZ5WOBG4ayDyk9a/gfYM6yY4U7qdRUnbeng==
X-Received: by 2002:a50:ee19:0:b0:5e4:afaa:8d6a with SMTP id 4fb4d7f45d1cf-5e4afaa8f65mr292393a12.0.1740569358168;
        Wed, 26 Feb 2025 03:29:18 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e45b7174cesm2610049a12.34.2025.02.26.03.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 03:29:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	James Clark <james.clark@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mao Jinlong <quic_jinlmao@quicinc.com>,
	Tao Zhang <quic_taozha@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: coresight: qcom,coresight-tpda: Fix too many 'reg'
Date: Wed, 26 Feb 2025 12:29:13 +0100
Message-ID: <20250226112914.94361-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Binding listed variable number of IO addresses without defining them,
however example DTS code, all in-tree DTS and Linux kernel driver
mention only one address space, so drop the second to make binding
precise and correctly describe the hardware.

Fixes: a8fbe1442c2b ("dt-bindings: arm: Adds CoreSight TPDA hardware definitions")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
index b748cf21a4d7..4539a67d8bf8 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
@@ -55,8 +55,7 @@ properties:
       - const: arm,primecell
 
   reg:
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   clocks:
     maxItems: 1
-- 
2.43.0


