Return-Path: <devicetree+bounces-170085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F12A99B6A
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 00:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E8671B8371F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 22:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03AE01F8AC8;
	Wed, 23 Apr 2025 22:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oTtJGmQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4451EF099
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 22:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745446807; cv=none; b=bAQUCYPNV/DMNZnEfH6Qxc0oNhhRba8I54PC/9Jh2vva+81ULwFL9hs1B9CGl97px8Ojn2Ql4hF+fwp3V/Pxi9gM92zdhDjvb/OG6hJAQo/NHHnyKST3JVQCv5MK+G1DNpqm4TTZKT7IYuGA9cRCIwHIHOemzPme0+g3IinLsqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745446807; c=relaxed/simple;
	bh=RSUTCU68FCqDB21S9KgT6s2cR6CgFEajX3jGLDzwP7s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Sve2DhFkxwiaLq9/a+2O5VMekA7H22KTUkrb/w7YJPQZlyGDjPRma5vgDj2vPtyehCn0ekwwqSKt6INU1IGugARy6lyt2zIoy9jVfYbD/C0n5p3d04YuzCvIeDHiqxwqTKOFc+B3YyNq3b5DnP+Vi2HmgeJ+LiNphfzSzztJts8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oTtJGmQW; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54d72d40343so69082e87.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 15:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745446803; x=1746051603; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vxj8CXB8A0+AOQKhy0bB4YPelvc0XBl9NfkObhujdjk=;
        b=oTtJGmQWQ0VLHdMlEG+LMrD4Zen/p8q1yKUvRUaw4kmTP8gPjj3bpz08CSpvGwga2J
         MGGkGEJ1fAvGzKshLLyKsv2rJ5mdcZ8S8VeURL/kl3TgP61GZegVy3TCalGV2M9X8H1w
         2i7tI0y+W6j93rOtD2OWNN+0zSFlzemG6WsHs3WXLyImwdiJ5L0XUgdPIFXD/pZpYopD
         Nc2EPsPlqzwimZVRkVDGuOR19hgx2G20k3m8lvhpCvHtHOh/Kpe18RaobstfkE27EhDO
         T+z4ArtDLfaLVOgzOTONnj+5O2YXTuDeRmhtwcZ/q07ZUPfupFnwK5RA2Z607Hszy0Hi
         sKYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745446803; x=1746051603;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vxj8CXB8A0+AOQKhy0bB4YPelvc0XBl9NfkObhujdjk=;
        b=gFL9mcktYT3Zz7szASUDTU/Wdfkl9oMbS27SS8eKdRToQjxmr+eJ0kMk4JGp2xqr0D
         bCrGbVm+wkkdgTsENFlsPROK/NtZ0qHXSlB3xJybmQE0TQorYzfuSk9oREE8dOfzqA9q
         VxCE4YoNkkFsGP2H/CFPTLEihjmVaocSI2cPza5+c9xKr7a/HDvUSvbyjSvjYMCzwqOJ
         2mELJxPwQJQcEzM7BIhSuDDoI8Jc8IE4bZFddqsCroohaZXf6QBOyAGZVk7bu2fz8W7I
         /x7hYXbRhnZHjw1b4qr+zVmtEnE+FkOnv90D4LylJPHTqRiFzDffGZIKq6aIKR30iCr2
         AOxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHfxV1LAow94tm2TCUuOVgm7ZNdhhESumCSgsTz8FQl+BcmQWls8dEzTM9J/EPHWzsUMudqhV7Wegc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw/dqsJ6wyMgTlBdRS24nsgpDzVwltyALfhAuffXGdxk3pXAZ2
	0blxVE9CR2AdUS8Z8s/JQrFrpiQDiZFo4oKbx4N1lzDs52eeifOfBSvshh7eiAw=
X-Gm-Gg: ASbGncsnf3TBTYsghZ2Lw5imwFvdqDpNjW5Kr1/oC3qqpkHROHhnUBC85XPAZwgVpnL
	uMap+1wLJd4xuMagokDxHUQEUAiU560VaXyQbiJwtTIeEpIF7Wx61MS5d7h+7ilZrO52tv8hKRF
	cCuSQ7jW2qOKm2nAjtWZXloRqFm5PopzTwIjSk4jkuwj2BKXyZzNVUPk99lsJGVk9nW+eP02i0v
	tBDZmM66DgXtWfACyGZXcLajkaEauZwCZZL2yf9JkD6VvQNqJE9D1ICU2AmVoEqEFp81Acy9vgO
	vMbynCbLlUy8xw6XJZrs3W9toXR+GrVnDP7lmJRvDi0Va7jsUW7kyWHvEFRWuw+rjAghZGNgEYd
	W0As6C3bgWcUwypISJveI6cjkl+zohA==
X-Google-Smtp-Source: AGHT+IHsSJlTpXY6Fa9RVsSz88cws7OogMJx6T/Q4T81Tfoj7+YH6RmAUw7WURekUDGf6SZSD2VAFA==
X-Received: by 2002:a05:6512:124c:b0:546:2f7a:38a9 with SMTP id 2adb3069b0e04-54e7c3e92e5mr63434e87.3.1745446803063;
        Wed, 23 Apr 2025 15:20:03 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb371a2sm19547e87.57.2025.04.23.15.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 15:20:01 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: qcom: sm8650: Add CAMSS device tree node
Date: Thu, 24 Apr 2025 01:19:51 +0300
Message-ID: <20250423221954.1926453-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Qualcomm SM8650 SoC contains a camera subsystem IP, which is
got supported in the platform device tree by this change series.

Qualcomm SM8650 CAMSS IP contains of
* 6 x CSIPHY,
* 3 x CSID,
* 2 x CSID Lite,
* 3 x IFE,
* 2 x IFE Lite.

v1 version of the changeset:
- https://lore.kernel.org/linux-media/20250312001132.1832655-1-vladimir.zapolskiy@linaro.org

Changes from v1 to v2:
* to support a regex in port property names replaced 'properties' with
  'patternProperties', a sanity check shall pass now, thanks to Dmitry,
* added a few new line separators between property groups in sm8650.dtsi
  and qcom,sm8650-camss.yaml dt bindings documentation, thanks to Bryan,
* added the fourth interrupt cell value needed for v6.15, thanks to Neil,
* added a given Reviewed-by tag to one of the patches, thanks to Bryan,
* rebased for v6.16.

Vladimir Zapolskiy (3):
  dt-bindings: media: Describe Qualcomm SM8650 CAMSS IP
  arm64: dts: qcom: sm8650: Add CAMSS block definition
  arm64: dts: qcom: sm8650: Add description of MCLK pins

 .../bindings/media/qcom,sm8650-camss.yaml     | 394 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi          | 333 +++++++++++++++
 2 files changed, 727 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml

-- 
2.45.2


