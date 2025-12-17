Return-Path: <devicetree+bounces-247212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC303CC5B52
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:37:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91675300D434
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 01:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FB420B80D;
	Wed, 17 Dec 2025 01:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N4CD9P7u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2D15478D
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765935471; cv=none; b=sLmM6w4ZJS1As6+HYK7JZ1lVNKdl0dyxAGeZ7ls3HL47nHbDNdxQpMxnBZ136WO59Wur9SX6O5PvOr05nvhalysdnYXqtlklRTWJr/Y9Mg3ovBaCRQPQoPpXfg4Xs15PYeoBoawHCCTQC25zaLXeYYuR1rB4skhffsbsKXRbK4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765935471; c=relaxed/simple;
	bh=gKtXGQRkB7K8RhQYceQFAqkJJOMwCgx7cAIzZ1mn7xw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VV5DuHW64sq4zpr3w+4mbQILE9f9/VqOCmdjZiW0iPr5dH7ZcotNXc6VSr/JWLOjbkduD+BGeP0GysCGCeeb4GQmVPIFdZYJmyq0sWJhVnvXwNUgYBuZEr64IuA6AHUfGhdkqp03uThuElyqVZX7fCPa2E+K71feDVKAx1TQwOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N4CD9P7u; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7aa2170adf9so4271227b3a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 17:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765935469; x=1766540269; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5j4yKgmJTnmINmW5QNwPvpbKuvShDpP7IKQXVbD8ZYM=;
        b=N4CD9P7ue5TjLfSI+H1l5Lm2pkWqX83wenYECwHc/akS0YnMfbeIjMi7x4OcTrWzCH
         LZRLSeNwUpSGTY9JAEiYVxWHwhHjFOMfKzEop+Z0xzlbZP66eFDfUIhOJgrJprxI9H9O
         SlUwiHbK+hVvqim8TisCQqYu0e43PoXti7OVyO0F9Bz3rBSXphjqRimQvxVL2ume/0wI
         MVSGyuWEdVy51yffIARMdbbutnqyHZOn4FsJsq+xT6c2nUyyoE47a4LTHX96dW7f/TYv
         KW90Cvltlbsai1e7Q7rpVvuJqCiMrr2N1aFY0JOBe7HpOlaTJf1IlVRRfEOcyBpu3Kb/
         bdtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765935469; x=1766540269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5j4yKgmJTnmINmW5QNwPvpbKuvShDpP7IKQXVbD8ZYM=;
        b=jhalIpd2F7SeRTTDxrnz0ZE+9W8E+fWNgIEFgbouXZbmmJU5Kes5ndRjEiqBsxNGmm
         9S5gQ7M9EteDYncODe2LoUmP0GYpE/+AuBt+XScaMeZTua3j+62JBeCwF/sl00QO2I5K
         yRlVWw2GYAWGqc0HV8PgHAptfacq/3LfMJG1YMrFsUEGqZkluaG1LvOd0KIDtnJEpEkA
         f1ol1esdpooLhv6i7TO6fhPhhxSOaIkknNGdrH4upDOFW5AmRHKaycWFr+kBCbHK2AdK
         qkPyeiaCDlwsd+3C8ByEynYdlOPMWInxxF7vobsDQMrUBrn1QoOpLu29Ce/aqziLBMAV
         JD2w==
X-Forwarded-Encrypted: i=1; AJvYcCXhM7n86VcYXaETAO+rXwK6+2DccfsBjZGcwkmkFY8qBhbVLYoS2xePe70rhi7AWAKJPEjQE+fAehYI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm1IJRNqHplLvKuWoVHav3RU9toBfJLet0R2T/VHQn5fxFxuPF
	R9hZTRhICd9XU0PgizM0nge5dYQreQhr1+6AeH3fAmfVwMVQEPPqFhKf
X-Gm-Gg: AY/fxX7N3JGL7Nrn88LQzeNYFc56Fhvptxsm1OI/7nyVvk2+LY4KWh9qNxgY9i4L4ad
	eD9Z2UHXMH1Vdk2RF3weUdZkMcOY9AnCFmUmeBAaEeJqJaDp70UofZ9W89pmIGhWAi9rroPtv4d
	oPyov5CvaAlRp4m1v4ZA0MKtpq6JaMSZA4TY0v5m/D4DdYBVoFJvNFLSktHXyZIbFf6lcdixSaK
	Xn/MSUFrwno43wdQkBCgmCTTDB0H3xyN2NWMrqY9pKBvO59ppnNp7mJHemGUZufE1Uu8m3dg2ZR
	HiTpbo25DyTnFBC9RRUX77QaMD/XaZUhgg9GFMyK18/KJs+gnz1XTWI1nZplx9mBCo3yoM5kuU0
	nCRYg59mFmtYrqC2qIq/j79v0R37lWgZCjnfYucSraBDX5LlzoFK31UH5Bg5Fl/r41e20uk3B6S
	2Yf9eMh9krFJCPrRg3woCFHX0907bfLTq7+aHQtxdFav/DOCY7Vg99XJXJe8Ef3jvP6hpzxcgsK
	E9NlYMVAUkqEbVKciw5cRlHqpu99TI=
X-Google-Smtp-Source: AGHT+IG1O61yPGRFU8qH0+tJNlkjqwcosg6PVoulV6axa9z1bSjUTORI/z3d5FkbYwklkNXdhhYA8Q==
X-Received: by 2002:a05:6a00:b488:b0:7ab:2fd6:5d42 with SMTP id d2e1a72fcca58-7f6679361eamr13832333b3a.16.1765935469525;
        Tue, 16 Dec 2025 17:37:49 -0800 (PST)
Received: from charles-System-Product-Name.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8745633sm848616b3a.5.2025.12.16.17.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 17:37:49 -0800 (PST)
From: Charles Hsu <hsu.yungteng@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	Charles Hsu <hsu.yungteng@gmail.com>
Subject: [PATCH v2 0/2] dt-bindings: trivial-devices: fix STEF48H28 entry
Date: Wed, 17 Dec 2025 09:35:42 +0800
Message-Id: <20251217013544.363715-1-hsu.yungteng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083712.260140-1-hsu.yungteng@gmail.com>
References: <20251216083712.260140-1-hsu.yungteng@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the STMicroelectronics STEF48H28
hot-swap controller to the hwmon/pmbus subsystem, including device
tree bindings and documentation.

Changes in v2:
- Fix the entry added to trivial-devices.yaml by correcting the
  comment and compatible string ordering.

Charles Hsu (2):
  dt-bindings: hwmon: add STEF48H28
  hwmon: pmbus: add support for STEF48H28

 .../devicetree/bindings/trivial-devices.yaml  |  2 +
 Documentation/hwmon/index.rst                 |  1 +
 Documentation/hwmon/stef48h28.rst             | 73 ++++++++++++++++++
 MAINTAINERS                                   |  7 ++
 drivers/hwmon/pmbus/Kconfig                   |  9 +++
 drivers/hwmon/pmbus/Makefile                  |  1 +
 drivers/hwmon/pmbus/stef48h28.c               | 76 +++++++++++++++++++
 7 files changed, 169 insertions(+)
 create mode 100644 Documentation/hwmon/stef48h28.rst
 create mode 100644 drivers/hwmon/pmbus/stef48h28.c

-- 
2.34.1


