Return-Path: <devicetree+bounces-259217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNsuJq6udWl4HgEAu9opvQ
	(envelope-from <devicetree+bounces-259217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:48:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E827FCFC
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:48:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FCC03009F98
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADC5F3101C0;
	Sun, 25 Jan 2026 05:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="kw1D8r+J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B8C30F816
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769320106; cv=none; b=NanCyOBXdkXYu3sEzWFNH9docTRXsAPyMX9YBQyyrreB5/zeHDzppoLSgtbfZSZpJUVVanx+U1oBGb5UNoF6GKx/26rDWro2NddpfnlQV+/o/5RlePc6CRq35tG0XZUPymnVFKQjWkhHXaT25BmsI9ZKWPsDtdR/VJGm4qtoCfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769320106; c=relaxed/simple;
	bh=aeCUbJE/T81FwVBQT09fENNIxx+VUavHd6MIvgjqE9E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EEOa4CEkG3+03Ij/Gxai2f3iaXM5bix4jtSekyPgOdAHA0H0ZkLvecisKNTrssKFAVI6N0dg+JTgz0WZl+H5z783qdfBad7e0LonbjWT/O0vSTj5Q+3jri3wLCYvDrEzHvEsORTRXEmO2VX8sit9OEd2djmu45YS4RG5cE02VXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=kw1D8r+J; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-81f4e136481so1768893b3a.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 21:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769320097; x=1769924897; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IIoY9K+e7aVBejOB930LThVJY6pFoCV3MhR4vjbtsmA=;
        b=kw1D8r+JT4latfJPml/Of6EL8kXbZgkV2SjLAisgxzSpwwrf64tdStRh2a78d42idm
         EPUsXiRPcteQ6LOymeV/UgcuHe1B/+/3mRjVN0tmdXS+Q0kBKwDHr7gJ3gukoTGKPKiu
         1LqouHjBi/UNCwaRKkEzG/6DdSRO06itMvJ0lobhHYlljUlAFfeorw5XwcMrw7P0WzSK
         UQUM1614/9HkawCbQjLAlLQc1+wEuN+FHb2vKNmR4oMqC/W8UT4MbTKWrwn905yyrU9z
         ebYqawb91HWrJHC/7JfNPEqLKCLRUujaSyjrdfgyfVLxHZcUHWuKeiTdBPkYs9dX4f+m
         s+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769320097; x=1769924897;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IIoY9K+e7aVBejOB930LThVJY6pFoCV3MhR4vjbtsmA=;
        b=u+M2FtOpAK2qx7yojfSK6K9ypoELMBrbHQDjgSwtQ9/a45aE8ht2HLiIcV17UMbdrQ
         9oiODT1hKMQr7uSdLHImxWl24g3z4GF+FayrWpjJyaLvZQHc4Cfwoz1bQcucRzEiLiJi
         6TQKj0IBbKmrgsWmol1MTQ7syDvPTA/Lu/dQiqbmGdf8OzyWPHQDDANnyC40yknPuqLn
         dwo10yF1F9ldt8oiRz/bJDRihg/TyNMPIPR2eUuePa9qIFGtrPyAy2904Z6sd8/CV4UT
         lnpcQYG0bcAucNCNQ5YeuOBFaalEfmgeU6T76EYKIfvXWgMEIG5Wmc82+qgYNWFHKbV0
         wXtA==
X-Forwarded-Encrypted: i=1; AJvYcCVJe+KydxlCzYrx3DbwyYUdcObDtRT6mHyZ0N2bv8qi74Zy4IKzOOY/W+V70nYK+I0O9MbifuX0NkP9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrs+RW/EfJEmxeK2Ul7uKxqwkFCHAEhOGwFIBEC5cmXfMUTmib
	bwBzAQmKQoc9kTwmoaXwq8Al3z7x/FbA6J+RL8m5E+WJQxdjnWJth4EwNlq2rqlAW0w=
X-Gm-Gg: AZuq6aLnLx/91z/krmYqPTsKxIRFEIU0QqxYKODSb0sX7SVLarSIFVlSRLZB2Nkhbc7
	1CsNpg0Z6Zb0SPv/vDeJsZRaGWlikiT1yAU6jlvqB52wT0ZryGu0xxLNlpt0CJPAOdn5fxWOzyH
	O2UCLQoXRSAbxtqG38MrDJipArCDhnT8UwWJW7fK7FZnK1MnMNu2/WGdEJYuE3U4JbacY5B0HWF
	3iTNzB2dUWJvDrlXr7ysg83nj5AlTfbowyiqnyt4QnFkZzjmeePiurUHbv/hg03CYY33pwnNeKQ
	HMGGlzaUHdu3h5Oow9EV2jYyjN6AVvYQFV4bKvqSsXv9mraqWnPfr6OysOJAYI/COdUIVgRfpD4
	6QQ0JUva5Wmew2lGiNV12EsjWUtsM3KMI8mpKAAW8E8xNN+uvb7dNXyr7mU46fBEWhfwpQcDGFm
	IFl3E4JH80EB5HjUD5V0aOfvFsewJBgbE=
X-Received: by 2002:a05:6a00:298a:b0:7e8:4471:8c3 with SMTP id d2e1a72fcca58-823412871c7mr690891b3a.36.1769320097078;
        Sat, 24 Jan 2026 21:48:17 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a3f1ebesm5680016a12.19.2026.01.24.21.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 21:48:16 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v2 0/3] riscv: cpufeature: Add Supm extension id and
 validation
