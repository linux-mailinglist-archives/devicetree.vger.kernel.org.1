Return-Path: <devicetree+bounces-224208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDF6BC1A05
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:04:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5212C4E47F6
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC651C6FFA;
	Tue,  7 Oct 2025 14:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="SZybQh6I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f227.google.com (mail-pg1-f227.google.com [209.85.215.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9677A1CF96
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845887; cv=none; b=K2iv4pyU8/J3l/Wx+i9zHhsJedWMSI4qr5m/OgGE31w7ApNk4deFLOM77TwkeRpLuTiX1Qf+2hJ0Ws/Uh7oNS/wUScQO0yd/4gkgNO4+IMprBgwWy9aIHYPJjYIZzEo63NzOwWHhgFsXA2DwurTwTlbNmD7F/HiEkevGKZ/TCfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845887; c=relaxed/simple;
	bh=T7xKd6x9LCmTlXtrpXw7Dd+dCv2klQxxhbQjd7jUIls=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=p4C7C98VeqGBAC3gDemEp99aOjK0xzgrs+JzaUnCawUn5FLg1LuWe/Zsyou5DmyzdWXGAztBnzFXTHknMzUxf+61cn2pfwmLDZoKrkNEq7CGpyM4QtBd/Ar5AoqwPPQ4DkmXBWElY9uAW0fT6YKo042WROARXx+o+Re6Ok/2F+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=SZybQh6I; arc=none smtp.client-ip=209.85.215.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f227.google.com with SMTP id 41be03b00d2f7-b5579235200so4487657a12.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845885; x=1760450685;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G+9d1ZWb5LY8JAy2gqqVDPFgFUs9C7bdvcAG7+1eQP4=;
        b=hZh39m9a35+EAW4Ovn2lqXqxlhldrq3MVCk5RfA389BjZQ8lLljPhulJSwcoF2hAV+
         Mzlkv5/IvCl71d0efZhL9WkBI5ii1Q0sBolSPXrSx+85lgCJd+TRbDQiJ7G2A1ZUTc5I
         KkM0eDPgamdc8JDH5zVsv3i5UVYttT9Y+fzf6nX0hLfkcHQamBVqxdgaH7Z5LLIoOkYH
         rq+AhDo+TcfwD+QNaVtxFToCr+QlBEsM0p/90aeDBr4jBdzlrYNyEY0OGwrSWIqYa1ML
         oXF6CQ5rV3LmV/ZVt05jYKZKV8pBWXwdXGxl5U1bVY8pJUz9IujPRjLHfyGBseNhYU1h
         hV4A==
X-Forwarded-Encrypted: i=1; AJvYcCXZxbmmgdt6uq4vyi2t2t2kqqa4ZX3t/hT66tCC3FIl3j5ouBVBgvne1q8YSKhSvAtBA5Of6yZlbRj4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4hq7gZRgSyzBe4QVzV+OmzVbVDv2exCUnIexuH5ouBNJTYaqU
	4bSClKNbHzo9sb33jhe6CexEV50+v6c0yERwJJRO3Tj3+gxGxxxe5h2V6b2HIxjLq5trMEoivT6
	vKOh7/8h3V2BS9EmnO2B3veoIizOO+KgfuVnA5bYOqls7hxhqNYirPKBnVp6nPNruktwf3MVq5J
	/iMAqKFvNOXVyblc/cf1j+PqzQA2bquPigH7Stsg8JRpUyKya+xfJcd94F0OwLNOEe+F+oy9H1i
	dbPX1U/0Vs=
