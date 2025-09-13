Return-Path: <devicetree+bounces-216823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D501B56322
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F8B1A0746F
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A1A281370;
	Sat, 13 Sep 2025 21:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eCixbt7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1FEF23A9BE
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798488; cv=none; b=SYc0quYn/kzHSXOdZRMzCoerG9wIhEIiUvtPTj7QgrMWsiM8nHsakdBAUnzkPq6fXgMZDI7ZRZoNbD+pCbbSeytV146X5D8DW7nGoY4dDap4baCjODBDpkZ4ST4pGC32pSl+s7fjiWUP1NCdl4fg74V/mp39+piG2GSO95HApCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798488; c=relaxed/simple;
	bh=TYNRK4+bphtWM7te51Y2NO2PW29CFLfANZF+pOwh/qQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=S5yzEoY69vWHdZJQ4zXJ8P8NC7Echt1pb4zxTBU1fiiA1pcefqXVc7ZkzKhfbqp2axCagmhSOiOTnWFKiFcx+RHoqvQxtesPYvyDqSV/YjAIimtaeYWAmkGfgr9bvgbXgiQywcTCbn1RZNcdcDJxowlRgTp+bZyhbsMX8dV3/lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eCixbt7L; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45f29d2357aso2302275e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798484; x=1758403284; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UUfEoumCbzIEx8AGvj96Z7JPRJbPQvAkGwx1CilBgwE=;
        b=eCixbt7LOfEiH+E5nkfZgb4/8nLdEDQTSesLwxt0ZVhx8Ng9bPN9Py8eC4Ej5DLt29
         UeJdh5Gfc/foh5++YOHuousrgQOWpnO9eyPuo0uKs4aZKdAS8oZhRB7ySaQvN5tAcH3T
         HP1x427+quB6qwnpkqdAn9WgF179YfFELVdFLFZ+gDutnSA67i/3+jZCVcY+F+f3fsTk
         KbV7kFwFvzZYX8DyIKk485iXapkza9+1OHysvXLyUCedSPs8yOyf0yMG5IFLwtZ8cdNS
         1wEzHME5gUgPL6N+f9FzsQiNwdTKnJpUKr7VFrAKnOXTfZD5fLBvhXTnR5VPK+L9qRdG
         oB+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798484; x=1758403284;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UUfEoumCbzIEx8AGvj96Z7JPRJbPQvAkGwx1CilBgwE=;
        b=TsL6mDk2rHNzVvUzGhPUO8iM+PmGH7KKWGnKYLpr8335dLkTlmStDyUbjpjmFyDHId
         j8ME8H8SSvKbF/rn4EwtTdN4gwrzjCL6fB2M0jIyu43hNTnoYtF8RoWkm9ADVNrrcxF8
         UGRraTRAnTYgs9OS6GLYrGk1gv/y4YZPf32g4a5CSF139Jg9+vnUT/sb3LoTqNkEs99y
         uTNnCOxpAII86/GVxSrvys8rsU3K+v0hXscKVEOSoW6q5nQ8ZxpjioZCu4F2Fb8RCy1f
         g7Og5mymmFeLTYXPw4v1xCLFPU4EW73UXsWACiNmpw8aLuJ56eQFyWx5MXzzJ7shXsRQ
         ZQxg==
X-Forwarded-Encrypted: i=1; AJvYcCWbyk2Ns55GR4hElfKI5E/18nRbVlJs3AiInEXnb+IYbe70qnRemEpGWiZumDy5A0x9sQCUoOLgfpbn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfa3Y4Lhl0qfUPTnN0G2WlzNFsHwb39/kQwGgup20gNVrAJCne
	vgSnmQBo+u/030GTuZbN2ldG8eo3H+ZCSClzjW59nWizoKRJxe4+u3HG
