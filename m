Return-Path: <devicetree+bounces-114130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4159A9E1B
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:14:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD0491C23577
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41BE7194C96;
	Tue, 22 Oct 2024 09:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zqbS24H8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620D6195F28
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729588494; cv=none; b=awv0FdzZE1eoNwahiF06P3ucUxIysPLRr7HXGKSncw6+YATuKdzLfVmlLO+oNXvHfKoIzqs6+3ntTCHIWKw+Le+rgdxazbK8O/V/olbxI79G2OcSMLYu3GKw6L/SPS9CUbNwSg/PNnhccBxkr4L+h9MNHJiZf3D/vJS51OagYJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729588494; c=relaxed/simple;
	bh=WK/0LdKFbPMfiz0jXghdmvctcvAjN/2uBQOa4CAPCn4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=to0jJnEWUuJCKQRZFdSEC1KH/nKRW9EvFAW0VaaJUaHnJdEF1iltRFR+RjFFJw94BaRDXhUG9ZRXA9nuwj0bayqpEjqczUrDG+OH1fdwwRoiQN79UxLHH4x9+aqv3ryOVDHA3jD5GPlo7V1JCcgl3KWFsnWd+KV1dJonx8HOCXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zqbS24H8; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43155abaf0bso53190905e9.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729588491; x=1730193291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u+Ce6P5RF48gD0XhfV+y0NeuodQPMoeEQKAr6HVeP34=;
        b=zqbS24H83j9zEzXd5OJK6ePFGz4bg/0rXq6e7SKJSbyUeEp4q3JO1snM3kl7qXflGA
         Kl7G06IMgVTWOlOgZQcAUe4jlsZRb3coYGhgnguQfaouEokEZqwADvg7KiWv/qmt4Wgb
         e9551L6wUjEPi1zXa2ucabPwX5AQxhL4JHCkYxeEePsebfu71+AXvfYIDBtYRFifQY2A
         UwIlpQDLSUpcCwEUI+OFPuYVx3eNaB7a1viPXD7B/OAuYvYQegowG8dfER+I7chQwACt
         CdbnE1ZegiIm3MjvECd+81oAblQ4jZxwfsw0Np6m6EK2oULk+7tHVOIvPoVigA58PnkH
         0cXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729588491; x=1730193291;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u+Ce6P5RF48gD0XhfV+y0NeuodQPMoeEQKAr6HVeP34=;
        b=wFspaFulNEAqbujqn54RbJapYBd2rK888XQapKvTavRjPnRc+7HdJ5cUgqJXQKbDUd
         eNkTKTbcdFGY8EtwXfp2+RWLrEw8yiMU6AaPxXQMmbhRedkTrIdYsgahXUIW1MRiAXvY
         iDTGwvZZ+fDlNG4ycMDFSHfYHUOq7UESxOMNyJmXu45F/mrXlJwjQYnR/HLkKZ7DfolD
         2iMVAEwX8Zzbs/KqfgZjQKAydKIIWb6wz91riTFE7rs4LfrmGYp49uZmzcuRijrspu6q
         QFkQTGKVeOvlkWs1azUC73BUE2nSa5VS+rGT37wL4llVLzcItpoZLZft8a4gd1uS/jwS
         2w2g==
X-Gm-Message-State: AOJu0YxtYsvqMQ4ZF5o30BNVkcYkKip9VXVVE7sB+OxfwjSszlR5Kx0t
	yp8p24dYPqDmLKtkPs/wRSiBjdhe5JAT9RIc9osu0WhpXtQjfqmjSwq+yow8qnw=
X-Google-Smtp-Source: AGHT+IGSZ7hXuOPiBnKJ80f3kh4bwm35T7Mh6wQsjbYYod2Um2bK+tnJ8Ws++vN/tExtuJyxDde5xA==
X-Received: by 2002:a05:600c:3b9b:b0:426:6edf:6597 with SMTP id 5b1f17b1804b1-4316166935bmr97924455e9.19.1729588490663;
        Tue, 22 Oct 2024 02:14:50 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f57ff39sm83236635e9.19.2024.10.22.02.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 02:14:50 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	Guo Ren <guoren@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: dts: Replace deprecated snps,nr-gpios property for snps,dw-apb-gpio-port devices
Date: Tue, 22 Oct 2024 11:14:30 +0200
Message-ID: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1680; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=WK/0LdKFbPMfiz0jXghdmvctcvAjN/2uBQOa4CAPCn4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnF2z9UjIq/g+EG2cheX43I7fYIirHGaIyMcSL6 GvcEIby3WCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxds/QAKCRCPgPtYfRL+ TjYSB/9yX4xh/UisMykfoqvoPvjxs3/A5iGBDtToBjltzaBMnkWnkGw7wU2wMUs8ztcHjVB8xI1 XG2pszGgHqNo+yI+kFhs7kys01sYq/VyDcqi/xWNVGiFvVn3A2iq0Vq2ErMDap7c+QLonquMUmf W23/iH8F9wvGHW3F1i61sawW9cReeFQz+A7v+k0nFBz5N9o63o9phO8hokLniuDeQul/0dsuWL0 gOXyHro/w0hyh/JgQLeXCLenXoZYIepGQcn2jvu9mRUFidKIkkjlsFAyVdIsaH5/w7r9wCBKYGE /CH4AaSfUsrdZaBufXFOX2qdtyeQHXLgP48YwrH3SQ4luOkq
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
("dt-bindings: gpio: dwapb: Add ngpios property support"). The
respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
Add ngpios DT-property support") which is included in Linux v5.10-rc1.

This change was created using

	git grep -l snps,nr-gpios arch/riscv/boot/dts | xargs perl -p -i -e 's/\bsnps,nr-gpios\b/ngpios/

.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/riscv/boot/dts/sophgo/sg2042.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
index 4e5fa6591623..e62ac51ac55a 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
@@ -112,7 +112,7 @@ port0a: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <32>;
+				ngpios = <32>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -134,7 +134,7 @@ port1a: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <32>;
+				ngpios = <32>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -156,7 +156,7 @@ port2a: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <32>;
+				ngpios = <32>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;

base-commit: 7436324ebd147598f940dde1335b7979dbccc339
-- 
2.45.2


