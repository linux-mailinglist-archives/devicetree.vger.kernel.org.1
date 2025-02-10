Return-Path: <devicetree+bounces-144563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8372DA2E7AE
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D86FD1886FC8
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13061C07C6;
	Mon, 10 Feb 2025 09:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MvAWtK7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40CB1B6D15
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739179882; cv=none; b=PqBZQK7m8IphQBYBbrqz3ZE7Tn9L2eNFmnvi52betO0c4Li+FWfkhBVl8UE+DLAfj0GbfTg9GnknoNt1itvPijOnNGk/wDqKYLULaa7LoL7JCZK+aGAmFnTV7r0HKV857srUqV2YFAiXEuTbW1SEYOETEZWWDmSSpRL87yrEw/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739179882; c=relaxed/simple;
	bh=PbZVAwdPt648lZ/TneEvg00BNbg8dqUm4qDKQj9ymcY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QirmYrQr0Om4ZnLHKBT6Iu7Lhi6IFMBpMdJkJC+U2nOCTCPMPBFurG8mKpPphvkodTDB6DdgrW7NdQG5MKtlmN1pXyl6ky8y3+qpwLAMF6PU0j8epvHqWXYouvGrbcoAkZ+OM0ZGgLDCI0vqGCYxDyfE+jtXrleLKD+z0tzK1WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MvAWtK7G; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-308f4436cb1so2725921fa.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739179879; x=1739784679; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t2hoVQYicuZ2m33t81d8plIbjrw9+RjXqm/sMzy0VP4=;
        b=MvAWtK7GwxfR4i6bpjzMk2v+KMyMzg3A1p975YkvtGLAvPFo5YqJSBP1C77KJYLEOv
         f30sV+wbCoBtTp7paoAmV/Zrly8kUrQIpytgpCdQJaHRTuLdJQBYMzgkcJFCtWB0MMS4
         He0w/hjsngmI28IzbRCjSr8d0vCgyGS0eGcOoBmtzkH3r1RKOv8oo8gvo68qkTS3slnS
         rt1AdbbnD3khMZfpj3Yy2UlrYChdbVqCKnwguNnp+BRv/dBE/4AksH61fmT6BXt78EfI
         Dy4Pm2UuLUdI5Tr7lSP/Ds1BT1xDO4Yj/Mu4DCpdkfRHmq6BPAgBlAi5l3nuyY2u6+uV
         YSCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739179879; x=1739784679;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t2hoVQYicuZ2m33t81d8plIbjrw9+RjXqm/sMzy0VP4=;
        b=RsfvyQ/olb7GX1W2almNcxAr0o+6yB20WfpmJZkKlucSmBRnZDK4ZGWTQEJ9NU6UPA
         XP1kHHO0CCjq1/NtcdFSEkKWQI1T2StP3w1jWvrN/JXTVUijtgg360fbBejWEg3Bd/Vq
         AS5QULChC9gmyEVrbfBO+EFTzfFv7qM1XZuCmVxZuS+aC9AZd00w7R8Rg7+ig+NRbtJt
         jesV71lGlo9B+C9UDKQcpvhnpO2/dH56gA7LbuVU+LYpyZ3lW3Zd7/tzgbc6iwjkwfti
         xZi7YdHDYML9sKzl4sYcoVMjZLJPhcYq0/clorD9eACky7jwabgbZamNff170dF0Yimo
         0EFw==
X-Forwarded-Encrypted: i=1; AJvYcCXC1V8/HRwqNAADE/gVNQTOyXCMlGqaQrRvYWG7z6kZ02WY1bcbVrtelKXdCEa7X+6jCVhtL9BXNKV1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3oRicNEhQy++PyvGdh8R769sdO2reRiX2w81L35lVtGdVFJBQ
	Elc5Wz9tQum1T7O3t5H0T4oOj3IBRofo6DaDcTVqAOqFSNQCd1tRR2G6Ji8aKeQ=
X-Gm-Gg: ASbGncuqGSPQZcBrb2YDOEBL2xoFEK1okdyWGLrZlOlKmlgcp0hN6jL2xfkpjZp72BH
	TW0vU2ugnk+MHUNqV5/JxaEwtutf2KW7AvHp24cJ8V5iTH6W+UDdXq9GJyQkcL4rICyMczPmusH
	lCIrHlgok7AIqLrYevA8VftFH+1B0e2xcd7Ouha315LktCQLXd0wQTPWO1iXs/V/vgAYdQLIgAw
	ouTv3dBMh/c12jmc8orhwq6kL4YHwr9Q4Usv1PVovm7h396lELyRaqCCkrkA6yqafdbJTmexO/i
	aUcnY3h0EMBSuqGR8cT0wyV5vg==
X-Google-Smtp-Source: AGHT+IHX0bcCH12vfaXXnoTFQKZGthtl9t6b19AdB1KITvJcWAHBCcPDJAHJV9sCs/EYFlx8O/JUOQ==
X-Received: by 2002:a2e:3a11:0:b0:308:ebd1:ff6d with SMTP id 38308e7fff4ca-308ebd20288mr11721631fa.17.1739179879224;
        Mon, 10 Feb 2025 01:31:19 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307e09a1df7sm11645321fa.23.2025.02.10.01.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 01:31:18 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/3] ARM: dts: ixp4xx: Updates
Date: Mon, 10 Feb 2025 10:31:14 +0100
Message-Id: <20250210-ixp4xx-dts-v1-0-6b752d745e04@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGLHqWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDI0MD3cyKApOKCt2UkmLdFAPjZHNjy6QUk8REJaCGgqLUtMwKsGHRsbW
 1AJcAMtpcAAAA
X-Change-ID: 20250210-ixp4xx-dts-d03c739bd4aa
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

Some DTS updates for IXP4xx:

- Provide the NPE handle for the ethA ethernet controller
  using the proper DT property.

- Fix up the erronoeus PCI IRQs on WG302.

- Wire up the GPIOs for LEDs and keys on WG302.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (3):
      ARM: dts: Properly assign NPE to ethA
      ARM: dts: ixp4xx: Fix up PCI on WG302
      ARM: dts: ixp4xx: Add Netgear WG302 v1 GPIOs

 .../dts/intel/ixp/intel-ixp42x-netgear-wg302v1.dts | 40 +++++++++++++++++++---
 arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi      |  2 +-
 2 files changed, 36 insertions(+), 6 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250210-ixp4xx-dts-d03c739bd4aa

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