X-Gm-Gg: ASbGnctGfKbtLI/CLprKq1AR8dnqEm+Dfte69BHoIHbJjjqaShjVopdGRvRGCycCosc
	ROwcFwRd1D3yqLE1gpr65J3NK7a9ZmotC2wW9l4vIm3Lm6irLy0dz9Fip48BFT10hMSUNac/MNl
	2l2xo39OPSFAcDyo+v79WZAoP0r3Ro/NbEL8KbYXp7oOGgPc1WtbRYBiHWPP6e20K+KnFTSZLtY
	mfB3W3uuFsqazpFuh2kZ9YPmSnnJ0EKqpb9T+ZIj+QbR66UrIQNsB9C8rzpredqnkxU1aM0a6wb
	niIcGARcZvhfri12TKU9cUyqIuQRe7qikz7cnLaxD37O7BMZBw1f+YOq2sYF2hX3ZCHtRoGqkK3
	URlqMGQ/2JEOq7NmGfoBUDOFxNGA+xR524tgIrLEgV99SgJALqH+N
X-Google-Smtp-Source: AGHT+IG1Lbyz/LuhSCMvFaFvWIQA+e+oeS+V5WfPI22yr5MxxdIQ2TC5LggKVWnkSIrVed1aQHOliw==
X-Received: by 2002:a7b:ca5a:0:b0:45d:e0cf:41c9 with SMTP id 5b1f17b1804b1-45f211f89d6mr50232345e9.22.1757798483764;
        Sat, 13 Sep 2025 14:21:23 -0700 (PDT)
Received: from Radijator.localdomain ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd6absm11576842f8f.34.2025.09.13.14.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:21:22 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Subject: [PATCH RESEND 0/9] samsung,coreprimevelte DTS additions
Date: Sat, 13 Sep 2025 23:21:02 +0200
Message-Id: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Karel Balej <balejk@matfyz.cz>, David Wronek <david@mainlining.org>, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1213;
 i=duje@dujemihanovic.xyz; s=20240706; h=from:subject:message-id;
 bh=TYNRK4+bphtWM7te51Y2NO2PW29CFLfANZF+pOwh/qQ=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBlHH/jV+J233T/1YRr7LA/+q+zzuV2uNy35qlfiltS9f
 7PmHwmdjlIWBjEuBlkxRZbc/47XeD+LbN2evcwAZg4rE8gQBi5OAZgIexPDXzGZg+FHP2t9rNgW
 nql9ZntQ4APjT2v3POL9smtm9o0HgUwMf2Wkwv6F2M472b7v/66Tv1cwKEc9YfYV6PBy/Faiyt6
 1kBUA
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

This series adds some hardware support for the PXA1908 SoC and
samsung,coreprimevelte board which has accumulated before the initial
support series was merged.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
Duje Mihanović (9):
      arm64: dts: marvell: samsung,coreprimevelte: Add backlight
      arm64: dts: marvell: samsung,coreprimevelte: Correct CD GPIO
      arm64: dts: marvell: samsung,coreprimevelte: Enable eMMC
      arm64: dts: marvell: pxa1908: Add PWMs
      arm64: dts: marvell: samsung,coreprimevelte: Add vibrator
      arm64: dts: marvell: pxa1908: Move ramoops to SoC dtsi
      arm64: dts: marvell: samsung,coreprimevelte: Drop some reserved memory
      arm64: dts: marvell: samsung,coreprimevelte: Fill in memory node
      arm64: dts: marvell: samsung,coreprimevelte: Add USB connector

 .../marvell/mmp/pxa1908-samsung-coreprimevelte.dts | 157 ++++++++++++++++-----
 arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi       |  46 ++++++
 2 files changed, 169 insertions(+), 34 deletions(-)
---
base-commit: b320789d6883cc00ac78ce83bccbfe7ed58afcf0
change-id: 20250902-pxa1908-dts-65d86a5d2d85

Best regards,
-- 
Duje Mihanović <duje@dujemihanovic.xyz>


