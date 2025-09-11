Return-Path: <devicetree+bounces-216167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F087FB53D8F
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 23:19:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD0195A5C89
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 21:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65E2224A066;
	Thu, 11 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SDmFaItZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C150A2DC762
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757625593; cv=none; b=Gh03rM43X8Y2ZRE3hnfUw25Iv1WzoEZ8PJ1z0SNjpytKpj+5VXQaXYLUsOycGo0hoYEIyN7lwyX8d6aQ2DhCCBmafqO5xXPg+aUgLWUEfa2nBPW0BxR1SVpjfNpVJNj32bwinnvjaDIg/3ccNalvEuALsKC47QwybH4lSBO5j2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757625593; c=relaxed/simple;
	bh=ZyPDRqtHrtRo6RS6NEQpI4Vkf7xjG4tkb2WBalHMUuA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=l6fqMiwpuKqNZ9NxZrTzZJniA/u80HszD+2XpkHn0x+QZaCh2E8MxiumAQhbCrdcI6ABJOqGSht+UuXaRaaOvL4njd8FR/yDFWYeXsM/Fe3N7G3LvrITh38C0TWdRcnvrGFhHfHKZ3eo8vC28m0Wo8YiGOTupPSijlWLSb98f4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SDmFaItZ; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b52403c47b7so843507a12.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757625591; x=1758230391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dCVXswtPSZVCLCjAl0jds66ffhqyicYLAeBU90M6SCc=;
        b=SDmFaItZLotlM1TKpLmTAo7LUyu+EZ16EsUR81/TK2CbSj9DaRYoy8aLvx1/Sorhon
         SJjnH5GMjVdIRp3Adz/a9sMJn4EbO2qMu8veyNZ+zriQlGI5PbB73vgWDRgoJyhk7c4O
         Y2DDygE1ouA9kAOVWhVLkoWNDHNohur4PElWRK9nWqs4qJsZIk1lARKga82MU6jGj7Zl
         60Dhi+f5qxuMD5GcCiCDnbd6aa/fwO2WldSxGzqzqdjonlrlSQqBwH0vOmqTolP5QoiN
         RvwrYGluusdHLRAwXm5muTRxXjhoWX65kW1OGp2QIsduZXU23xo1oX51AHGazQHrTIkx
         IV9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757625591; x=1758230391;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dCVXswtPSZVCLCjAl0jds66ffhqyicYLAeBU90M6SCc=;
        b=WJv5a8YO4GUrK20CFm+nnU4c8vdEzfGdjQ3vG0hiW6hN4xP3YXikeuJYqne2uI8Q7S
         zAjAhQdzGpMUk166cO8eg6iCURoRe0xTAz5gl3KMj50SrrW4adt3w+7z9Jbq7q2Qft79
         7xa/H6FeRWbKg2Pk15GKRydK2qkogAm6VFpOiIzSWm/mWgmmzXeB2meAEbralhkTUVMH
         7aCyvw89e48bRi7mdQm03nYH+NH3IxNhwADYTxb9CNmEuq+29ajfCJrzrPeY3MeQ9/4w
         qAv5WPcPWkFDroSn+p0akLbQv5a5odM94oDKgSLlpZWK+liZP6Ch62zthQCAvElA+ng+
         F0rg==
X-Forwarded-Encrypted: i=1; AJvYcCUFwKNNNlJLJ5Yr1GNwA1gBHnwamaeu3FSalQ6mF4/WpJAS9iYgr4x2n/rP1GI3tSISjNLfY3ycgxKr@vger.kernel.org
X-Gm-Message-State: AOJu0Ywts4LGls06n2Dap9aYMDZVEy4yHV1QvOuK9qli+feD/mTMmLX3
	Y/ldPWGLpbh7lp6hPc7x2p0tTODdrBczAkvu1ZCNPVGnWcR4CiJSlOUj
X-Gm-Gg: ASbGncu7EeD/PbEPx/xb3agLBs1bQngsvJw/qZTwtHUBERpvuVBvw7BKv7FjzvCr6Mf
	22jvbZCjDzBApeg+i5lXEG89/J7mPRJZjIP622X2/UUnMkibfWFOc27BbYZDNFYFLgVJAUx79D/
	Puz3V8hCeXpeR1lzCZiGs0+Y/TO+tShdKYoWhWAYOEvxrI2iD3AOLlKPp2WF8cEVKyZH8E/2jDR
	XQQf+OdMRS/PTWOJfgfIrk/yqW8d6E83RizDB3lASrDbs2MWcSfteP5R5o1aM+68iHfkzFb7fag
	cpirJSjUeIfTGfMV/z/1hA2rhOJZajysK24lX7PvEmP5H4jnigqz9hwwz9rzaiUI6QCbwCAtB4Y
	QXdjPnsOuzaNTcD5oHVZ9/UJcm3awgQ==
X-Google-Smtp-Source: AGHT+IFknLy46R8DrU3R1UF2UfI88LA3kT8awp1njQ6Kqe+escyqeF1fEg1h2lHnX5XJFvgCyZ3POA==
X-Received: by 2002:a17:902:f644:b0:25c:43f7:7e40 with SMTP id d9443c01a7336-25d2ab45d41mr6864765ad.10.1757625591055;
        Thu, 11 Sep 2025 14:19:51 -0700 (PDT)
Received: from archlinux ([152.245.61.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c36dbb159sm28705045ad.13.2025.09.11.14.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 14:19:50 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
Subject: [RFC PATCH 0/2] Input: add fts2ba61y touchscreen driver
Date: Thu, 11 Sep 2025 21:19:08 +0000
Message-ID: <20250911211910.45903-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.50.1
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

Thanks!

Eric Gonçalves (2):
  dt-bindings: input: add ST-Microelectronics FTS2BA61Y touchscreen
    binding
  Input: add support for the STM FTS2BA61Y touchscreen

 .../input/touchscreen/st,fts2ba61y.yaml       |  52 ++
 drivers/input/touchscreen/Kconfig             |  11 +
 drivers/input/touchscreen/Makefile            |   1 +
 drivers/input/touchscreen/fts2ba61y.c         | 588 ++++++++++++++++++
 4 files changed, 652 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml
 create mode 100644 drivers/input/touchscreen/fts2ba61y.c

-- 
2.50.1


