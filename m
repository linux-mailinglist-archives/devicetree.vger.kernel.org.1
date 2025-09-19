Return-Path: <devicetree+bounces-219246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F784B89596
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:08:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13A8C585BA3
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F213F30DD3B;
	Fri, 19 Sep 2025 12:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="UXIiP83s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635762F291B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 12:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758283723; cv=none; b=r5juQgHJE1hjFOaET72hwErANaQOrMrc/DVmcNgMvOz1TgCNU9rXZTfHRBm5WuHotgfpjDBFazWiWT0SkgN87p+QGh4PKc+pyqhRzxF80LnsgNfY4ZwjvtbSYw3PlDoGtX+eckLNiSwXLCXc3gkxvw1XCMZGScc97j0Q6I/lXPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758283723; c=relaxed/simple;
	bh=PU4BzVSUM6uCKa5w2l6OSfoECkEW3DTQ8YYJ6WsGxgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i4vktvUnjVc/e1bAl9W4dn0okXlhSNd1DjvE3QDXVVkEHAi1If0BxqnUI90ZbtIOt8/+elUWZT2QtZPWcYSnYYWYFkz9wV03Sw4xBAFBzgB7rv31+PrVoNXqKzgDHxcLqvuYfWIhj0byHVk0fixUpW301BovAlFpMRGl0BBk+ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=UXIiP83s; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-6234995098eso1184823eaf.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 05:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1758283721; x=1758888521; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ddOV/4AeMTKAaTlLO+S2d6s4wCcUbRWR+oBWKnZEc/A=;
        b=UXIiP83smHeoCM4l1h5C07sAcAp4AKhIY6CByxSaIsipOIv2UuO4jqBd6RRXefd0ml
         Vo6rH4yTnucAnE44qamf0vt1qE4TTK7X4WD0tshNRIJXfl5CN983NfdR6ahdqk/85ddV
         XYKh4Wa2Reops66ywLz1t+faNtZI0l7O5UACg4bCjFOqPdBkG2aAFw2zY/yeEBxZou6z
         m18IcKr/ETW4k1LtVPP7p1Xlh7AIJwknuTH1/CHmp9R8AD3bSItg9zBBgb9wPtxMpU5i
         8vA50n4XEhuzo/27EcTiog0ZQ5TL58g6fvMrYIoG57sLJITYcTRk62YTdOb6OFmM6gvC
         sXpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758283721; x=1758888521;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ddOV/4AeMTKAaTlLO+S2d6s4wCcUbRWR+oBWKnZEc/A=;
        b=HptDFomnF5/5oA7NnAZkJYChobchyhoJY4A+X3hg/mmq+m64FigbE4CRWp4ZIucWnn
         eTqOUSBoKTeFwC+CH3sguHSlNixa9ApDxCiun3lCS9/lt7V/2WtHostT/UF0uIy27hmY
         uHzQzGSYHc+dRbqnuE4/BPGHvTPducwUp+Mrqvetus/itYqII8Bj9b7wHrZvVd4zdt3O
         ZZzN3+411MdvBMQETHm2WQ7DT2lKxqRWQ3KTOrRleNazeUUhHu9EyUGDVtc+SQOctgc7
         SUPRvqVyUtdld3abvHxck6IOHQN9lA9mflkRitrSoMqkDLSkv471gwmbTCq/Nd0ROVWi
         /rYw==
X-Forwarded-Encrypted: i=1; AJvYcCXM4WAbp+UGDLuDkyyIfZ5Kg/dP9jgKpzekHbv0ZMOei7HzT1orwCUEzWytSxIrVQmjYYz/uXwR1RxO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz94naqneAk0YolDppvjSPt4JEyAjUUbrgOO7qvtMgDa251nsz+
	Mg2DV8T0I+EkKkQY1YuH1JGLSseW4qt/hG9WIBX0RmxFAvZgqLU/5x0/prgddkN0Dl0=
X-Gm-Gg: ASbGncsrstFBQeArFvN25ZWDnZTGcSMdB9PxsPdOdPnJn/WTLfVU0PTiL7MP5VKkeV2
	6b6lwS8lkXjdpQ68j0hpcHGYOzXa8JYGDQ0f4hvklzRmmajCveij4eRWb8gt6Z6tXVNuD6SohUh
	vlpx7mx5gIdbsaOYJjRJmfTEbNlSZ5XRD0nMDwKAlpEQTkIs4T8hdIEf/DzSVxsglXSQ2JSr+fM
	xnGU/S0ojt+kVQN/z++8M/r88kOckj9knWfhl5pL3/vF5D+yATOnDMhCu+Eqpx588WI/rN6aH7v
	50BsLYiKP9jfzpBhJ6/ILs7pOqPV5ugL2DYtYAFE3Pq4+BB0RR8iK13lxF+/ge22tdNyLtUEWCl
	v8Hsa1iU=
X-Google-Smtp-Source: AGHT+IFaCWGfMylYUS564NQsUR0mWVuwnX1ZTO8LwVtBeK6iF/UthAXLSHYAnBZ/pCpVTkoFVFyzFQ==
X-Received: by 2002:a05:6820:2285:b0:621:7820:a28 with SMTP id 006d021491bc7-6272abee5f2mr1140086eaf.8.1758283721447;
        Fri, 19 Sep 2025 05:08:41 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7692a973dc1sm2326849a34.30.2025.09.19.05.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 05:08:40 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uzZup-000000097kO-1FuO;
	Fri, 19 Sep 2025 09:08:39 -0300
Date: Fri, 19 Sep 2025 09:08:39 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Will Deacon <will@kernel.org>
Cc: Shyam Saini <shyamsaini@linux.microsoft.com>, thierry.reding@gmail.com,
	robin.murphy@arm.com, robh@kernel.org, joro@8bytes.org,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com, bboscaccy@linux.microsoft.com,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v4 3/4] arm-smmu: select suitable MSI IOVA
Message-ID: <20250919120839.GV1326709@ziepe.ca>
References: <20250909154600.910110-1-shyamsaini@linux.microsoft.com>
 <20250909154600.910110-4-shyamsaini@linux.microsoft.com>
 <aMw4I0AjKNPY6SOw@willie-the-truck>
 <20250918224322.GR1326709@ziepe.ca>
 <aM0HQ51DelZW_Rt8@willie-the-truck>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aM0HQ51DelZW_Rt8@willie-the-truck>

On Fri, Sep 19, 2025 at 08:33:23AM +0100, Will Deacon wrote:
> pieces and will need to work on the userspace side. It's not like
> MSI_IOVA2 is magically going to work (and I bet it won't be tested).

It could, if someone checks the default memory map a second constant
could be selected that works.

> > Nicolin has some patches on the iommufd side to let userspace select
> > the MSI address instead, but they are not done yet.
> 
> Maybe we should just wait for that? Carrying a temporary hack with ABI
> implications to support broken hardware isn't particularly compelling
> to me.

This patch would still be needed for kernel users.

Arguably the kernel users should just be using the iova allocator from
dma-iommu.c. This whole hard coded constant/sneaky uapi is just a hack
to make vfio work..

So maybe if the single constant doesn't work we could set some
indication that the caller must allocate the MSI iova, the kernel can
use the dma-iommu allocator and VFIO can just refuse to use the device
for now.

Jason

