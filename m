Return-Path: <devicetree+bounces-242480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E39C8AC7E
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 16:59:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B0F74EDC7D
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D511933C196;
	Wed, 26 Nov 2025 15:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XtfqqiCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A02433BBD5
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 15:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764172700; cv=none; b=nMQ2JeA4fMjoBbUPMO7GuKb/usB68RwZd5pbsksZTasRTP2ko8GpurYdMdOWwFiDzsEtJiE+wTsGXl/T7nEgmZhmBU2BNYuQu/vdKixXD1pNVp5BGCRWqeb+ohKZTjwBwvuW+lt6+T39iytP27YXxF5F5iVuQyxOgn/30zSzX1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764172700; c=relaxed/simple;
	bh=2ousPSZdcrmDSKIF4Kv3DWGVBuC5nTeu6SKYqw2IWkU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tkXQZ00jh3gQj+QYk4G+2xwVhbPonX8pVskGuo2vj6pMj2fl+0ADhIpA6v1AsoyiOquP2BXQy4p0BuQ+jHYBPfLzgba0+yHx376QnFJWqdNuh/DpWEhYT5b24jlge1efFpH/wR2iVjcBnIjCXxZAWxJ4K1XRd5b73Sxmfbuvz9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XtfqqiCt; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7ba92341f83so9767949b3a.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 07:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764172698; x=1764777498; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6coizwMX32tnMFy7SCv4fyC/T1+n7CiPp+H9M25tD1k=;
        b=XtfqqiCtDaomiilVGReSq1eZVLooJgPUq/Vzq51NyyVw7jwTOE91SJDp+rWAomy3Hq
         6L4w3GcJeQ0iJNSjZQC/PHPp4JEnUOT6iauwghVy0VjVu8B29RkPRWhcm8E7l17CgME/
         jaSGm7pkvJhZy7RbL9Dl4XCItSLpxoa5YK/5LVtsVP0v/Hx8tzi0DiojdJh6ngT9dmwr
         GsKccEUH3VaGdQCdNMjdj2ptgLH93VceEmCTfn4dZbd9x1fViTJQoq/4rOXXiZw/tFiO
         jgNnomfbbOvdq+9v2/cta9SkqGYkXo7Ok3CVChXLLKocnFUzY/rK27z9Yvtwh4SvSCJI
         ADwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764172698; x=1764777498;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6coizwMX32tnMFy7SCv4fyC/T1+n7CiPp+H9M25tD1k=;
        b=DiLWodrFfSDuOhzKv0AGiGBVPry/khbCGx0FWkb2uj/8o0s4LzbDN9d/eX/uCtGGIG
         /6NNOQujsURYegC2UH0M1fhCAu6oqUX/0XwtoC1RYjGeMhMNONrZ8mTOdXzDn+MRN1EZ
         +LxyWZBIpZ9cRNhX4fkkBEaRQ1wmTnE67RUi7YMbahwQhgerTVEuG7q+R+FwFiPTGRxp
         jKoayL/Fn6CfJQvWDCqBqwEeCyO2QjqiNBzGkuBZvshrTqgVn2LkBsNyERMp6qJG1wFf
         az4AoGL4vXPVkz8wSnKtt3CsG74nNBP887Djbt6FLW8H0BAMSpHZtz5zS64n3fbmdvbe
         HPxw==
X-Forwarded-Encrypted: i=1; AJvYcCVHI8VNrEysGb0xWdRcrLg+2YWTG04YvuX40hsPkjYv+OuD7Ezzd1XMOSLL7gqj34gVO3SOcYpaA4ai@vger.kernel.org
X-Gm-Message-State: AOJu0YwGzBRtDSU3YwbHo375kMHd9cYWfdYZ758LIiLfbCiYlr6oNRPr
	XA+30mltv5+FIl5snMKzDByHlwl+abGdRCNMi3hd825tK9gYMS8gJVF6h+RF4w==
X-Gm-Gg: ASbGncsfZgXFqK0KAnNpHlfy05eV896Z8/MwFKzxOXWYoRLu2WmZTQAdF+YMfY8x7qG
	WmMRHr/NcHARU5QUcIbyv9qyn7LZJATs5rnDRGMmuTAGKFdGHfN/JEC4tuMGaCTlMYBtKX1Q6I2
	5dnEJs4XIAMikT57/gKCXrhNLhss3wkm2ubxLrblDtcEKRkO1mQQ42LkzrPvccmID3lH5ZOZd5o
	olHgzjxJJoXUQf872SIZU1YzV3+s0JgY21I6uhJ7w/C++PpkfjWRw3aArD8+ShCqEUGUZG+bbge
	WtLnXgki3iqnN0RLKlDWSOedHWADcDRUFo3/hPS8AS2cY0WrY7woM0IwOrrxB1J374MVF9bAPLo
	9wtIDh47jGoOQ18z1FFZkYVyBhThY2KZZO4kQY3ICLke2+r9pCl1ZF6g178nMBTivW5VU/P5goc
	ML4uAdZbYK9E099gCticXx3MQ=
X-Google-Smtp-Source: AGHT+IEAlrEBX63dNuljqMvsO08ZhEyk1nD47uVvFnK6rNCBnZjVQlF3NDTXlkiQ1hlZiiZ6Qsu8Wg==
X-Received: by 2002:a05:7023:b89:b0:11b:3742:1257 with SMTP id a92af1059eb24-11cbba4a6aemr6896636c88.34.1764172698336;
        Wed, 26 Nov 2025 07:58:18 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de82c1sm68952231c88.3.2025.11.26.07.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 07:58:17 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 26 Nov 2025 07:58:17 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Rob Herring <robh@kernel.org>
Cc: Paul Walmsley <pjw@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Han Gao <rabenda.cn@gmail.com>,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH] of: Skip devicetree kunit tests when RISCV+ACPI doesn't
 populate root node
Message-ID: <04241600-c5f7-4b49-80e0-ad4d58355623@roeck-us.net>
References: <20251023160415.705294-1-linux@roeck-us.net>
 <176297731621.2151636.2516355929483523874.robh@kernel.org>
 <f5cc4e3e-ef66-7786-f9b5-f9d5f0846386@kernel.org>
 <CAL_JsqKzLARKeM8xP+TeVhuksth7F9p8kaU7KtRxHFe=q1Q=9w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqKzLARKeM8xP+TeVhuksth7F9p8kaU7KtRxHFe=q1Q=9w@mail.gmail.com>

On Thu, Nov 20, 2025 at 07:06:46PM -0600, Rob Herring wrote:
> On Thu, Nov 13, 2025 at 8:53 PM Paul Walmsley <pjw@kernel.org> wrote:
> >
> > Hi Rob,
> >
> > On Wed, 12 Nov 2025, Rob Herring (Arm) wrote:
> >
> > > I guess the riscv folks don't care about supporting the relevant
> > > features either, so I've applied it. Can kicked down the road again.
> >
> > For the record: we do care.  However, it looks like this problem needs a
> > more general solution, something that applies across CPU architectures.
> > Lacking that, we might as well have behavior consistent with ARM64 - and
> > for its faults, this approach is at least simpler to reason about.
> 
> The thing is that problems show up on specific machines which has
> little to do with the specific CPU arch. I don't have any visibility
> as to what problem you all had which prompted disabling it (for the
> arch, not the kunit tests) to be able to think about a solution.
> Leaving it off just means we're potentially adding regressions in the
> future when we try to turn it on.
> 

Since the patch introducing the problem has now been backported to v6.12
and v6.17, I disabled CONFIG_OF_KUNIT_TEST for riscv entirely in my test
system.

Guenter

