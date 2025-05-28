Return-Path: <devicetree+bounces-181188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7FCAC68D8
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 710683BBFD1
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E06E0284690;
	Wed, 28 May 2025 12:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=openpixelsystems-org.20230601.gappssmtp.com header.i=@openpixelsystems-org.20230601.gappssmtp.com header.b="TgOerzSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BCC284662
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434227; cv=none; b=MIeNJXXxrd4wPs6mUe7eTiMRgohithXhFkJJT3kW+6Qvt4jmz0pQ1DWTO884lZ5m+hb0RFSiZTow6/RVJhXMEWPlfuJkaOOCS/EWeGSpwCM/6vsUvJcHnz9CPiSUw5R07DgXibMBi8/wQ4w1fucByY7nuBgzIBrcMMKChqH7T4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434227; c=relaxed/simple;
	bh=bnWrEHjmKFYA8LT8CsaB58xc1RYelpnOS+RbLx5r16E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RX5fc72Y8hYDcvrsUk/Ygc73rbsYgbDXYw6e2c5dTAcSPNsEhboRVVMOtuVGQMKZrku39lXpzcFev/05KMdKLj/+kNs/RboUrIedGBexyekyajG/vMkKCqTCd//Am8kHZrC5sPGbkHaW+EbsksJ+5We/kc0SqpfpqYATf/rl7CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=openpixelsystems.org; spf=fail smtp.mailfrom=openpixelsystems.org; dkim=pass (2048-bit key) header.d=openpixelsystems-org.20230601.gappssmtp.com header.i=@openpixelsystems-org.20230601.gappssmtp.com header.b=TgOerzSx; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=openpixelsystems.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=openpixelsystems.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-442fda876a6so41442135e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openpixelsystems-org.20230601.gappssmtp.com; s=20230601; t=1748434222; x=1749039022; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K/Sru8uL3qj8FenGHJhSAB8NKjzdx19AaoWH6D6+0Gc=;
        b=TgOerzSxVCj3U4vBwlIaEENl3cddwWCA3JxRihb0dCn4t4dHJisTD6HWI6ciIduOS1
         jGUd2BCCDQEqR3+BdVgK72fmMdzfnYF7bj0MLZLlnRrFcmqvdART3EqMuIEiFGu5P6Dg
         O2NE5S3J1ciAQJ89dVFCUsnocv+0+lhXoTKlnGcAmS94l4gwVe/gpki9JkW5BNpR1KwX
         CwHlqUZ281qke5Ik4HBHeP1uPLVPRph7ymqXP2SwE3lQRts7H2SMXpHyxRbfVh6ycLWs
         Jzbilk5C/m1xeS+CD7/jYgerijwFfAoXE7hxPojJaz+K3Vq3tS8Y3/QmMsAm3ilqfGTi
         eCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434222; x=1749039022;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K/Sru8uL3qj8FenGHJhSAB8NKjzdx19AaoWH6D6+0Gc=;
        b=OQ8EcEgcPusPIeE8xPHt0yHXGuru/COo7Q1jOWIe3R8ECRakJqNiji9jpWPoXSOWQq
         xNy7rAq1E7+/oz265BH2kL6VbA8aN7xlZ6f1WrxlYz2Q4oC6DuSm6ZmOWijwNYtLfPtY
         FfoRiNyEebf9a7Cd4oKPM88y4LfkCAnpQ6u1QA07b36NvjeQ0pjz40MlPLdhZJoejULj
         Hz0wpq8vhHgeo4MiuaoWlljIaEzwnMa1Q/0kPP09+52DQEVTsqcHnBgnO6Q+GM6RaBC7
         YIgp+ZKGeStP/IEPORyHbs/IPzd9FnvkRfZ2Jq/+AlBiqRd7ig7z6dD2O3LbJYw57FfI
         ny7g==
X-Forwarded-Encrypted: i=1; AJvYcCVWvsHbDwoc/7R8BI1k4B8c7298bYy5s/kowTZrXUEbNcQpzof0FfjSzEeT49Sy+xpitGopXQP3KCkQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxuZ8w554tafQOmGXl/+ACE24p3Hs3DJ6HIkIwrjh6hBpziyoxY
	nbf3EbFxhufOwSufWuW82IVeM7ehHY3xJV2OnnhiIUyBC6UHRNXH2If9Vv7w9NCz/pNZUoon8PV
	2GxOIPBI=
X-Gm-Gg: ASbGncsOC6XEUJtmp4TxEOd0NOi6d2jQ+y43ffMIqiaUNxFRCvpxBglopsPw3X7mAb9
	dmaXu4WHWy6IxwW3MXtbqTpodHKhvbnjAkHVuujaGDHLH+0XhP0s47rlDz9asoWgJ9NnDVdwvJr
	QbIozhMzOG4PWOHl/RgXmnCc0BjNl8Tl1qpq+thkCewEdqoAcxtobJZHLHNmaWtBm/EVOWTtLyv
	l1u22ke+9CafS7QMKADjo8nZwan2FYA/z11uNUZwB71WPjcv/5TbJBpuZpijxp3nWjLnujbFuFw
	/MBFOKJt0ERzc25eq+7VsccS28s6D/UapcZ+GZXJcVDtIxuC9KPx9styF+MM2Vr5hg9IAOlEqOh
	vSFmf1jksyErVgJcYVaDjHYBOVXYYicmBM/1RAG0WMc7deUXeRmdqHA==
