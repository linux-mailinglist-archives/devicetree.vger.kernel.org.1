Return-Path: <devicetree+bounces-11239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C267D4D89
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:19:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C84E28195F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B5B25108;
	Tue, 24 Oct 2023 10:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="fqQD3tpa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCB61FDF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 10:19:11 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C45BA
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 03:19:09 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6b7f0170d7bso4081609b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 03:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1698142749; x=1698747549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oqO6g6+dHIfm5WicwZoijQGJjSQbfYTG3kfOYZFggB8=;
        b=fqQD3tpamQ8xRx16KWqnyhhyesq7hJIuEAK0zDJnYwtVA2f5Ku8l8UB0/eBN31rlMM
         P2mlG/HptRsniSV/A9XDaWMoG7QsozsNO3R0YYiG3C/XTq2TCYwhVt9zWTBHcK7s+YJr
         Kbd3NaYuxFyDnO6oo8Q768vVvzwEVOcpimAxn0Aa5oxkUGmaz+LMYMLIiBRyufQw2Ndc
         xum7MwSsRFJAz1pv0QTx3OTft9FufjPtfzpmMwnsldB/v40z9JMXQzH5Xcn7ql96Bldq
         m/0kNVJF0ywVIY+5tXtGl3kOVVVSaa/U6zbIvPaFqsmPie62R/XngO8fVS+XHOYD+GbH
         puhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698142749; x=1698747549;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oqO6g6+dHIfm5WicwZoijQGJjSQbfYTG3kfOYZFggB8=;
        b=BnWz0FD5CxhhfOSaKKkYupIEykvujSQzYKpH8YU8Plz/X6NFKBiqBahOhY4+riBiL0
         emCNPetLJne5FytjuQeZNTXikRTtr4gqZNMzytOuJH3BP3WLO9Y41Idn0SBOi8EetZum
         1o2I2MStsOO5GqdshwlnUEri7azRHTx/VO5/Y7fDxOR1+/Lo/EBD3T+oQ8y8z6PFgXIF
         Bhz8+wqVmIPOIH+6W+CdwlV+xvndivlHUNcaJ+V/5pWTNU84DZD+D0EvaI4PLIhjLarL
         H3IeQtTc3fMZIkB+qTAKeJDzGcKBvOhTPHIIlzQxYwKZlvy0F9aDXHnclSrbWZbinfze
         5G1A==
X-Gm-Message-State: AOJu0YyhP/lDRyGGtUrxVf5QiuUWtxwpLrqs/jyxc/v9YWoUxsjI4orT
	BoJRMG9jDE83BIwdg7XCafu7Ww==
X-Google-Smtp-Source: AGHT+IF0r5iIQe3b6PKgM/nbB6MiSvY8q/dd3Mr2AyfJDcmwP7NF+cbaTDwX8FZQiIbRRRIVtwjwTw==
X-Received: by 2002:a05:6a20:96d5:b0:17e:4f56:f5be with SMTP id hq21-20020a056a2096d500b0017e4f56f5bemr1810110pzc.22.1698142749323;
        Tue, 24 Oct 2023 03:19:09 -0700 (PDT)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id u202-20020a6279d3000000b006b3dc56c944sm7708372pfc.133.2023.10.24.03.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 03:19:08 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de,
	emil.renner.berthing@canonical.com,
	vincent.chen@sifive.com
Cc: nylon.chen@sifive.com,
	greentime.hu@sifive.com,
	zong.li@sifive.com,
	nylon7717@gmail.com
Subject: [v5 0/2] Change PWM-controlled LED pin active mode and algorithm
Date: Tue, 24 Oct 2023 18:19:00 +0800
Message-ID: <20231024101902.6689-1-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the circuit diagram of User LEDs - RGB described in the
manual hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.pdf[1].

The behavior of PWM is acitve-high.

According to the descriptionof PWM for pwmcmp in SiFive FU740-C000 Manual[2].

The pwm algorithm is (PW) pulse active time  = (D) duty * (T) period.
The `frac` variable is pulse "inactive" time so we need to invert it.

So this patchset removes active-low in DTS and adds reverse logic to the driver.

Updated patches: 1
New patches: 1
Unchanged patches: 1

Links:
- [0]: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf
- [1]: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce76f4192_hifive-unmatched-schematics-v3.pdf
- [2]: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b16acba_fu740-c000-manual-v1p6.pdf

Changed in v5:
 - Add the updates to the PWM algorithm based on version 2 back in.
 - Replace div64_ul with DIV_ROUND_UP_ULL to correct the error in the period value of the idempotent test in pwm_apply_state_debug.

Changed in v4:
 - Remove previous updates to the PWM algorithm.

Changed in v3:
 - Convert the reference link to standard link.
 - Move the inverted function before taking the minimum value.
 - Change polarity check condition(high and low).
 - Pick the biggest period length possible that is not bigger than the requested period.

Changed in v2:
 - Convert the reference link to standard link.
 - Fix typo: s/sifive unmatched:/sifive: unmatched:/.
 - Remove active-low from hifive-unleashed-a00.dts.
 - Include this reference link in the dts and pwm commit messages.

Nylon Chen (2):
  riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's
    active-low properties
  pwm: sifive: change the PWM controlled LED algorithm

 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  8 ++++----
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 12 ++++--------
 drivers/pwm/pwm-sifive.c                            | 10 ++++++----
 3 files changed, 14 insertions(+), 16 deletions(-)

-- 
2.42.0


