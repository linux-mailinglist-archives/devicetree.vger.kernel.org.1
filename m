Return-Path: <devicetree+bounces-255824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8456FD29FFE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEC9D306EC10
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B921E338F20;
	Fri, 16 Jan 2026 02:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="qTeURj0i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A2730FC0F
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529460; cv=none; b=Hc7RgtoIX8lbFYx9CHw/Bkz9+EB3PRfnxUDbAfSlegftqAW7D6L8KI/sVAjJjQ0W98i19F6Gvf3rNdmGctqjVzU+EDpFyAb250pk6XuuzSEf3zo51c5Pa/U2coty6k4W39dWjIQJU54xrkLY5ezL/xUESbFRR96slYNpJkp/1CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529460; c=relaxed/simple;
	bh=4CHXRiB0exQslABri/9R9mVthVDCinCaggbtBCLqnzM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UrP4JEadtuk1MShKG7SzfUl0kBLMbEyjsZINgbEYqN6bc23/EDmXUhY404d+jjwI2qWiae/a0e+xaXmy663wU3walbSDkGK9NACiDHdtnT75b4dpcZ6ZwVl2fIxTPxTptsWhxizWY4uPK1YpUTWIk474InXja03lpccUOvcy4iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=qTeURj0i; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34e90f7b49cso806223a91.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768529452; x=1769134252; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d0RqvDSTLRy5sun+KFOAz+29pO93gB9/JlJnbr30Zhk=;
        b=qTeURj0iTFMSfzbsMzpoMdjIzPdpSElloxCH/HX3LSG0WCIPP3NB06qjSMVmvkHcqE
         O8F36dX910PHoug0lpxSh9/ujZNm7Q6YcBwqwLBh74kiF8Zj6K+bMHj5m2IxMBpLK3T4
         Qwb7wrWYamI5382BXEqHXGSW8kbqTX0/Ok6siPGo6PAHafGKP2llD3dsjxGamyYClsrb
         eqQ+IUJW+oy55iqdz1Um+ZSqIvNWS7t15L90RaFFlHhlf5LHZ8IYc8PmGJgYMtUzgKSX
         oxGj6fz9lt+ZypqOQnkQEwv/t17QNuDQL23qvCs0ponkwOtQosjHvV+T/gXPqar/jVNN
         5DbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768529452; x=1769134252;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d0RqvDSTLRy5sun+KFOAz+29pO93gB9/JlJnbr30Zhk=;
        b=OdKnWm3450KQDDvx4li89/OAy8wQ+VFFm3gkj/WJthte2VV2spvUAe35S6pkHEyIOJ
         ifmUz1YCiOtQWSW1yPwILowWpDtpw2nMf2vz0M4CN5NgGwnP20xLWCW+0zqOHaAYD06R
         PfrJm+RW5Bc558bCQ6cUyjJmhsgDgoG21J3ettoQqX/w5mB2J/C/rfn3GLh8FAKDHd2H
         zwRNWq32fmK86+Q3Von/1qyIAU3SPe3cm/vOUQcuCuaUMRMgVMJdUhXqzrSMvMspoBWJ
         pcxZRDF+QJlPeLU8UZmUzB8C9Ly6pIVRodHqqNe8L/lunOxUSghho+2gsknui7y8Rl9F
         p30g==
X-Forwarded-Encrypted: i=1; AJvYcCU85h2SSyv2AmOeuCfkJrdvbXNW2msomrHZ3iIqp9WSRsV2ibMn7P1YinTGwH+kMi7Mjcg2M7LVGiFH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9KQEDX0qeceWSsVHaJ9VxdhmXD1OmxYN6kWIwKwpFaBZ/SF+6
	btG4C75fv1QUwswkkrmc0t0ykfEJZdRFB/XtdUGSorLHfMlPNDx3wdU0XYyuaHIvsTc=
