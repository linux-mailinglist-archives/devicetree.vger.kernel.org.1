Return-Path: <devicetree+bounces-105670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 645449876CB
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 17:46:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86AC01C21927
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E38156669;
	Thu, 26 Sep 2024 15:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J67VL/6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E834C7E
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 15:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727365606; cv=none; b=ZtmsAN2P5i5C5C2t56/LClx0jZir4zxzq/6s0xdqxBQSyIR7uu6kWDw05iPFwQD2lVhJ0HOwk57iquYfvYjkL1fN/S4l48ly+RN5y024gDuIC0/jILFwKQd86Q4K7eBDGoVZQpl6q0rD3PklL3vl9ooB6p6drLdGQuWQDqM8SWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727365606; c=relaxed/simple;
	bh=SuHI94/NJuRKFCunzRbAg6UvpyQ5uCb4T3j4SVdB1nQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=D3tYy2yyju8amacTj+dK8qRPSK0KBniu9plMzNe/tbG5n6PxIfm0Ths9Y6TYW9WO+LzZhIUtD//ol5uicd6AAHJcC7cVW5xyKjuqEECayn+0t5bRqAhPPLrOrO/3qgq88OQOkJDqhLcv1EUytEQxk9zAJDReZ4tvaCIdCCQ6g3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J67VL/6n; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f75c6ed428so13050371fa.0
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 08:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727365603; x=1727970403; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SLuFDJ+OJh2cs6DQqYJ4Myy9hkcubhtgAstbmRPjdOo=;
        b=J67VL/6ntJvs2a+41QrFjwUCaHax3mGHvYqJwJydQ9acz7ysBStE3AnzjWIaWSWkHr
         F9bdieefNNhsOXm5lVR6uRqPOPpnUoUVHd7ZVpUkprg3QEGuEHLKr0k6ZFzk+oYpi+1+
         ZQTxUW9ahhVQjD4YhswkorssnftkWcRA4Vo0nab/pKTVQyPOpmDB7OVY5RWh8Zn/TAxj
         dm+ItQfmeQvQc8gn13fQlGwOpWdUKoeJqHXYRHMmV/HUhSqBsBQ3LAlBwtxrZ2RijBhu
         geNcLPSvKb1ZGO7pESwsWlmuZssux+qiChOQEV5c+3VFuZrCL+TQ3PJPAlfyTzRPpKzM
         IpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727365603; x=1727970403;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SLuFDJ+OJh2cs6DQqYJ4Myy9hkcubhtgAstbmRPjdOo=;
        b=LESv5KEGhxEqD4TgSJHrPo70g74Ec8+YOahfNgN6r92J2Nxvzn7+TQdENrp3ut5V2V
         PEjHoJcz2nNS3KOyp+40BgsuuW/oAIKE9MwozzfzjJGDEGTlhwFrstHWWMZu9atpARF6
         OM6/XNGpNKOJUAox6OTh2MijEIXOwM8Et+PimmOCTgr1wYxZXyhJgUbuWVhZwAi1VXW5
         OXm7xJYJ1uKCP1hp9M9X1eI3coR51pLS7hJykUnMmTpTezSHr/x9zzhRwXm7ge84Uaq7
         BbV1EmOi8dIO3+YaMkea6jFryi8tBMieCc17STSn3ErMTuB0IaxR0HY4DkIXyKv5UXt+
         ZT+g==
X-Forwarded-Encrypted: i=1; AJvYcCV8fTECOhiq+PqEssA9p4C7jxQSL1CcXwJ/3595ewahjnaYp/+z8aSDnPzeOVSs0NdAuNeCKDdlCVND@vger.kernel.org
X-Gm-Message-State: AOJu0Yz64DLuCcjkRvZAH5uBLYs/AHgVFIsG9eWOhAHsB3kEA8ojFOpF
	cKpaCKx5AR3LglUJOay9GKc+o6x3uIXa4ZnELI4fHjpPaK9UDtSgzYHIde+E5Lk=
X-Google-Smtp-Source: AGHT+IH3ucAQlIkL4Yfv7P8gDAIdffffiN8uilUFYJ1cSSVcwOP1JZLskf0ivdeCi+lEu2kGOIIm+Q==
X-Received: by 2002:a05:651c:b12:b0:2f7:90b9:7534 with SMTP id 38308e7fff4ca-2f9d3e479aemr922871fa.11.1727365603023;
        Thu, 26 Sep 2024 08:46:43 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c882405166sm75744a12.9.2024.09.26.08.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 08:46:42 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/4] ov08x40: Enable use of ov08x40 on Qualcomm X1E80100
 CRD
