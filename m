Return-Path: <devicetree+bounces-256054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A9AD30C73
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76AAA304792D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D86137F755;
	Fri, 16 Jan 2026 11:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CwyC97XU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AAB37F0FE
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768564675; cv=none; b=sOSuAX0duM9cMz5FlvikaKcRz7ddpmdzjCckNAPlSwFMqIG/eKQk1jElEgNletNBumWo/15mkexX/6qU2SPlYtn2kmfqykQPc/9hjUD34B2O+EZqbu8Tg0SYAd/wBr0BYA26fzRoW/fEV+VllqaMZvZmEyxEScjjMNUKEQWZunw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768564675; c=relaxed/simple;
	bh=CJcRQ6qpRlbEwNeooGCOn8NZAbTq75N/DGbAxcKLerQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jfIJbBeB+Y0KPioHZcc3FVqXJS/HhqxrQJCX2cV6qEkc7Tzedg1lv2HmtZLDsSensi01VcLU3zW3YAG7BcAfI7GVEk141N74g1Het8WO4xoIE0sTlAvA0is+KkBLhWQtj/rqiPn4+oFyxrNsfiSEtldNC6N3XTHagpFq+5n4tbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CwyC97XU; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so12415745e9.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768564672; x=1769169472; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7TH1DyzktZLeiUPOq5ZKj+YO/qKoUqjJHy9gcNCJHOY=;
        b=CwyC97XUF5hgJM1FtRVFu8rSc0XP33/jy6kv6HKWi4QkbCcka0qpcS96gBYbrOHbTq
         cc2xZYQvTFvVbYxeWJXScdOxfR2OKkma+tbV3Xs1O5oKpFoyNI06A32ftBnZLVulvnrx
         DgxZG8V5qBCQRcjRwhmROufX5RREJTH6Ysa+ZjV/xtSrLdQRTym9ISoRrGA2xuh20AiM
         3Xk5JVirszyOgonu5/aL2/AvOiyKfQ0Yh9EzJctFKQkDvmDin8BbxLH1UYwj1IbrgwzG
         VQY1/OsYsYIpJEOP7t5+HxEmyyTy2rPwHSKxeZ8KqSiVCLX7UTsbwSDT4S/SVBPk5rmf
         00VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768564672; x=1769169472;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7TH1DyzktZLeiUPOq5ZKj+YO/qKoUqjJHy9gcNCJHOY=;
        b=doIpkz6mBGsO9imPpoygsM9f05t7yxwU2BxoIol21y5NPu+YfSRlknVC+qG8tlt4i/
         oG9Zt7Zq6dfWTM2oveFEM/6oLLm3DQ3q8UKl4RwdHb/Bpdp5uCP1BFhK+mV121yqo9r2
         ra40iwfMUYXgnVvLjKuMO8PDY6TMTy7cXrQSu3gI2oG8/M0gXw4jyl0r6fI8y/FErQqj
         +yXGhJ495OU3/mhleP4dFYz861a4Vmf8BsDi5Hx4UbP+qxmpvyu4ik1wHZln32XzA+ZQ
         G279XEO2uBJivUoFNFlOT+09sQQgr+8zQUenxMsxdK1U5oe9la/L3es0K20gfpki480f
         eUPA==
X-Forwarded-Encrypted: i=1; AJvYcCWs6//34+bV54z7zDhxsl3bJ+eHCWQdAwvWe96rzoAGviUy30OFQHh3NRxeUfZ41PMicMuu/WSuHMJC@vger.kernel.org
X-Gm-Message-State: AOJu0YwXBPFnd169oYqE5HwjqC4KTEpyy0nfgP+nSYP+PJQbg4BKNqUU
	lUzo0DEEt0F+UYvfSvahtVXMfBbOCdhdaLOWquhx6aAwWZ4nVw2nzpgRheHfKA==
