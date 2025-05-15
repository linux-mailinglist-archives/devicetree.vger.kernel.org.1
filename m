Return-Path: <devicetree+bounces-177744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F88AB8D44
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 19:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2EB7F188A555
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37BE253F34;
	Thu, 15 May 2025 17:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="qmujxe+k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBAB253F17
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747329071; cv=none; b=M4EM1+NX7r/AXBoelPpeTP3KGejOQA1hj0dSpLsEXd3vSxKBYpbAvyWfD+foKQI5P8jCBdYdnBJ6qi1M5iFo12Ga532NaY9c1jS7DOZalufLmT1LbcDZH3FQiXe03dXfj/34cTFNB/hCAazZ6wFKjrLn2KdW12HBcEcGlBVjtcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747329071; c=relaxed/simple;
	bh=S66ui8RplR1hUsEfL2yiUULr7ReEi7voeyYmjYi8kQM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nCIXb0BqKz+IEi6ozvUw4tgtC/L+5j1Ggj30dVypbqC5Cy8v3qBKMK739h0MdITFJTXVd95oV65auAnqNh4Q3v+7R1Fw+GCkxFgKpEsDnfbbfhF/6NHbDPSdVMZLGovkG82xwwt6JTc6WApDds06j7ygSN3I84lTo2+h3OQvGZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=qmujxe+k; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 90026497A2
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1747329068;
	bh=JtByJyVo62jw0XHnA95uqk/ce1yHYsp6TEnfnoc5j1w=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=qmujxe+kTAFDUQ1sTzzCp7C6mXPEdmWxCsvQVDMqHSpJhI88+QpeGzV8cCMX+Tti3
	 7+c7ShLNO7SG1BOOUb5mGsyKMbuOLcmdBhv/BMQfEgOxAHOYLsKkhyWPh8YN+d6dh7
	 bK221aVFaDVpFNJn/XD6SKuLT33E05LBXc3pxuNoSCo5WzTI3WqiHesEantKiJZ4IY
	 dTRM837XdfTQYcX8yl1NUgesakqkKibtL6S97Ugz2HgNHKaBfml8tmmw10qsOdfzTv
	 nhLEnSpu2P4Ih/o18o+moVduIvaEJ6qy+/j2via/nHeN02SXZjKzUZ/O9rNaxGPBIJ
	 WRCDgdShi0uSQ==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47699e92ab0so26586721cf.0
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 10:11:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747329067; x=1747933867;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JtByJyVo62jw0XHnA95uqk/ce1yHYsp6TEnfnoc5j1w=;
        b=kC5k3FqF8bmGhCPOpK/MpNwHEJqxG4o0ETCH9m7Ii7tXdjZSvhg72PQkK95FBg3w9+
         Qha+tN0DlrwDsWyzGTBs7zCVW+D8cgcLMRCAvU873OI04s80OkzBII57KqoK2CeyJ3WR
         WcKhp+8+jsf8HE1IYXdC5AQcIqnkNrkI0tLp2M1L3y5uxsjCkBWhL2CnzMtBOPJrDIYp
         e2mM3APy+fRYW83TRVdeGH1I8CLYHsprJ0vtX9T1D1zrrf1DhQs5LrCZMRTzleodKux3
         vx3Q2ykSDWDlYrTRgqrdTTyKYekghXKLQOM7Lul6TmRybu1yqHoYUd2vVZqrIRyDz19J
         tIhw==
X-Forwarded-Encrypted: i=1; AJvYcCV1gE+RFGdRUQqhfXU7dTz+xKQKUAST1wFBqtNHJ5dmQ52Jbqt8LWbQGKsvoXNol5Nvb2TbQRZcXb8B@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Dbch3yJCR38PU3tAAAoLkmbT7E3ckgAKlON53mv0fy8yBn0A
	GmenVPN9NyBK1Wy8IAAHW9l6U0udINvcZ5RrtroesjEQhG973n4JgEB7K3Oi0grrdocmMgxQRsM
	/dd6cdrx8SR+WL6hto0hij9ahCaiYEv4ZlS429Wi8nA9zHujUWzCX6sw611cSh8y9AhZlJT9Gd1
	tkmF5+IltXwOnrVqOR/e0ZfZW56oXzZAOFlgO4DznRpuT68yGazFc8ZRpj1yge91JJ6pKtWw==
