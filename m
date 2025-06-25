Return-Path: <devicetree+bounces-189713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECC0AE92F6
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 01:50:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 962735A6725
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 23:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A132D3EC7;
	Wed, 25 Jun 2025 23:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yhv7BtNq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB64287275
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 23:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750895443; cv=none; b=L+f55wxxVXBuMm1VQrxl2+CXZrw3ehewDG9J/zOAnP7ZlJsHwJrGJrppIkNd0XpmtT+uHRetbJ3ABT647FOqm4kZYpVANA9TkrxduaAM8w7j0Y1cVnaPPlVc9WF4AUxUOT6L2+PdxAuuh9l5ouTzCXo4IolEJGGvdmyvssvjai0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750895443; c=relaxed/simple;
	bh=yys+Y7kH+kxLmahkOFj8+wmPki8hhBTm+J6+LUsRF8U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gvad2ZNQkBKt7lcYrcs8ccHuv44GxVXVb76WSWbb71+G+91BEfcgbC1cq/6TndxH5kUVkLF2B8m7rgkYqzaj+IsmZVKcWi44YF8OHu+69DN6/yKH2AcAIm7CYfbz7aw4h3WyieOLxi4l/i7AwLcbSr3G3KV6mfvfGWJGaobdLmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yhv7BtNq; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a4e742dc97so1049734f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 16:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750895439; x=1751500239; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sVbzmXkQ+ioipLbjuwvN0ILc+ibg7MYD7cUDUXAebNM=;
        b=yhv7BtNqbpyavOIBpqsRlzQa6f64l3Dn1m6lbrAycpE3Ub1fbUExC5KnmvzjENAR70
         uoiyE5F9fBmFkzJkUfN3t+SRpsJ9PDU/1JM3wdTjtcVLLyhp2/Hu/10JxN6iM5kF370m
         lMf44EkTewORRBo9eUF+4iJQfWD1Z8CDfLAjDqRT8/BxvoBR4L4+NuhSQLg0bkgECck4
         Hb0B/wjqGqdImfIJJk+qZ1ayLKuojIGWcjYYVtk9IxKV3RndExzAVsuoBepvQGafQGvT
         N8oGWV84BMxO5ZFrlYmyRECJEHbtO5mJ83ksJT8oWpomHqBbR0ipWLBnpEJ1OJaiUHCe
         xOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750895439; x=1751500239;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sVbzmXkQ+ioipLbjuwvN0ILc+ibg7MYD7cUDUXAebNM=;
        b=OKqTjNAc2momAkKvqH3Wz6z5B7oVKlaI+Pbx2RSv2IomnBLkD1nEWq+Yqnig5kHUZe
         c40lamixlD6QrNkHHwdNlssEzLVajUru4I1wHukoAEoyQthIQRipfKNR6TWZ82B1JVwp
         uBEUIEe1f4Aj7n71TxEhIQNM5RnnpLklqrX2PEQFevGhyOKDisEVKwhaodUZGwuqNkIb
         xt2vzBbs8vIhenDFZd/w39A0sbPcDhVdyE6JhlIkfaEq5U1PBHjpkqN/KZNy978hLsgL
         lACIPchK2Une3eTYm1EwcK22qQkIIeM6ScHhXaFmPSvUQu0z5deLsTOxLpRc3l1rz7AP
         OjGw==
X-Forwarded-Encrypted: i=1; AJvYcCUi3IlVmyGO6y85zPsziLDDSQAUZxhtj6d7YDRK3o9uTe96/TC2Ptz/A7rl+SiO9Vma4RykWOC6qYi7@vger.kernel.org
X-Gm-Message-State: AOJu0YygKvePWPuHbSqzY9HTeSPCcsHAdyrBVZAdGwlw1ix0h62SQRhu
	DswIoS7u2gW8ElTMRnllvMu+lU9XGrcKJeFVeMiNQS6gVeHDWBXAqWl/nnAxfUE4LB0=
