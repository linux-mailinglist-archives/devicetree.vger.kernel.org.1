Return-Path: <devicetree+bounces-180896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D331AC55E0
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 19:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F1241BA6A02
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 17:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE9127FD49;
	Tue, 27 May 2025 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PQ6LvW6j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551B727F16D
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 17:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748366123; cv=none; b=ltap1AqnL31QTAndJz33228sBvsohR1BZ6h1QxpNk3xTBRtFo0DskWUeKr5V3TwHIQp1d+tpMFt4bmba/e3/VUjw0tgWmW279Z4z92jVKsArtlf4Q/kLSiP3r1Dkc5sv+kkZDe2KZo2af8C2p91TVaoY8R6VeYWnALSg1KqCMU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748366123; c=relaxed/simple;
	bh=lo7q0vAjnRMqOT4+3JKAMcw3uToSM7aewQO5nGtZTVk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=td9vAJIwUpDg+XKbayVA2S4qizvziXExtYtapmgV6vxWMA3+4u/nPPnqj1bgc5EqrZiLdm4CdcEqYEG9PM4NwyU92mAoLUhg2/yl4JxtjtFNGosU+UN8jXli3VTNfqK79eig8/6JVIEnOjCIWw+ZewnFYvXOSDqoNxIEEbijlrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PQ6LvW6j; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a361b8a664so3724878f8f.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748366119; x=1748970919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MF27c9rRKSYoup9DCYicRvlKjG8K16l+EHL6jMeQHzM=;
        b=PQ6LvW6jFZcrnZiNV0/7Tx6rj0hUEG3gYcz4PUbKyVfgOqQI3zFCKfn4sdNy8Rhz6R
         X4WQT4D3hLeEq8b+lwJgqph4cw2H4PPVZT2W60K6w3f7oCVZF72BsCq99biiphG74wIX
         KnYWGb79EhPa3nSThDK1Gvl64IncI0/v4u7ZGEjm88AOc0rk9b6m1RUU5E6RcAf6B1gl
         ZPB4eWW0n4V4pWtAYoOTN1cCXM2ZvUhU7dLYJL7hvysk5SkM+OHTsJ9FVaaY6K5Zx5Kd
         c5muqO070k3hdjUCjV0HsyQ0Ot4r8y1djM0Vd1MB99XXda15fjLyvNzIeSfDQsr4Pceu
         Qkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748366119; x=1748970919;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MF27c9rRKSYoup9DCYicRvlKjG8K16l+EHL6jMeQHzM=;
        b=X5DkeemQ85svZWmSV9X8kyyKjdceP7dE56AvGuoyg2Tr52aBqtmSmz3wjmV4IQmqe8
         G1FHfPlwQiKinr6KwQEn676n4SJE/eBsHdeQRHiXtXO+4h6s2/RmGIQQhiGyvEzp/a/h
         v+Bv0bh8xwXbPGdICZYiflvprabtO8PMGwvo4wRjivobvCXucIq+NMh3WY0gEfwAD/Au
         4+ZNql/HTBr++qX53vT2A1/BYLPGJcAniyM89JENxtR1jZqzawat6J7L8qtGfrqJOM3t
         FeBHDSzUsuxDj5rYNq2bEgP4kHKvkTyIZ0rrBrpF2oFNuOrjJRLCA+vx5jn26lKBWJrr
         rrKg==
X-Forwarded-Encrypted: i=1; AJvYcCUUreX2esuX1Mh5O4BB3W3iBU8vOpA17Jb1JCRAvhUk1IUpOv7U9QeZyl+7d/DuCiUlrW1xs6BKMv8h@vger.kernel.org
X-Gm-Message-State: AOJu0YwAvfTLQfG+v7g/Nnhj8RvSfPqSPftABmSdo87UimnbXGtl6+ud
	Mc3Ek2FjVWcorpgPbwc6ER+E0310uYMfoIyuriwcsTj9mUkK93txjJUB16hTIagbzkU=
X-Gm-Gg: ASbGncvhmgdgfO2Lxc5/LMpOvSQ8VAXcA4fz9sQOXVk+IepApwjR/wEoLOu8rIovLmw
	btcXSHbbLPo1B5WRAos3czg0BHkUo4Y8h9E1bFjNXxmQ5alXDEt6dWIhWWdpS/pZyZ2m8pGNqLm
	LSuDNesf0nw3vqgvu+3X9YkQTjtbL6q/Wh3xwM2CdmjXFYaEZx19UO26H5fJi1lEou01WiVjoUd
	n1I96S9VBynOaEnN1ohV7MKUQRJeLFYQ6U386tqgiM+y6K5X+RBr+kZARhb9vNm2fEVR9grvvK9
	Ftg06O2DIfWRv6404oifbSrKn5m+l3t6ez+2sYhW8K0E7imseGzpoHzhcu06r3LRH5Pm50w5heD
	pmy284nkczYRLgWMgpg==
X-Google-Smtp-Source: AGHT+IFpTB7TNLh6pQDK/oXXCIK8emry0Gzw8WKuisddY7ds5DeVmLH7BHeY5kquTGkx95P40nkhsQ==
X-Received: by 2002:a05:6000:2586:b0:3a4:c6bc:df46 with SMTP id ffacd0b85a97d-3a4cb498f7cmr11355655f8f.49.1748366119417;
        Tue, 27 May 2025 10:15:19 -0700 (PDT)
Received: from localhost (p200300f65f13c80400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f13:c804::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a4e1fe9430sm2417186f8f.75.2025.05.27.10.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 10:15:18 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>
Cc: linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: timer: xlnx,xps-timer: Make PWM in example usable
Date: Tue, 27 May 2025 19:15:02 +0200
Message-ID: <20250527171504.346696-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1097; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=lo7q0vAjnRMqOT4+3JKAMcw3uToSM7aewQO5nGtZTVk=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBoNfMZAti7WzkSVbkgZKbDhL7HlMQghcuZss1Rk gySeAVOl3iJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaDXzGQAKCRCPgPtYfRL+ To7jB/9HOOPDuH+KcIJZ2UNKgt5nOFBdUE882ug7qeqFaYQHAAd7DWA/qoCuwxJSxu4Qs/bIoqg T/ujO/oyxurwcn/5j3bQSRkoUFPWcX+Bar7XfBaqpiiEltEuA2VZ4oxVr1VY0E1dtUwuJKHydZ3 bbTM7J2+tpB6fEB5yGrwy2LQAA2yKtTEo0wB27sMkWyYdhS1rI0Ib9qbWsZs+HDvbRSgloQbTL9 DobcZmP8ESede9SXcZpt1cqT/e4Hj4He5ryBrIfBX1oCVMGbIpL/hwuCo2oe528VL+VKtQ5n5vt ShYPRPSz94vrctseCcl2vQSxB6AjkN72G/kUKrCcV3hOpbwa
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

With #pwm-cells = <0> no usable reference to that PWM can be created.
Even though a xlnx,xps-timer device only provides a single PWM line, Linux
would fail to determine the right (pwmchip, pwmnumber) combination.

Fix the example to use the recommended value 3 for #pwm-cells.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml b/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
index b1597db04263..d36cbf0efbd6 100644
--- a/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml
@@ -82,7 +82,7 @@ examples:
     };
 
     timer@800f0000 {
-        #pwm-cells = <0>;
+        #pwm-cells = <3>;
         clock-names = "s_axi_aclk";
         clocks = <&zynqmp_clk 71>;
         compatible = "xlnx,xps-timer-1.00.a";

base-commit: 0ff41df1cb268fc69e703a08a57ee14ae967d0ca
-- 
2.47.2


