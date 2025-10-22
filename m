Return-Path: <devicetree+bounces-229579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C89BF9F94
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C56CD3AE0A6
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 04:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45A01DFF7;
	Wed, 22 Oct 2025 04:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="G7JBiS9L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EDC2D7397
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761108432; cv=none; b=E9saGbRqysiAptnCtAfjyAYu7BdbVnoeGCbq5xdSR2iGetJCJsoXMtcv2Vaw2py3po/XX2DWQhXtnck6so9R3gfAn5ERAzAm2Zez/fe2rgknmfCh5EQO2h18078bmkX6xK6Uw8kpvem8MvkZQ7nF+0cZd4WUgFcyqDrs5Z2rqJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761108432; c=relaxed/simple;
	bh=DWS7b0OXi35GUhqaHArR2mIysKoute9ykjs7q/LnTyM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hUqjJW1J18K1mJTDFCoaVNR0eHXyAE/17FWCKAAiUqa33TdKIk2agObvLhFZEmjyIbyFhVpc6sTIW1LlhaiYWF3FJSU03kr0Ao5OXqPciEH4wN3nGVxl0UC1rz8i+TNvQtIn5EOQuZJwfG/m6pOVWQXsfaCmeNbT7R9lSoKy8xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=G7JBiS9L; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-33ba38ed94eso6973523a91.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 21:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761108430; x=1761713230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OBuTemYA/SGUaF+DBF41ycHM+zeDM425yx/z5PlZWVc=;
        b=G7JBiS9L+3GrHf4wseXIOFIEvK+EEblLVdX4IdLaVMl0KvPb+gWbsg5C2sdCX9cS4J
         MUOlVR8FexBqW2BMo8wMzqCSP/4GKhYw9ryofYizqLgk8oeJGKBTSDLNtJgSkYl9dmEv
         GZQZzmhp3v/AzLb+g8Vt/CdQBxf8mt4zgqByQNOLsIi3C9WOrL5Ig2MKrPGmeZ5xiYhk
         6z2IDXfqpBcxAQqCtUKpCVFMjehAfpMJhqzpTLr+J2oxyl+GlDsbHEhLQfwoV79mVJQd
         tG239J3aCJOCs6sYiNfDFINEEMsYQcLJ0ZkDKyTYm4T8wMHdZiyGWQzmW6aV04+OiU9C
         JHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761108430; x=1761713230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OBuTemYA/SGUaF+DBF41ycHM+zeDM425yx/z5PlZWVc=;
        b=AEJwRf+Cr26jaDxk6v/ci1rBe956oBfSEvkDwofW1AEDe3TTIA5B0ifWOF5/iW0zNS
         Myl64p/hHwyvSh3/6p9G977pl33z++thDlZwW55uDcLkNmE8T/CRvKgXmF7PHn8I5zed
         nMWePhd0jPI2gWfroAlGjUgExOfiPtXxAxegoBikht+DxVAU/KGN05NMTCELm7RHYKxX
         QKwW3zPZa22uS+1DyV0iYZsGFMf26PSf4JSVFOoeJ4dSyfiq+Ec7NCRumMRrf77zUgQ3
         b3KzLPyUb0dnmIxTTt2ISUm/ZMKX+zOkLex8Bq/4Om9XOjwM7zhG2HQ/6C6czR6M1Lgx
         RMLg==
X-Forwarded-Encrypted: i=1; AJvYcCX1dYfz26GIgtYk9oM/9o/vrchjMuN848t6jNsC6y5jkQYSs1gz/cBGvvl5/UFqsOF+SRaoNEg0yZAd@vger.kernel.org
X-Gm-Message-State: AOJu0YzeQSY23NXo2m/Z3sU08sa4ltKh+R1QZI2iRMuLLljDRPRhhtI8
	Qn6sCxo5l8420uBKjutKfmSMbMPu1ky8zfU/MBKrKd/MqrqnnSmgZEBRacv5JieqPQE=
X-Gm-Gg: ASbGncvTWaMrSTEOwMS9NnFpnhj/YXNwFI3BrnJmfkrJUQSdoxpItlQ49e2ryryf0vR
	nYQcY0OC4+BM95onSjNM+JkUu5ZIoBbtMXIZXgOR0JwpdWq/kf49z2ipBHIkw0EEyad688sajqt
	B+/XuNqljNYBRKHSd9vhs7TPUQ8tWp18sFuPqv0ce1fG1rhanI5lMZYP8S9K/3MmfyWKUIH38K4
	7UCwy2CtZezKrI0GBBMh7z9OBqK9vLWxw+8mVPB+c/2qI4EzCuvMWxrTwudZJLgT/3zj2EZFFzV
	33JWNOdRgwNQw8vRWvGMRbgHNdqb086Zm2slK9Q+krJeZ+H3bn77QB7EDjO4x1CsFChgB74pCNi
	AlwabdkteZYDS1nQzREheA/Bsot5hxbgnqB+9Fc4jnOEo6O7k4FmuLVusxrPsXqKLHP+0ncZVKQ
	4fRPO0GQAFipKmlCQ=
X-Google-Smtp-Source: AGHT+IHMzyYghXKArrXF4a3abFsvEWo0yK9xR3k3Ts3BFNdVJw1LghdAf673yg3EmO+eQ2pXjMB9AQ==
X-Received: by 2002:a17:902:ce8d:b0:272:a900:c42e with SMTP id d9443c01a7336-290caf850b1mr243342655ad.35.1761108429966;
        Tue, 21 Oct 2025 21:47:09 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:8004:e310:f3d:dd0])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223dd9d6sm1257413a91.7.2025.10.21.21.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 21:47:09 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH 0/5] hwmon: Add TSC1641 I2C power monitor driver
Date: Tue, 21 Oct 2025 21:47:03 -0700
Message-ID: <20251022044708.314287-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the ST Microelectronics TSC1641
I2C power monitor. The TSC1641 provides bus voltage, current, power, 
and temperature measurements via the hwmon subsystem. The driver 
supports optional ALERT pin polarity configuration and exposes the
shunt resistor value and raw shunt voltage via sysfs.

Tested on Raspberry Pi 3B+ with a TSC1641 evaluation board.

Igor Reznichenko (5):
  drivers/hwmon: Add TSC1641 I2C power monitor driver
  drivers/hwmon: Add Kconfig entry for TSC1641
  drivers/hwmon: Add TSC1641 module to Makefile
  Documentation/hwmon: Add TSC1641 driver documentation
  Documentation/devicetree/bindings/hwmon: Add TSC1641 binding

 .../devicetree/bindings/hwmon/st,tsc1641.yaml |  54 ++
 Documentation/hwmon/index.rst                 |   1 +
 Documentation/hwmon/tsc1641.rst               |  73 ++
 drivers/hwmon/Kconfig                         |  12 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/tsc1641.c                       | 801 ++++++++++++++++++
 6 files changed, 942 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
 create mode 100644 Documentation/hwmon/tsc1641.rst
 create mode 100644 drivers/hwmon/tsc1641.c

-- 
2.43.0


