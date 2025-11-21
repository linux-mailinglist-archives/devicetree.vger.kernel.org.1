Return-Path: <devicetree+bounces-241219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 98276C7B0AA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 18:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 001E3344B09
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7548346E54;
	Fri, 21 Nov 2025 17:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UV+7jSuF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4B6342CB0
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 17:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763745400; cv=none; b=Ovh/J2mDDn6zeDhUe1zLVHjUjLlo7JD8RJoUy0+mIkK2NOkEGWOyda+vFMoaXK66zJh2BekMwbCe+xdhGi4JYECyLmslGGVly+gzQH7Z/ZwPOCZa7xLfWRmjC1kJrt0nUxNWilTpjjbqDuZOCm+jJWAhcXeRTqOvuQyTkdS0Noo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763745400; c=relaxed/simple;
	bh=SkLzZ5Rd4z/hR09+MOL5og400mSYcS/W6VZzgWxZRzM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DHsf2cwyM3c40wvcpsqT4RccZXz5jgfHy1hsSfcWoerkvHLNV0C1Mkt0VbBgmc3NMy/d2pVVQ9cA7wdZORTLCXDxx6sr+qLs1MfWqGGW6XrdBdhL6jRYPwV6fySHrocWpC8TdcShVemaIvnU737YBJB4et3+nw5tXCHEAPAxrzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UV+7jSuF; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93539c5e2b5so1240905241.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763745398; x=1764350198; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t+pdDwG6dzXuJBegjHU77HvlovlFjmyHVEdno7rJHvc=;
        b=UV+7jSuF9nEziGK3jib2z4+ng5Kg3R5j4ALSWEe3CNwy6/qpVzWeRiUIIXq42TtQcK
         W/eShYRW84Vr/7AHDiA6UrL17vYcJzvl2U95f4LO9XoX6mtMcEmZOgvixM8CMY2a+Zo6
         8iF/FYk67XsE2w2RqxrvqUy3r7skRjJNbjbtU9M4+mhwfAV4WeDxgWVDlRVCSyeq3USf
         xYTb8UBwDSepX/ftJinw3wTx9XSbKfihuFyBVRfD89HwiuMM1npDmyXJo9LtT4A6HD+w
         ecHyiDV0DjkE6cjuV7OsQKg37P7Wazq+jRV5TnPGoro9A+2W6iT41NfOkJDZMtk27XEn
         aOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763745398; x=1764350198;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t+pdDwG6dzXuJBegjHU77HvlovlFjmyHVEdno7rJHvc=;
        b=oZmi64RA4T9aIWa2eDvnojEDGybsuTokuFHuXZTKeCykQbcSeHYLoILFMjEh4m0ySM
         nkSj+cw73MyfLk8TJMB0ijwqVbJkptIo2md7gYlATRpEXE1c+tHWnXTniQ55IXTTYxNJ
         RSxajv/T1k3WIs/ZG1GB5qISC7w5l/75SOSNvhPly9SVHjv/0zucKs/xcNXrHJByvLOT
         ngke1CNNILoNUhX9gwy5rPPnqnBigki97UdajWznKkDzGOxnX+oh55vIvlOuq05JaQ9W
         2lNO43YD/HTJ7mqNvxfwqZrg0yHzDT/2qBzZiB5K/5rDZGYt/cw68Ie8sQE3ydiHoXAL
         827w==
X-Forwarded-Encrypted: i=1; AJvYcCW58DWZtA8DSUNUIWSNjWmyaV9Ytd3z6IhqKFK0IfMaAU6PQBATllQ4xdZoa5g+cgV1OMe7rnTkgzr5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy60iqbHNN6M/Pih5V3eS9Tk9TIIz55Rwv3l7xU2rNMkkm91Att
	xP82soP3ggpWvRt0qtERddRJ+SL1SW76BoTHXbnPAOD+9J+6bj33K3GOhNgEDA==
