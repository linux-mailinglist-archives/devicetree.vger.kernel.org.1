Return-Path: <devicetree+bounces-1817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5697A8808
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:20:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B29331C20FCD
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2423B788;
	Wed, 20 Sep 2023 15:20:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44ED3B2B0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:20:02 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAEB4A3
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:20:00 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1c59c40b840so18569355ad.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1695223200; x=1695828000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kk2Thqajxn+5QPLXXdk7+dj9CSM3S4Ko2jD+ybQ8uWI=;
        b=zCDWVQuLiIiHLATfM3Og9RmauK6P+uFpHx8XN/hW55ebiWHenFUCtuYmqRCgiz3fJC
         7VdOUG/rvnt0LQUkxx0fEarpCV+xUyETjA7FB94gco+YV2ThgGNZbRot9+/XELBQ+RUI
         3gNzTKQ/FHK09+B2AohrPN3Bfhiml1nQ53dFdnm4naevfiUG1o2FCsFHHMlcpDY1PA6J
         4uU5p38ydpVDyPOiX8Zpya+E9TV4YJIN4SurPMlrSYEoNOvwTSeR+Eh44XcdI2kb7/Sf
         Smpth1x6IBAeiacRQWyP0Emku3i7i7vSXicW0dWchmDqDOWSk5Llv/Z6rxMOMC9IP4Vj
         QkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695223200; x=1695828000;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kk2Thqajxn+5QPLXXdk7+dj9CSM3S4Ko2jD+ybQ8uWI=;
        b=ezqfTA7g4BZ4SkmM4jYsa1mxpGkc/knf2DcD3OFKwoq9AJd63kXM97PTesD6tkUqEh
         xC6127IyV+DOJEQ9GAsciWtdK4h0SKLoW5SPIH6DJrKCxKwTkoP8UQYHRI3hZprcDaEM
         FMSI3jTefsn87Pr0IWTjeXyJVrxk9Laud5L5xyemSXy/RmmzK+zQdCdmyaYa7M74eI0P
         8knli9uskNxaOVlwzcVUHEH5Us8CqFYorHtyhgV15hUGidIVDdecXUCnU3IGleN72jsy
         xaOtit9z6aMbWCmA+owVUwExioKYhUyfpee5FkkNAjBRxE3smculhTeoE+1uWtzCdq+u
         +/0A==
X-Gm-Message-State: AOJu0YzhTZNTEPYKRwHcCNAJpmevDzM8vSFZXbpJcYfA/v5z0Wp56MEo
	DUjHEILOar78Sx1hUmZ4TNFAVA==
X-Google-Smtp-Source: AGHT+IEm+GMkfegDAUX6YBOkTavvdtrQAnalwKP6ybmwhgmW5os6nDyvCA5ShwDM+w4l32FvapmW0Q==
X-Received: by 2002:a17:902:f551:b0:1c5:a7b7:291c with SMTP id h17-20020a170902f55100b001c5a7b7291cmr3383681plf.12.1695223200249;
        Wed, 20 Sep 2023 08:20:00 -0700 (PDT)
Received: from localhost ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id a10-20020a170902b58a00b001bdbe6c86a9sm11970297pls.225.2023.09.20.08.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 08:19:59 -0700 (PDT)
Date: Wed, 20 Sep 2023 08:19:59 -0700 (PDT)
X-Google-Original-Date: Wed, 20 Sep 2023 08:19:56 PDT (-0700)
Subject:     Re: [PATCH v2 09/11] riscv: dts: add initial SOPHGO SG2042 SoC device tree
In-Reply-To: <ffe6a61a8879232aea7b86ff8aee5d681c6bd287.1695189879.git.wangchen20@iscas.ac.cn>
CC: aou@eecs.berkeley.edu, chao.wei@sophgo.com, Conor Dooley <conor@kernel.org>,
  devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, guoren@kernel.org, jszhang@kernel.org,
  krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
  Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org, xiaoguang.xing@sophgo.com, wangchen20@iscas.ac.cn,
  inochiama@outlook.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: unicornxw@gmail.com
Message-ID: <mhng-09373969-fd57-4fa2-b0fa-470004f6e17c@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 19 Sep 2023 23:40:32 PDT (-0700), unicornxw@gmail.com wrote:
> Milk-V Pioneer motherboard is powered by SOPHON's SG2042.
>
> SG2042 is server grade chip with high performance, low power
> consumption and high data throughput.
> Key features:
> - 64 RISC-V cpu cores which implements IMAFDC
> - 4 cores per cluster, 16 clusters on chip
> - ......
>
> More info is available at [1].
>
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
>
> Currently only support booting into console with only uart,
> other features will be added soon later.
>
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi | 1744 +++++++++++++++++++
>  arch/riscv/boot/dts/sophgo/sg2042.dtsi      |  439 +++++
>  2 files changed, 2183 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042.dtsi

Just an FYI: a handful of replies to this are getting blocked by the 
lists as they end up being too big.  I just went and allowed what was 
there, but future replies will probably require someone to be away as 
well and thus might be slow.

