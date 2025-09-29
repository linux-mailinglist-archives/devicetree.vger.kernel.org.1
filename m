Return-Path: <devicetree+bounces-222412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC39BA8ED8
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 12:56:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E0B77A645D
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF1252FD7C7;
	Mon, 29 Sep 2025 10:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W0QslfMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6426735950
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759143403; cv=none; b=hWNpH4g8pQefbxyLI0bbWqZ+hvdKoIz4TrPLqEjgK7eE0D8+2XqS0FyDLdFiIToObLSxGXV1WrdU80blAEGQKJbsIRZXe7mN8wtIqMVLjcgJYimKONB+QzSjSoUzDzmf05S6f3n7twx/vJW6KGVaFAOkWrxSTNg5zpkcaULhTiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759143403; c=relaxed/simple;
	bh=nOFnWCGB6HBPfZQXYY9HPFmCV1TjCfRVoNu8nGEeJzo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=e2k7P34MPAs1u9EeIv+Gwj8zV46Z6DMYhWkBlaz/q9j+rBQff7/e3np4tH+dDviUeY1g9HQV6kW1/ir1SUBlOtoebCtSx5t4d1xBCkvjbYWBaqfPuctbSEs9vdosKp8hQMrnm6ze09uC8sFn5tLWF1mhUQDSDLOoGMTrbopfoO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W0QslfMm; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-273a0aeed57so62287845ad.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759143402; x=1759748202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RZEDGcSwCEIii6+/CYGRaHQD4PqaSNrfaJOncbrJmO4=;
        b=W0QslfMmvOGIpzJJgoeuvNlYpMrIc2EaVNz42Tg/J3+lz0T1UJ6llZma649yzms+oq
         jaj5elRqOkbW/ec52CK1NizSqXvBixWsbpkv3XlMGeNcnd37IY5dgZtRIpDnj0WzEvS6
         pUNKmu6cQGx7por1MUWk14zB0tZwh35Zh3akwB2RYEubQxAa6x7MO7nlZCSmqTCgcfHb
         GloLKKT1ZToOp6ugQ4m3FFNeG/dKFInf29HjfoG8RWN0Smze/9GIDTkDVCShHzKyY+hj
         xj71KTM0ivyiFI+N8kSHDmTexvBP8e9RgB43Y/gEa636D0klXes9vmsDFyRGVVdQBN21
         kyWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759143402; x=1759748202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RZEDGcSwCEIii6+/CYGRaHQD4PqaSNrfaJOncbrJmO4=;
        b=MN0yi4EVCI7SaeKPBObnLJU4srrmp3C4izXbJskiUJiU0WxlmyvrO2IDL6yXQFGHsA
         n+mEQlBJXezkCtduMqXz2yivwpISA7ooLdyvBd52Jp5U8hYAe1icj6mviy64KSRufUhE
         YlnCdLsi5gMxn1jHKGNRYpHtNmobiEupvST9HlgGWGV8XE++bd4OZ58vNrXtF537OvqH
         7ElibVHfbzf5CazQP51nX+uDBczR10PCpuEt9NLbQ87ZH/1/5V7woXlWa8MfYH+hzthI
         w60u0reVQ6ZtHdXTkYyq0YmhL9cILKDOOrCVOxUlJ2pZDXUGXCH7rqFqyU6Lh46kVkmW
         nQSA==
X-Forwarded-Encrypted: i=1; AJvYcCVkhJD0Zd4yJ8scmcV9hoFIILGg0ViIkfsWR7YY3JJflboLFkpyfyDULEpxFuk/DUCcNdnlb23rQucc@vger.kernel.org
X-Gm-Message-State: AOJu0YwZioiXI2NTZf3veZFLoAx3qE3aRYsYsQ9K6bRe6AKVKHYksKnN
	tD+B1JpjcJXbCzV1ULqXPMZgKrV57rzPtwxeOvLcXBToOMePphnZmJt4
X-Gm-Gg: ASbGnctB4hhVneDhkbsbFbzDnfMNsHSOrhVq6jVRv/amfwafS3gHV39/n+LsNwJvmSB
	4llaxGwrglUrjygsZS2AbZmoaGpk0m2g8pqJl45NxFnLuzTRhETLTAg82xjeuG4pGVOSlBVk/9u
	q/PkGYfV+QW0Cn4xvkxB464oAdrZbXl7MPtPau7IYTIXqalOrSImCCNEZu1OXBGSpuatJWsJ5nc
	OE1xF36zWaFfhlqBWBvvOejLJAtuN54S1YKLcJrJPmhIXfZ5M72xXJppj3HQv7coH/pb3julXVE
	JZwtAw2NaAKZe/i21R0UTuSkkkoZA3wdz9GjDQ1fcdXUaqrJTzvXITF4oTI04ccMQjJFLC+5n/B
	hPgZadhJRLhf1xXXPdDzjfINOPre4znwiFAWBqcbtZqvoa69daZg0
X-Google-Smtp-Source: AGHT+IEZV0jFaXr2Lo/DqtPOAzg63RPmCiWyhZxXNvdL1PDKiMk4xMyA2I7apO6hTvbXrjXOgH3iMg==
X-Received: by 2002:a17:902:f647:b0:269:aba9:ffd7 with SMTP id d9443c01a7336-28d1713873fmr1034785ad.25.1759143401719;
        Mon, 29 Sep 2025 03:56:41 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28cef7db380sm4762325ad.107.2025.09.29.03.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 03:56:41 -0700 (PDT)
From: Joan-Na-adi <joan.na.devcode@gmail.com>
X-Google-Original-From: Joan-Na-adi <joan.na@analog.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Joan Na <joan.na@analog.com>
Subject: [PATCH v2 0/3] MAX77675 regulator driver: Add support for MAX77675 device
Date: Mon, 29 Sep 2025 19:56:15 +0900
Message-Id: <20250929105618.177511-1-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joan Na <joan.na@analog.com>

MAX77675 regulator driver and device tree bindings

Changes since v1:
- Fixed build error due to missing 'max77675_of_match' declaration.
- Removed duplicate '.list_voltage' initialization.
- Corrected value usage in regmap_update_bits call.
- Added CONFIG_OF guards and used of_match_ptr().

Joan Na (3):
  dt-bindings: regulator: Add MAX77675 binding header
  regulator: max77675: Add MAX77675 regulator driver
  dt-bindings: regulator: Add MAX77675 regulator binding

 .../bindings/regulator/maxim,max77675.yaml    | 202 +++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/max77675-regulator.c        | 792 ++++++++++++++++++
 drivers/regulator/max77675-regulator.h        | 252 ++++++
 .../regulator/maxim,max77675-regulator.h      |  78 ++
 6 files changed, 1334 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
 create mode 100644 drivers/regulator/max77675-regulator.c
 create mode 100644 drivers/regulator/max77675-regulator.h
 create mode 100644 include/dt-bindings/regulator/maxim,max77675-regulator.h


base-commit: bf40f4b87761e2ec16efc8e49b9ca0d81f4115d8
--
2.34.1


