Return-Path: <devicetree+bounces-219468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C05B8BCEB
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D24861C05757
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 01:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C9B17BB35;
	Sat, 20 Sep 2025 01:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dmmgozi9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314BA135A53
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 01:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332824; cv=none; b=n1Quyvz4TQDDTM8pft6c45bMQdHjK2Niz3XJuhwLSqR99kzHLYb7F1344qNVbfSOxJnvruaUOPZdgh1ynR1jisy5tGuyzz2IMqE6toFBmhrII2CQe0AAJHvWcrz6TWLmkFxjY9vw+143UffOEd/2Q1iPtyxh54GuN411Ix4fG00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332824; c=relaxed/simple;
	bh=wDMWA1XDRYyfWXmf2uFObk5LPGfLk4nxYuVObBjxLQ8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qAMKsZdM35va4rjzKhk3ShORIZbV2nbAQKivwyCtnxGPTF9ywNrxB//TkELCuUA+dBacWZEIXMUhkMWpUByNUI8rg5OUuOgbwd/DIDWm+P3buGh5odRtlkSeS6rz/dxqRL5wCQCSJGMPPDOTlEL6ENMtuFqPTymksSS/nsHPDEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dmmgozi9; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-24457f581aeso27711775ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758332822; x=1758937622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ItqGWvE73tEMGd0HU8fsZkdI93BYRYkpjepUbVRc3aY=;
        b=dmmgozi9j05dxQDBS8nX6IBdyiU4VhIvtQl35ajIz65Kq1+gwI97pkJPI1Z3SuBNGx
         8TFwjvGX2NwRpTcPVbYG/Onrfvd90S2A0kAL83H8Wxu8fOaU+DVWwfoafpF/jeyjd2Pw
         agsGyxG+my2qfwUats5rX+3zLqY/5u4b8sHsDLaiTWk8uefHnKKamNtq5c/Q1qNlV0fO
         dQKuTu5lbNyrCfp04ctzlGJY6mYhsy8aahOeI81tML56y4JNgV964neMJVJuQdBxO5cG
         R9ZhQ9ma46p0bn38iAmd3v86pCELtHVFkFm86CtwJlxD6xX7Zph3SV+i+o5zEQRG5D3Q
         JOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758332822; x=1758937622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ItqGWvE73tEMGd0HU8fsZkdI93BYRYkpjepUbVRc3aY=;
        b=N89mC3CWAOTSDnwHC97zJigIeh5uFB5kSzefb9iAPddmnBZBHcjZCZ+wQKARfoKStn
         qevrvmpAgay5da2r4yKvitmXuHC4UEciHe/jsafkC5kaGbq15pbiYWianDAv+MEWtho3
         cJ3lBLx9jE0X+rbohXRarbzM10hJ2O5sglfXo9WWUAugoArQ//uC1K/4SJBeq8P9lTW/
         x+y2CEF0rbWDsBfdrFgiYNp1K7hrzU4etRyyvAVKyBxHL/IX4oX8KyoXLXQnXDAEzZdi
         KFwaaiFhRtEAOi6J8ngK8rPm+7VBa5ifaePmsvbJ5B+HAZv4RIX489pUoPsWPdtQTuNq
         bvXA==
X-Gm-Message-State: AOJu0YwMjgxOjxJfcBcfvFmbs0GAYjQpxV1uwEdtBcfs577JmT7GeohO
	1iISFVDmNbwuDqszzqA6ElgSSgoYZmfcPa7Xrmgd9TWj5YGfte/cExiu
X-Gm-Gg: ASbGnctjjg2hvN//pVWUuOPQeaRo9bMrQHSuJFTMTmIGv3HX+RkB4faxktPVFmIqNKp
	ZdWFswIDaC1UpcT5a/mkLxUiFXNaITf4WtuOya1HaZruy1aApx3MYEDrk4LdUarsTr5IqlUgLYg
	1+2E411Gxbs0fp1UXqW6ecU/hxXRy6NodDjtVKO+bHq553qfzRfbiQvV4iIuugMHMZQ5XpLeJrT
	nVMWpJxDfTw/oqfnZ2/JQSNQwvqQCzY0dg1WJtB/z0DvN/n+bEVKScewtPk0PvIEtbJ2nkQJiw7
	25oR4V8A4OnGO/N90VdCrFvoR3zkTFW8BwkF0oG42HAWVRP4dB8aE5/vGbaAWi73UhL8P6OfSly
	QHNvoappF9zfQlTXhQOMb
X-Google-Smtp-Source: AGHT+IFhVtPRrzUa1oA5+mrndWQ6aoOCM+peC2mKSWqQa5wNTYiIDbb7fZTmJbOHy0FXAk8jpurd9w==
X-Received: by 2002:a17:903:1cc:b0:24c:ed9f:ba53 with SMTP id d9443c01a7336-269ba517018mr68430995ad.29.1758332822392;
        Fri, 19 Sep 2025 18:47:02 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698033c922sm65709455ad.131.2025.09.19.18.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 18:47:01 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] arm64: dts: qcom: r0q: enable more peripherals
Date: Sat, 20 Sep 2025 01:46:32 +0000
Message-ID: <20250920014637.38175-1-ghatto404@gmail.com>
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
TS to be enabled.

Thanks!

Eric Gonçalves (5):
  arm64: dts: qcom: r0q: add gpio keys
  arm64: dts: qcom: r0q: add touchscreen support
  arm64: dts: qcom: r0q: enable max77705 PMIC
  arm64: dts: qcom: r0q: enable hardware clocks
  arm64: dts: qcom: r0q: enable ufs storage

 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 308 +++++++++++++++++-
 1 file changed, 299 insertions(+), 9 deletions(-)

-- 
2.51.0


