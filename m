Return-Path: <devicetree+bounces-241331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 985BEC7CD13
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 12:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A0C804E35BA
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 11:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050A32EE611;
	Sat, 22 Nov 2025 11:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u7UL8obG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9187B2C0F7D
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 11:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763809225; cv=none; b=eJYF5YJar+KjiILaLPIwAzZaQPWvP/qAAByjLoE6D26XMbgkDDSlTyCisXATcYJtqQ/5qDKmkDdYPvVvvpxUjjx/UTnECFJagPHZsxQGlIS3YFhPIikJozYm6FXVJ4lR3aIO35+EpcoebM+n/5uT9/kGalwPr2kdoO5c5cZXijQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763809225; c=relaxed/simple;
	bh=3IpO8gl7Kd1D2kGjb24W//l3zYTrGoQ9+QGai9mcA88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XJnfLza32egInULp71c4LqB4/vCE3raVzx32AyUQWlUSSUnAYYq01z70NJd5xDAgZrcgrBjBZMCauYS3Kn/DEOYchs+GA2fXGPVhGoVRVeKZ2KWmZtleTES40O2Czr3kFgYhEAWGXQSoEkAAkpXGTp3aXWaGWYkIvfBm7aCu4BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u7UL8obG; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-47118259fd8so24906425e9.3
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 03:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763809222; x=1764414022; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=it1e4OJxT+kQz5ZOn3eo68ltBeWZ9426UhsctaWsgwA=;
        b=u7UL8obG9SD1uzF3vI33YN1lUfVKiWNh+PeGqsMppp8arhpzAzfQWaD2KnEvevB6+Y
         WzOInoERHt4uNqEpMCzjjBWmQlQIR5CzugacC22+041DHS8+iYsByg4T6zAWRDkJW/HN
         ae3fvWWNu1TAVodNFKsmFZPBy2Q2Xe0iAOfF7G/TUiMRynHG8Z2D1LcqWrDhvhF56HTA
         s/NeY2r732piTnTwa0kgg6Dd+FtvUWBQuE2M7VDgrq+Xi1gvTKFQaGEuIartMcAtl8wu
         9gp2/GWc5VCqCBA1j+OehQHzn74NkJxqAXY3qZCuU5Dcdto/iP8q3DBgblAGTowL0+Lw
         sCiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763809222; x=1764414022;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=it1e4OJxT+kQz5ZOn3eo68ltBeWZ9426UhsctaWsgwA=;
        b=c+Tc30nVVFwEFCvADyiYEn6Blb/jyDTwpMoeaRSc0u72lPHOJGZe0YKo7IDQtZa0dr
         9G9dJV0v4OkvgX4Wky2kz2UNWjeWZHg/3XBlZE9NxCyl2N/gIPtk0FkwJ3DaHqmQQg7L
         DS3/xEeaQQtEGC8Jbk/7npCGMNUL2rJBWjpJUoGsbgWE0oA1GqQndzg7rDLmQNeePK71
         ajVKsrdNJto3BjCbAh1e0qv5PtAVSdVC7O4CaCqUrXNiBUfErlicwiTy2oDoYvrDAgak
         qDW+fIVrMsFDgCk9Y3VjE1Vhth6qdN3/k7rx724VS5ldV0stnwyf0g7ThaQmB9tSwxMc
         7s+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXnbdjU1GsAft+rF15BEr15X/gknj+6gyvMcNuL9pkVM/WR7bsuHrZjAgqsgz3BQ3P+/ACfoWYhv68E@vger.kernel.org
X-Gm-Message-State: AOJu0YyaqPGvUPeIx6MDR56mAQ5GTQ3iCU+h3DQU4nrHFpiTkIRKAUmw
	41XVSoxs/MaRbsaR9EqevxLQ1Y/txfUuOyBkvmF48g5tyIaY5lXQWEyiUpUr+4AxoLI=