X-Gm-Gg: ASbGncsb95ckvD02U50y73jEKWg3PcSs0+fHQkXpk+AFspVDH2hYVOZvTYH7epyG4ux
	2LyKv0ky1dyFvW57HZ6cTmJIOq3I47+TPf93sq9LA/cLGKOpi1116uJ4KMZndKXfiWSbMtHGnNe
	2700onRwgEyU4zqFRjITFtvx9QVT2+jn4epNL2uBbhiMHLysIOB3uqxgjgdJFugdRqAvPoy6ikG
	p+/vURJluxEZj+uE64ioB+fHKYBEhQod8m4K4y0NBq4uBIJgvYR7r2ObJL+YSkwhfxMPiPW6C0z
	PSku07Sg+hKH8ArockIMOFBr1tcNEed1gWgoW5diPQg2JslV0TKboMNeJR8ra2soHmz260D+ZiW
	MgbS2n26RwtkayNncckfSrQxGbomogE0x3n//MIMgX/Vdh6L0o65mS9QlN1ZN1d3u9VRru3R2gG
	vly1bM
X-Google-Smtp-Source: AGHT+IFNjcJTkg+v/5Zwdo7QM8k0U4EBJvugzwuobWuPZRE1iET0dd3kIJj8zzL793uYHnnOlpnGjWoE20Qj
X-Received: by 2002:a17:902:e786:b0:249:f16:f086 with SMTP id d9443c01a7336-28e9a61b7demr217562335ad.42.1759845884416;
        Tue, 07 Oct 2025 07:04:44 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-118.dlp.protect.broadcom.com. [144.49.247.118])
        by smtp-relay.gmail.com with ESMTPS id 8926c6da1cb9f-57b5eb626dbsm1242218173.22.2025.10.07.07.04.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:04:44 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-435de7c0722so5910883b6e.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759845883; x=1760450683; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G+9d1ZWb5LY8JAy2gqqVDPFgFUs9C7bdvcAG7+1eQP4=;
        b=SZybQh6IVkzJikDKv1q8U4HJSjI5CVCeDbdZwpRwNIdfpSLDZBqyJN/7BUT5VK1Pj5
         zYgPvc2a7iFSQN5jQ38NUVu1VtjKQtuB13XmEC+ei54nHa53W2mQFFtzwj5YaMBai6Dm
         6ewpaldwTNicfMtfr0EbKJv/C+8EGiDdbMYqg=
X-Forwarded-Encrypted: i=1; AJvYcCVr2OZ5F7UI2EyXScx/4ZXENLCwRGvVR8jZMxnW11zkBy45BMEQFC7yXh/f/V9h5QZyU/E/7fEQPW6C@vger.kernel.org
X-Received: by 2002:a05:6808:150f:b0:43d:365f:be86 with SMTP id 5614622812f47-43fc1848847mr8223464b6e.33.1759845883207;
        Tue, 07 Oct 2025 07:04:43 -0700 (PDT)
X-Received: by 2002:a05:6808:150f:b0:43d:365f:be86 with SMTP id 5614622812f47-43fc1848847mr8223351b6e.33.1759845882241;
        Tue, 07 Oct 2025 07:04:42 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bae60b67sm142718956d6.9.2025.10.07.07.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 07:04:41 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v2 0/5] sdhci-brcmstb SD host controller SoC specific enhancements 
Date: Tue,  7 Oct 2025 10:04:28 -0400
Message-Id: <20251007140434.606051-1-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

sdhci-brcmstb HS200 configuration for BCM72116 and PM register save restore
changes applicable to various SoCs. 

v2 changes:
 - Separate commit for SDIO_CFG register defines that moved
 - Implemented cosmetic changes proposed for initial change for :
     "mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200"
 - Moved BCM74371 support in a separate commit    
 - Implemented review comments and reorganized code for :
     "mmc: sdhci-brcmstb: save and restore registers during PM"
 - Added Reviewed-by and Acked-by tags wherever applicable 

Kamal Dasu (5):
  dt-bindings: mmc: Add support for BCM72116 and BCM74371 SD host
    controller
  mmc: sdhci-brcmstb: move SDIO_CFG_CQ_CAPABILITY define
  mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200
  mmc: sdhci-brcmstb: Add BCM74371 support
  mmc: sdhci-brcmstb: save and restore registers during PM

 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      |   2 +
 drivers/mmc/host/sdhci-brcmstb.c              | 154 +++++++++++++++++-
 2 files changed, 147 insertions(+), 9 deletions(-)

-- 
2.34.1


