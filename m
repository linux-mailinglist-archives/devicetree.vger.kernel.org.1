Return-Path: <devicetree+bounces-122608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDE19D141D
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 16:13:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 086192823D1
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 15:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 692911AC45F;
	Mon, 18 Nov 2024 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="YfUeZ2P5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780F81AA1F1
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 15:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731942773; cv=none; b=HeD2P/VTsa/V0VI6hmefytSujEhtYRqz4vtmdgCzbZxYQ1VTiSkF0dNS3wRyD5BwpNJjcDhqbGv4MlWfxV79tS3n2XLJudyASFs/MmolFkdC/KV6I9eFX8cJb6a7pMURZwk+EFOtY1LKWT9cXUkwh0+cYsBZs/e0qEGCuGMEf0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731942773; c=relaxed/simple;
	bh=abhX0e8c7pOXK+VqgphQUVBQ5sBLa4mph2cyW0j392o=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=OqubEX1028I9ovxAB0PfcwxA3Pn0J/msgcO8BTRwd5UAVP9E2HwWOnrOXh68HCfjZVDP2UIOH7H6v2bmqopgU1Ya1FSAc220/Y4aMgdJuS6BID2t1DQnZi1iChKHpfaNqn37baWLbV6Bbbr6KGwjWDk0GMVxkm/jhphzt+xMQ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=YfUeZ2P5; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a9ec267b879so536926566b.2
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 07:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1731942770; x=1732547570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bv4wgISV7HkP4RZ5WKLIykwWASiXxKHjaIhIuwDJQRM=;
        b=YfUeZ2P5ucb1jQGZw2n1Js5S95flnPM3kKiwvB+5+1yaSafH2k3P9zB1LGroO/lHeR
         Cbd/12Ldkyp2k4+uExiHmxTkEtUqcA5iNRbBMPpe9BiMfUXw12Mce82EoviFao2/Gggj
         TS02UTglSBOiZnbIJwELiy4UGdcLIhNyFCVeb98Q41Q4hz4No0n+k6OU3/VHlEJICF2G
         GAA+wRX2f75e0YwOjKpN6ILTNYtSuCV9RxudEfVNZhuqQJGNoAzMm1vM0KfXVYfH/Ts5
         VN0TiKz9xdvCBct85PdWwbnKlWAg4lCj3QJtXSzjprpYYo/Xe1CyteZi0EtCrk0CdAP5
         xf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731942770; x=1732547570;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bv4wgISV7HkP4RZ5WKLIykwWASiXxKHjaIhIuwDJQRM=;
        b=eMC0WsbNm34CSYBA5pJZi3BIqskk0IiSkd2foQAhxLWGlLhrKuI6E0E5E6ZXUD4UK7
         pJM1Vdzij7UoFoBNbA43ecevpOSBU2LeckgyzXwze0AefbwpX3KFGPQfLY3JCLQGMYNn
         Q/oLictPyGm8Hw3/vZbUbjjPw+rMj1TJlRct0EjHFrgZyX/x4TvxYaSi8K5VYlcAdLt2
         4Z39zovA+PudCYXog1mj8oeNx/9pPZBhIEB05Aghv1ySd9V985CfZZV4qGouuDdcH0rd
         mGLRO9t8I+Q1VR9Sbjj8W5jLjlDTeeVg586lyfL6PzrOAVK5/NpjgPK6eFh9BIjslmAy
         UcQg==
X-Forwarded-Encrypted: i=1; AJvYcCW77XCei5JEvI0H3+0Dn4u0xUgX28DA2OxrFwfAb9hYbll9KPTlHaH3Sz2L/SNjmDwSVhBX5Cw0Nyct@vger.kernel.org
X-Gm-Message-State: AOJu0YwXWuHFE9v17yGc5h55q9Lu5gys1IlKDeh2unXuu/urfysua8np
	Bizh5UR3kjqizeDYuOw1Vh2O22LXbClOwPRqRi/WMTL0tsrV3BnPjBhXXwCWnJdD23gkNyQsYSb
	ilGS6ti/Pu7Ocrky5TlFZqKovjdcrQzsuLiWSX0rZ1xO0Jii1rppzzrkc+NbDgD6VQNHe8CSLOE
	wtgnO4ZQO7WtsfL636sQWWUfVT
X-Google-Smtp-Source: AGHT+IF6Rm8MuxsPIjT0zsN40PTQnBeCMXAycI3c/kSxHlnk0GoDUdvZkXlmrMv+2NqSQA5xVb14Pw==
X-Received: by 2002:a17:907:3f04:b0:a9e:e1a9:8ddf with SMTP id a640c23a62f3a-aa483476164mr1190902366b.29.1731942769788;
        Mon, 18 Nov 2024 07:12:49 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20dffd7e7sm548980366b.119.2024.11.18.07.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 07:12:48 -0800 (PST)
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH v8 0/3] Add LED1202 LED Controller
Date: Mon, 18 Nov 2024 15:12:40 +0000
Message-Id: <20241118151246.7471-1-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LED1202 is a 12-channel low quiescent current LED driver with:
  * Supply range from 2.6 V to 5 V
  * 20 mA current capability per channel
  * 1.8 V compatible I2C control interface
  * 8-bit analog dimming individual control
  * 12-bit local PWM resolution
  * 8 programmable patterns

Internal volatile memory allows the user to store up to 8 different patterns,
each pattern is a particular output configuration in terms of PWM
duty-cycle (on 4096 steps). Analog dimming (on 256 steps) is per channel but
common to all patterns. Each device tree LED node will have a corresponding
entry in /sys/class/leds with the label name. The brightness property
corresponds to the per channel analog dimming, while the patterns[1-8] to the
PWM dimming control.  

Vicentiu Galanopulo (3):
  Documentation:leds: Add leds-st1202.rst
  dt-bindings: leds: Add LED1202 LED Controller
  leds: Add LED1202 I2C driver

 .../devicetree/bindings/leds/st,led1202.yaml  | 132 +++++
 Documentation/leds/index.rst                  |   1 +
 Documentation/leds/leds-st1202.rst            |  36 ++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-st1202.c                    | 510 ++++++++++++++++++
 6 files changed, 691 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/st,led1202.yaml
 create mode 100644 Documentation/leds/leds-st1202.rst
 create mode 100644 drivers/leds/leds-st1202.c

--
Changes in v8:
  - Add change version history for patches

2.39.3 (Apple Git-145)


