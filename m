Return-Path: <devicetree+bounces-191298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB24AEEDD9
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 07:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BC39440F3F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 05:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21E225F78D;
	Tue,  1 Jul 2025 05:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="m77tbtHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B071725EFB7
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 05:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751348306; cv=none; b=KSizJXhrJtWoTqJdTPtyCTbRb3ddFDbkc35Pib3YkMj23atVAFvH8d8tLMhTAK0YULWb9W35R8J629EHs/B0S/8k9XRg7ss2YN52yvqF+uLgCfm5YdvxqImNJsBnAzsVHHDx6VpMh0RKapUH6YYWvFV1QvcjJvBWZgLg6CfDMgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751348306; c=relaxed/simple;
	bh=cSpWpN4ROq4hNgdz7Ah51Oslr+OjvYL60oNVPcd1qRQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tvm7xlPersMppbT7oMQ8A5pBxNtcoJeaABmRzQYYL5+xGSPMVa/CnDs8HSmXL/YYUl7f9fK6TAX49ktGqYAPkw/wd4pZBPTPP9GCFYFc+R5qwnbX3rUId7xN4yIpzBV/9DOiAzTv8KHX5ktoRX+KSpAGawbvY/jKv3oT+FG6Vfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=m77tbtHS; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-235ea292956so25137905ad.1
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 22:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751348304; x=1751953104; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WkkyJkVw0bfJeEfuvrb6+q04bt1dqt1H1Dk83FQ9SZU=;
        b=m77tbtHSjLhsqaw+B5m9fdlgSf/b5NpcSchwdQevScoKKo2Fiw/5SirIBl5N50t/tL
         njbR+xXU2FOuUuTxsg/TQPhV1z/U2VqXpWXL/n+TNxkrq3/PjbfTXny5g9mIM+GPkj0a
         oJdSePdHqsJBpmcWATl1mVuup2vd+3ts7YvmaaOu2C2hJY/XSDAVEOAUoiksOrw8jqkF
         u+YNZeThkYuZ2kdps1MnQ5ELYEi0VRb5dAeYA9waKgz57hLZxxDUFMov79UfaKmsrHju
         PjIJL6rHVsl+LIdi59J26Pjtjl2AZ1akeJKbrMcDj/O9zfFw+5VppLNPG1ts5XSjNWRE
         a1sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751348304; x=1751953104;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WkkyJkVw0bfJeEfuvrb6+q04bt1dqt1H1Dk83FQ9SZU=;
        b=dYkTfGiTNNnVhLN9B1eW+pQM0bADqPBDZRRRceK0TiTvsqtKRuJUcWCHeXtLIYHuJC
         7YrpUJ9lxcUDGf8ChA9ZNv2Ai69GGcj6/MoNIJLXQ2dYwJqLxjPVrooR/5AgZoVsba5x
         ElUvYVA8Yl2JvvPpS0koJo6QYNbeNV8EPTWGAhxy4QwkhYJXh/u6RqnePzyF2Bb8v7Me
         5U0b7Qgl7kWeGers3709xWZHUge7s34LihatIrujM3wNje4khssF+JVs/vCzihE0B4WO
         oJZt0sZZn/sr/9g+QXdbOsqLe5nIelgnPbtL67m9wU4D+Nn079bHL3GQqhrtKo++p4Ya
         HuTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXM+iPftcsbo5hVsC1kUL0hhyZ3Bu2dKjm9HfhbCdeMLm/JwWPuSoGj23Fb17dmLL2d7+bYpRVrSTyR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/fpPlfTSI07TxZgnlZ7a+0GRxzknwdoTCEo52EinVp7Lza9Xk
	OXEP/equtLWtjNXoWeylTYZoxFmAo6FLKhG5w9rcfVhjD0nZo+ieYnOpUL+6bMBheA0=
X-Gm-Gg: ASbGncuaeBnUjUQkqKO+8koeA5spHWtnQm6c/rkelYpKCtpPA0F/XqrcKcderTP6PIy
	mXWIuEZ9YGtRa4/n67xGLGRFdYUJcrWDoac7gfGZ/hX6rcbpogCPE9NhBFlpzGEQyy6lcIKiZ32
	mUAUHOS/zwJu5CAFVsHnz8NW54smzdtT2qGoV8lMTx1e0NeaKDI3GMb2fE7Oi7iSz/xlMFRJVxC
	1Bgive0d7xteC+xAgOdDnbn1NLyqrcF9x2NtdkZakfHSuD+hNpdNCPf2cPDl1qtKkYaUIBSnN9a
	lvec9gHsI8178M/zxC7ysR971SejFIrrY9ifgy8=
X-Google-Smtp-Source: AGHT+IFV0sJft9TTbW6Dof5c+OPMKTEfD4ooz1HCHFSKDnOrbvDpDaREUu+dR1A/ELAjaCh8Jizt9A==
X-Received: by 2002:a17:903:2983:b0:234:aa98:7d41 with SMTP id d9443c01a7336-23ac4685adbmr249282415ad.42.1751348303953;
        Mon, 30 Jun 2025 22:38:23 -0700 (PDT)
Received: from [127.0.1.1] ([2403:2c80:6::3092])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb39bf5fsm101729865ad.115.2025.06.30.22.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 22:38:23 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 01 Jul 2025 13:37:02 +0800
Subject: [PATCH v2 8/8] riscv: defconfig: Enable MMP_PDMA support for
 SpacemiT K1 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-working_dma_0701_v2-v2-8-ab6ee9171d26@riscstar.com>
References: <20250701-working_dma_0701_v2-v2-0-ab6ee9171d26@riscstar.com>
In-Reply-To: <20250701-working_dma_0701_v2-v2-0-ab6ee9171d26@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Enable CONFIG_MMP_PDMA in the riscv defconfig for SpacemiT K1 SoC boards.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Rebased. Part of the modification in v1 is now in this patch:
     - "riscv: defconfig: run savedefconfig to reorder it"
        , which has been merged into riscv/linux.git (for-next)
     - Link: https://git.kernel.org/riscv/c/d958097bdf88
---
 arch/riscv/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 37c98c0f98ffc0ee9d021e4d07aa37a27d342f7a..b6519fcc91c0bb56f71df336fd3793af3d64fe78 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -240,6 +240,7 @@ CONFIG_RTC_DRV_SUN6I=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_SUN6I=m
 CONFIG_DW_AXI_DMAC=y
+CONFIG_MMP_PDMA=m
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_INPUT=y

-- 
2.43.0


