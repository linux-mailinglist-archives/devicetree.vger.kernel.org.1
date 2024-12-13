Return-Path: <devicetree+bounces-130514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C799F042D
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 06:27:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C28BD162792
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 05:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D295418873F;
	Fri, 13 Dec 2024 05:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="X+DmThaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA411684AC
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 05:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734067673; cv=none; b=rkLZG1lE2f4549Rznq4/iPSxBT+sh0KHaGNDuVxVlpUGvj9Y/4SMcSGnv8a7ObqN5pQ+lOizP3v2EFEkFZJBI5EhYkqdfNwhh8SE0RiQFIINJUyuXzXsDaF+9l8ryA15KDcYfLPWJ7vuX/CwvAI7WqDymD4H3YMZrZ0EeuZtU4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734067673; c=relaxed/simple;
	bh=PKpp1ScewKJPqehPv2yTI+ebSdDc3GG9Q5vvBr/q23Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Rjiq0Z2VnrZMoSmSIyx2JyapuQbB0IAPe0l0ptBpgqTCc47eBKJhY9nVE7PBQNxMjlOkvEDL9OenU+vpZiSP59gYSpesOovFOEs76Kn4gwm91LPuxpMVxwe2q7mr7BLUCJ0y4UAY9JrORGwhfBgj8ojH3VMXmS0Q7ffz4hp8Y2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=X+DmThaF; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7273967f2f0so1459301b3a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 21:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734067671; x=1734672471; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pHzjLDekd5mQV8SYfeuvwYKyGO1BHWQrWxmHdBR2+PM=;
        b=X+DmThaFfFm5NVSRQkSPpeP/IMg98w8+hEd2FNS4jb0GpZucY83quXNY+zJKKKXh+f
         vQEunykyg3lOYM01WeetEmioS0N3xeff3S5udYO2aBk3TfGaoyteO1MmJIZE5j7ejjvt
         VfGKWJGOBfcyI8jH+Vwt0s3KIzS2EaPj1EIm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734067671; x=1734672471;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pHzjLDekd5mQV8SYfeuvwYKyGO1BHWQrWxmHdBR2+PM=;
        b=hRsFVEyA0H8mxrh5ca2ie84t3HSElLHlW7TLvc3x18K+IMb2Q4znecyAUfb79M4rq0
         4a7DDjioQPqbQn/tlmTNdferNcDBxeFM8c0/hNVwPfrw1fVyWmanaucXJ46CLQzYpe9k
         rJvGUyDm+9ezLg10m1Xn7JaXf9FxKyc2QK2A0cM6iul/TVj8LxDSQqYPbSxQx3FX9zRJ
         A7GQmuLvgqVxEEFm7Z//T5F7C1/ZwpksyB5tSP0+bb07fdtcWwl4aDfKE8QyY+RSfhjh
         51k0GikhAVNzQVfKaIN8/WnwLTdIgXYeJMINXjv+H5Cvq1PFZYkBWEo5XtICiFUuGrVQ
         YETA==
X-Gm-Message-State: AOJu0YxoHrItu+kgvxTGJINv4bNVMMLFtWW+W+xA49ypdAgeLv+OeJk3
	bknvV5DIzawIf2J3FV1ppCDOb9+ERcNF6AjlseLIb1T6lBHpqUjZeSUfMgU9mA==
X-Gm-Gg: ASbGncte3ePxioR6D2TU56fSWxzYaEAGUgxp0EBzu2pWm3i1/ZS3DVDCqqLRs4JMsrX
	hk8us5xaVRFLFg/KPFzhCtUQdfbyJL6mrZUNEkolMBHzmNCqpmIS23q3ahHY3G6gMzErTEfg+Kc
	O28xL8S9pPD0SouxWS78l4Ji7b4fqnPm5ixoMqn/aLM976uRcVNR8gam6VdFypQ0MzjZaUufOX/
	LK/DOo7B24/o7MtBucxqm+z3ay+meEQhFRJj4MWZME4yAud4SJkFf3M5nMd7J88uUnm3VNjKtgN
	p71rfDgYebYfyXWypd0MthNUinzpqFJiw5M5gIMecpiGNjs=
X-Google-Smtp-Source: AGHT+IHB67SDjQZdu1KmnyQPCBhhCJuO+6RCt8yzJ21rj5AHz2vHeQnr45DTMywbF+2HqFLTeZ/Yjg==
X-Received: by 2002:a05:6a00:ccc:b0:727:3cd0:122f with SMTP id d2e1a72fcca58-7290c1456b3mr1782962b3a.9.1734067671614;
        Thu, 12 Dec 2024 21:27:51 -0800 (PST)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7263803a805sm7386830b3a.14.2024.12.12.21.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 21:27:51 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH v3 0/2] Adding second source touchscreen used by some
 mt8183 devices
Date: Fri, 13 Dec 2024 05:27:46 +0000
Message-Id: <20241213-touchscreen-v3-0-7c1f670913f9@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANLFW2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDIxNDI0Nj3ZL80uSM4uSi1NQ83bTkRJNEU6OktDRTCyWgjoKi1LTMCrBp0bG
 1tQA7gEEWXQAAAA==
X-Change-ID: 20241213-touchscreen-fca4a52bff58
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f


---
Changes in v3:
- Split from the v2 series
- Link to v2: https://lore.kernel.org/r/20241018-post-reset-v2-0-28d539d79e18@chromium.org
Changes in v2:
- Add second source touchscreen patches since they should based on the
  first patch of this series.
- Link to v1: https://lore.kernel.org/r/20241018-post-reset-v1-0-5aadb7550037@chromium.org

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>

---
Hsin-Te Yuan (2):
      arm64: dts: mediatek: mt8183: kenzo: Support second source touchscreen
      arm64: dts: mediatek: mt8183: willow: Support second source touchscreen

 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts      | 15 +++++++++++++++
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi    | 15 +++++++++++++++
 2 files changed, 30 insertions(+)
---
base-commit: eefa7a9c069908412f8f5d15833901d1b46ae1b2
change-id: 20241213-touchscreen-fca4a52bff58

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


