Return-Path: <devicetree+bounces-219465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 592DEB8BCD0
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DA5B1BC7207
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 01:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F4F1F37A1;
	Sat, 20 Sep 2025 01:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DaSofThA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BCF1C860F
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 01:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332722; cv=none; b=YuKzlZKdP7yHr40f/BUjtwpTELElwzjpEO1UQXRSfxWz0da/sP5ExcFlY6NWexgZpzOkmjCltVuL/nyt+9XPj1yhwxN3vWPUZ3DLk0sve5qPzMCk2z5kpw2TwLu3PcbPu8pRoJqw5zbzNsY+H4GMSQ6u2ScmlLF7hOkkv0D53aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332722; c=relaxed/simple;
	bh=n+pJatxQUxiLkmZBL2NjODakscY9/Sz9q1h/+tJ3Wq0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=rCCWJcf9/KQDt1DJTaYetviAwRN1MfAMFBzki5ESR2RjE304eAn+UTdvwk0IAo7D/KNhLrkRxIPnMJDFRyHz2Z19k3AaWrMjHbMWAbNnp1lD6siBTKsYQ+QlGQGeERfKhZd4kKhVZB9+A7tG84if/fhbFFONzzM5fUPViRn/8HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DaSofThA; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7761a8a1dbcso2538764b3a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758332720; x=1758937520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MaDslKzWOATYzqYJokHZic8iJI/8ZjqbD74gr3V2Ay8=;
        b=DaSofThABZx1DnmKMd2GiFYQqiUoz98TzmKSnYvRsfjcGHHeANASV7h+Y4Q6ipec+A
         AWnFsJudlXVvDyWSAOtGgETOpFUNBDUYZU+CX8cf3H2sv0S9bTXF0HmN05u6z94EOtcW
         Qt2zIVC3wRqcU0CoA4JwuxjC0Ub7L/2KYNUnr5SG4kvK2gu1AdrRnIqWhIsuhwIL0OsH
         r/UDvMTOMMeTyYBB3qWI24cGpLLKpAWR+xLoCiu58KbUoMiT7qsViJPQy6UIeX5bu94H
         SLlph1WIKG4ZirgbrO3lww/sXaVwpF9LvCzp/Zs9+oe1KeEDTBx6NiQSRc3sxFANeVEB
         CEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758332720; x=1758937520;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MaDslKzWOATYzqYJokHZic8iJI/8ZjqbD74gr3V2Ay8=;
        b=HnFRCo9OSdwvYJbQGbrBaYQXA7fmrkVadXSC2RUE89Bzd4zWjlyjTHq22gIefrpE0e
         DbVXGyQ6GVpyzRUhebbQ7ObZCwNBq5CBp5CClxNazcO5Igqi9zS7XZt5TzHQkuC1Cee4
         9jxWe8/pAunfA5VAvP8pufRTvxSsoWSY38sTgiCqxoZjBfUSQechecGdry5wN2mZg5hA
         d72WKvvAkeBgHD4/XQsXt7dNubWSSimTxnHrQtTo9B4y1lpdU5dzwWaMwS3eByRX7Uom
         LIDa6FNVBtPW3C6mUhSDWxM4MVJ49B0XJysO4Pn6kS9mL/cDzHXMQ7c9k2jvIe4fZwOl
         m2oQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJfU5psPf54YH5gz8/0pWz34OJpJ0e5VKU/pSfjbfan3WWD1PsWme+FsA6RZOq5ryKwmG8viBO6BvG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywobkl63ZYCElSQgKzaxrr5DiWTynO7kw2L9uBhAeCXfLXiMU26
	1mRakn65guY7R8b9kPXplMRxnlzLjFlDpoyPDT9Z6OcofJyl2ikKtANO
X-Gm-Gg: ASbGncvIGKAAmvfx90kr/H14ITfa1qJnmyJD9L6Yr7bsrAUBH7Nk6sE2HpsEgdez4uC
	awCY1TWjQ3IVmyPBVPj3o7sE9NUKLHHnLEGUvXHlxb8DgaWX4qkxoo0F06zrHo+DrB+v+0JNW7F
	kew5SSyt+HkdbxNCWrAcMjq6JTDluzcd6FFFXdBwtyVlV3A2BbmTSxoqL/1E0PZyDcPlRwMri0r
	Q1kWiIvGzr/dMAu77SeztIm17ftUvbFpneo4Zy7IICxl67g1jb+HHbtted/4tBikpY3mnEoGPA5
	DIEd76tHJXjEN3aFf497hDNPiGfi9oXdabEPAf/dpQB7JhE7Ju3WkjB+qt929soYNBwQIIEXYxk
	wBwayIL+XJA7YF0lXv+HS
X-Google-Smtp-Source: AGHT+IHy1IWqfKaCBizs/nvSOu8RxjFT+9KB6OWZv1nW+R2uVqWiQSnwNDGFXduas9VczYkbNIveNw==
X-Received: by 2002:a05:6a00:cc7:b0:776:1804:6fe with SMTP id d2e1a72fcca58-77e4cc3c5e1mr5540071b3a.7.1758332720446;
        Fri, 19 Sep 2025 18:45:20 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f1a72e7afsm529395b3a.92.2025.09.19.18.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 18:45:19 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Henrik Rydberg <rydberg@bitmath.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Input: add fts2ba61y touchscreen driver
Date: Sat, 20 Sep 2025 01:44:48 +0000
Message-ID: <20250920014450.37787-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset adds support for the ST-Microelectronics FTS2BA61Y,
a capacitive multi-touch touchscreen controller. this touchscreen
is used in many mobile devices, like ones from the Galaxy S22 series
and the Z Fold 5. Ivaylo Ivanov wrote the driver originally,
and I'm upstreaming it on his behalf.

Shortly after this patchset, I'll be sending another one that
enables touchscreen on the Galaxy S22 (r0q) board.

Thanks!

Changes from RFC->v1:
- move unevaluatedProperties to after the required: field
- set Ivaylo as the author of driver commit

Eric Gonçalves (1):
  dt-bindings: input: Add ST-Microelectronics FTS2BA61Y touchscreen

Ivaylo Ivanov (1):
  Input: add support for the STM FTS2BA61Y touchscreen

 .../input/touchscreen/st,fts2ba61y.yaml       |  52 ++
 drivers/input/touchscreen/Kconfig             |  11 +
 drivers/input/touchscreen/Makefile            |   1 +
 drivers/input/touchscreen/fts2ba61y.c         | 588 ++++++++++++++++++
 4 files changed, 652 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml
 create mode 100644 drivers/input/touchscreen/fts2ba61y.c

-- 
2.51.0


