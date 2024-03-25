Return-Path: <devicetree+bounces-52991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B6288A972
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C772E1C3A0A6
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B43E213CFA8;
	Mon, 25 Mar 2024 14:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RDn/EEpk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F7E7351A
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711377455; cv=none; b=tI32R1FtdXmDLZfAy6fy0l1LZfusUqSdta1s1v6+V6ZdvskIUvvsSSKhY9smsiCo89IF/UTiCN9tDIE9uS8B8TTd/ePjeKBjcfBcm5i+6LNx5yBWF+BPkPGCTkHd61JCDUAQ7O1+ZUaDWJFDuUUK+ubNY/qIsLSaK3DyNSnYld8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711377455; c=relaxed/simple;
	bh=akusApTTdNscCjvWH2lKBQ/Qho8aJnSRwvSLmiP5JVI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sjq1poVSdn6D06xZuf9xocnByPIHAiv/uE44+llm0FsGE7w075UuHUwP3nXLmfUxuTzDghGh0SQ7kN174mEYYW33nPlnBFA8XRkNEY8TOe02OYp1f1w+arz8vegyOZx2Riyj5Ltr0FkeRWZQsfWsHTRnxhOljhDJ9pLHBdgGOrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RDn/EEpk; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-222ba2a19bdso2864772fac.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377453; x=1711982253; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CHXhjJWjnxIiWVpwLnVown8C0k9DA5ZojMOHGZI8kRY=;
        b=RDn/EEpkiHIj6M5UnXoUsSDbUnwOzkE5KMSSaP+zX0Tmx/X86ZLoTZigO7THwip8tP
         /j5SJbFkwDgcaSJnisUpnzOSevt69yVRBxGxxvhu0yehIcXh3XkFpUMdjgYeQ3M7NJMJ
         sbAj3rJK/20wMD7Eu5zWg5cmhrPy0xLrZbWPLSmk1C+OjeyNKx4SYjhWQsHLtEWRTHL9
         FCw0zzZFDXoRYw6CWxhy5Sj3DQ17ASrrvsLu14gKSJD4489n5KPjfTU1j/iY86t5j4es
         7V/kv7NQPfdskqTE481YyFDL8zvfzUBeDVsShv2Jdqkhi5daHAE5rQ4nCkk3YBLZIvEc
         f3Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377453; x=1711982253;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHXhjJWjnxIiWVpwLnVown8C0k9DA5ZojMOHGZI8kRY=;
        b=G03MHEq2dYkYEChtvR9j4J7zig0cwVHaPb1f4lpY8MJQbizyT+BAAcuTFQ/VYimClt
         QVHVNRg5fA2ap/B0MdHlwH+cw4aqRoAeSvid+t3rq2ofBAB5iPAqE3AAlN7LMQlSrkUM
         fUE5qDakJkOkwelTmFDO5+EAnLKs086k7cB9jo8f5UIsyw2ILjlfoxKrXPDtBEB94mGI
         a0alKlCrpILJG18gCLpGTM4F31d/Q1yDIyfYnkaT8EM92I8zkEc5bFLw1k4OQD8w4kiw
         9MynhRTRVH8vBpx5o56IqYWF7w8T8EnZwaf0jdvR3TeffTNCQji49Tw+AeGVvyuhsZ58
         SrlQ==
X-Gm-Message-State: AOJu0YxmIoD63eiiCokvZrhetsBq96kHUlpBV7MoqiGObavE4nFVf0oZ
	7d51BA7hABzlGE6ZgsdCkw9pldkAftYZY8KnPmysY/1i/FSfOSyy
X-Google-Smtp-Source: AGHT+IHUDWUSCv9u87bi1dNcgdPTV3+KFK6kxGC0XJ4f0baGuP+vF4RIdDClds0BV4HbrVTiPWJD9g==
X-Received: by 2002:a05:6871:712:b0:22a:36b9:69e3 with SMTP id f18-20020a056871071200b0022a36b969e3mr3757124oap.19.1711377453091;
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] User Requested Fixes for Anbernic RGxx3
Date: Mon, 25 Mar 2024 09:37:25 -0500
Message-Id: <20240325143729.83852-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Users have requested fixes for Anbernic devices to help with some
intermittent WiFi issues by adding additional properties to the
SDMMC2 node and by making the sdmmc aliases consistent across the
device lineup. They have also requested that the model name be
represented consistently with both the manufacturer name and model
name.

I have added the new/additional property of "chasis-type" as well.

Chris Morgan (4):
  arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
  arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
  arm64: dts: rockchip: Correct RGxx3 SDMMC ordering
  arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices

 .../boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts   |  7 -------
 .../boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts   |  6 ------
 .../boot/dts/rockchip/rk3566-anbernic-rg353p.dts     |  9 +--------
 .../boot/dts/rockchip/rk3566-anbernic-rg353ps.dts    |  8 +-------
 .../boot/dts/rockchip/rk3566-anbernic-rg353v.dts     |  9 +--------
 .../boot/dts/rockchip/rk3566-anbernic-rg353vs.dts    |  8 +-------
 .../boot/dts/rockchip/rk3566-anbernic-rg503.dts      |  8 +-------
 .../boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi     | 12 ++++++++++++
 8 files changed, 17 insertions(+), 50 deletions(-)

-- 
2.34.1


