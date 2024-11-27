Return-Path: <devicetree+bounces-124808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E7E9DA04F
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 02:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01F6D28458E
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 01:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3FE1CABF;
	Wed, 27 Nov 2024 01:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RcbI0xHT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D565C79CF
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 01:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732671253; cv=none; b=Eg0dpzt2LMdKVOoPG+wzCrJKL6RGfTA/f6JA7Q/oVipUNOKk22tkll4dcTyv4uj8DwHgrDifJ0xWMzOVhKLp/OgFqj+tDD0n/dRY0G7vvX7b0EUVg7PYdncFkhjcol+f8SXEMXqGsttt4fh6DAw0rBYhyNQIYwlusm2yK1JvPSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732671253; c=relaxed/simple;
	bh=8JJBrEd6fN6/kKlAPWr8eFZ7/5jVvHBCemvLOKwJAwk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tcTXVHKZmsv8L3btEaOGZBInh6Vksm6lLZcGstWOLmJdtujDJBG2rkGxjxyVfQBZ8hhNopzooz1PtIl9yoetYFlfNhsFO/cGf5V1tRb+i/lxBdBj59ZFP9McUV15Ws/v6mox3oSctWywLv1Df5dj1rhIaqfwZZtZGSpCFnACQbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RcbI0xHT; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43497839b80so27721965e9.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 17:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732671248; x=1733276048; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UXuWr9eO062TJa3ME/MG6XW57errlDbaeHl9Z4oOEPI=;
        b=RcbI0xHTn3OZso+h/bqya+Zo6iTvXBrxzBFTlK5av9vlqI6Yuh+iMXZlzeTqA33UE2
         XYV8rvj/fazMuAq2U8puqgfIpAnQgH0TAbnegb6aGbIRYucyvKaehQqWNt3LF2RKBl7s
         xRmvj9hADgR6tgMlTLF0yAOrpn8escYAbEnKsF+wAUFX+lx77OGclUD8q8p+TNp0/q8y
         MEiifxWyVx8jeSX66mLAHDzdr3wftijqRElBjR9ULd5BOoCWEWar2zrhyIOfmSdq3SEm
         hZs+oqmmTX3Xec4mlYbSjhLYTb5bcy3dhpwq1UPgADUS9RuVxmz2YOd5lSAi5lp10d7B
         SpQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732671248; x=1733276048;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UXuWr9eO062TJa3ME/MG6XW57errlDbaeHl9Z4oOEPI=;
        b=NGTlSi9ZLA6UnN6lgrVytRCp+x8V78RzsL1+RL++y/SXqtVd+bytpzrJi4MrHybf+0
         Nf63+mlwpCgi+RSEr9oxaknLHM6S7Dv8LCzo0Gc7pZfFPiiXTYxzXi3UWex834voB6aN
         I9DeLO3h6pXv5+WyE1QM2GiiKLdnrHLUPju5jvJbBA/yKHzr4cTAecRZ02IGI9vbRyRL
         xVyi8oteg+QYADStTZfiwDe6PsQXS16QFaLveG6fRB5XxuXLY/44H72Cb8Ap61XW9UzO
         OnyYX29GBN2m4bUPoR2oQBGta30KAdHxeQuSKFEEcGquHJ9K2A+EwBPLV92sIY6/N8km
         +QlA==
X-Forwarded-Encrypted: i=1; AJvYcCWNzVhY8/s6Z3XgW3VIdXrykF1OzbQ7B9PZExRoftCydqNpR1QbIr0gO72cm6CvYmtlzD1nCDiE+32j@vger.kernel.org
X-Gm-Message-State: AOJu0YyfE5vwhVFjKf0Zyz9FklPo8pTxKIv3kqVvBYrj7Q4V/AM0C8yT
	U5t6qS+mfAVNrIxpSInwEhmSgxxBrh/z54y4r2HojixvYTOOgxhYOhxyD9I/has=
X-Gm-Gg: ASbGncv9bKwePc+csvIWbYJlMYvStQ3yecm0d9ImL0HCLnPXU8FZ0V1Ro0Jrq+aNBBP
	agEPDOKGUd5DLgJuxWi6XVZrQgsmP5irabqVKZ7ivzyLsy8Ac9DG+qlgJ60tKOsQoSXbVHG/6WZ
	V2mPbrfQr40zMdYbqX270h3fggU+hsyQ7nkndiTWgFpQHC1p9jxZbU4xnN2WrhVzr7LwVpczr8W
	W6yEOVuQvXAblysYmQ26OmkJiK0RW00wOKUS4O/vakU7SNNQGkEsnQgGfc=
X-Google-Smtp-Source: AGHT+IHFiNM+t+/nj/Rt0Y5Nok+jV+HD2ouDuD19erJ1e1f4r0iLDq6Rf3CZXsY1AskVHryOTDIBVA==
X-Received: by 2002:a05:6000:2cc:b0:382:498a:9cf5 with SMTP id ffacd0b85a97d-385c6ebb6d9mr771073f8f.14.1732671248154;
        Tue, 26 Nov 2024 17:34:08 -0800 (PST)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc42b3sm14848641f8f.68.2024.11.26.17.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 17:34:07 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/3] media: venus: Provide support for selecting
 encoder/decoder from in-driver