X-Gm-Gg: AY/fxX4JeLUWTt30VJFBl16piuJ0OIj5+kLbnEtSjkZoqy0MXC8yc0EHjfisqM6M5M5
	7o4W2Z8J8Z5bf4arvnmxj4FcVlGt+gFTfOXEQ0RS08bC+aAIqV5AOZz7/qV1ZLZGGiOsWt2krUN
	7L7gRC39TBg6Kh3UBJ/jG+u7pA+VMw2awEf3FwqcsrBIkcFdoJraUBdTMIIoJHNktlNK6FUyz/w
	/nRTEha6amOT9Jh5W0QGTbiXV9KFIfsFoVf5cvmTn/KJugyqEZbc2fCeH0kH5teITp9HkkuPoqN
	pFXpbbcUGQ5vdpq+gLAo+/4oTLzPGAE/NXdStGSYfjWcE1Nih7I4M1Ji8/7u7PQpMLDJiLiIStI
	XqBR1oefTUUPCElbCpZVl5htCIaUqxwf+xmLw3IDyMJwRJeSSZJAL2ZlQxf4KSQYUMWci9+wSaO
	uYV9XH17KlV0scFQX785Zsyg/zYfh3FgmhBjMLprbVLT6CLUlMr2kHVvoAeMDSP/cd
X-Received: by 2002:a05:600c:4ed3:b0:47e:e91d:73c0 with SMTP id 5b1f17b1804b1-4801e3397d6mr33933615e9.19.1768564671640;
        Fri, 16 Jan 2026 03:57:51 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e86c00esm39684835e9.2.2026.01.16.03.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 03:57:50 -0800 (PST)
Date: Fri, 16 Jan 2026 11:57:50 +0000
From: Stafford Horne <shorne@gmail.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH v6 0/6] OpenRISC de0 nano single and multicore
 boards
Message-ID: <aWonvu4xgqIGBGmI@antec>
References: <20260115151014.3956805-1-shorne@gmail.com>
 <176849165027.29734.708711779514578942.b4-ty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <176849165027.29734.708711779514578942.b4-ty@oss.qualcomm.com>

On Thu, Jan 15, 2026 at 04:40:53PM +0100, Bartosz Golaszewski wrote:
> 
> On Thu, 15 Jan 2026 15:09:56 +0000, Stafford Horne wrote:
> > Since v5:
> >  - Adjust dt-binding patch based on suggestions from Geert and Krzysztof.
> >  - Add reviewed-by's on the dt-binding patch.
> > Since v4:
> >  - Rebased the series on linux-next to allow patches to be incremental.
> >  - Rewrote the dt-bindings patch as an incremental patch, Due to this I
> >    dropped reviewed-by's.
> >  - Added acked-by to the IPI fix patch.
> > Since v3:
> >  - Switch order of gpio-mmio driver and bindings patches to patch binding
> >    first before driver.  Suggested by Krzysztof.
> >  - Removed example form binding suggested by Krzysztof.
> >  - Added Reviewed-by's from Geert and Linus W.
> > Since v2:
> >  - Fixup (replace) gpio-mmio patch to update driver compatible list and just add
> >    opencores,gpio to mmio-gpio bindings.  Discussed with Geert and Linus W
> >    because the 8-bit opencores,gpio is not the same as the 32-bit broadcom
> >    chip. [1].
> >  - Update new device trees to use proper ordering, remove debug options, remove
> >    unneeded "status" properties.  Suggested by Geert.
> > Since v1:
> >  - Use proper schema in gpio-mmio suggsted by Conor Dooley
> >  - Remove 0 clock-frequency definitions in dtsi file
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
>       commit: b2b8d247ad8ee1abe860598cae70e2dbe8a09128
> [2/6] gpio: mmio: Add compatible for opencores GPIO
>       commit: 3a6a36a3fc4e18e202eaf6c258553b5a17b91677

Thanks, now that these commits are on gpio-next I would like to apply the rest
of the patches to my openrisc/for-next branch.  Since the other patches depend
on the GPIO patches for system functionality, do you think it would be safe for
me to merge the gpio-next branch into my branch?

It seems a bit messy, Maybe I should just wait for the next cycle.  But if you
have any suggestions of experience with this any comments would be appreciated.

-Stafford

