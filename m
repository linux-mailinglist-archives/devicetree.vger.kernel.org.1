Return-Path: <devicetree+bounces-57684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C17D89E464
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 22:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19E56B20B51
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 20:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A57315821C;
	Tue,  9 Apr 2024 20:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="CTAanvus"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CB551C39
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 20:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712694663; cv=none; b=VWaWi6ry0JfKxXFL2JIPAWvH483vL4HoZCHowPPWgFJx5YF+TK071LRu+d2Ev5WT4mBFnLH7WgDtNZfsQIS4WicHAzFVnySp98pZFo0pXLoGJUt3p1dcUWtAhb4P1qFUr1HFdd7hzP6wW5OKmTyFj6Ay1oBT5g/PGFSaoez2YQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712694663; c=relaxed/simple;
	bh=Yn5lQMyWsSX4w51FOqsIFz6BBmT05CJopuX+ysL6CcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=brBPtJb3rSpVyo/zgvAgXFJ4R8WO3M1gmSyBaAkxuzBagtEmnZ7JJKU8KdUeiAUBsWjgEy3zJO3IqNgzf509xDd2iH52ryTtiDvFSh2W2EsvPN9XdQfu/VHmmfOqiNNK0QLKDVmRgV7oirSFNd+tOvoSprCI37+whoL0ly1iP3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=CTAanvus; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1e42a6158d5so10425ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 13:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712694661; x=1713299461; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z81f+s7l+/sD/O4M1th1Ei9VKKDjA495zju8Z/WH8ss=;
        b=CTAanvusFvHOPgm+qgLtSzS73eBnQKRscb8pG7Nps+kY5nirbrvAxDDodpmvIehonU
         bhR4vhb8zR2dRPI207uFf48pf/RUKMZdUKZHEK2eCdSDchS8EHZ+F/lb0dFye1wWuSrL
         iwcbPL0uAKL8PK5R3C6EVFiMMUrpBRVOVzWkDXwV9Rci2Bhf8Bu+bgUzN6DPnaeek0rC
         7qzQ0blMTVoGIcbjFDGITI6wFoLKfpxKrEQ2lTcGcRm5dPEjU7Rs+chaNDZgeEUyBXt3
         hkMPTtHBlBgGZ8ygPLpGGbYrrYMeclIbA9F8hF37XHmQjrNYMf2BumMShIXRITaXG48w
         YPPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712694661; x=1713299461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z81f+s7l+/sD/O4M1th1Ei9VKKDjA495zju8Z/WH8ss=;
        b=CvUT/nreg1DL2wSPM3WGUQSfPw+rka9pTeXFBVlBw1bCV+2Sq1f+1gcP6LLkKZMwQH
         UBlyT8UKch64SXlJsF6ppaBytO1JLWqnYZ72xIhjzIIFU+uPNCP0GjbHW445Z7mJLoHn
         k+wZEKV4RNFHvlx+Qj05DXA71t94J7UP+bbuV7bBKnFI9lWuRxWzd3JsdaYzobt4Yy7x
         +csmXm6UNvPBbnjnF7CN06tRRYQ+P9bzCvuXEFpPvLLKdbi3kr/jQMmsV2OyuoMarCQn
         OzOsD9X3U6bf7K2+YiT057LfEcK4x6dZhCxWuoDSwpNnnhg0kpjVVX6+IPcRH70BM/wp
         a96w==
X-Forwarded-Encrypted: i=1; AJvYcCV5W/PNYCwiIU5SdmXa6CcN+hfXcI29Alf9WAV8zomBeG0w2Pw4x8QeBboOQcG/6BEKryoKn2lb0V+wKfYgA8rXN3Pcb6QSNGUTIQ==
X-Gm-Message-State: AOJu0YzK099tq97VGXOuEiHBk+3I/53gsVtY5/B2Rms8ccZbUyezI5dW
	h68KMHTN4G8844nCXoFHm/LJmPpEoCpqfJWyC+b4zRJpXwpl49YYlbRCtBNWUA==
X-Google-Smtp-Source: AGHT+IGofJ0FRNLk0LpXknrDyp7g83W59LBbnXT2y0rqsdR+bsPBjGeybgw55IXdE9IT7Wgz9305lQ==
X-Received: by 2002:a17:902:ec87:b0:1e2:a5ce:8dd0 with SMTP id x7-20020a170902ec8700b001e2a5ce8dd0mr53730plg.10.1712694660951;
        Tue, 09 Apr 2024 13:31:00 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id u21-20020aa78495000000b006e580678dfbsm8698540pfn.193.2024.04.09.13.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 13:31:00 -0700 (PDT)
Date: Tue, 9 Apr 2024 13:30:57 -0700
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
Subject: Re: [PATCH 12/17] scsi: ufs: host: ufs-exynos: Add
 EXYNOS_UFS_OPT_UFSPR_SECURE option
Message-ID: <ZhWlgcTJ-4KeQqmP@google.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-13-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-13-peter.griffin@linaro.org>

On 04/04/2024, Peter Griffin wrote:
> This option is intended to be set on platforms whose ufspr
> registers are only accessible via smc call (such as gs101).
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

