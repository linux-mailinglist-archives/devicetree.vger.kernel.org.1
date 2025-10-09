Return-Path: <devicetree+bounces-225004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ACDBC9875
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D5CCC3515DC
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957542EAD0D;
	Thu,  9 Oct 2025 14:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="XFYwVWxK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3526298CD5
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020529; cv=none; b=aVqMjd7niZBBkFgYHeM3K3L081o3ZMgAC9EyrlkxvHsthODyq9IvRUQxbPDoHVMc0IVhkjpHlWM+pqBS56Lnxt4QM34rCedwJg5OhEeph96UVhWfKqhEjl8e+09L9a6Crkj1LnVPiB1fTQPEBh4/izCMBXVus3PdlqGccuxomMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020529; c=relaxed/simple;
	bh=qg6QF1rDlqVC9eUrmMm4yZVRaITIh85cFqUKkQRon5g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=V2Sv9X8AgM2zXdp8oPJhaOo6UNT9nK+3lUNKCi+a942cHxqK8jvmgmQXv6gpNuHGwauNVEMBRHjbljyk6CKn0q7rcjKsDFqgOtgg6Apw+uX6QUyYCGaFscxsDgK3k2osX5KhEZEOUVRjekJPwNT+FVBJalI8kejzOpc9vRvIA0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=XFYwVWxK; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so157038966b.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760020525; x=1760625325; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zYENJNtxtc1kPbU0AoQZVanvQQRyEjOu9GgNTqYkAdA=;
        b=XFYwVWxKwl9z6vTUGBXfrW9pKVfrOYCUN1JcsPTeUAN/phtdrgi8O+uFdqqshI2uc/
         JVm/GeyJmMFErJPpg3C9bOuZpOuz6jpPyb5l4j0VlYdq00ExTjPnRjivHJZm/2nK70u0
         TVwgx7RUlAKp6J7wXpxEc1HxnDA8JCfmLngBB+Aoi4FpuuDLz9bT+2ME4aGFGYTDWAHD
         PJFh4XmE/rYgi0N6ZZ1FM//ZezOskQinzQwfXsxTdNT1Y5erJ6o6NDG0SG9sRjIiBXoe
         gTMeFjG/wbhsb9SY8SsKd7W45Yx7xNKHvW8kspG9lh02NZJT+6kxsXdRkmnuzfBfwlty
         ttuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020525; x=1760625325;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zYENJNtxtc1kPbU0AoQZVanvQQRyEjOu9GgNTqYkAdA=;
        b=mdkYo6zot8Jg8JhwRGfES7UXLlF4TnDeiyvMGY/Y4UFCylWWI3MiKqE4bkhIVO9kzJ
         CMBZs2wBaSRLXwGpCop2/QixJ0Cya8fOhkZP0HD/Ih7hHwbGgQQQaPKvE7ABt1kj6y3R
         B6950AB5keKfbifcTGdhbNpIEeRwcq6oOKnXzRjZprLwu42jGA7QEr3WZbCJGR27exzk
         /ZMaMkQjL9HGztTjoqvbLBVcxYme+6S0Ji1DjdXZuUowGSGqdWZJGMGayJX3MbGs0NfM
         tahSvqhfYPVxDt9A7I75I4C5L/KhzYZKQIcLqiLUt47IvDZE1oLTkqi5dJ4jYuVAtDUZ
         7moQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO3PDLrJwjiPdlChF0fQNN4JW8Y7/zv8WQR0m8OojAWtSYswJCOirtefdu43uiIG1Hfzq/OzKmLX7/@vger.kernel.org
X-Gm-Message-State: AOJu0YzF36VWfBgWQGf6jAtZzRDB0mcAh+t45BpK+omGXipIG1+6lNoj
	9bbRcrUCqdrYiML1UhL2VxU2uSvHzalYJIqe43GO49gwqnj6rPgPcZEThEDjNJSal+o=
