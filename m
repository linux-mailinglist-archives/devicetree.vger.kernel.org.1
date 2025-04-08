Return-Path: <devicetree+bounces-164413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 700FFA80F00
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADC6A189B997
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A4021505E;
	Tue,  8 Apr 2025 14:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="myNW9BNi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F85418FC67
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744123987; cv=none; b=UQMjrXm9MxpBHPvI6RJsxoBbTwuWfpoYx3Swet7yH0csGSHmGHLYebnKakM2V1UmZnuEkggp6QaGXPhQT6JCFubVkiAgRTbgXtAJ8RHqw0XKAwR285okfBAoCqR4/KLKYrY3Tms7o8vOw4QzcJvVFAX4mc+MuiSGVoydW3qEbPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744123987; c=relaxed/simple;
	bh=pPnDdail9gKbOc/Op+cSFoSfK2Fc132QoTPmF4gQ5Dk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Is2cOMWu06IYtY+Zg1j58h8ZrYauPEq8bfo5z6MaHVphJVMN1r1l1oVU7Ylin5PBGYdzWKA6ZVDwq9BT8XT269cYM9Ru+L8DOf1077rN6FpPVNYqwxVFNNN0TSe7qypYDypfIuoqThLWY6i940jY7WKrxanz9F4PiMsXhsGiCW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=myNW9BNi; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E0ED63F2A0
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744123975;
	bh=k8izCOaPm/xJHDdDFD/9TXU6YUDqWpAyfFlsgoxwDO0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=myNW9BNiGF4hXGw8e28I6ZIgz+izew8JlbaqEXAGM05hVUNpIyLi1egnroZFGRK+i
	 KciKHOQlba7kRyVAlSgmaGNhUR0n7js6TJBps9S4990UqaO9SKmQD0s82CddqVsk1c
	 Y9kB2X29VtFACU/JTPpBSJI7RZ4aZipgVAFD6vT8MNmZVq3SWKAdvrXzaINCYahTcv
	 ruTcL8B1euAS9ndlcO9R7j1sGVIiqm896wUdWBFV3jb748sSD3d7hObUtBJmTMMd6e
	 CwWbFxqBH4GYWjqeGe+1V1fb96T0LxXEcDs99cStVE94/m8jUls6DESXIXiQ0Fqlsc
	 LuRW8JcTfCKBg==
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-5e83e38d218so6007827a12.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 07:52:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744123974; x=1744728774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k8izCOaPm/xJHDdDFD/9TXU6YUDqWpAyfFlsgoxwDO0=;
        b=ncxTYc0eUwa4zAQ2BUfL18eWU0jXnAJh+0xfQvo8lfNfc6xgsBMgDkAfbia9XaS+QR
         5uiwKxrlB1RCaK5W/bWBwoMf2jLVeDhUoEhTfJFFJrIlgefBUHa2GH/Sebp/PtN/Eo8x
         k71NSxASCpHU2+DGfig9haLlYi3yGOBIdAMaK0tanNxmOHI6C6xXGFIjgEPGc6MVveQ+
         nSz4WWG04+uDUXsJDI9biqTkBUAD/EPzF5Ri0HSPSvsZDH+7BveXzB3U8f7prZydTND3
         4TZgYQ5hmYmyDZ/fFX7iW0XfQ/H6uJqY5q8RMzq9fsZDRhWDhKu0+4XNU1vvdviMzHiw
         6yIw==
X-Forwarded-Encrypted: i=1; AJvYcCW2iV2qsNhLy6NYW5PTOLDdLdBWnDBEHxmKayGS3EjrT0wajdTPNuojO4gDjN95XsuBSR8FJeV+AybA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr6TjsN6RfCGIcTUxOoIRgNkIQsfF/9VztfIWst/51xl94Eg8O
	nhz4X5GL6W3UAGW5QCBNkClqd66NxKTbywCcU9E9IXxZZGTb14O9LQzdEKIr5vNYlGeGDU/wprZ
	x5NS1vuAC8VrHaBMxk9yVLbw9cnmoiFQjv1zA/6xvDAMemZQUF5L0muDHvDlXtruUH/9uI7RaKI
	k=
X-Gm-Gg: ASbGncspemSESJC//3dajUZfZqwRJZ253IZi5YJxEDAWEt2s4MhBKcD1ympC0vouR1l
	dUwYDR4PJ8AP/Hz/r0GKD5JdgBPjUVlV6UZUJ1SLFPG+M8MF7LHcVYf+k2wb2csDWmCLP6m1BPk
	3cE9HHq5YYkoOPGMTuuMVKW5s7whvTsjYZF048XEEMjbopHtWfdp5t6qPIWkXTfDqLNFulQlFco
	csQKnZw6gmMiHc9n4NbCTWMrLamX/sfosqFjBYEMWHhOfLfRExSb/iUvLIsR5Db6iUl5QT/jFzl
	Gg3btNm8/omIQWpSHHDkNDxbcsDEIoMd4+bp9PrLITYJWRW1x/Oex/3yDgqq
X-Received: by 2002:a05:6402:518b:b0:5e7:87cd:2479 with SMTP id 4fb4d7f45d1cf-5f1e4188c3fmr3261207a12.8.1744123974527;
        Tue, 08 Apr 2025 07:52:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcX+5iiaGTvTWHOKgU4/jBtFcVQEiD0/I+kzf4/E5t3Sw5vLrdV7azNvN13KBi0nf8BogTvw==
X-Received: by 2002:a05:6402:518b:b0:5e7:87cd:2479 with SMTP id 4fb4d7f45d1cf-5f1e4188c3fmr3261185a12.8.1744123974115;
        Tue, 08 Apr 2025 07:52:54 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087714e11sm7999064a12.6.2025.04.08.07.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 07:52:53 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v2 0/3] HP EliteBook Ultra G1q support
Date: Tue,  8 Apr 2025 16:52:48 +0200
Message-ID: <20250408145252.581060-1-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
References: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the HP EliteBook Ultra G1q 14" AI laptop.

Based on HWINFO64 and APCI tables, it seems to be the same HW as the
HP OmniBook X 14.

v1->v2:
  - Don't rename the X14 dts to dtsi and directly include the dts
  - Add a label to the sound node and use that to override the model
  - Reorder the dt doc patch before the dt usage

Juerg Haefliger (3):
  arm64: dts: qcom: x1e80100-hp-omnibook-x14: add sound label and pull
    out the model
  dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q
  arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook
    Ultra G1q

 .../devicetree/bindings/arm/qcom.yaml         |  1 +
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../qcom/x1e80100-hp-elitebook-ultra-g1q.dts  | 36 +++++++++++++++++++
 .../dts/qcom/x1e80100-hp-omnibook-x14.dts     |  7 ++--
 drivers/firmware/qcom/qcom_scm.c              |  1 +
 5 files changed, 44 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts

-- 
2.43.0