Date: Wed, 27 Nov 2024 01:34:03 +0000
Message-Id: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v1-0-99c16f266b46@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAt3RmcC/x2NQQqDMBAAvyJ77oK7Udr0K6WHNK5xD0bZiC2If
 2/a4zAwc0ARUylwbw4w2bXokivQpYE4hZwEdagM3HJHxFecZdCAZQtJc0LukAi5R3s5nN4Yl3k
 NW9X2sxJc9N67W8sEtbiajPr53x7P8/wC0IYEIn0AAAA=
X-Change-ID: 20241127-media-staging-24-11-25-rb3-hw-compat-string-ea3c99938021
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com, 
 quic_dikshita@quicinc.com, konradybcio@kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

Various venus patches have been held up due to the misuse of DT to provide
a configuration input to venus as to which mode a given transcoder should
be in.

Link: https://lore.kernel.org/linux-arm-msm/436145fd-d65f-44ec-b950-c434775187ca@kernel.org
Link: https://lore.kernel.org/linux-media/ba40de82-b308-67b1-5751-bb2d95f2b8a5@linaro.org/

This series provides support for static configuration of venus from the resource
structure via:

1. Adding two strings to the resource structure.
   One string for the decoder one for the encoder.
2. The string for each SoC has been matched to the existing in the
   DT which currently specifies the mode as decoder or encoder.
3. New logic in the driver parses the DTB looking for the node name
   specified for the decoder and encoder .
4. If the DTB contains the node name, then no new node is added as
   we assume to be working with an "old" DTB.
5. If the DTB does not contain the specified decoder/encoder string
   then a new in-memory node is added which contains a compat string
   consistent with upstream compat strings used to currently select
   between the decoder and encoder respectively.
6. In this way new venus driver entries may be added which respect
   the requirement to move mode selection out of DTB and into driver.
7. Simple instances of decoder/encoder nodes in the yaml schema have been
   marked as deprecated.
8. Since the proposed scheme here always defers to what the DTB says that
   means it would be possible to remove decoder/encoder entries for the
   deprecated schema should we choose to do so at a later date but,
   that step is not taken in this series.
9. Some of the upstream encoder/decoder nodes for example sdm630/sdm660
   also contain clock and power-domain information and have not been
   updated with the static configuration data or had the schema amended to
   deprecate values. Because these nodes impart hardware specific
   information and are already upstream this series proposes to leave
   those as-is.

However if this scheme is adopted it should allow for addition of venus for
both qcs615[1] and sc8280xp[2].

Other SoCs such as sm8550, sm8650 and beyond are expected to be supported
by Iris.

The sm8350 and sm8280xp in the second series would then be able to excise
the offending compat = "video-encoder" | "video-decoder" in the schema and
DT.

I considered making this series an all singing all dancing method to select
between encoder and decoder for all SoCs but, the objective here is not to
add functionality but to provide support for configuration in-driver
consistent with current usage and to do so with a minimal code
intervention.

So far I've tested on RB3 by removing:

video-core0 {
	compatible = "venus-decoder";
};

video-core1 {
	compatible = "venus-encoder";
};

This works - the code adds the nodes into memory and the video
encoder/decoder logic in the plaform code runs.

Similarly if the nodes are left in-place then no new nodes are added by the
code in this series and still both encoder and decoder probe.

Thus proving the code works and will provide support for new platforms
while also leaving open the option of dropping nodes from upstream.

I've left the dropping step out for now, it can be implemented later.

[1] https://lore.kernel.org/linux-arm-msm/20241125-add-venus-for-qcs615-v3-0-5a376b97a68e@quicinc.com
[2] https://lore.kernel.org/linux-media/20230731-topic-8280_venus-v1-0-8c8bbe1983a5@linaro.org/

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (3):
      media: venus: Add support for static video encoder/decoder declarations
      media: venus: Populate video encoder/decoder nodename entries
      media: dt-bindings: qcom-venus: Deprecate video-decoder and video-encoder where applicable

 .../bindings/media/qcom,msm8916-venus.yaml         | 12 +---
 .../bindings/media/qcom,sc7180-venus.yaml          | 12 +---
 .../bindings/media/qcom,sc7280-venus.yaml          | 12 +---
 .../bindings/media/qcom,sdm845-venus-v2.yaml       | 12 +---
 .../bindings/media/qcom,sm8250-venus.yaml          | 12 +---
 drivers/media/platform/qcom/venus/core.c           | 67 ++++++++++++++++++++++
 drivers/media/platform/qcom/venus/core.h           |  2 +
 7 files changed, 79 insertions(+), 50 deletions(-)
---
base-commit: 72ad4ff638047bbbdf3232178fea4bec1f429319
change-id: 20241127-media-staging-24-11-25-rb3-hw-compat-string-ea3c99938021

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