X-Gm-Gg: ASbGncv84PQTbzai+xACCJA8oDr8UFPSN0SGDbN9is1rCFHyzKc6OClblveRNrltiU9
	iQlZ53ZGTmfJTFeHoa9ou9RoN2+UpKzcm8GtzJjD/oTDKs9hSmI2M8lEh9BnXq9RRO9uReaKGtd
	VkC+LpS5CoNQsb0eOFkpnRKtIzUpi4xdjmKdu7Ck2Q3lSrr+2rR2TcetfkBQqZfP+Dw0ZZgI0TP
	QBgKhzOJc66umKkgejWLwmvJfXo2kEEtcud0wdj0Tn9MvDOSfs+YaJe6RAte5NzcxbXiBlDbt+g
	o20Wd+53CjsouS/OyfqDK6JlTFI6k5QBPcp4mt6DrsqETu1UiPvB6U94IRI8Yu3J55MbTDErDDq
	JCr4R65EXQrldFab11HCTTb0OTynU3YrJJxoUWAceHdh4JKE33TYoy4iZmEUxp4erRt7+ybWpxl
	nb5adMw6zzaFRDRyPpBjSLgYeR1RDP
X-Google-Smtp-Source: AGHT+IGnwJxzBQPGzvSXp56aICeUzxZOOU5BPT910//mGT1ooDV473aPF4s8OP70+9XJdQr/+Q2e8w==
X-Received: by 2002:a17:907:9404:b0:b07:c1df:875 with SMTP id a640c23a62f3a-b50acc2f5camr910308766b.56.1760020524610;
        Thu, 09 Oct 2025 07:35:24 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486606dc84sm1885797166b.45.2025.10.09.07.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:35:24 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH v2 0/4] Add support for Dongwoon Anatech DW9800K driver
Date: Thu, 09 Oct 2025 16:35:06 +0200
Message-Id: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABrI52gC/13OQQ6CMBAF0KuQrq2ZqVRaVt7DuMAyyCwEbLFqD
 He3xYWJyz/JvP/fIpBnCqIu3sJT5MDjkILaFML1zXAhyW3KQoHSYNHI9mENgGw9R/JSGwTt2tJ
 qApF+Jk8dP1fvePpmT7d7Yufv8aemkmxWYLNZoZWmMUYp6hyesY4qe+cmkHTj9cpzXcT9FiuR2
 Z7DPPrXujri6mYMAdTfwIgSpNuB3ilDZdnBoWvYT/040Da54rQsywfxAco0BQEAAA==
X-Change-ID: 20250918-dw9800-driver-58105cd495e0
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Bryan O'Donoghue <bod@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760020524; l=1771;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=qg6QF1rDlqVC9eUrmMm4yZVRaITIh85cFqUKkQRon5g=;
 b=0IPOGbH5/g3cluV4Dd76aWVPqMxXuQRc+3hbzdt/zNF1QAbEvPS0OTsI6XcQF49WG4VWicYAB
 BV5FWzJMsfgD5V5Oqfg+byEn353sjtUjqedClkCEM06H0NIdCm59x+Z
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add devicetree bindings and driver support for the DW9800K VCM driver.

The driver code is added to the preexistent dw9719 driver, which has
similar functions and method order, but different register sets.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Changes in v2:
- Reworded commit log on patch 3
- Changed code formatting in driver
- Link to v1: https://lore.kernel.org/r/20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com

---
Griffin Kroah-Hartman (4):
      dt-bindings: media: i2c: dw9719: Document DW9800K
      media: i2c: dw9719: Add DW9800K support
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable CCI pull-up
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add UW cam actuator

 .../bindings/media/i2c/dongwoon,dw9719.yaml          |  1 +
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts   | 11 +++++++++++
 drivers/media/i2c/dw9719.c                           | 20 ++++++++++++++++++--
 3 files changed, 30 insertions(+), 2 deletions(-)
---
base-commit: 6063257da111c7639d020c5f15bfb37fb839d8b6
change-id: 20250918-dw9800-driver-58105cd495e0
prerequisite-change-id: 20250709-dw9719-8a8822efc1b1:v2
prerequisite-patch-id: 5a1b6083c0f5df1421cfe6952dac44d9ddb7fb07
prerequisite-patch-id: db5f49e91aaf521fa487994765b4107f543531d6
prerequisite-patch-id: 76bfa65d3ff23fc827790b0868bc34655cfa93fe
prerequisite-patch-id: b76d61c90bdbf20f437d2fe438d54e707621e953
prerequisite-patch-id: 46fc09662693e6a51bb89ab4d0914265c74bc3bb
prerequisite-patch-id: 4e0012f76dd03d5653ba185a8ccc59017a1b90d1
prerequisite-patch-id: a618641cd4b7cde40825fa0d4201b6c27e74266d
prerequisite-patch-id: 8b43ff7e81258cc7624800e4bf645458a0f05380

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


