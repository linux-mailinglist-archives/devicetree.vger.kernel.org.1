Return-Path: <devicetree+bounces-204747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DFCB269A0
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:39:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 093C13AD071
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 14:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33151DE2BF;
	Thu, 14 Aug 2025 14:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bFLcses0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5239F1AF4D5
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755181915; cv=none; b=bTed5jsU0bl1y+PcJLAmBY1jYrH0J33Ge91uB2Zq7q11MF40MsvX7NObtoLd3VYtgfHQR0YxCZHqMKvuCucOsxXtEkYI+IV3QhSZc0F0Bkyl10Jar55dsh9vSyWizGhFcWGX8rmofVzEZpAix8Et8XLaFa0iogJS11qujhpVHKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755181915; c=relaxed/simple;
	bh=2wAPPbqLo2LqU/nTBFwRHUuMpcX/WMRKMRc0AgRIv18=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fXC4i3X5MbxOICm841wOswsigGoCmy2rfdztanKTAzJ9cfioDOqcWbb9SYYCT5M5o2iuHP2FkzcJsGoVbb/TZw6aOZaIx/JGiFcXTaGhKn2JVbo25Ux+JgZSrXKTJNxEumfAuq5wP1TjFML4z6tsK0rIQ2HTwyoQAaDvxCjQgc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bFLcses0; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-afcb7ae31caso173728966b.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1755181911; x=1755786711; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RQA2xq7mI4lOuuo7UB6QFY4SFCKqLwIJHu6LK04sK3w=;
        b=bFLcses0zjuAY/MYv9ZkAsE3YP8T/TdgqKKtHwQPC3O73WMeeSeifhQfd6+ARIxogC
         ufvnw8mRlyRF+yAfL+tlAHhItN7kVFZRrEvZaUvVLfHxYihuSr0+4/yibt0d2dXT1B9F
         qzp9+PrnjCikDwQ6QknftpjoHECYIAvjFeRVOHRrRxYs8tuMR5/Ui6UB/cWv0brEmxX/
         sui6WHhY1zkRDh4g5CVet7QFnY4/8OJzxbuyS8/Gu6QOweGA+o9gDoo7OoEl/eQjUwAt
         DhiUwJty960e+Qs02O/dWoNX+vQeBjSg54cR62Uo1aeiIV+y54xi35eFbncFStbKHnIN
         8Lkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755181911; x=1755786711;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RQA2xq7mI4lOuuo7UB6QFY4SFCKqLwIJHu6LK04sK3w=;
        b=WjD9oOxEC27d/ldhteQjHyiIwIB7gtzEQQXFYdIXxIW6LdIZRot/CLBmGkCAo56fl7
         +PYjFsPLtaj8wRA/LIPGcxKmsgySbECjmJb/Vx9edfrTfLbr8mjEPNn+6C6aRO9OD4lS
         tOmDqsmx9AnPqy6WmqeGphsE1dxuH1jS8npvvDGwUqfotRP7My9PK+sjQWlnivkP5++g
         OlfZekH7A5L4NU8RMmWhy57SqyG39NmzEgv8nmH4NMgAQz3xlggWsY9iP3x2C3y51dj5
         72Ww/aMOOXeXIv8vsgxDdRW+RN4vs2TDuqmEpdlROhHx5DM59iy53copdgfdST86Cu63
         aMBg==
X-Forwarded-Encrypted: i=1; AJvYcCUgELCDKeMq4Xvh0HodLVkow62iugD8TjsrR3+eB3/SuSKuS6cUx8o0+GD1ZuLxchqmT4aVKEYEm6hK@vger.kernel.org
X-Gm-Message-State: AOJu0YxfFcKUivv1s14nqksAvtb3hD94cb9ibfoBBZ72L7eKOX4Mmh+v
	W+Ce/wisBvE464cXU3K6DHQuzLrBt135RBUhaUE7Ep6LS8ErQddOujLPiHFxB/et6gc=