X-Gm-Gg: ASbGnct3Qdjzjw8zD+aMkwP5Ch4fcisk7jdiKEvHAZ0VW2zFn+YdGP0Y2oVH8iDjoSx
	PR0/dS5vKY3WPlGVTAdwX+cC6fqs9UxOym2QECeOxzvOQCLmZudNbxjLwTI2RREDfhqCNIHNd5f
	xTX6SjHlal/YNKgwc8YkDjlBfzQ+GUYDHNdvsZkQZlGBjuuSeFhpqCxdnURQrBXh+6v1Hu9zvm1
	v05AfoLgKNU7j6rOFkZb11UIZRFs2zLG2NPTsM9tsE8D02G7de0sm9mc74n26PX+HH/xNKMpOUK
	kcF7wp8GRLNyHIIFTxgjYsuzlvYQYtPbEq1veWFsg0C+GAQurHO3B+W+305Y/0kaT/+QYw==
X-Google-Smtp-Source: AGHT+IHiNkMf63E27GyHyQ9CDnHOV87nvjoonLrt5SqyVkwL3YcXeaYC1SQaCHL9+wqWnnxtVniKgg==
X-Received: by 2002:a05:6000:400d:b0:3a4:dfbe:2b14 with SMTP id ffacd0b85a97d-3a6f311aab6mr1095295f8f.16.1750895439285;
        Wed, 25 Jun 2025 16:50:39 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7213:c700:1417:1313:3884:915e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e805dc32sm5636300f8f.29.2025.06.25.16.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 16:50:37 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Subject: [PATCH 0/3] Add PM4125 audio codec driver
Date: Thu, 26 Jun 2025 00:50:28 +0100
Message-Id: <20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAESLXGgC/x3MQQqEMAxA0atI1lNI46jgVWQoJcmMWWilRRHEu
 1tm+Rb/X1A0mxYYmwuyHlYsrRX+1QDPcf2pM6kGQuqwp95ty9tTF+IulgInUQ6Hd0gch9giijD
 Udsv6tfP/nT73/QBuaNTdZwAAAA==
X-Change-ID: 20250626-pm4125_audio_codec_v1-02ca7a300ddc
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

PMICs like PM4125 have in-built audio codec IC. The series here
adds support for this codec driver: DT bindings and codec driver
itself that consists mainly of two parts: soundwire devices and
codec part itself.

This audio codec can be found on platforms like QCM2290 and
on Qualcomm QRB2210 RB1 board.

We are working on this together with Srini
(srinivas.kandagatla@oss.qualcomm.com or srini@kernel.org)
so this is shared here as minimal working driver and more commits on
top of this are expected that will add and extend functionality.

Currently with this set the playback via line out or headset work.

This driver also has a bit limited support for concurrent playback,
since line out path is connected to left input channel.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
Alexey Klimov (3):
      dt-bindings: sound: add bindings for pm4125 audio codec
      dt-bindings: mfd: qcom,spmi-pmic: add pm4125 audio codec
      ASoC: codecs: add new pm4125 audio codec driver

 .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |    4 +-
 .../bindings/sound/qcom,pm4125-codec.yaml          |  147 ++
 .../devicetree/bindings/sound/qcom,pm4125-sdw.yaml |   86 +
 sound/soc/codecs/Kconfig                           |   19 +
 sound/soc/codecs/Makefile                          |    8 +
 sound/soc/codecs/pm4125-sdw.c                      |  485 +++++
 sound/soc/codecs/pm4125.c                          | 1848 ++++++++++++++++++++
 sound/soc/codecs/pm4125.h                          |  375 ++++
 8 files changed, 2971 insertions(+), 1 deletion(-)
---
base-commit: 2ae2aaafb21454f4781c30734959cf223ab486ef
change-id: 20250626-pm4125_audio_codec_v1-02ca7a300ddc

Best regards,
-- 
Alexey Klimov <alexey.klimov@linaro.org>


