Return-Path: <devicetree+bounces-60741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 624D88AA1E7
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 20:16:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CC072881C8
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 080FB17994D;
	Thu, 18 Apr 2024 18:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DUlBJI8H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9173C433BF
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 18:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713464183; cv=none; b=bepWpG4/TOLPsWfAbkacshgoVAg5OTwy6JiX9QGkfxaT5hXY3PeS7U4qEjI+Owbi6iYiHrleZJmdQcSNI+x71ArlLjE/2tYQ2U89bWYsovJ7Y3kvzb7jlnqwTUsuPtCLqFfzMhvOREh1Qg175mVgnf8J8EFzGdF6D7QFuDx7ULY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713464183; c=relaxed/simple;
	bh=rM7ydLgT4dhxTOX9ocCDrRxzHGc7n1/dpY8Z/thukMw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=V23jVGqtH6gMi+QvTogvOW/I86uUsv0dmiARuyMBm0YqwworvubSJPHIoQOJgPpibsVN2HUMYsV14Ll8HCAlW3BEAQSfV8SRXbm8wzfslVqV97XUyWntFMA475mGmNZkDNDEWprF2QlpPG4wn8GUcPOI2izOafhqv6xPsMtyqOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DUlBJI8H; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5ac5376c4b2so720343eaf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 11:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713464181; x=1714068981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SV99rxlHhyi/JSRdXEqT72fGeXEfSbNDTwwix6tbIb4=;
        b=DUlBJI8H0jups+P64knvErByCFmYJWOK+DTbFwK250Jp4ZDZedgUqMyG9SHvFS6rl3
         NG0uZ7awkMsKmTTcQfijqaAC+tECyr/YRXzux0MTaX9uMgyr3/CkNmJQhw+FNNS40pko
         iH/j6f+vfFjCbNRsht6kkevf8vy/qf3bsy03lSbGqNla514Fm7Yvw8inIankP/QeVFCp
         14+HNlaKAiuqtlJHg/Wv3iiCPHmUrHW8KNOny944fp5XL1F2TCH4ewD1P4OgpxmoIC2s
         GSoxbMBI7x/Lvh+uaVHmGZUTfUEjJlDtYOAGG0W2CkFl7fUy5VIkKcno2UGh/qzb/IGx
         1G4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713464181; x=1714068981;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SV99rxlHhyi/JSRdXEqT72fGeXEfSbNDTwwix6tbIb4=;
        b=M27tAAxMHRgW5P8w3cKW3VrQuLpduHP6xZlz6ZnYl1E1c7caQ2rt3hquQj7RfsBzyH
         vTrBo3645V+SNw8jbDdUNc2Nc51bWGOSyUgcwIcHzZl8SLiXeONz3VnMsVrQDW9SVeOe
         wmajRDBc6pTUqoAQLuD4PuRE/hvKu9YVYxILw0tKjPUqsA6wZ2VFrKR2CmmWb86Awe64
         FvNG4bhTJLQS1NlE0NFfasVMwvg2Bif+aLAatJW0hHvgH7CrdrxV3R8r1qIhLDJ24CWP
         tDrYfZhx72nBac0gT8Rql9I75AMSa+/pwxkRfHhpETpvLSMn3SSmdxVbUprDToX3IL+c
         dHLw==
X-Gm-Message-State: AOJu0YyjQyOhd0JX8mcApBI1jesp63BXryUDx7nJ1R0EG/QaNGxocn/o
	IKxMci0Nsa1yztNw3gTF55m4+b++8hzSLRUXDgYenUbVkBXp/pxn
X-Google-Smtp-Source: AGHT+IFS1kPSUurGztHmlqTLJvnmqDDc4NnQZ2GtWSll6IKQJXFfYvLp77RHfSWNJCOsu2iTAXfcvw==
X-Received: by 2002:a4a:48c7:0:b0:5ac:f4cc:2c8b with SMTP id p190-20020a4a48c7000000b005acf4cc2c8bmr53923ooa.0.1713464181668;
        Thu, 18 Apr 2024 11:16:21 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id dh4-20020a0568201e0400b005aa77c0fe49sm483419oob.24.2024.04.18.11.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 11:16:21 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tglx@linutronix.de,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/2] Allwinner H616 NMI Controller
Date: Thu, 18 Apr 2024 13:16:13 -0500
Message-Id: <20240418181615.1370179-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Allwinner H616 NMI controller, which appears to be
common IP with previous generations of the NMI. The NMI is required to
support interrupts from the PMIC among other functions.

Changes since V1:
 - Update dt binding documentation to collapse multiple compatible
   strings into an enum list.
 - Added note in commit message about NMI pad exposure for the H616.

Chris Morgan (2):
  dt-bindings: irq: sun7i-nmi: Add binding for the H616 NMI controller
  arm64: dts: allwinner: h616: Add NMI device node

 .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml | 8 ++++----
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi           | 9 +++++++++
 2 files changed, 13 insertions(+), 4 deletions(-)

-- 
2.34.1


