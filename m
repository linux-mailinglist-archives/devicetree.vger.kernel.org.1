Return-Path: <devicetree+bounces-101213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EE3970FD5
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 09:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C6CA1C20621
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 07:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8961B1422;
	Mon,  9 Sep 2024 07:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ftN7+ztR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55161B1417
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 07:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725866951; cv=none; b=L6rq4Fhsq/WRpTTpS4T8BUVYTdwgUQhzXTBvT3i/dY/yQc0OegSb8ECRVKvbgALIQ1vNtKYWInWgBQ8BShAwm2O0W5mJF61o7/SdFSF1dqJqap93fs+QbaFSqoIitJhR9mQxeDAZTdhNq/Q2JsDX1ijTFMvnJRBDP4Z30Qdnz/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725866951; c=relaxed/simple;
	bh=B4u0FoiKzS4geGQpljMFZtO6reAEyDwhU97YzqbrFGc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=s965+aHVjdFpSvVgJ0+8cBi1/SpOtZAMlwBI080GWHLGIPP6cKhz/9fUZdtdQ/+faXuj4L/Pjp2/zwVbs7YXmoJCKLZwScayCUgmzvirmFW6ndin+uSoK62eAUT2wY6qzAMz4Xsj+5Gr9Sf9tat11PW5W8R661haVUQrb3YbQiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ftN7+ztR; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-6e7b121be30so2567557a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 00:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725866949; x=1726471749; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DVFOmtfgNYZTMylGXkVJ1SESCtmEefxlCEbYo1wTLz0=;
        b=ftN7+ztRnDOVqwurDTTDg0762Qch+2ZG6myjYFRPPkswcTfcQp0075eIY/Z0D7AaxN
         KT0itXVUuvTI93hibvDQM2expsjkkSzVuFp7+2Fwt9Fu/TGi5URnCRP8kHLg9uWdyaLH
         ED80UjKLxK+XvTkb55SAEnQL5BwpklxArH93k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725866949; x=1726471749;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DVFOmtfgNYZTMylGXkVJ1SESCtmEefxlCEbYo1wTLz0=;
        b=Af6gxZyqQszIVrl8QrTAt+iRNbA9jdPoOiyLJZQ6KEfsIqOkAzrN8MuDH5c5ODNaGC
         8Rgs0SiQN3fSlwLxiMQOaKrlIvcqJnAdA+9V2u57eN59maYEzFPO//mkP8hd6P58e0eZ
         Z89g/RQL0wjoiAv6cOHOSta0bH1QIW4J+BxYuKh08gvkhyyGW7fE3Rg49ndSzOqMtpVQ
         Xcmoh6N8o1ZA5Oi2FqOadul2+T1JsqwviE7E4q7jZR0kqBYJSQNWCDDjWJTxnysyMdTO
         HtQjL6hT8MN09mCHhF2BXXGjRt7NQTAIik1/uJsvrIx0bOCkI2cp/xyMMzY0LsxVF8o4
         wBlQ==
X-Gm-Message-State: AOJu0YxbG2N//dgYgeYuRa8IEARsfoqjlwjhbmr3plwNALuoe1h8QbDz
	Iat6Iy8s2QXDruqaz1zKM2Rn/o3K4qJ2v9oI4PxV003wgq3kvJUBDPm4G6y8FTao9hsMo+9YxsV
	vgw==
X-Google-Smtp-Source: AGHT+IH5sLd+IkfBZnv7xdaGZ/tdqLmxM4M42CSvGfTJj9yeZEZWbHzCNvQ/4Occt7qYqQn7yQJusQ==
X-Received: by 2002:a17:90a:e651:b0:2d8:f99d:48d2 with SMTP id 98e67ed59e1d1-2dad50fcd09mr8435397a91.29.1725866948695;
        Mon, 09 Sep 2024 00:29:08 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db043c3c51sm3841065a91.21.2024.09.09.00.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 00:29:08 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH 0/4] arm64: dts: mt8183: Add i2c-scl-internal-delay-ns
Date: Mon, 09 Sep 2024 07:29:02 +0000
Message-Id: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL6j3mYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSwNL3UyjZN2U1JzESl2zFKCgpaFFaqpBmhJQfUFRalpmBdis6NjaWgD
 vuKmQWwAAAA==
X-Change-ID: 20240909-i2c-delay-6d202918ee0f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-7be4f

Add i2c-scl-internal-delay-ns for each device.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Daolong Zhu (4):
      arm64: dts: mt8183: fennel: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: burnet: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: cozmo: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: Damu: add i2c2's i2c-scl-internal-delay-ns

 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts  | 3 +++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts   | 2 ++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts    | 3 +++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 3 +++
 4 files changed, 11 insertions(+)
---
base-commit: ee9a43b7cfe2d8a3520335fea7d8ce71b8cabd9d
change-id: 20240909-i2c-delay-6d202918ee0f

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