X-Gm-Gg: AY/fxX4AUadvZsFaCoxpMRaaSxX6lWpC88LQ96DoYMdmAWQ1SyaVtnI5uvMAFzYxQpz
	CftmMJzYUfPRnc36RldCcYPMYmWDHnGjwLc1pFoZbsHHSnsEQiLBMIql0TPI/tgWwN+G7s603lb
	pMHrwZqiz92sKJa54gU/sECjwVjZWodkuIgvg4ODIllQnAXi/HrZnhdNYZsaecjUYugbLbnV/cP
	PxtoROO3WKIMljt2pzgrVt4q6ELl5p1/kIzP50N/aR1gDoQ19894L+1jx8fW8e+GBYeXHWnFrFk
	pI1x7Y2ZghDsEVmmOIvim9YeavnSloSwfd4fhJTzEQA6+al1ERc6S6n1O0fBQm/Bta2CqtD0f9x
	bwjSoHqk4qV7w+YbGRHyV9lwH6y4UGk3mGamSfzRqZzfPGDVMhgPA5+ssZzZ7H4+B1a6I+NisF6
	VHqCuq0DshskJ9Sxh8xLV+xWjAxKG7uz0tTrB97fPVFfDT4KVVFc6oQKaSED3JUn4m
X-Received: by 2002:a17:90b:570f:b0:330:bca5:13d9 with SMTP id 98e67ed59e1d1-352732775a8mr1013354a91.32.1768529452084;
        Thu, 15 Jan 2026 18:10:52 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35273298968sm364317a91.0.2026.01.15.18.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 18:10:51 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH 0/3] riscv: cpufeature: Add Supm extension id and
 validation
Date: Fri, 16 Jan 2026 10:10:30 +0800
Message-Id: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABeeaWkC/y3MQQqDMBCF4auEWTdgggbxKsVFjGM7i0SbiSKId
 +9Uu/wfvO8AxkzI0KkDMm7ENCcJ81AQ3j69UNMoDbayrjLGaV6XqHEvsuvWOmxHX4d6aEAeS8a
 J9kt79ndn/KyClnuEwTPqMMdIpVPpx/zhBvrz/AKCG7PUjgAAAA==
X-Change-ID: 20260116-supm-ext-id-826e8da4c4b5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Supm as an extension indicates pointer-masking support for user mode
(U-mode). It relies on Ssnpm or Smnpm for the underlying hardware
implementation.

As a ratified feature, define a dedicated RISCV_ISA_EXT_ id for Supm.
However, since Supm is targeting U-mode, it should not be added into
devicetrees that describe hardware running privileged system softwares.

Supm is implied by Ssnpm (S-mode) or Smnpm (M-mode). Add parsing logic
and validation to ensure this dependency.

When CONFIG_RISCV_ISA_SUPM is disabled, Supm validation will fail
regardless of whether Ssnpm or Smnpm exist. This patchset doesn't change
this behavior.

Prior discussions about how Supm should be handled can be found in Links
[1] and [2].

Link: https://lore.kernel.org/lkml/20260101-legume-engraved-0fae8282cfbe@spud/#r [1]
Link: https://lore.kernel.org/all/4ebbe14b-2579-4ba6-808d-d50c24641d04@sifive.com/#r [2]

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (3):
      dt-bindings: riscv: Add Supm extension description
      riscv: cpufeature: Add ISA extension parsing for Supm
      riscv: cpufeature: Clarify ISA spec version for canonical order

 .../devicetree/bindings/riscv/extensions.yaml      | 17 ++++++++++
 arch/riscv/include/asm/hwcap.h                     |  3 +-
 arch/riscv/kernel/cpufeature.c                     | 38 ++++++++++++++++++++--
 3 files changed, 53 insertions(+), 5 deletions(-)
---
base-commit: ef41e6187f77b52e4b17ab9637be8f878e1f7a5b
change-id: 20260116-supm-ext-id-826e8da4c4b5

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


