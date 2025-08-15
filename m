Return-Path: <devicetree+bounces-204972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B830CB27846
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 07:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCEC21C2801C
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FFC42BE636;
	Fri, 15 Aug 2025 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="AMcKf4Va"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A3023BF9B
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 05:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755235113; cv=none; b=jC8VLtm/3xrOAaWV1y8SbpWcLotM9VkOcSqYuvvq7ty+3DrJ43ypAn1vO81MRySaE7Jx02UqwTmXUtgbCiLO1XK61FlwYxgtMPJr5sw6a4jVVoSSWyRzG9oHFEJnCk/ixm9o5UxIbo2Gv+GdD/fH3++bUyPKeI6+C9PaFDzoQJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755235113; c=relaxed/simple;
	bh=GE9SRjuuSCv8a21ZTqK+ILZ4fs5VYlehz02IXPUa02c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E5ADw8iLuTv8dTiZyjXwYaddTBtw3Xl/P0/nSyRSQaqG/HhYL33JYTIG0jboifFkRdyPT+k8ffCcL6NgqUmF8pP6Mre6j3nixiyLcdItoem9PEwziS6JMqW/db2kNppJtdLBfXTMvv5zJMZYd+2Gp+GWdD7UphkSbHYdJ4toMJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=AMcKf4Va; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-24456ce0b96so19348985ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 22:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755235110; x=1755839910; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gc4I4GnyT4tSPzGGnUSG7Sj2q1K77d2MqUPufhFRRW0=;
        b=AMcKf4VasHexc8B/jr4YdlKYUh+mAWofj58kYoRsXlUokFuYawfhhxzYh3rJr7b5nY
         3RhlAfjS+YPQE2tuJp1jaoBpb86FNqXb+udDmv/7ne1C1nxol3fcWCDdHaMMTFzMBFUC
         SDbcecJwXmqflcs6nUsvzNhxNG+TQfU9VsYnutsSeNkiIaYjBZundHbHer1zz3zP37L2
         nG12PVeSv3ggWjxjrAlhVO72qakIJLTO4tHY5vImaZoNhMdJQeKZzz7v1dI7HoPU+T6j
         iPAFdJ8SJO82mGN/JneFvPP2NBFXYtKnh+Fyp+kG9GVBkqbgTRICZUydP2XX8rbzJo5c
         EnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755235110; x=1755839910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gc4I4GnyT4tSPzGGnUSG7Sj2q1K77d2MqUPufhFRRW0=;
        b=PIvUgkU/uNIlAmofP5SjPPISGly3o4wu8rwBOPBQXA0XRLmtrNFcySeit9q4Y0WMw/
         UHJ0TNATWEBsk2CxnaLrxBCiu42cqLbVibwz5T3O1Msg0NZWt+zfO55dtoB2KXXapQZa
         vI/iUqg9LpxSdGnDC0vVBvChMfIadggS+RkS6FstAQhi8/vnN5d5hM+hIoqIHRuKFn6x
         QI/tldBGD9MWZ/hwrOZNqxtg5M11Os8FvqURxxn0ssVyZplhr9Fl6rNL1D9yNsV4qW1f
         HRkrHOevay2XdUOWpTAPg8pD2GZWM7FRgI8UABMNDMGnU6cWKrqoq9bprZCQLBkSrtsf
         9yFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7AiZp1lhjbLpN/LIsmStpL2YgYMGEQQxzXVrs/hYzIRIew4uaSM3sz5NLrgOta5ix6y0d42yA0BmP@vger.kernel.org
X-Gm-Message-State: AOJu0YzMejCe1NlDYHtqhR5fvl7jpTRlQ+rVdjLpiHQqMs5ERUzLV27i
	LQ30rbgJZ3HSWV/bOi1PM7YJQ4QrFj/qCXU81SPCfJ9n/MSs3rbnzHx06o4smWP0EfM=
X-Gm-Gg: ASbGncsPlFeb5tjEeF5V7Ua/WXsRzRZN73nMnYvOTiXFARzjHjDC94wNF21NHjZ8+Ue
	xff6RmR11VGcH2nC0VugGRdJvxJSMSPjxLC5qdJHdtp/DfTOL62omur8d4wUSdYH6MNqcklRwCv
	v1L/TWgiWrrfNtqucDxs/2rdnHjla7Lmi+Ueqjemodq7cab8UzSgvflujvE2a4sARCMgQMck4UA
	2EL53mw8mPWEzV7hcRhoZ5A+Kny4zqNPM8vOoYLnr35IDhPRVGOUmgJxMD5AUHYPbt+gb5OWTEF
	E3IReACqI2XHp/mdGOT+eU/TCoLXncdw6w+nAGMjg3kpoZ74dpXnVE+qvItESQXcCryiXw+CZ40
	2Bs7VseeI55/+iEoFi7q19w==
X-Google-Smtp-Source: AGHT+IGivtfLCH94EwiqNLknns+DxOUwFc2vsl21qa22pKrZqAF+FtlV7AV9pspZ7Xlow2+nX+AUYw==
X-Received: by 2002:a17:903:245:b0:240:3dfd:99a2 with SMTP id d9443c01a7336-244594e0c77mr83625715ad.10.1755235110149;
        Thu, 14 Aug 2025 22:18:30 -0700 (PDT)
Received: from [127.0.1.1] ([103.88.46.155])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-323439978a4sm373212a91.10.2025.08.14.22.18.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 22:18:29 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 15 Aug 2025 13:16:30 +0800
Subject: [PATCH v4 8/8] riscv: defconfig: Enable MMP_PDMA support for
 SpacemiT K1 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-working_dma_0701_v2-v4-8-62145ab6ea30@riscstar.com>
References: <20250815-working_dma_0701_v2-v4-0-62145ab6ea30@riscstar.com>
In-Reply-To: <20250815-working_dma_0701_v2-v4-0-62145ab6ea30@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
X-Mailer: b4 0.14.2

Enable CONFIG_MMP_PDMA in the riscv defconfig for SpacemiT K1 SoC boards.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: No change.
v2: Rebased. Part of the modification in v1 is now in this patch:
     - "riscv: defconfig: run savedefconfig to reorder it"
        , which has been merged into riscv/linux.git (for-next)
     - Link: https://git.kernel.org/riscv/c/d958097bdf88
---
 arch/riscv/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index f25394d088d0d3cbee41fa9fb553c71e495036fd..b9ef2da15fb22f08bdb5ee5d1bba9f6eed49ff97 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -241,6 +241,7 @@ CONFIG_RTC_DRV_SUN6I=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_SUN6I=m
 CONFIG_DW_AXI_DMAC=y
+CONFIG_MMP_PDMA=m
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_INPUT=y

-- 
2.43.0


