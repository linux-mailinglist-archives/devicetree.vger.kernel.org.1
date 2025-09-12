Return-Path: <devicetree+bounces-216617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D23AB55637
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 20:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D73161890AE2
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 18:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7106E329F1F;
	Fri, 12 Sep 2025 18:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="gtScEg6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E6330C342
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 18:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757701930; cv=none; b=P7aE6vfDUXrH/T0FK248xq2XNBPlL1yideaDUdlEPh7zyEbWMfXZl8EwUDXgpoypAZt8eXkBAwiYF0DqqHL7gXHMMup0LxV4l7CAih9nbWonEB3nV4vAwaLmUPADymBjhUsMSc39/2XzFaavVgtvKOzfOvC1mLa9MBGXNod9zqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757701930; c=relaxed/simple;
	bh=i6r5BnwccM40MN1CW61UawFe6hxRBJLKBNylPutF2lE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F0ZKErilhe4m9DJaA5N6MomsPFMGOXbjp1gfAiTjgxibqLrRqK2qgylIRARuEYmBxW/BcgIIL75i8j77FjyDjqHuG2L/xTKQjr45YZRRMtUeFFdKa1tU0ZzsNCzERi3mHWEu0wvSm/byyJDuI/ZVpMCHK8EbZxobdL0EfW2xCVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=gtScEg6q; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4b5f3e06ba9so38891371cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1757701927; x=1758306727; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i6r5BnwccM40MN1CW61UawFe6hxRBJLKBNylPutF2lE=;
        b=gtScEg6qDFbFbyaJsTn1ZhxrKg+uf+sfG5Y9jGOwtd3dtq/EI5saMld8LmL6cRyJWb
         G6VRRZ/S4dv78/Eg7/N+SRhjFMHE+7/Ev2XR514YRCyFFRMqnMOH82pro2zabPYFe1Vx
         ZeeThqomwjgUMai+rpKPBzyxxeLF/uTEQJMYY+glp57SmZyPriPfdJvIv0395h5mnxkG
         tGQpBdQJk2q/i8Xe8gazNnmaKJeSwCEeUMceHpHHL0PUz7AO9bm2O1gSJG4z+d8ALgBT
         VkiR4Pjs5wk7DMncnKnkLHWWxzzJQR10go5MJk2wB8z6PZnpjk/I7uGY57eZByxxuRU4
         wxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757701927; x=1758306727;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6r5BnwccM40MN1CW61UawFe6hxRBJLKBNylPutF2lE=;
        b=E15UTUx0bqwUB3AvR3TpykU+67NTLpxisrIcAY5n7tZLAtv/2jR6omBXAOxCbqIZAq
         ZOGhcCYwRwTw3Mu4Pss8Xt/rHW7J9O9GCETrww2nS9LLw/6sCq3UoRk6vB0Ri24evSyS
         EM+QXnHyXde8Ck4omUjwFLW39pyWb59v6iheIeMhRXNZaz7c3YnoS1qSCk2+K2NucRWI
         mzsREhf3s5dDbEYeRAwEDwZy3QQ4XNh+j9mjYjxIjgd5vAdvlkdsHE1SXMHq9WhBNAla
         6A+U4kKrjukTtpeEWq1fI2L4LcUcz/DahkhYgPsc/nX1fbcI2k0apfG4vOgSbNlQaA/W
         ic9w==
X-Forwarded-Encrypted: i=1; AJvYcCXgGDhxWYz226bWaJo8fgXLNAfAEDbDg/KsQKY0afsLsanwkEPuNIVMxj6XrzbDfVBQMYBlPgGmeloG@vger.kernel.org
X-Gm-Message-State: AOJu0YzzrSiSqEyMmrBOAatD/KO8yiYhMhMxzsU8VS0vvqZrZBEVHQ7s
	mJGNuvdnfXf/tetdZ8C5cKBdU+//osMlIYh5i1tXnG7Luq01C+IYl4wkxjVphUYSVOM=
X-Gm-Gg: ASbGncsNPTRx8+EEj3wNo2I8leG2kWsogpJsKoJthPMQb4uIA7E0kIP7xOSQbOnwxcc
	WglRe6LaBdMC1orBHyHvuhvR9XUUkIycPcOov+QgaQsKLx2bJLZbrq+Bir5nWM96w9mvCReK+2o
	qdAe57v7KpHNAsGSe8DYKHTwjG6SBkBvZ1kmV/Yc0C7qK2Fl1FU04ymgrk+UyDZi+P+jkpPpDYY
	A1ervIHTqB1U4R99UWgDgbHlZaiPyIYV/sHAxqK1EmWv2X4rU1rOuQ7L6fU99dqBrx31MsUAYn1
	CErMpCEkipGDdTVDX7Eyfxy+GJ1NB5o7L7moRN5dTr5t6o1oE8wxWikPuP6vRUWtBsHgWHadlwF
	skpSQsC1NsNE57hq4uMhVnEAyknGVzzAlzT0uGrazxm18yAzPDN/4ajwAlNsYzIgah6jDDnaYm/
	zrwBo=
X-Google-Smtp-Source: AGHT+IHZhwwJ1GAAakUbDyWBchcEmOdwvmn5VpYqCpYR267goBUbd6qsiAamIt0D50PzjBgabwMTEA==
X-Received: by 2002:a05:622a:2c7:b0:4b5:d6db:eea1 with SMTP id d75a77b69052e-4b6348bd37dmr127954271cf.39.1757701927559;
        Fri, 12 Sep 2025 11:32:07 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-820c8ac45a3sm313988985a.5.2025.09.12.11.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 11:32:06 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1ux8Z4-000000047N0-0oCq;
	Fri, 12 Sep 2025 15:32:06 -0300
Date: Fri, 12 Sep 2025 15:32:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: =?utf-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Message-ID: <20250912183206.GH882933@ziepe.ca>
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
 <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>

On Fri, Sep 12, 2025 at 01:37:11PM -0400, Nicolas Dufresne wrote:

> To me this rejection isn't about Benjamin's driver, all iommu seems to look
> alike, so anyone else that would have sent new driver would have face the same
> issue.

Yes, many drivers looks approximately alike.. To the extent possible
we should be making more helpers and tools to lift common patterns out
of the drivers. I don't know how much of that applies to rockchip vs
verisilicon though. Obviously I'm tackling the page table stuff.

Much of the other common code is tracking attachments and invalidation
requirements. I'm hopeful the general method Nicolin is working on can
be lifted and shared. Certainly it is better than what is in any of
the three server focused drivers. But I don't know how much this
brings to these simpler drivers.

It seems strange to be talking about merging drivers that don't share
a common IP supplier or register programming model.

Jason

