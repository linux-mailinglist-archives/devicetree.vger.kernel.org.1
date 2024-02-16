Return-Path: <devicetree+bounces-42749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC178585F7
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 20:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BD7A281498
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 19:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB60135A6E;
	Fri, 16 Feb 2024 19:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="EsUq5vSB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AE013540F
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 19:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708110383; cv=none; b=gnWtaO156r+B+c2gx2yXH41jcwhLVyPjPLznXWN+7FxrEfT7l2B0+ZjUS/9qd6kuMfdHcARQPrRcPvt4iKBPKFvyYOcNYthIQfKqWxC9O0OUwiJkJOATiVFL8K1tRirHztRdlJWifBWhCEoYQaHuZS4ZGC8JABB1saipG+hb6+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708110383; c=relaxed/simple;
	bh=tyXKpT94FpSnBWMVzJImdgL6izGWv0FtXsMQPeQnSGA=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=F46A92eUCM8xbmeJg7keMtrY0mbE0sNj1M0taN+sDDXQoqGzSW1MO8LNX0bYtD0fszMDLIJHKBYZPCKFvM77CFpJpxHAT80YV7a3jqeLJqQeBSWkL91H8L0OXHNKS/HZAWyq9nDFVywRk7DF5Ivcv2P9rSv3xblwCG7zRr9VJto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=EsUq5vSB; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1d7858a469aso20969075ad.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 11:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1708110379; x=1708715179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G57ATopsWGdgfukCf+oinJCn957kvcdWv+8EF1OVrlg=;
        b=EsUq5vSB9682MEt9Ck0RPUdwAjiPnXC2vB10k9m87Qhos0KmkMghLmA7zHZ4IHhe62
         3DNfbTN/yepxzaXFcSZtML4IJjgY543BDC+gQ/8bMTj4rsfrq0nQ53rIuaBHfPIN/3TH
         C+EV+4LejAWb+h6GVeFN28Yq78ezcCD7BaJle8V6HOBq7krhimv0WPj/MNiAT8PDfIOj
         twfcjxNqe8kWoFSeCMYj4f1mgmZFKS++paenjJmnULdk9U8PJEfrRA2Q9JVTKWjJuHU9
         hz6gZeO0U+bLYw+jR/DOUlJZgs5d5Wer2TXqYzIiJ+9BidIaKRfua1/hlDopU9G+LzbF
         6R7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708110379; x=1708715179;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G57ATopsWGdgfukCf+oinJCn957kvcdWv+8EF1OVrlg=;
        b=RJBL3n+31XtqTUUvCN4hR9C1UJzuZT6Xyevvuedt+tFqJtkXtCJJriwxkw8dyx1Bf/
         hYdZKA3SUp6IuEeS/yk6qFtLF4sLLXtOvcesBV/C8GOOU4vhbZ9YbS4lxfgZbOFVY5YH
         skNNwJOLFCC2miPOupjzHjm6YuAt2M+CLJsXcgzoztDZzT8Mf8FocBh+6OTJpU0bx+8z
         P5wakdq9VugqAEwtx+BWzZo6MU3KQybqRidPIqaWI3Q1+1lKOX7jdcyTbXxxhcafc3nm
         RikJIGKZKL6oqgMreh9eT7Rm5dpe8O/JQVuRWtftL+1DG/pW3QHTL2IQr3ITWQ2KxFP9
         eCHA==
X-Forwarded-Encrypted: i=1; AJvYcCWtDsyEUk+xbBbh4W59wguazEH5cjszXgQRrWh56jCwiSRGVTN2XcvTEGZCeg80ljB1likmO5cmWY5Yudgv+PLxCw9tQpPnrhp69A==
X-Gm-Message-State: AOJu0YwJS5tzLIIxZ8/XV+hlCv2wQT6vPWzulEiqXoFYeXp/5U8aR+GG
	bCU3DDi/CZdd+hMv4xj76K56NwWrt/h02RJM30Ya4uQd0t1n8eekdvz7gmkdJxs=
X-Google-Smtp-Source: AGHT+IHYib0QY99Hae2xO/F1iLN49cqNkEPihSniQRy/XogBo6z3UOnPW2TTuRKdLELfbmQ5iRUjXQ==
X-Received: by 2002:a17:902:ec8b:b0:1db:b8da:ddfd with SMTP id x11-20020a170902ec8b00b001dbb8daddfdmr1220943plg.50.1708110379239;
        Fri, 16 Feb 2024 11:06:19 -0800 (PST)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id x12-20020a170902e04c00b001d958de13c7sm220415plx.0.2024.02.16.11.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 11:06:18 -0800 (PST)
Date: Fri, 16 Feb 2024 11:06:18 -0800 (PST)
X-Google-Original-Date: Fri, 16 Feb 2024 11:06:15 PST (-0800)
Subject:     Re: (subset) [PATCH v8 0/4] RISC-V: Add MMC support for TH1520 boards
In-Reply-To: <20231212-flammable-idiom-660b1d85e20d@spud>
CC: Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  jszhang@kernel.org, guoren@kernel.org, wefu@redhat.com, Conor Dooley <conor@kernel.org>,
  robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, dfustini@baylibre.com,
  Conor Dooley <conor.dooley@microchip.com>, jkridner@beagleboard.org, robertcnelson@beagleboard.org,
  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Conor Dooley <conor@kernel.org>
Message-ID: <mhng-a8843466-ecdf-4e7b-a866-c0cd2683774f@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Tue, 12 Dec 2023 11:13:25 PST (-0800), Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> On Wed, 06 Dec 2023 00:09:20 -0800, Drew Fustini wrote:
>> This series enables the MMC controller in the T-Head TH1520 SoC and
>> enables the eMMC and microSD on both the BeagleV Ahead and the Sipeed
>> LicheePi 4A.
>>
>> The drivers/mmc/host patches from v6 were applied by Ulf and are already
>> in the linux-next [1][2] as well as the bindings patch [3]. Thus v7 was
>> only a defconfig patch and three device tree patches. This v8 is a
>> followup to change the dwcmshc node names to match the documentation.
>>
>> [...]
>
> Applied to riscv-dt-for-next, thanks! The defconfig patch is Palmer's
> to take :)

Sorry I missed this.  It's on my staging branch, but I'm still debugging 
some boot hangs post-merge so it might take a bit to show up on 
linux-next...

>
> [2/4] riscv: dts: thead: Add TH1520 mmc controllers and sdhci clock
>       https://git.kernel.org/conor/c/a77f02e84896
> [3/4] riscv: dts: thead: Enable BeagleV Ahead eMMC and microSD
>       https://git.kernel.org/conor/c/18d92a03b319
> [4/4] riscv: dts: thead: Enable LicheePi 4A eMMC and microSD
>       https://git.kernel.org/conor/c/b6b5028473ce
>
> Thanks,
> Conor.