X-Gm-Gg: ASbGncsEN54BQKMyhyZuh1ysPeDHUZURgBGM3byFak/AdobwWSDHjaTwLxqww7QsCFD
	iEt9JxJVMrgth2vhX2sb2f+iL5Z78xNEQjRGMuKRbJUxBmOMBiWvCtkE/BrUW+EhTbj8xuCItKD
	A34obmucDdnNYwcF3ryPBzfS0MoIubL7Zmp1GIPuNt8aeig/hlG5Vsn0JxzVYbIG4Jl1ujcdVu/
	vFDSrA7R74edUnzBaDmJtHTRtl7yVP2vqO93vSxm8qkeS0s/1Oj/4bve/YCpH5PzQio3BBsK9Mt
	YATh2hAo9PutwhabXosMvcE2FBpQZQ2j0lnm8KHKzim0oT7b7YcyeAPj7+alzz66/qfyioqOCTt
	nsbk6noQjvF9DbOj6VgXGBrX5bzrEGScdat3GSXrUt9ql3c7tKWKtw7gRHPKnqmD/WTn9HD+BE7
	AVlO5f9Lg11ZrS
X-Google-Smtp-Source: AGHT+IF8/Ex/eDUVlLmdr1+X5s76Sr+ZCE3NK6DYE+c5IyTnbzkxdfegbW2OXzGM0O7lBMRkfsguUg==
X-Received: by 2002:a67:e114:0:b0:5e1:86cd:21a3 with SMTP id ada2fe7eead31-5e1dcf41e1amr1261335137.14.1763745397783;
        Fri, 21 Nov 2025 09:16:37 -0800 (PST)
Received: from [192.168.100.70] ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c562728fdsm2554368241.7.2025.11.21.09.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 09:16:37 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Subject: [PATCH 0/2] iio: Add support for TI ADS1X18 ADCs
Date: Fri, 21 Nov 2025 12:16:13 -0500
Message-Id: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF2eIGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0Mj3cSUYsMKQwtdgxQDc3PLFAMzM0sDJaDqgqLUtMwKsEnRsbW1AOj
 JF21ZAAAA
X-Change-ID: 20251012-ads1x18-0d0779d06690
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Tobias Sperling <tobias.sperling@softing.com>
Cc: David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Kurt Borja <kuurtb@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1112; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=SkLzZ5Rd4z/hR09+MOL5og400mSYcS/W6VZzgWxZRzM=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJkK8/Kqv8yQ2/Z/SULi0ZeLvh06uOgge1mbiSnjH9HQj
 ROjPkRKdpSyMIhxMciKKbK0Jyz69igq763fgdD7MHNYmUCGMHBxCsBErj1jZNj63jD5bFf4+WYJ
 yV8zbHa2yjHOZ3HbLGX24wOv3pKYNVEMf/ificq+XPk3v69xubjbZbuzm17uEdSwLnn2u23BpuP
 9wpwA
X-Developer-Key: i=kuurtb@gmail.com; a=openpgp;
 fpr=54D3BE170AEF777983C3C63B57E3B6585920A69A

Hi,

This series adds a new driver for TI ADS1X18 SPI devices.

This is my first time contributing to the IIO subsystem and making
dt-bindings documentation, so (don't) go easy on me :p.

As explained in Patch 2 changelog, the DRDY interrupt line is shared
with the MOSI pin. This awkward quirk is also found on some Analog
Devices sigma-delta SPI ADCs, so the interrupt and trigger design is
inspired by those.

Thank you in advance for your reviews.

Signed-off-by: Kurt Borja <kuurtb@gmail.com>
---
Kurt Borja (2):
      dt-bindings: iio: adc: Add TI ADS1018/ADS1118
      iio: adc: Add ti-ads1x18 driver

 .../devicetree/bindings/iio/adc/ti,ads1118.yaml    | 132 +++
 MAINTAINERS                                        |   7 +
 drivers/iio/adc/Kconfig                            |  12 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ti-ads1x18.c                       | 919 +++++++++++++++++++++
 5 files changed, 1071 insertions(+)
---
base-commit: f9e05791642810a0cf6237d39fafd6fec5e0b4bb
change-id: 20251012-ads1x18-0d0779d06690

-- 
 ~ Kurt


