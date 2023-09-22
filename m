Return-Path: <devicetree+bounces-2563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E5F7AB5CA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8D3EB1C209A2
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DFBA4177D;
	Fri, 22 Sep 2023 16:23:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C6341769
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:23:26 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D5F5198
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:23:24 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-68cbbff84f6so2715703b3a.1
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695399804; x=1696004604; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AHg6WGFiYjr1HXimk+u+8jzAweDZw4kGMIG8TL93+tY=;
        b=OBsj7UXuilNejuelWW2fSyBYD07C8b+34e0FOTN4n3KlejzV1K+XWcLhRpaK5m6KGD
         THGrpY/rma2UsKaTmFeBNRrlkxNuz4FKuNer1xmH8BwKsVNnNwhhFg0Iwu/x3u7xySf3
         Lkb7wVU55QxQGAXF4AlhBe/eXVXmj/cuwJeIiOrEzN1H6mXskj+UlPmBcwqKNFbF//ly
         rlSStqMz1dyUuDFuJw4ANupuiK9djGXBrz55T/+4bjp6Xl2kzv2uAgFNujhveHHU2pwj
         6AB01tdel60iujWkizWgJ1pZhVlTiaBe2NQwYMYUX/KCeP5JW/LQ62eyVFQDAUI/HYP+
         tb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695399804; x=1696004604;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AHg6WGFiYjr1HXimk+u+8jzAweDZw4kGMIG8TL93+tY=;
        b=jZqnRT3Tj2XgNSfIjfhRl91f63dMV5V30DXpvm1qJPy/KDvXrBB4jlfMTrsU6eB/Pd
         0yGIjk6YJZ+8ehEq9lu2fc80444WOdQVGZ672+Kn7gAP/KZFVXTQ0EGfL3Bht3LyA5Be
         UmiqQ0kA4dbu3u3aS96uSG4/DhmKa3OvfXz80pbgvLze8YtO9n3XGj5aWZtQ7e7skuSi
         wjKwyhrS9+xNB77sIj/VeIc/jop7BxBbtIoaF6cLH2OKsPfz+1tFfJSIWaVrwoz+i2UJ
         vUi8kqVbw8fM734lQS305xhZuZ26OspLzu+o6RCvZFK2hMKCPkHrlW7F/B3NvxCAKaFa
         qaYQ==
X-Gm-Message-State: AOJu0Yxow71mIaxRakceR2WizHte5If2VvjYFD4ku2v0cBsG19u+eEgH
	riHKt74VmrhxM3GodsCL80i2Ew==
X-Google-Smtp-Source: AGHT+IFmxJwCFBncjjkZSaX6oosj8CqRhfXIommcUiSmAdtJAZgRc2IHT8A5lJUeO5ShWEdV/QZBwg==
X-Received: by 2002:a05:6a20:7283:b0:134:73f6:5832 with SMTP id o3-20020a056a20728300b0013473f65832mr281394pzk.16.1695399803769;
        Fri, 22 Sep 2023 09:23:23 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:c44:77f:ca7d:adec])
        by smtp.gmail.com with ESMTPSA id u25-20020a63a919000000b0057ab7d42a4dsm3249805pge.86.2023.09.22.09.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 09:23:23 -0700 (PDT)
Date: Fri, 22 Sep 2023 09:23:21 -0700
From: Drew Fustini <dfustini@baylibre.com>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 0/6] RISC-V: Add eMMC support for TH1520 boards
Message-ID: <ZQ2/eUKbW3wK7kHp@x1>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
 <c1a4a7ab5c68c00dd8b3bb249c0371dbb8bcb929.camel@xry111.site>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c1a4a7ab5c68c00dd8b3bb249c0371dbb8bcb929.camel@xry111.site>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 07:41:37PM +0800, Xi Ruoyao wrote:
> On Thu, 2023-09-21 at 18:49 -0700, Drew Fustini wrote:
> > This series adds support for the eMMC on the BeagleV Ahead and the
> > Sipeed LicheePi 4A. This allows the kernel to boot with the rootfs on
> > eMMC.
> > 
> > I tested on top of v6.6-rc2 with this config [1]. I was able to boot
> > both the Ahead [2] and LPi4a [3] from eMMC. The following prerequisites
> > are required:
> > 
> >   [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus [4]
> > 
> > I pushed a branch [5] with this patch series and the above patch for
> > those that find a git branch easier to test.
> > 
> > Please note that only the MMC controller connected to the eMMC device
> > is enabled in the device trees for these two boards. I did not yet
> > attempt to configure and use the microSD card slot. My preference is to
> > address that in a future patch series.
> > 
> > References:
> > [1] https://gist.github.com/pdp7/5fbdcf2a65eb1abdd3a29d519c19cdd2
> > [2] https://gist.github.com/pdp7/91a801a5f8d1070c53509eda9800ad78
> > [3] https://gist.github.com/pdp7/1445c3c991e88fd69c60165cef65726a
> > [4] https://lore.kernel.org/linux-riscv/20230912072232.2455-1-jszhang@kernel.org/
> > [5] https://github.com/pdp7/linux/tree/b4/th1520-mmc
> 
> I've tested this branch and successfully booted a rootfs on Lichee Pi 4A
> eMMC with rootdelay=10.
> 
> Curiously is there some way to make it work without rootdelay?

Thank you for testing.

This is the kernel command line that I am using on both the lpi4 and
the ahead:

root=/dev/mmcblk0p3 ro rootfstype=ext4 rootwait console=ttyS0,115200

I seem to recall that before I used rootwait that there would be a VFS
oops because mmcblk0p3 didn't exist yet.

Have you tried rootwait instead of the 10 second delay?

I imagine an enforced delay would be very annoying. With "rootwait", I
don't notice any delay, it boots to the login prompt faster than I can
read the text scrolling by during boot. (my rootfs is a simple
buildroot).

thanks,
drew