X-Gm-Gg: ASbGncu4gUwmv/QRgwNFrVnjcjWOEy7igj8UvixoEAwMSbRM5vp+1mhZ+UHGxOrQNSP
	R0e4R4DDivdxSOuOb/alLZaIlGlDygGQzoEa+nL0RA05pAJjiH/9kkgVfdEN3KS8jjWNaGN9roY
	JvRWfl9k+af/6t1DJgd8ApvNsF3bRD2zlxvjFQEv5BZaIOATgUfD+X+Xc69k3P/Q4pz6YY+++ZN
	cihof7zJzCroqP2iSpT96oDwdi8zlB5dG4xba+CMb+mStEGTx55qbbzKpryw7tYHGU0/8f7gBjZ
	HizbnOZy0R4f4bqNHicvfr4zlT6k6tehjWwgjzkDQi+g163FKkA++TyxoHOlJ5GMpjaYJevLFUB
	6IKOddaw+7bIcUdoUnhX/EBG95ZUILjs2p4dnJUzhGReM3Vjz2ugY+B3COpgHIrz2N0pvW6RXpQ
	Fw7OSP0F7wo2amQCe4cQsVH6MR
X-Google-Smtp-Source: AGHT+IHZuS/oZEn88jAiJPpp+WhXM7T8yBy/Ysi9uIDwbivKnVr1Jq24OxxhTx8N5nmphntFZHpUlw==
X-Received: by 2002:a17:907:60d1:b0:ae3:b2b7:7f2f with SMTP id a640c23a62f3a-afcb98fc895mr322248966b.40.1755181911349;
        Thu, 14 Aug 2025 07:31:51 -0700 (PDT)
Received: from [172.16.220.71] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a313esm2609421066b.32.2025.08.14.07.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 07:31:51 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH v3 0/3] Add support for Awinic AW86927 haptic driver
Date: Thu, 14 Aug 2025 16:31:34 +0200
Message-Id: <20250814-aw86927-v3-0-c99434083e6a@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEbznWgC/3WOQW6DMBBFrxJ5XUf2eDAmq94j6mKwx8WLQmQq0
 iri7jVRpBCaLP9o3n//IkbOiUdx2F1E5imNaehLMG874TvqP1mmULIABZVyCiWdnW2glk0IwRu
 IntiL8n3KHNPPten4UXKXxu8h/16LJ71c/3dMWippgTR7XcdI+B4p5VM39Lz3w9dSe2PsIwMmO
 LJBRWhhwyzuCda+6s7C4qttLCOswta/8mm9YbBlF02gyqpnPrP2rbaawiKipxbroqNnLL5gsbC
 +UspA48ho3rLzPP8Bz6nRf74BAAA=
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755181907; l=1819;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=2wAPPbqLo2LqU/nTBFwRHUuMpcX/WMRKMRc0AgRIv18=;
 b=UNFalXxKRJe4q48UwiHxGuyPvJ7cfThabUPqEnrUoKjHX2vRTU8z9KxvpuK3vhrxgodGCfv9n
 1oqRrWAzr7ZDHjR1lcYyI9ZNgV7GmvP8hn6q/8c8bRhEhYZf7WAqFoc
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add devicetree bindings and a driver for the AW86927 haptic driver, and
add it to the devicetree for the Fairphone 5 smartphone.

This driver does not enable all capabilities of the AW86927, features
such as f0 detection, rtp mode, and cont mode are not included.

Note: This is my first driver I have ever worked on so if there is
anything I can do to improve it please let me know!

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Changes in v3:
- Removed obsolete FIXME comments
- Adjusted Error handling to fit best practice
- Changed formatting due to feedback
- Removed obsolete terminology from patch subjects.
- Properly credited reviewers
- Link to v2: https://lore.kernel.org/r/20250811-aw86927-v2-0-64be8f3da560@fairphone.com

Changes in v2:
- Changed title and fixed license of devicetree binding
- Fixed typo where the 'm' in 'ms' was excluded
- Changed error handling return values in driver probe function
- Link to v1: https://lore.kernel.org/r/20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com

---
Griffin Kroah-Hartman (3):
      dt-bindings: input: Add Awinic AW86927
      Input: aw86927 - add driver for Awinic AW86927
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add vibrator support

 .../devicetree/bindings/input/awinic,aw86927.yaml  |  48 ++
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts |  18 +-
 drivers/input/misc/Kconfig                         |  11 +
 drivers/input/misc/Makefile                        |   1 +
 drivers/input/misc/aw86927.c                       | 854 +++++++++++++++++++++
 5 files changed, 931 insertions(+), 1 deletion(-)
---
base-commit: 3624e9a34b36d64a7037946eda28ae9599363a3b
change-id: 20250804-aw86927-9dddc32fcaec

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