Date: Thu, 26 Sep 2024 16:46:36 +0100
Message-Id: <20240926-b4-master-24-11-25-ov08x40-v1-0-e4d5fbd3b58a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANyB9WYC/x3MSwqEMAwA0KtI1hNoQ6yOVxlcRI2ahR9aEUG8+
 xSXb/NuSBpNEzTFDVFPS7atGf5TQD/LOinakA3kiN2XAnaMi6RDIxKj90glbqerL3bYh5GrSkS
 CMORgjzra9ea/9nn+W/zqoGwAAAA=
X-Change-ID: 20240926-b4-master-24-11-25-ov08x40-c6f477aaa6a4
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1576;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=SuHI94/NJuRKFCunzRbAg6UvpyQ5uCb4T3j4SVdB1nQ=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBm9YHgAIZlJYGVPLuMr80jeHY/pnREkUHMuDyZO
 SwuXxIrvmCJAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCZvWB4AAKCRAicTuzoY3I
 Om5bD/9LR8ePOIbXN45DmQCg1+WdeWDs1nItKFUq6V/shmQbqBlhuQqzlq19WdGxWomeuQ7fx+r
 RCPaSy2lTmGj47biItBF6Gi/48RcOGFpk6OIEGJmqgxmfr0yj9D+mYpiWS2el3b0kvCmSHSjPZk
 6u3PtPLeqGToobWWplsemgF6w0jjoQea5l55rP8kqmPvXIZkubtJayRrsxAhMlZD835ffGwL7hO
 /2ZJ/rFhPZoc+nwrrpOTxQ8ngGVP36zzqfSGoUGOGDuAwxhE9YxOlpc27HywtDgw8VqI/DyY3wz
 tezMgR9zEDi0pTncDuOeIlKYragCaIqKb3QVO4CsYPf48byytJHBun87+Qs0bqgAfxN4xnSQe3y
 L478K8d/+Gr60SCyJHghrnF9rja97H0pj8JWzak7owqmBjYIkrr7dSTSuhigxnerx3cr7qD6wPD
 NQJtuNNxHEfrLqTDA9q3c/DRee3Tm3GauEVWbqZu9ByiLKUrV5wGejc8ub/cuZfjt/BQNJbX5M0
 QBuckkSdoAZZNgxJInR/vyYbnSd+uTNEiviv0DnZ50p0o1LHXNXdBfZP/lPFpDa0CAIlK4WrnoR
 BF3kHJa5gYAGUAhXVp1nQCQm71sxPnztcqSaIZ4dCpp/VObox+rRSjc0JMDnxKfcNtEk9EScW5R
 rXBNdoJTPVuK+Uw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A

This series brings fixes and updates to ov08x40 which allows for use of
this sensor on the Qualcomm x1e80100 CRD but also on any other dts based
system.

Firstly there's a fix for the pseudo burst mode code that was added in
8f667d202384 ("media: ov08x40: Reduce start streaming time"). Not every I2C
controller can handle an arbitrary sized write, this is the case on
Qualcomm CAMSS/CCI I2C sensor interfaces which limit the transaction size
and communicate this limit via I2C quirks. A simple fix to optionally break
up the large submitted burst into chunks not exceeding adapter->quirk size
fixes.

Secondly then is addition of a yaml description for the ov08x40 and
extension of the driver to support OF probe and powering on of the power
rails from the driver instead of from ACPI.

Once done the sensor works without further modification on the Qualcomm
x1e80100 CRD.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (4):
      media: ov08x40: Fix burst write sequence
      media: dt-bindings: Add OmniVision OV08X40
      media: ov08x40: Rename ext_clk to xvclk
      media: ov08x40: Add OF probe support

 .../bindings/media/i2c/ovti,ov08x40.yaml           | 130 ++++++++++++++++
 drivers/media/i2c/ov08x40.c                        | 172 ++++++++++++++++++---
 2 files changed, 283 insertions(+), 19 deletions(-)
---
base-commit: 2b7275670032a98cba266bd1b8905f755b3e650f
change-id: 20240926-b4-master-24-11-25-ov08x40-c6f477aaa6a4

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


