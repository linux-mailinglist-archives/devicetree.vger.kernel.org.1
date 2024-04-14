Return-Path: <devicetree+bounces-57688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567789E480
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 22:36:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E94651F223A8
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 20:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E28BC1586F4;
	Tue,  9 Apr 2024 20:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qI053Wwz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72762157A42
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 20:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712694973; cv=none; b=c4wcESUFlU2mEw25AZ6jYn86RTq/nEVpre3tR1M8UFl2FLTTGzMjE6qAvmjcae75ob/mACxY2Qk1PWgetSq2iXR5ghsvbMRhyPWHcVumOo1vy5FWopGQOi5yQ8PVO0KiEMNh6KcCN1dMOoWkemLJDgJtk8RfCQ/a/VUOq49NvLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712694973; c=relaxed/simple;
	bh=y7XsaC4vZbeNJhcdjotiNGAhLdU579W1/VEghSNsORM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d3QYiVFOj7Jd4H20q6Ds0XbykUsejNp06tT7stZTEDPhescIoAw9rKebhOL+MQjMppPvNuoKZCJT52KTeN3+u4rt4FYdAjOcEDttcMmdYgo7w+crw4ljCVNrkT9+cT3JvtyQ4Xa91OHQmZnre+gTJ/whQzaAXYXReJffv/xAVGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qI053Wwz; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1e062f3a47bso8305ad.1
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 13:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694972; x=1713299772; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FtKLykK9jwbUT4Fzl0KoJ4iyIWu8adwZgz3p8Ke5vm0=;
        b=qI053WwzNGaj3zMJnQcpLuqLaYPrLUL9XaDqx9ubebg18Wzd03NLY+oKpndjckf6BJ
         VLHycKRvjUPrCVwJKDrYrU/JICahuFkhli4y1zJfoRVYReeNjyJMDD6ijKOmZ1LgCkui
         bEBrg5jjZC8fCjFd/cpiGa9IPVgllzgz90S3kBKNH5IXA+pD8+N3nY0mgEtKTxgXlNg7
         fJ8B2xasRdVl04Vr0f/brBXGUHAhzKVugaJTZcSSOj+GTzRq7UnyB3OQjKh5F0nkkWaB
         57dL+eU951uvtf3yFXQLW5SKvK+DX3bg5EtwVJ74Ge0biVPNp1HzmBIBNGOzsL0vqtF4
         tDxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694972; x=1713299772;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FtKLykK9jwbUT4Fzl0KoJ4iyIWu8adwZgz3p8Ke5vm0=;
        b=rGhccQV2vBqZIpk3Y/NVt0GYC2t/a3GhEXrLrNBtd48HxosrgwOu1QeKmJce6afuCa
         QUsb7dP5IRAhn89WOaNzEAjkAsVw1hVostXwaIDUPxuZ9sp/YP3PqX2KZjH/BbOqnDR9
         LhG/WECcOQh6hXKCpduWg+sTnIo1o8xk+6oohloAVLoNDqZt2W7ogFRaWA1nfbHuw3HN
         5mvJB/2iqjogsr3tfDKs7T2Zvqyk4L8KfHQa3UCIH/yjeMqnYAKAl6qBCu6U1S4SxIdC
         74DPxDnGmuWoebH33t96CYtOHBprmu2HZba6eQXWLdf351P6a4aEND9h1L7LeuIoBYpF
         oy3g==
X-Forwarded-Encrypted: i=1; AJvYcCW0/Gqjeyg815VLzyVPhgZoQexfGxD5iASyCvM3EZxQ3DUEKmyNyxZOdW9c0wvDHOqgFiup+QMypI1MVMhNTOglUm+79TILG5pQ/A==
X-Gm-Message-State: AOJu0YyM1ejbnD0Mqn84Mi51pJQoSNtGsBzylDEW/Ofz9VndCBwFK4Gc
	P01PfBZl7U2UcHaM1kw6kjCe2RmUo9sObG3+ADdzg6or8AS4PJZSTaTKFZhE6A==
X-Google-Smtp-Source: AGHT+IHd30uGplg5xyQFoQxM7LYuLhmgBewG96nQ2RKlakgBuH10CSs80ZE9WAcaT01+APzsir2vJw==
X-Received: by 2002:a17:902:ce8d:b0:1e3:e08c:5a98 with SMTP id f13-20020a170902ce8d00b001e3e08c5a98mr1193plg.29.1712694971618;
        Tue, 09 Apr 2024 13:36:11 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id hq8-20020a056a00680800b006eaf186e078sm8748246pfb.132.2024.04.09.13.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:36:10 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:36:07 -0700
From: William McVicker <willmcvicker@google.com>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com,
	chanho61.park@samsung.com, ebiggers@kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, saravanak@google.com
Subject: Re: [PATCH 16/17] scsi: ufs: host: ufs-exynos: Add support for
 Tensor gs101 SoC
Message-ID: <ZhWmt2n-Njkzf6Rk@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-17-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-17-peter.griffin@linaro.org>

On 04/04/2024, Peter Griffin wrote:
> Add a dedicated compatible and drv_data with associated
> hooks for gs101 SoC found on Pixel 6.
> 
> Note we make use of the previously added EXYNOS_UFS_OPT_UFSPR_SECURE
> option, to skip initialisation of UFSPR registers as these are only
> accessible via SMC call.
> 
> EXYNOS_UFS_OPT_TIMER_TICK_SELECT option is also set to select tick
> source. This has been done so as not to effect any existing platforms.
> 
> DBG_OPTION_SUITE on gs101 has different address offsets to other SoCs
> so these register offsets now come from uic_attr struct.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Tested-by: Will McVicker <willmcvicker@google.com>

I tested this patch series on a Pixel 6 device. I was able to successfully
mount two of the Android ext4 partitions -- efs and metadata.

  root@google-gs:~# mount | grep /dev/sda
  /dev/sda5 on /mnt/efs type ext4 (rw,relatime)
  /dev/sda8 on /mnt/metadata type ext4 (rw,relatime)

Regards,
Will

