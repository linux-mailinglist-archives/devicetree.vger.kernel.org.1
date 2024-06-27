Return-Path: <devicetree+bounces-80612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1203B91A105
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 09:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F5A3B21892
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 07:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B6973509;
	Thu, 27 Jun 2024 07:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b="XefsZc/e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAEA574040
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719475165; cv=none; b=JrvzmUHYO4ko7f5o7vQF0+56TtXjs7TZa6B1TcKolvA2XdQWb6gZDRaXWFfr4cokoIKnJuKCfo4RdVqU3k8tApdbRqFp40kIKzbbUkOil/umD9JgCqcl4Uq4FktOTZk0SbKrmMMJ1Pb4AxbsxID0UitUbp5inMlu+aIvCSZk9Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719475165; c=relaxed/simple;
	bh=O3BsMvf6ICxUco5Zb2QGmMtQm9jSohcbI6f+Oj7fGPo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=r1LdF7dmS9CCxvy2SnVChHqyRndqJZxXlYSUWW1qBUmHgKEjOE7j+rJ1zlR9/L4aXE3KLKMpc/GDQNYCHs/h55FqVi16V//mcJOC0loPK9i2bAxkVBmnx8rwb0JH/9NRyuMEkgzSiMESmcKNVUrsa/96yN99BpmGLjNBZJ0LenI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz; spf=pass smtp.mailfrom=leithalweapon.geek.nz; dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b=XefsZc/e; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leithalweapon.geek.nz
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f65a3abd01so60973435ad.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 00:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bade.nz; s=google; t=1719475160; x=1720079960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YhATdO6KrQ7DGf5zFpJNQOGA3ipHEvfK6RNPhriw9Wk=;
        b=XefsZc/ew9Ei3wAHhh9aZtdaJJHJw3CB6R2ojLQTa5ilYWKkwzrO36hoyHvU+8ty1P
         PmAznK5OQEIoQpm2r0Op+LeiirS7RLH1SNs9DZhzcevH4Zx6EfNAYNcL54kNaIQrqFGx
         wb+YsPYVjnnJ2h8ci2nSQGR7E5lJfeZ+Q7Xyk7rwvhgBb363nk+Yoz/PxR75cJE2BvLt
         LUVS4nC+9CQ2dRnaTvmhALcZVzF3Sc1KivXVz5cvTueK+z2fYufoKTk1ZKDmzjRwA3I6
         eIUYsUY69kNC3YvCG4J6uwlMGIcaTszfj6TETog65YJVgyhEKnoIBKdogWuLLbCjpNYT
         LypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719475160; x=1720079960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YhATdO6KrQ7DGf5zFpJNQOGA3ipHEvfK6RNPhriw9Wk=;
        b=ltA9M3R8jZFExkZEWBroxcDiQfocKOo4oh+MH2pd6M0D7COlZS5TL2ldyQIG9EOLV/
         jNy3F5M9iymoaLjdoyGGk0RyN+m00eDJyPgmPPe3aqu3nz3NFOEkrcxUbF29Xuw1l3f0
         qQiF7iNlJrhHY1ake+jQJ9wZszfLc0pN5DsJ5Wt1cHOMDO9xFWIaCEKBvfMDlNZ5bOlg
         ixRdT939/KDUiMsHItiog/X7GvBTVdAZ8GoGcosKveDMpMl6Orno1lCiIn+BRimzMBTi
         XCFIXRiUqxgDIs/hYVaKh/8Df8Pt0B5x/JrjEOXan71CnhNUHBNEAaNx+S/DtvLLuJyQ
         guog==
X-Gm-Message-State: AOJu0YwCXKAvyceOq6sy1rVu0AwqN1Gl8ZHQJQh2E0SaCPuKq/2mnuh7
	4ThQnhOSZu6X7FlrgYTw+5UoMPY0X808q5kiUK5VE4eO+1DGXSun0k9kehvc3g==
X-Google-Smtp-Source: AGHT+IEId4xAhY5agqBpTrDO4fZhNU4HUM0EUNs593ufRli/awKIB75mg7lSCq/noyD1uiLh3lObQw==
X-Received: by 2002:a17:902:cf10:b0:1fa:9ea1:bc85 with SMTP id d9443c01a7336-1fa9ea1bd8cmr33387115ad.56.1719475160587;
        Thu, 27 Jun 2024 00:59:20 -0700 (PDT)
Received: from localhost.localdomain ([2403:5816:cd6c:0:6d45:ae2f:1ead:bd58])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1faac9c4cf4sm7181895ad.290.2024.06.27.00.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 00:59:20 -0700 (PDT)
From: Leith Bade <leith@bade.nz>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	frank-w@public-files.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	didi.debian@cknow.org
Subject: [PATCH 0/4] fix up pin definitions for BPI-R3 board
Date: Thu, 27 Jun 2024 17:58:52 +1000
Message-Id: <20240627075856.2314804-1-leith@bade.nz>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is my first patch submission to Linux so I apologise in advance for
any mistakes.

These changes were motivated by a pin conflict with the PCIe M.2 connector
and the push buttons. As a result I decided go work through all 100 GPIO
pins using the public board schematics. As I need to acquire a M.2 SSD to
test the PCIe pin change that patch is not included in this series yet.

Working though the pins I noticed a bug with with the MT7531 chip's reset
line which was on the wrong GPIO. Since it was conflicting with the boot
mode switch input GPIO pins I looked into ways to document the use of
those pins with the switch. I ended up choosing a gpio-hog, but please
let me know if there is a better alternative.

I also added some missing pin groups for some of the built-in SoC devices
to clearly document the use of those GPIO pins.

I have actually written up a gpio-line-names list give all the pins        
names to match their usage on this board. If there is interest in this     
I can submit this as an additional patch. I see only some MT8xxx devices   
in the mediatek directory have a gpio-line-names so I wasn't sure if I     
should add it.



