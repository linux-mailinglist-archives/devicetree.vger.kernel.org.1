Return-Path: <devicetree+bounces-222793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D3EBAD0D6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:27:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0C9B3C255F
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0D1303A0D;
	Tue, 30 Sep 2025 13:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aaXmhwDa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D5223507C
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759238836; cv=none; b=ZpzKM0Wsab3faKpP2693XxQjutvds068MDcTFPXesjVcrEeUS8idYouRwh99eJ2L5JN5tdn2N8LKINcyJZbk0zjXEOAjryZnx9pmfXlRO9jsg5Ea25CuN0b5XhZiMl3+fB3VU8rMUFNbmdPf8o8L4dnw+HqMzfLsCs8HqlOfIlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759238836; c=relaxed/simple;
	bh=C2c+iYmbNgGTOO2nKF6xIbNLg4yN9mRhc5CtHzgpGc4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fGna8kAN+Z73LamHHVEhBjdg2nV8J5S9dTr8G7JdgJ2w0dEvkRfjIJhl/cyC/GvpYjmZ6QnhCPBvP/ULi8egoeeLfPIa87WSXqQbNZBNCyFOo/y26qDkL9pbVePvlumohpBjr+SFqQ/aZ+S3ArwD2r0M6f2ay/DDJ9LpdymucjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aaXmhwDa; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b3da3b34950so431888066b.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759238834; x=1759843634; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pEYWNqVN+hXm3csWbV92tvh3D0m5lJ5Vd6pA/p8j2lM=;
        b=aaXmhwDafjIq8CmeSc2aZEr69FBaH8jalQuIio+zTpzuBMCFyrevY6oUJQ/6dygtTd
         riCuHIE1+Ryt082KbELkkeoO2Fi9ip+9g25nDnOp/v4xbCY4XC8Nus029t4m4/FE/9kq
         RjsyHbg1RFwNPbziPpvJYMlMe6o3RmK0o1q8q2bNKIVKTlNS6GsukMIj/NrQ/ELtyXPm
         28N3moCURJ0/UxOMLEEvzC3+wpKQtKugXkl6xhUmRsR3flUfibprAim+Rp5UqN7mxgvz
         6xvj9cjvOpTjXP67L6p3tTq9BQloBz0L0n5B4lgdU5wAx+iA2dPVcGXpUIgrM8GeBz/f
         4DjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759238834; x=1759843634;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pEYWNqVN+hXm3csWbV92tvh3D0m5lJ5Vd6pA/p8j2lM=;
        b=FNMGBvpmhNcvsGqQpHvf3yTfJL6yD8ufG6Zp9tcr1K0ovZdlHLBO2zKwiWdFOcWqwC
         kVHe2p3+cassdLGnL0v3c71/NCheBIQKPlZyqcCFrmp81v8yuVkjG4w1ZE+Q5tQB/WqG
         bAa1qlcq3eaJHL4siZqrlFC7Hxp+7QtVVW3IYh8qATIPPNLpdR0OhboQrGIv7JS2Ls93
         Ivo+nBPV5DQ/z/hJkWbIcNOT7s0YH0cIgT94Tf2Wrx4jO/au2H9maovFr4e7RH36BMo7
         dREIrKHCcCREcR/p7yaMkPbQo5JTGbvjZuNWMsbqvVGNlhcxXMrW8e3jt+2doRDPx2ju
         U9ig==
X-Forwarded-Encrypted: i=1; AJvYcCU5CBt86JRLNdjENKfqqwILSS6pIS8+/8lvW2MkFtzv7ZS0iPTiPY2nuGd4PoA0ck7/li8OsQ1cLqgJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwdVZsiAnVPkJzylW90rHJm8r/vux7Qn3hL1J1vr5YnfEZ5U3oB
	Ie9N57PY8XZucUgSApeHFmv1uJxbTLnNC9zo1VF+8HjzO8LvNrUkkZo5
X-Gm-Gg: ASbGncsYR7K6GWA7CcYP9e3+s1cd+HIOnoA8MZxrRu/+cEWkqxTMDq6Q4G7eLL8Zwrk
	r6oI9OJtwJZsAagPamWS228YXfVw8+UvU3/UQ3Cenmg6PBgXK/RyLcb/Iaqnv842Kn3KHNe0S7P
	ig0eldd8UaVLKvytimy3mdyeXa/PUxyn9c1ZPm1Uef9c10QfeHQHn1qxgqLq2nu3fvNoDV9Rwbt
	r8DxkW19HO2Ni8OW1gqpmTOU6OCwzu6pgvDyHIkf8U3N+/4fVSigQDRMaOZTAbf0BBXC+iDxxZq
	otSGrhmRH2vs9A8IgxgiQou2RrCTUmNDFDOcfQ5w8BiiJMn0g0J8Q3GYvkQ2MCAUfZru9ZdWM7G
	EgS2Cuh88nJv3wSuV3kVU2iXWYBSv5RMik/pf9PSSma/MkPdxW8e9DqhhaDAXnArALQ==
X-Google-Smtp-Source: AGHT+IEIubUseLSqrueCli47kNdptFpvg2o9b0qj23reXDH/dzzBpT/3wCPqEhs77WVKuNIkRCUy9A==
X-Received: by 2002:a17:907:728d:b0:b3b:d167:944a with SMTP id a640c23a62f3a-b3bd167d29dmr1320480866b.57.1759238833521;
        Tue, 30 Sep 2025 06:27:13 -0700 (PDT)
Received: from crusty-box ([88.223.153.72])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353efa46b2sm1143934766b.24.2025.09.30.06.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:27:13 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH 0/2] arm64: dts: qcom: msm8939-asus-z00t: add initial device tree
Date: Tue, 30 Sep 2025 16:20:08 +0300
Message-ID: <20250930132556.266434-1-xerikasxx@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This dts adds support for Asus ZenFone 2 Laser/Selfie (1080p) smartphone
released in 2015.

Add an initial device tree support for Z00T with support for:
- GPIO keys
- SDHCI (Internal and external storage)
- WCNSS (WiFi/BT)
- Sensors (accelerometer and magnetometer)
- Touchscreen
- Audio input and output
- Vibrator

Erikas Bitovtas (2):
  dt-bindings: arm: qcom: Add Asus ZenFone 2 Laser/Selfie
  arm64: dts: qcom: msm8939-asus-z00t: add initial device tree

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 255 ++++++++++++++++++
 3 files changed, 257 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts

-- 
2.51.0


