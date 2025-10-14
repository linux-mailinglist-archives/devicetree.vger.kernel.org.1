Return-Path: <devicetree+bounces-226346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2272BD747E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:42:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B8BE3E808C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56FF30BB82;
	Tue, 14 Oct 2025 04:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H7tyuqn8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6476734BA45
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416944; cv=none; b=ssjGfQHz7xFK6/7MLKDi8uwjcgiaCH+Vsq1dy7ZYyxQDjf0FrD1tlw/NphR+eLFpf3MsDQ+9wJe9bpJFq6rHCXAxjQDoMm9qR/MjlB3r7WCeYvJzj7hmbIiKhcRTxUtaTGYrff1Ti9JEQknVHyCk293Lq1q+8KVyQDRCKjpf1FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416944; c=relaxed/simple;
	bh=c7qQh2kUkHkXde9RLibpCWvlirMSQzaQtOoZRDsl33k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=h3dClQ0VZFglLftd15k04m6AcRg49dX0I+fG4gBpeg/ygIPJiBzfcsNUBGIj4kPDO5YFGa2tRzNyvmVmW2ih+k0NqWj/FtkMZ/Sd3Ci1XnirDvI1mGhaev5Tdt2HUYE0j3aeku8FG+rTeQ4RlRwXofD0pROJfUTGBJdCHBD4SUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H7tyuqn8; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-781997d195aso3475410b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760416943; x=1761021743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ml+6wIQdksUetc3TuDYTabUXSFcNi4s6JHEPJWiU1o8=;
        b=H7tyuqn8lmfigmDQetbUcls8UWGJIqNXhz4IY4WiugFolO2KQQkyBPciwY23nHvO1k
         wohKKVQFkYTO3lil6fx/iYgwyr4OVUJj/V5I0z7BDPKMOWeswvzgq20Nhd8fybijWV/Y
         0w/cOx8SCepbzzJ1iSqrz+KAILq1pC5zNAgBSMdY3BaCYhDgTfSdqLl2lEyrefU6+L5F
         pWjN8Begq63iyCepV1QMHW7MjQEbxGVjW/TfSgrBHRLnyrAW2JwFGDkXAwongbKJ3wRs
         USXjXpt+b104vjn3DLIE1Ev9Xw0Yaem+9Mcx4YTyCfPT+ItAlhu97pgvYqPfeBIPKFXc
         d5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760416943; x=1761021743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ml+6wIQdksUetc3TuDYTabUXSFcNi4s6JHEPJWiU1o8=;
        b=H7A3Eq0t31zgABLzuWYC5/4YArzXCtkSm0xdtZUu4MCNLqdVa8pq+qWtwjdQ3f/7/6
         ngN7rdDLlI7TG3LehaHV5tGNxl5Kbs9l15cLULvNw2qfBkbHZ5IAPbZDSfScErgkwbvs
         a3HhdoXYPK6lIGBmpaE40tOoVy4k/uQ9PeYsdEJEylECivj/TBkZwhQ29QklSPTeRofK
         FGm7zC1vY2i1tBnHaUWOn8YrzGARTltOTCRzka33RRpqeftH7sBYSLG9qmgLfRgTPV5h
         nozQ668PYsJ9qFDCeu6BmHWaeC/xZgHsCX9GPENAWzS6y/loZbQuyEtLAg0sSWlATL/+
         xqWA==
X-Forwarded-Encrypted: i=1; AJvYcCWp7ukGplmgcCYjwgX13YxTP+nTyOXcFxqnT/PMnMG9ui0ujMLRVoAsDf5VqKV/Aoj8O9fx5KJ2XeQ1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx52b/kfeaXAidS+6cihE97Wa0DkNo1KT6McGZowsNLbvbXql+h
	dd4luzZjE4tu65Bz7V9A8vkogETgZM+vuiV8btauIIrbRy3O9a7kvYOp
X-Gm-Gg: ASbGncs1lq8P4BHcbpkcDYrH8nsPlLALuKOlWZYkrs9wt5iruuP4y8MOwswJl7SQjJ6
	sxSknUIoLTCqURCZtBSYEGUaHsU1TV1ENTFs8x6AgRzsVWeQ9hYlMp3pbZzJMpt9ELppUZNvNTn
	SljpagEtIil52nuBgFDJrLWg8XhYO7EJTn96RMFJdOd0qDzh0p+gzqv7FPDPeQB5G56K8kPaKEU
	RjLj+DjIos4Msi8541hMCakrJmil6WBiUMK/dqJCDMDBjivB0rocw8S2vjfFkNC24yyNB0qDSUa
	k+FMLqgcH+XFa1w+1ygE9f9YcoqL9JGhz+vluIMZygFRlvur0Oh6i0ou9n7XEbWkRki2NDmxpyb
	NcX0thOvWF2fpimwJ3c2UOlnCIhnfZPGWW8+r3gQ+z1aXVPQ=
X-Google-Smtp-Source: AGHT+IEewoEl16TbW/c0YEE3/3VAqPolvV7asqs9adJ3dRmcP4Di1uWVWrX5HIFD5WO8itFdDK3MqQ==
X-Received: by 2002:a05:6a00:a14:b0:77f:23dd:1e20 with SMTP id d2e1a72fcca58-793876373f8mr28886161b3a.24.1760416942652;
        Mon, 13 Oct 2025 21:42:22 -0700 (PDT)
Received: from archlinux ([177.9.216.59])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-79b65528a51sm8440684b3a.85.2025.10.13.21.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:42:22 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] arm64: dts: qcom: r0q: enable more peripherals
Date: Tue, 14 Oct 2025 00:41:29 -0400
Message-ID: <20251014044135.177210-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset adds support for multiple devices found on the Galaxy S22,
side buttons, touchscreen, max77705 charger/fuelgauge, RTC and UFS. It
depends on "Input: add support for the STM FTS2BA61Y touchscreen" for
TS to be enabled - and for the fuelgauge/charger to work,
"mfd: max77705: support revision 0x2" is needed too.

Thanks!

Changes in v2:
- split the gpio keys patch into 2 for small refactor
- rename spi-gpio: spi-gpio@0 to spi8
- use tabs instead of spaces on max77705 nodes
- added new patch that fixes adsp_mem and video_mem memory regions
I couldn't find the clock-frequency for i2c5 bus :(

Eric Gonçalves (6):
  arm64: dts: qcom: r0q: small refactor
  arm64: dts: qcom: r0q: add gpio keys
  arm64: dts: qcom: r0q: add touchscreen support
  arm64: dts: qcom: r0q: enable max77705 fuelgauge
  arm64: dts: qcom: r0q: enable ufs storage
  arm64: dts: qcom: r0q: fix reserved memory regions

 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 278 +++++++++++++++++-
 1 file changed, 270 insertions(+), 8 deletions(-)

-- 
2.51.0


