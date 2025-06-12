Return-Path: <devicetree+bounces-185072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9105CAD660C
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 05:13:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5FDB37A29E7
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 03:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44C371DE2CC;
	Thu, 12 Jun 2025 03:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GCRGhldj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9971AEADC
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 03:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749698024; cv=none; b=qbQZJFCkuEb0zrZ/iCyT8yuGIZQp/2T4Flq5lC+qb6Zo0KQPXI/pWeqIgoG92cIdnjdaYlUrd67Rb5G3k8SD7Km2Ji+4swWhLw5Q/jSX3vIRK6e3IHCCeIvgbbXmpUrbh0UBKIg6WgfUywuM2aiQUWRJaQDBVFcz+n0N4Ny5+w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749698024; c=relaxed/simple;
	bh=wipVe6P4oFp3pGcagZmYLUGTje+r9xdGOuVBYiEo2Xs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J6+KdpmnJTpJqhAYdxdbOVTO5L5i7HZgGmZcTasFCsZKy9ICBviTFw0WHSe06lu1249MuwaH+byPoDH3rPHR0V/dBjoB6GkP+uklB6Egz9tsKppyA4dQ3VBYpr28dIq3TrXFFExl6ZZhE+xMQB6dXZkHHDR9OVQ0EFSOVoIksbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GCRGhldj; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-747fba9f962so436397b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 20:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749698022; x=1750302822; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qh9i9vpk+Guo8j4fjmcragl7ZrjyqLwr0bzeHQ2yACE=;
        b=GCRGhldjaPrLZS+HBcr0ogcZKsT8/N0+i3Aw7DSwNuiMFQEIw+9qagiMrrJk80CzbZ
         T6ehZ66csI+aKQCtFkC5Z5Qpz6r2yoCTtAjUdNxK6bSOHDnyIS8I4FDdgBp4vxISa3AF
         aL1+weOMKIUeVs7phtbC5MkH3gyNJEI/n67JFB/xrx6ceIGPBnKGffCj2kEL/quptIfH
         P3kOs13RUvtafVZbvVfkveKydX0YGAXv6hlMJdsaCGy9aLjklWzDWTzjKdcfoxJ3F4ch
         TMJXe4UuMnStVAiLQakFWkgtCh4ZBMrLZsx4/MvfwqSLHOvIvqDG6Q1p1oomFX0DkcTL
         6m3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749698022; x=1750302822;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qh9i9vpk+Guo8j4fjmcragl7ZrjyqLwr0bzeHQ2yACE=;
        b=SBiE1dzmQsB9rAqQFQZhaqsruFl5nJu92x/k6Lydq9pQke4WiqeXFIYtaDZzniganl
         l23d4i3W+ru+8bOmCakYFyhhX9sngzuAwm2jII4CTQfdQsE17xxGKcqxg66NbKCf5yrN
         ZduMpr51R2sWku9RJIU+AK6SBfaSnheP3DdS3oHXZ8/Xn0u1Cq/m5CTvpg8mBFlrRgMT
         1ifgrLsaMbtpEp9tecEgr/CnVXtVAeiFTKmnhohsjjaUysMVpH+MTGsoKcuqdduVcPsu
         nTctswGDqZrwLsIT8Sykuo8K7RGLAoC2vNAx6y/hhz00UDtPrVsnx5jqfaNUXNnrUZv2
         9KWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWB4kbV7kcmTC//aO1X0yOwAa65BaMDEv5x6SUGTL62kFVv98goEDJcgrb+v1+qwToC+OcmGL2+kbo+@vger.kernel.org
X-Gm-Message-State: AOJu0YxMsU1ejbNwTGHcqVYne6EQes05pcOp1HDqa6NpqVYHwQeI3FIw
	84qrkPzvkQ70HkCqILCe+PiJBmkLtJ7DA0/Y/H6A0n8IzA17RqT+POYWje5suZApe1Y=
X-Gm-Gg: ASbGncsvvv2tXg0G5NK981A+MrKAnMo+i3qficYQ6cUulC75K+9iy4HVDuue+b4ePfn
	3ssNYcg5/CrfzP8iuKpfe/QgXBhEc3sECKfppqEdBXzbrJ567IeVjFGQCBw/KLCWh3W7QX7EZiw
	IbtS+SiWK+STpEywJ0gL6XeC8P9bRw2qSzEMsOSUcIGpGNEP3w04xvRL40E2OHbhm/d1DT/Q++3
	76Ez3ZQY5CzwOPXpnFq4JGzgWorpPOMPsWvji3xlyutOEqC+PY7IkkSq3CjyML8NEfvSY1FG/V9
	zrL6BhBIanwyf2gX24NxAiSUA0fcoRqLWIs9WSlhRQa3byb+OhpS4iAA/4YuwdxJvXjQqaRYGA=
	=
X-Google-Smtp-Source: AGHT+IEx4FtddVmCwIprRBbPQw/iieDTdTOeoPd+4mASwm8d54DrSHbf3paRrZHlzISXauRykvkroA==
X-Received: by 2002:a05:6300:6d0e:b0:215:d64d:412e with SMTP id adf61e73a8af0-21f99106bdamr1479819637.20.1749698021896;
        Wed, 11 Jun 2025 20:13:41 -0700 (PDT)
Received: from localhost ([122.172.81.72])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fd611ecb2sm352591a12.16.2025.06.11.20.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 20:13:41 -0700 (PDT)
Date: Thu, 12 Jun 2025 08:43:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Remo Senekowitsch <remo@buenzli.dev>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <lossin@kernel.org>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Dirk Behme <dirk.behme@de.bosch.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, rust-for-linux@vger.kernel.org
Subject: Re: [PATCH v8 3/9] rust: device: Move property_present() to FwNode
Message-ID: <20250612031338.rlkwize5xw6nr22g@vireshk-i7>
References: <20250611102908.212514-1-remo@buenzli.dev>
 <20250611102908.212514-4-remo@buenzli.dev>
 <aElxv3hRIc6Z_7jg@cassiopeiae>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aElxv3hRIc6Z_7jg@cassiopeiae>

On 11-06-25, 14:08, Danilo Krummrich wrote:
> (+Viresh, FYI)

Thanks Danilo.

> On Wed, Jun 11, 2025 at 12:29:02PM +0200, Remo Senekowitsch wrote:
> > The new FwNode abstraction will be used for accessing all device
> > properties.
> > 
> > It would be possible to duplicate the methods on the device itself, but
> > since some of the methods on Device would have different type sigatures
> > as the ones on FwNode, this would only lead to inconsistency and
> > confusion. For this reason, property_present is removed from Device and
> > existing users are updated.
> > 
> > Signed-off-by: Remo Senekowitsch <remo@buenzli.dev>
> > ---
> >  drivers/cpufreq/rcpufreq_dt.rs | 3 ++-
> >  rust/kernel/device.rs          | 7 -------
> >  rust/kernel/device/property.rs | 7 +++++++
> >  3 files changed, 9 insertions(+), 8 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