X-Google-Smtp-Source: AGHT+IGJdrXpE2HNtRnmNL6tYG8+KFfjDgcCbvJjR66+8XjZyuCeW244nwDx+6KAA5nIc7Zlr6Y51g==
X-Received: by 2002:a05:600c:a13:b0:43d:160:cd9e with SMTP id 5b1f17b1804b1-44c91fbb448mr163241105e9.17.1748434221918;
        Wed, 28 May 2025 05:10:21 -0700 (PDT)
Received: from [10.0.12.41] (253.124-78-194.adsl-static.isp.belgacom.be. [194.78.124.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45006499727sm19874145e9.3.2025.05.28.05.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:10:21 -0700 (PDT)
From: Bram Vlerick <bram.vlerick@openpixelsystems.org>
Subject: [PATCH 0/2] ASoC: tas571x: add support for tas5753
Date: Wed, 28 May 2025 14:10:07 +0200
Message-Id: <20250528-asoc-tas5753-support-v1-0-a50c3f6734ee@openpixelsystems.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB/9NmgC/x3MQQ5AMBBA0avIrE1SpSGuIhajBrPRpoNIxN01l
 m/x/wPKSVihLx5IfIlK2DOqsgC/0b4yypwN1lhnnO2QNHg8SF3ratQzxpAO7Ka2amYyTU0echo
 TL3L/22F83w9ssd0PZgAAAA==
X-Change-ID: 20250528-asoc-tas5753-support-8b714da043ac
To: Kevin Cernekee <cernekee@chromium.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Bram Vlerick <bram.vlerick@openpixelsystems.org>, peter@korsgaard.com
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=615;
 i=bram.vlerick@openpixelsystems.org; h=from:subject:message-id;
 bh=bnWrEHjmKFYA8LT8CsaB58xc1RYelpnOS+RbLx5r16E=;
 b=owEBbQKS/ZANAwAIAblauka9BQbwAcsmYgBoNv0s839Re0z7GaQKdGAbjKad/0vsuw+2/Rqym
 9NzhljG6EmJAjMEAAEIAB0WIQQO7PtG7b77XLxuay25WrpGvQUG8AUCaDb9LAAKCRC5WrpGvQUG
 8NCsD/wMpM07OPPP8KbFBVlRwIZSwItEg43SveGMTGXexG1kNOP0Kqnunz5gBTu9twvvbWeesqJ
 U521yb3lMmwtZcuWisjpc8HPrRHyrsJzzqC3kdsq5ZxyAsB8MBLQfixKR5Yz5J0sYZCyZvHFAO8
 0kx3MhsJdYUXf9ny3I2C9+hHWbyDKLZqD138tB2oBM30Zg9iKUruuXug2q0IGckHD2JqeLnVqvB
 N2j3TNI4mm5/+09WLMRK4oaQqEV2k0UA2Dh5Pcs9O61nmLwl4E56AHGEBHLAbVVMMHYCmL48T6c
 KYu4C1XADMKyddJqYbk4j0oV+vh3GNgszSApz4U0pwqt3B0USM9xX9ZvxuVgZSD7b9TTC342k6d
 igBl9RcBIf/+PvA9oicL6uDpeMkTJm6YMJxP9HhdYwDZtw87VqYvp9yspHEBBzr6Dvo2ntIJYa8
 hBYsliGQSps5O1We3vnBFYmKGkhZbDLE4OEfYD5aDKz+STAiRUXHscQDRIypes8toFat+XfejHg
 ZsOdTgRQu+R9wbGuplnz4j0VyVwW+vjmR6GwLBVd+wgIbp/iBhVXTG+EJlIs2jf9kIVW/6wqr+z
 KxK4CGduky2QE+OkiAMmlAgn2xqyIro6CQPm9HUI81nDDOxrB3UkTdcLBDPV686d/mUl3oq6IQP
 DRrRn2ogWJzABew==
X-Developer-Key: i=bram.vlerick@openpixelsystems.org; a=openpgp;
 fpr=0EECFB46EDBEFB5CBC6E6B2DB95ABA46BD0506F0

Add support for the ti,tas5753 to tas571x driver.

Signed-off-by: Bram Vlerick <bram.vlerick@openpixelsystems.org>
---
Bram Vlerick (2):
      ASoC: tas571x: add support for tas5753
      ASoC: dt-bindings: tas57xx: add tas5753 compatibility

 .../devicetree/bindings/sound/ti,tas57xx.yaml      |  2 +
 sound/soc/codecs/tas571x.c                         | 52 ++++++++++++++++++++++
 2 files changed, 54 insertions(+)
---
base-commit: 76f8d35964e4de1b464de22e4f3fdc14937ed854
change-id: 20250528-asoc-tas5753-support-8b714da043ac

Best regards,
-- 
Bram Vlerick <bram.vlerick@openpixelsystems.org>