Date: Sun, 25 Jan 2026 09:36:05 +0800
Message-Id: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIVzdWkC/22OvQ6DMAwGXwV5biqSQkBMfY+KIQRTPPDTOCAqx
 Ls3hLXjfdKdvQOjI2Sokh0crsQ0jQHULQHbm/GNgtrAoFKlUym14GUeBG4+7KJUGsvWZDZrcgj
 G7LCjLdZe9cUOP0uI+muExjAKOw0D+SoZz8wVVg84hZ7YT+4bv1llNP4eXqVIRd7ZrijKxmRGP
 x2xZW/cPcShPo7jB0zoiUvaAAAA
X-Change-ID: 20260116-supm-ext-id-826e8da4c4b5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>, 
 Conor Dooley <conor.dooley@microchip.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259217-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dabbelt.com:email,sifive.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ventanamicro.com:email,infradead.org:email,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: A7E827FCFC
X-Rspamd-Action: no action

Supm as an extension indicates pointer-masking support for user mode
(U-mode). It relies on Ssnpm or Smnpm for the underlying hardware
implementation.

Major change in v2 is added dependency check for Supm in bindings.

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

Changes in v2:
- Patch 1: Added Supm dependency check.
- Patch 2: Updated the SUPM id number due to rebase conflict.
           Added Reviewed-by from Conor.
- Patch 3: Updated the Fixes tag.
           Added Acked-by from Conor.
- Link to v1: https://lore.kernel.org/r/20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Paul Walmsley <pjw@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
To: Albert Ou <aou@eecs.berkeley.edu>
To: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Jones <ajones@ventanamicro.com>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

---
Guodong Xu (3):
      dt-bindings: riscv: Add Supm extension description
      riscv: cpufeature: Add ISA extension parsing for Supm
      riscv: cpufeature: Clarify ISA spec version for canonical order

 .../devicetree/bindings/riscv/extensions.yaml      | 27 +++++++++++++++
 arch/riscv/include/asm/hwcap.h                     |  3 +-
 arch/riscv/kernel/cpufeature.c                     | 38 ++++++++++++++++++++--
 3 files changed, 63 insertions(+), 5 deletions(-)
---
base-commit: 4af4e95edc37ae54f64cbd75b46f16ce15f3a6b8
change-id: 20260116-supm-ext-id-826e8da4c4b5

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


