Return-Path: <devicetree+bounces-57685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8195989E46A
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 22:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0369DB2230E
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 20:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A801586D1;
	Tue,  9 Apr 2024 20:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="r7052KZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B335015820D
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 20:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712694718; cv=none; b=Jibw44PrW9aQDxL3YxcEm+VJhbabWnq1pSuwdS3SMxxUi5+Q7VyvrhFDHXyJD+Wddl1lHls2NfCRLlJz2+rHIGj1B0aWo06nDLHVW4VNS+qZnp5GabbFSOgE4zWvaYGGvroNfVe0VXmuKmAdU+geaf9fR8SR41P1/JZfwvc7KHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712694718; c=relaxed/simple;
	bh=Vs7Fl4nk6yyaypIwhuIjZlvpPaXIEdLVSScbuiPTFsk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BWVtcABmlXxXUXhihoQu7eQwddE/RGUffpNAG+1kf20XgLNs5T24CMGq7+qJKdV8rKUIiPYmfERyeCIMN+s5bM7wegQHilyZ53p7ZkbzFjTJbzsSlwYBtYUeQGQcmRUGJLUMv8+t1COqR7fqDZrhixpM+EPfHc+PAdawBf4sKLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=r7052KZl; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1e42a6158d5so10725ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 13:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694716; x=1713299516; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SUvgfC3w6ZX2fpsTKLPWf6JUERZbrXuQ25CP7Jh3l6s=;
        b=r7052KZlHLhodEa4GNiLQVpGGO7OGwKN7AjHoLs0//pFkcW1l75v8IZa8ITwvxD67A
         ZaYiofexrnpjhgXkGzKRD1qLpk6ZBDT2dghHVr56o9QYNcygv/mxrG2l9umtUq9QPjxR
         MUPk6Jy1HbgTxj1QMWlo7vVlcdSEJRMyuXA6cSj/XoYXeG5Fo/hQ2XNY49Abht6MpYPe
         8TlLs13UhVZ90NoKQRp1Zad4QprGveFlO87cS2RyX0/NRHmzjX17b2uUkKEcgBW6tc00
         YYHn3/oie4Bv0axEKlSdLDuWovODUKECbXN9NXhJzS2oAe83dnS8nrvr5dx50plf4ybz
         oM0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694716; x=1713299516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SUvgfC3w6ZX2fpsTKLPWf6JUERZbrXuQ25CP7Jh3l6s=;
        b=eeyDTi7nWm7f4puAgq9ZWGA54Mzs21lgZufc+a2QqYeNwoaXbQ8g5+3vxGHoQXKA27
         h1IfB/LPOk0cZ+EJq/aoib9KR/BQO55X8F2qaeabgEAg8hS/oDy3deLA9vrYffwHaQqZ
         HXUXD6BN/cPJXHA3RNQdx0xPs0q2q9mLSlrVEYgSazzYZ0C1NkKBqE4FlIi9x3dYDDB7
         0sslEj9NFxSGzjI/lTIu4dwncom2QBuD0Cohh+zsY0idLAsBg29DM/WcUef33JDKLVze
         7+NgK7+U2ElXT25gETnoBVOcnWUXfJf1qBHvg3E0MoM73iqKOWfraOwNL9C++JIbw6Be
         zwig==
X-Forwarded-Encrypted: i=1; AJvYcCUJBxBgwpR8y9jdYUo/+23faPdOpP3QZq7b1dPrjMloYus4oPj34tTkOjsQ5jfllsYPaBSXEDF2B0zVw+k1qFhCLkrJDKFHlE6axg==
X-Gm-Message-State: AOJu0YzagtPYhuLqz9BLHRwAMicucBMbWkDZhMP3aZoEoV2KiCUB86pX
	t5igMxJXBnPvS7RAMXH43C3mJJYwqCFn9LGelKo1sPBcCXV/Q09qJi6gMAFCbw==
X-Google-Smtp-Source: AGHT+IH9ezbINF2W8M0K+P7GqpiAb9inpFocjNUgpuAn1raw2RBR1YlfC+PSle2MldBPfMVs9xAsEw==
X-Received: by 2002:a17:902:f544:b0:1e2:aa6c:3c72 with SMTP id h4-20020a170902f54400b001e2aa6c3c72mr3010plf.3.1712694715690;
        Tue, 09 Apr 2024 13:31:55 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id fe17-20020a056a002f1100b006eab9ef5d4esm8768874pfb.50.2024.04.09.13.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:31:55 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:31:52 -0700
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
Subject: Re: [PATCH 13/17] scsi: ufs: host: ufs-exynos: add
 EXYNOS_UFS_OPT_TIMER_TICK_SELECT option
Message-ID: <ZhWluEU4aG3E2NcI@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-14-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-14-peter.griffin@linaro.org>

On 04/04/2024, Peter Griffin wrote:
> This option is intended to be set for SoCs that have HCI_V2P1_CTRL
> register and can select their tick source via IA_TICK_SEL bit.
> 
> Source clock selection for timer tick
> 0x0 = Bus clock (aclk)
> 0x1 = Function clock (mclk)
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

