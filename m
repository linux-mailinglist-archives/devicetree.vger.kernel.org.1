Return-Path: <devicetree+bounces-81944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBCE91E02A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EC9B1C22D68
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60AF15B102;
	Mon,  1 Jul 2024 13:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C43JuoTV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2431315ADA0
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719838915; cv=none; b=CN6UfUwWeyF5AouH0WlvQSdkCYfXByugK/yKqiUOYl9Ina6N3V11EPmjcXZNLi7FNuaGWGl7es2WsufYwj9Sw0qxur2dGWIolyC7gD/1EFKV09lGi51Je56rZrSr3TCyu9FCrBJ8WUJbZKVIqHkUWDtnNw8WAMp6gGvdc/5CydE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719838915; c=relaxed/simple;
	bh=BcacgMNTuXZ+EMlYZldnMh+90qHGE8oI584+fATS1xM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jpolAxD9er91wjilE5/7Vm66Tpc89jZkexfegq+dtkGw87gUKw3wVB5/SYCIH/CJQ1vyQkCIczDGlchV9QWeFHNMeTUXmOhRvMe/jTzLWwYZoBY1RYdguaAE1TPFZyjXJ8UEVZwsUYFN1XY3yiOkFskQ5F62PQQID2JdZ3YW6xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C43JuoTV; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52db11b1d31so4273988e87.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 06:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719838912; x=1720443712; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mSOQxp/mD2SUurvWX0AEwNvMGjNvTwzJap2KaVh1zBY=;
        b=C43JuoTVWHnKtGQ1ib3H6GBOanBSwdC0EhHsnTbsHXQUZAlzZL0bjrHPfBGNQj9U2w
         sCjCqFIvAZFwNnxi5cMEnRMQRg4aoAcfws/8UBGduJnnY/lb97NmlVNvWh9G8r+euT6P
         9trgMdmJgeluZI5zlqOYYzp2sAwzf3PBOaEoH4m69gsD92zJd+6Fa3jZE59grgaO2SYl
         ZS1lZ7s1bwfLyNho66Ohxyf2RRGq9qaQfFOd2UiXsMrAAwUkg/rR9sLqKVG5QRyFGHr2
         MrTwr8v83M/MuceIocV3hrD2P8jALfP/q9ZNrKTNrf3Eg+Zkx0TL50+FmV+ei8M6ioQh
         ESOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719838912; x=1720443712;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSOQxp/mD2SUurvWX0AEwNvMGjNvTwzJap2KaVh1zBY=;
        b=B0YqO0AmKO1C12DDEr08qVD79Uq9plWXsUFtH/MVRL08V22ouhsNXERYgDhKthoLJm
         phjiSF2SHbX/l6zOEivO6/+BlXNLIhIdTymWWKlN7cfF70SdLJsegkiGLazdbrqMtKIC
         NsxPYWurqr091B/DQXiXrJavvs9e0HxEpA5L6XMOp14NSlKQAMiPWKJAFOSLYUv/yE+u
         hZOH/V4Kg9BrevMD1uLLWZ9t0yc5p9bDFrErgHaQiPFKBzTffBdZKomk4CaDnF1pnJaH
         m0GsnCGpG4ZYJG9VCEdMlO8yjCKqdq6959UWbwnw3B5Ov8AZmiHL+hPkWcky/hh79Gi5
         JQjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAg2uJ25Vr1eP/hRRsEN9gJ6/WY2FOJFzP8+3nX+huctGmWSCqyZs07g/xSCX93ve7I56bqVQ/Y8KbV9zTyFlIxBbBpAxoTNYqaw==
X-Gm-Message-State: AOJu0YyKij1HRYYomdaOCRAGgOoFJUp6G2vnD6nRUVKC8oZIOj0Y7kss
	iZ+ItzozIS9pxk7beiExVBa8Gvh1MVUxDk5ghCM+KzeK0pnCgXc7KhO2fKRnaLM=
X-Google-Smtp-Source: AGHT+IEnMHmaqPosbfn7Ngk1Y8Xlmzzim7ZOlO5mnK6ZEyARCtdzXm9ARWtOnguMtbzh2DJlYS/rig==
X-Received: by 2002:ac2:4157:0:b0:52c:dea0:dd55 with SMTP id 2adb3069b0e04-52e8266fa5bmr3186258e87.24.1719838910837;
        Mon, 01 Jul 2024 06:01:50 -0700 (PDT)
Received: from myrica ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0d8cd8sm9956632f8f.27.2024.07.01.06.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 06:01:50 -0700 (PDT)
Date: Mon, 1 Jul 2024 14:02:07 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	liviu.dudau@arm.com, sudeep.holla@arm.com, joro@8bytes.org,
	robin.murphy@arm.com, nicolinc@nvidia.com, ketanp@nvidia.com,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Enable PCIe ATS for devicetree boot
Message-ID: <20240701130207.GB2414@myrica>
References: <20240607105415.2501934-2-jean-philippe@linaro.org>
 <20240701102400.GA2414@myrica>
 <20240701115723.GA1732@willie-the-truck>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701115723.GA1732@willie-the-truck>

On Mon, Jul 01, 2024 at 12:57:23PM +0100, Will Deacon wrote:
> On Mon, Jul 01, 2024 at 11:24:00AM +0100, Jean-Philippe Brucker wrote:
> > On Fri, Jun 07, 2024 at 11:54:13AM +0100, Jean-Philippe Brucker wrote:
> > > Before enabling Address Translation Support (ATS) in endpoints, the OS
> > > needs to confirm that the Root Complex supports it. Obtain this
> > > information from the firmware description since there is no architected
> > > method. ACPI provides a bit via IORT tables, so add the devicetree
> > > equivalent.
> > > 
> > > Since v1 [1] I added the review and ack tags, thanks all. This should be
> > > ready to go via the IOMMU tree.
> > 
> > This series enables ATS for devicetree boot, and is needed on an Nvidia
> > system: https://lore.kernel.org/linux-arm-kernel/ZeJP6CwrZ2FSbTYm@Asurada-Nvidia/
> > 
> > Would you mind picking it up for v6.11?
> 
> I'll take a look.

Thanks Will, coming back from holidays I hadn't seen Joerg's announce from
Friday before sending this

Thanks,
Jean

