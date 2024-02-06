Return-Path: <devicetree+bounces-39026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 708D584B2DA
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC183B2392D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C143C1EA7A;
	Tue,  6 Feb 2024 10:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="TqyPjeFP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE2A1EA72
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707216914; cv=none; b=b3/S3dLhsPe3454ECRFm/w6ogGEx+lNPNdud2PvHtRfYyh1DX+tIe9dntdOOHIFZLsPpSmYlXtu1WCW7bTfWjr9jnOvP/nqhMlNSjFhvrPacvRt82CBDAt7o9dYQ/rBjv8kY+JWVkbzk5OUxusSbqCyNHRpgm8BfjyAK3BF3Yhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707216914; c=relaxed/simple;
	bh=aU3cUFcF/+qA6c/U4GCnJpmTtXdJ/4c+yLFoO5y/rN4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gsOmdgJ57E8Y55KSBtojFHr8IMUyWRyFGIzF9s6eJ7eTVgVm0ur0iz+Sd9XVzyXVVxVl0F6V7wWTFn7Wjs0++6nKURNdGtl0McA9QwklsXXA2sDQS2IoJCKcMIt1mRCjKt2QSTNA8+HpjD62pvNHjGFiaBJ+UG5l14BKKBa0lII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=TqyPjeFP; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5600d950442so855402a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 02:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1707216911; x=1707821711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ug0YsfnX3VGECMAmiImMvOD5o629AgP4WulAYnK+czY=;
        b=TqyPjeFPyjiJgrgot2/qkkLFNMdlnE76uHPT0KybbI8IhdWtk+Px+0hXZ5X01csVV2
         rscahdAa9VZmeWoPmWXx0i3KTXcmYJfUubxXgjkDWiZ2k9KMh1Vo6EokU0G7GLBvYy5X
         +vpglFZQsaM5hvo+5x0MM1h+wzU4lLlm6bAJRq/mbvn/rQjRODgDyrABZpvSLpU7JmUM
         hX6jtOSoJOgaWRlFyhMQyvqC3kGc1v6aPFh3FKB4po2t8sl71QQ2FkL8FqKhyBVM356u
         gK+btpk7JIxu7RRmr2hafGeFge9L0qc4jUu9RxTPvVjGQK8OCBzSs7XVdNZGetYd0qBt
         IVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707216911; x=1707821711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ug0YsfnX3VGECMAmiImMvOD5o629AgP4WulAYnK+czY=;
        b=jq/hjpYmT1gUqlxyA/3G/IOvicT9Vmz0T1RMGweru2xXLursPsj0UY+UASVyOxObdQ
         PigVTyn9btqab9y4jaZ98bIFwgATyyraSvwT71C31/36w6YFimoiWnFxg/iGd2vh3JZ+
         PATOFneWkWFLRh81QK95bRfc8imA0rfTkw6vdHXiv1M3ECUsvs/KKJOQv9Q3/3ger0/t
         OFtJRDblJKcAuftsKkMscXX2u9clsUaD7k5SLGiS/NJ6MJKPxWObDXZy10YgSP2RIIhM
         r0gGerA+XAFSxoshYa2yHQ6DEm8ZnYaCN0sEQCS1I1Q7phsXg2EjrOh7MoDvy202mYme
         PsnA==
X-Gm-Message-State: AOJu0Yw8djnx70niMHdMcWfvivNgKoKolTbGlcScWfa+5sbjxN2KtGgL
	DYfxFZcCHpLR/VzxHvljG0MR97bD7SZTCA8wvFY7CC1tzaEhV+n1DcrtPdqBtr4=
X-Google-Smtp-Source: AGHT+IFjAK6xGybwYfWgmNQTCA1Ip56LWjbj6wr4mOaUdW+/3YHGkzhQ1x0ynFDGZRJfEJqJRZZcBA==
X-Received: by 2002:a17:906:5651:b0:a37:e3ea:634a with SMTP id v17-20020a170906565100b00a37e3ea634amr1768503ejr.40.1707216910887;
        Tue, 06 Feb 2024 02:55:10 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWErRgo/bZa592qqqOQWx3DByL19PW/1WplR9Kb6WY/ShnP7PQtWeobq4ljTtn1zYNA9F8Xx1wzOX8yvF9afGtqb9GmOwv9UsMbaKxO9DqObd+zVgNcJBAqaHRhu97I5ez56/7Z9j+YrrUN+THTfYIyh5UpQ4rwIufEnezplXsEeIbiVB8rASb+2szZDkUCSOFcqzKDATRNloDRhA+TQyqZ3dYxHrA5ccvKifft2+WOV/1FXheds/hE1orzKaWdifAz1Z6X76gTAQA6NDDMuLjQFupRjNbB63rhOJjNRv8aUPeK5wMv/rb/+sqHTyopwIWB5K1MSzBMGHlFoDUGoj9k5QTq/mzVqTI2yGb+nNR78w==
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id un2-20020a170907cb8200b00a30cd599285sm993438ejc.223.2024.02.06.02.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 02:55:10 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Peter Rosin <peda@axentia.se>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] dt-bindings: iio: afe: voltage-divider: Add io-channel-cells
Date: Tue,  6 Feb 2024 16:25:01 +0530
Message-ID: <20240206105502.648255-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the voltage divider to both receive and provide measurement
services by adding #io-channel-cells.

This is especially valuable in scenarios where an ADC has an analog
frontend, like a voltage divider, and obtaining its raw value isn't
interesting. It is desired to get the real voltage before the voltage
divider.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../devicetree/bindings/iio/afe/voltage-divider.yaml  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
index dddf97b50549..fd3c511e1beb 100644
--- a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
+++ b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
@@ -39,6 +39,17 @@ properties:
     description: |
       Channel node of a voltage io-channel.
 
+  '#io-channel-cells':
+    description:
+      In addition to consuming the measurement services of a voltage
+      output channel, the voltage divider can act as a provider of
+      measurement services to other devices. This is particularly
+      useful in scenarios wherein an ADC has an analog frontend,
+      such as a voltage divider, and then consuming its raw value
+      isn't interesting. It is desired to get the real voltage
+      before the voltage divider.
+    const: 1
+
   output-ohms:
     description:
       Resistance Rout over which the output voltage is measured. See full-ohms.

base-commit: 99bd3cb0d12e85d5114425353552121ec8f93adc
-- 
2.42.0