X-Gm-Gg: ASbGncu2U4IxO6x3pqSgiST7mBVEAC2bpoVdZ2Jyh4TyEiSej7VdCssd0IOk6JGF6y6
	dMPL7XNIx2nrXl8zuGISNjQpSu5f6EPEuvTRSV0+ZlEJKJ5uPm/AvA+hdcSOuSiPvO2j82JqYKv
	CeUdTGIvD6ehRlki+p3W8AMbSbrYFl5xQAQNgIs+PUsUcBXIgt23Y9UZO7kKMC25pXKe7W9rOGr
	PeBLeA+MSZ3sqmTHrqrLATwePpLja5+W7ML3IHbl8/7gsPorg5QjyrvgEpn/4GiSSCAFKxgNUaF
	jE9Uftok/o/luKBSPmzxfHk3orNcPKKgxseQl+XtSPWr6CJeKDaEUm+pxGBjm/0LuHiI9TkWewE
	mj+gbwR6bgkt5nM69vTWWb/aebEHAKVKTp8RU6SRDaYlmc6YvSC+Oqy+7t6lTLrKiQKrHzdxTs6
	NOAMvB7P7H+CyKorodcdxsoQAGCBI7dGru6B0=
X-Google-Smtp-Source: AGHT+IFqsDl+Fqi9zjSdLWSvGkX85B8klK8pxvfB60cZ306ERdlNEMS9HdGRmMZBkEhS6uD4BCt1fA==
X-Received: by 2002:a05:600c:450f:b0:477:7b30:a6fc with SMTP id 5b1f17b1804b1-477c01fa4a8mr61087125e9.30.1763809221777;
        Sat, 22 Nov 2025 03:00:21 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff23:4441:d2cc:61a0:b5fe:9fd9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9e19875sm101751395e9.16.2025.11.22.03.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Nov 2025 03:00:21 -0800 (PST)
Date: Sat, 22 Nov 2025 12:00:11 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Georg Gottleuber <ggo@tuxedocomputers.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ettore Chimenti <ettore.chimenti@linaro.org>,
	Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
	wse@tuxedocomputers.com, cs@tuxedo.de
Subject: Re: [PATCH v3 0/7] Add TUXEDO Elite 14 Gen1 (X1E78100)
Message-ID: <aSGXu7IhPDNSkYhi@linaro.org>
References: <20251121142623.251118-1-ggo@tuxedocomputers.com>
 <af3d3295-1340-417f-8682-7d7e2bc6c812@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af3d3295-1340-417f-8682-7d7e2bc6c812@kernel.org>

On Sat, Nov 22, 2025 at 11:16:25AM +0100, Krzysztof Kozlowski wrote:
> On 21/11/2025 15:26, Georg Gottleuber wrote:
> > [...]
> > Initial support for TUXEDO Elite 14 Gen1 laptop. It is based on Qualcomm
> > Snapdragon X Elite SoC (X1E78100).
> > 
> [...]
> 
> > Because the SoC is now outdated and some functions still do not work as
> > well as customers would expect from the TUXEDO brand, TUXEDO Elite 14 Gen1
> > will not be offered for sale. We would still like to submit our device
> > tree to the mainline kernel and thus contribute to Linux support for a
> > compatible device sold by Medion (SPRCHRGD 14 S1 Elite). At least in
> > Germany, this device was sold in many large stores. (An official press
> > statement will follow on our website.)
> 
> For me this is unmergeable, because we do not take stuff which no one
> uses (no one can even use), and I am sad I put effort in reviewing AFTER
> this was known to be cancelled.
> 

I don't think we have any requirement to have a large user base in order
to merge changes. There is already support for plenty of cancelled
products with only a few (if any) remaining users in mainline, e.g.

 - Snapdragon X Elite Dev Kit (x1e001de-devkit), shipped only to a
   handful of users before cancelled
 - All ChromeOS SC7280 devices (including DTB variants for several
   revisions of pre-production samples), never shipped to anyone

There are also plenty of internal reference devices that only a handful
of people have access to (MTP, HDK, CRD etc). What makes these any
different? Ettore has been actively testing and contributing to the port
for the TUXEDO laptop, so if he wants to continue that, I don't think
anything speaks against merging this device tree.

In any case, I don't think the time reviewing these changes is wasted:
As Georg wrote, there is also the Medion SPRCHRGD 14 S1 Elite laptop
that uses basically the same hardware design. I'm sure there are (or
eventually will be) users of that device who would appreciate having a
fully-functional device tree ready to use. There is an open issue in one
of the Ubuntu repositories for example [1] to add automatic DTB
selection for it.

In other words, even if we decide against adding support for the
"x1e80100-tuxedo-elite-14-gen1", the same changes renamed to
"x1e80100-medion-sprchrgd-14-s1" would still be valid and valuable.
I wouldn't expect any other changes to be needed, although obviously
someone with access to the device should confirm that before submitting.

Thanks,
Stephan

[1]: https://github.com/ubuntu/stubble/issues/34

