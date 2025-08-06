Return-Path: <devicetree+bounces-202241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F54B1C854
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 17:10:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7A0716E8F9
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 15:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D212F290BA2;
	Wed,  6 Aug 2025 15:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="scYpNwRr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079ED944F
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 15:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754493024; cv=none; b=biupwGH5HLwsvV32X54L6ddaEaRHACurkgQ0JUHNZ5jM8TSKYVaSwArvWZn9R88lbGIc6bStnVeOECXFI3hkP/yKAJgh6sK3hyl3KT5OFsxoqr+ZMUgjoe5tJ48iHNPuY5Yk36Dd5BfYJATa5u/yTZlCngsf2fSvF1vvW8rXWQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754493024; c=relaxed/simple;
	bh=XJj/+Ii9ne9FVPI/eszO2aSskv5085eVs2yaTGWarcc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gUXTrl0jMCoEc4uaothk1d8G6RTWZvNDeFgSx0qOgo3gTW4NS9bARI7OqekUc+w9G5rgUd0KwymE4QTaMO0VQGT2lD+du65WE4klGw/KVou4MkW7EjdNuKk/FCMjd88Tt6lrrL5Vu7Y6PnuI6TifWKpygnI/K9YeOHB20wvhRFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=scYpNwRr; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-af90fd52147so1044087266b.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1754493020; x=1755097820; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lXNDxz+vD1qrumGSjygzCNxB/cloZERXqd/svDy5PxU=;
        b=scYpNwRrI3m+cydN9NbfpAbpYxG2Gj3p6jVHu06y7Nm/h3ip44dvKfkup8WIZwV0ha
         i8W4j9YL5zDbEPXK1qVpFvG7R+yRBnGpLFaydGKOVXwPldkrm7gG3SCHKVvZby7dBMTk
         qfMP5rwcehqi24w900h5To/Tym9bv5pbKxaqO5mOzbxXMvSFWqGyITVhE+A6o+I++GME
         1aip0poL4zqErGbZDPKGyAW8v99U9gDYmaGGnZEFeNfCom5p2tgSgmHio1XstCzoS/2C
         mBmosHeVLSL3q60+iB4vaiRPG7SnRv50xbXCdD7cz4OpWbuE5FQdkVUhFKwAfZtBKqyz
         RaTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754493020; x=1755097820;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lXNDxz+vD1qrumGSjygzCNxB/cloZERXqd/svDy5PxU=;
        b=bKsLkXUFwIfSTlYM74fEY1d4l2QhsNG5vvLKlfiYNcq/bfzOuSt+yL/HWG5WRjzCp/
         gbkwnTEShAlfgECvP8WE7vGvj7kQtTB36X4Bg6lEVwN0/0lPbqBlKCSVNqDWGSx6gALm
         H2IjxllWLs6kZa3nF14t2m1inDTQ1Ub6+zCJKDiQWI9tDne6h7iVVemE/HNcXaodtI7U
         KN00ErfovmKbg7J0gqnY74XmlkNCxeguJcYSZC7X3dQl6aA4dohjIfG+ojqcYXKHlPuw
         YMMltUmAbnRVc0qgD65lwgwHL0tYPfvIo6zQ7WMCSoB1Yea+1vQvdxW6RY6SGxMRcUHC
         tVag==
X-Forwarded-Encrypted: i=1; AJvYcCU25VGFZLNheYCCsdGPxdU39amCX4y5JKXmtE5W5bC3E+j2si1id+Ugesf/0NbDgt5XNobpE2ugN0eL@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs9tAO5SySsgujX7WvTQhq/JgYMaVdaBmDDTMJvTCOKNyvwQpo
	B01ug9IhkF4ywPiNtlsJtc1RqReFEnZqRW3M1VJvVTfz4j/RkrvPI8tfsbBTjWAKgmdNhvmy/72
	NDWZE
X-Gm-Gg: ASbGncumiKMxjIttNvCraGnbqkTUc8BOMCBlZOO2rl72I+FU6+VhhBqbyA66m2KobKu
	onl7oSOA5UbNRZdf7FILMTEWN6+JseyBlTcAZk2xJvtNg4+OxyVPyyf4KpHo3RWkdj8rqTPgtNE
	MXYHrEXwzmO5or1N4DadKmOfY7cN9gfT2mz/O3AgZCZV32EmAvbQxLDl8nExH5VumpLcTKTugyS
	8cLdYWtTy10J30Ef8V9yY0UBKKWKyK+ECL0EYvzUafJDyXUhteigtq7i7z+VR1jS8JAJUPpCaf1
	rm31u5R9Tk3HPvSkSAmH6v0fpbOb0Jok/qmL6RGuL+wsQOPgKNXrfebPOzYb5lhLx850WodJIyy
	zNJ+d2cLkbCjAFc8U2OYJ4bTujN5KQ4qomnHGenxgK9GKboAeo5YVsm4rXoYYAJO96l8x7MQh53
	ZoyCSazi8kNGfy/g==
X-Google-Smtp-Source: AGHT+IFGxksQxksr9gdwZChs5Q7bTY2ry/u6i3uopbyTI4KkbR/QSULpJPg3RPcCg7fhSoD/RX3RLw==
X-Received: by 2002:a17:907:7f18:b0:af9:2502:7772 with SMTP id a640c23a62f3a-af992bc37femr303160166b.54.1754493020271;
        Wed, 06 Aug 2025 08:10:20 -0700 (PDT)
Received: from [172.16.220.71] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3b77sm1120100666b.51.2025.08.06.08.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 08:10:19 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH 0/3] Add support for Awinic AW86927 haptic driver
Date: Wed, 06 Aug 2025 17:10:07 +0200
Message-Id: <20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE9wk2gC/3XMTQ6CMBCG4auQrq3pz1DAlfcwLsZhKl0IpBjUE
 O5ucaNRXH6Ted5JDBwDD2KXTSLyGIbQtWnoTSaowfbMMtRpC6NMrkoFEm+lq0whq7quyRpPyCT
 Sdx/Zh/urdDim3YTh2sXHKzzq5frbGLVU0hnUTLrwHmHvMcS+6VreUncRS2c0nzZ/W7PYwvkUd
 ApOtGbtp3Vva5MFAMITFInimoU/FpKlXClrqhKt5m87z/MTH5SnElYBAAA=
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754493019; l=1235;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=XJj/+Ii9ne9FVPI/eszO2aSskv5085eVs2yaTGWarcc=;
 b=bdtHg4oKQcgns5dedD3nEjg/wB17OzGg5zzZbVVTORzPqFBn4Q/wt7aXuBTPE7Pq0fa0CN+CN
 XlnMIvCr7uSBsuHZZZUpFgzhBW7tuaWKKIMZykbrRCv3BKVqL0J6pe+
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
Griffin Kroah-Hartman (3):
      dt-bindings: input: Add bindings for Awinic AW86927
      Input: aw86927 - add driver for Awinic AW86927
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add vibrator support

 .../devicetree/bindings/input/awinic,aw86927.yaml  |  48 ++
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts |  18 +-
 drivers/input/misc/Kconfig                         |  11 +
 drivers/input/misc/Makefile                        |   1 +
 drivers/input/misc/aw86927.c                       | 841 +++++++++++++++++++++
 5 files changed, 918 insertions(+), 1 deletion(-)
---
base-commit: 3624e9a34b36d64a7037946eda28ae9599363a3b
change-id: 20250804-aw86927-9dddc32fcaec

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


