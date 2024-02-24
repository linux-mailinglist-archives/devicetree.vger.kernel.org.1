Return-Path: <devicetree+bounces-45495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D17C862379
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 09:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3AA5AB22047
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 08:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0917A1400B;
	Sat, 24 Feb 2024 08:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TOODgUTa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F128F66
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708764259; cv=none; b=HKKAuEkZMSieEC7sFWhOQqUkDE9hwHcTnmRiV81FbG5KL2eq1H3aSSDUkRlzg18eSsPxLQv/bJhEqAdHd5jBo45hEjkGNngs0CpoEM98v8CHXXMVOHmup64ycl5hLn/ZeCE8WFYgeKaXjQQlxSYV61tCmpPRTRZg9epY9Pvwa9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708764259; c=relaxed/simple;
	bh=FIpyBXgJjvANVtOR/x6yvGkcACpAI5HneHy/vhLWMJo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lF+hUBTgYR9duCodYXYhauWRzEjmbW06yJPm7LjvWhMyiRyh2V3i5ja/ObrWV/KtsyZfW8BwSW4YrZt4pE+Own8PMcFVH0RBpnkcQf7uzecmFV1EyYHqF1j7Rn7vYHtZ2MbEISbX0wwEUSy+PhqNMU0/eT/4BK+C4bzwCHEXGg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TOODgUTa; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5654f700705so2007140a12.1
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 00:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708764257; x=1709369057; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5LGO6mbGw66Vq7mqhjwVfT/QzpHFqhbr0XALIz5zVo=;
        b=TOODgUTanBQ+QiuXCqdUhxjfybrUALgfZk7+mMmls5Z7f4DitAqh5+1vVnKf5i+8fs
         7AsJ5neWkqSqIjjlA2JoWUkoyh17ROdEkJRVR0ZCZHhzabXVL1lGKWxDY0zrcfDaMLVT
         QZ+/E3lSBMs4I3AHJjZIwpN3yGYoxib8XrVGRYTIHaj7WPT95xNGJ9L2ZtiNw77xeCtX
         SEMfZg2Z5xtPgzfxaJtOrUylunY+dqJun8YoV/a61iVnw3+BKUo3d8wm3qfbewCdnDX4
         UTqWH8pJaKNQz2ROzBGmQ1+3vvhEdUh3hc43aa62RhoT99QyouD9yut9kqBI4lMcuv1z
         QJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708764257; x=1709369057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q5LGO6mbGw66Vq7mqhjwVfT/QzpHFqhbr0XALIz5zVo=;
        b=Io97kH7WFJmDSGQsPqOVPDMit5jN9HV4suY/lzTmcb6TmVK906ApixoTYLjzyfDiNH
         bm8xPBrXKwBpS0xaGsYk4kaen1RGaFmlUP1MN4jiVWyI6+eftsn+VYBme7tThoriiOEL
         By7PseSDf/JJBkE2KKGnk+ONpEr5yVZ1sgoha/SDeagfM/yuZzglO7wqkhbufg0y3Ntr
         aXiR0j14UE4lnqTGNEbmhcvI9KjC0XzZZM5gax3tUgXy0cXxemphsyk2ERxBU++r8Iez
         1TkZMrAN+zGbsEtlJb1U/up214ZBsrZjB9DHBN0MpTrCjMm1IXZvSWxiQqNmJK5owVJ1
         03mA==
X-Forwarded-Encrypted: i=1; AJvYcCV2bYgfq5WxSfxxSe5CZaAzzSN9lr7CkVOlWCnQQ49azS1mZAkbiJoGv8S7Y0YpnHKOdbMYVM0xwdT8XifpVMCxcPd6rDjqi0Sucw==
X-Gm-Message-State: AOJu0Yy/4BNBMOa9v/0GKizC2NjYTeOld8fTL8jG+rI7CLkaS9zrpBdR
	dfsg6vTQldYwmBdJu3a9gN+SE3Jw9QJ1ca4wCjFlUBm8u+4zaAsEsNCv6KM9QDk=
X-Google-Smtp-Source: AGHT+IGy1s0ucjpyByrSHOHHyA1pEzL10c6+gVegGr5T3PUO2UsBwI+uY3a3LLOsvUPqIQlmjy9ePA==
X-Received: by 2002:a05:6402:363:b0:565:a54e:6c8f with SMTP id s3-20020a056402036300b00565a54e6c8fmr646776edw.38.1708764256774;
        Sat, 24 Feb 2024 00:44:16 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id ij13-20020a056402158d00b005617a858f21sm335906edb.93.2024.02.24.00.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 00:44:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: arm: syna: remove unstable remark
Date: Sat, 24 Feb 2024 09:44:14 +0100
Message-Id: <20240224084414.6264-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Marvell Berlin SoCs (later Syna) bindings were marked as
work-in-progress / unstable in 2015 in commit f07b4e49d27e ("Documentation:
bindings: berlin: consider our dt bindings as unstable").  Almost nine
years is enough, so drop the "unstable" remark and expect usual ABI
rules.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/syna.txt | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/syna.txt b/Documentation/devicetree/bindings/arm/syna.txt
index 851f48ead927..f53c430f648c 100644
--- a/Documentation/devicetree/bindings/arm/syna.txt
+++ b/Documentation/devicetree/bindings/arm/syna.txt
@@ -6,18 +6,6 @@ berlin SoCs are now Synaptics' SoCs now.
 
 ---------------------------------------------------------------
 
-Work in progress statement:
-
-Device tree files and bindings applying to Marvell Berlin SoCs and boards are
-considered "unstable". Any Marvell Berlin device tree binding may change at any
-time. Be sure to use a device tree binary and a kernel image generated from the
-same source tree.
-
-Please refer to Documentation/devicetree/bindings/ABI.rst for a definition of a
-stable binding/ABI.
-
----------------------------------------------------------------
-
 Boards with a SoC of the Marvell Berlin family, e.g. Armada 1500
 shall have the following properties:
 
-- 
2.34.1