X-Gm-Gg: ASbGncuCmJ6MJ6W2OU5G7vHGe9+9F5K+9lMqIbJjrAuXPK4zgPYogVimpf4zYOomkfm
	HPUBq2qaSHobU0uzfxCIxQme8trCVzWfXSJ2D9hHZfbI3Fy42n+t2taYfrTwMQBMq6JDONw==
X-Received: by 2002:a05:622a:8c3:b0:478:f8bb:b5e with SMTP id d75a77b69052e-494ae3787d9mr2934521cf.13.1747329067177;
        Thu, 15 May 2025 10:11:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcaUH2N5muwkVDiIxEHWItA30nxiMYoNCDf2Wv2idVAmWCRr+uin/5sa1AilKtPRZiwiaH2QNVjHO7L9k7ddY=
X-Received: by 2002:a05:6820:1841:b0:608:3ee9:13a4 with SMTP id
 006d021491bc7-609f37a4c25mr127767eaf.5.1747329055811; Thu, 15 May 2025
 10:10:55 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:10:55 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:10:55 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250502103101.957016-1-e@freeshell.de>
References: <20250502103101.957016-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 15 May 2025 10:10:55 -0700
X-Gm-Features: AX0GCFsMRCnrUVPh4GyhcmqGXz7TGDQn2DvhmQZjDAp9e_FqEd74NBSnaFQLito
Message-ID: <CAJM55Z_ebHvpf=G9fMGctkPbAtVd6yco6joRNVbzcAtiEzD=ag@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] riscv: dts: starfive: jh7110-common: Sync
 downstream U-Boot changes
To: E Shattow <e@freeshell.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> U-Boot boot loader has adopted using the Linux dt-rebasing tree for dts
> with StarFive VisionFive2 board target (and related JH7110 common boards).
> Sync the minimum changes from jh7110-common.dtsi needed for boot so these
> can be dropped from U-Boot.
>
> Changes since v2:
>
> - 1/5 -> 1/4: Do not replace assigned CPU core or PLL0 clock when adding new
>   assignments. Adjust patch name and commit message accordingly.
> - 2/5 -> 2/4: Detail reason for qspi setting changes in commit message
> - 3/5 -> Drop uart0 clock-frequency patch
> - 4/5 -> 3/4: Add reviewed by tag (no change)
> - 5/5 -> 4/4: Follow dts coding style sort order. Add bootph-pre-ram hint
>   for mmc interfaces
>
> Note: mmc boot source modes of JH7110 loader on mask ROM are deprecated as
> of StarFive JH7110 User Guide 1.2 revision. The loader expects data within
> range of LBA 0 and LBA 1 in conflict with GUID Partition Table.
>
> SD Card and eMMC boot media are prepared as follows:
>
> # GPT partition SD Card or eMMC as
> # 1: Secondary Program Loader @ 0x200000
> # 2: Main payload area for use by SPL
> # 3: EFI System Partition
> sgdisk --clear \
>   --new=1:2M:+2M --typecode=1:2E54B353-1271-4842-806F-E436D6AF6985 \
>   --new=2:4M:+4M --typecode=2:5B193300-FC78-40CD-8002-E86C45580B47 \
>   --new=3:8M:+100M --typecode=3:EF00 /dev/sdX
>
> # Write offset value in bytes of loader 'backup section' SPL as part1 @ 2M
> python3 <<-EOF
> with open("/dev/sdX", "r+b") as f:
>   f.seek(0x0004)
>   f.write((0x200000).to_bytes(4, "little"))
> EOF
>
> # Write invalid CRC to trigger 'Main section boot fail,use backup section'
> python3 <<-EOF
> with open("/dev/sdX", "r+b") as f:
>   f.seek(0x0290)
>   f.write((0x5A5A5A5A).to_bytes(4, "little"))
> EOF

This series looks good to me now. Thank you.

/Emil

>
> E Shattow (4):
>   riscv: dts: starfive: jh7110-common: add CPU BUS PERH QSPI clocks to
>     syscrg
>   riscv: dts: starfive: jh7110-common: qspi flash setting read-delay 2
>     cycles max 100MHz
>   riscv: dts: starfive: jh7110-common: add eeprom node to i2c5
>   riscv: dts: starfive: jh7110-common: bootph-pre-ram hinting needed by
>     boot loader
>
>  .../boot/dts/starfive/jh7110-common.dtsi      | 31 ++++++++++++++++---
>  1 file changed, 27 insertions(+), 4 deletions(-)
>
>
> base-commit: ebd297a2affadb6f6f4d2e5d975c1eda18ac762d
> --
> 2.49.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

