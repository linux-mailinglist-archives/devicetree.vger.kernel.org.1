Return-Path: <devicetree+bounces-170029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EE813A996B7
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 19:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CCF21B86514
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 17:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381A228A40D;
	Wed, 23 Apr 2025 17:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hKnQ54A5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C5226656C
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 17:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745429483; cv=none; b=pZUUPub8qDk2W/6Oi6Hv8F9RLghU63RNPZnBZgyRg5zJQ5S8Ns2/ZmaVuHwAWzopUxELacEL/AHr4TKMaoRYJ7wkLPTaNl7P8jtOwfPIhoeXQIlf4Fgo7CrcVOKeDiC/zX32WhsO3gqJTvWsmdOoSIjK96u/jImE9RNl0TGSZgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745429483; c=relaxed/simple;
	bh=kgi4ELr8mCdAm9+XhEH6VRz6G3+ojfBNAMxT3w5HoSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F+DecuQ8JwGYjhcXeArkgjH7XfPfyL6L3++GsgawYKQuA3z1fcQGUDKQTEnQtfUtoFXbfRx/MoGDA5yfdwYZ0UCp0xURBpVe80kDzyhV3yoPT+FPig2nHjdP1zYfAovgH7VAbjk9/HJVy3XsV7dzUcU8Fs2NOZ7FPraWa6ALaiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hKnQ54A5; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-227914acd20so11073505ad.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 10:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745429481; x=1746034281; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GkDmVE1oQubncGA13yoyJE0TwJhGavatFFU357EXcEc=;
        b=hKnQ54A54OH01v/NWH8UIDkJ38bvfjB2A/mwBI3uytCUu9Gxp2I7TdQ11SLHYWMJQG
         zTl18GT6Bm3tRyxmQawp0/e4oohop1JRXMvTvJlj/962IgPlx8VzfY0xDonBwQp+Kb1z
         +U7Q3Y87ys1QZ8+DPo7ORe7h7ccWuRHHRaijrl9IRKRiuX3Ok/l2j2caDetVylCL+t1A
         yoieaOiQLdJg5qS0u2O5kqXmsHFXZnxRIsfNcdQsw4vtG5Pao/Xz5o/lD4AvE9we7lhi
         D2wW8e7SUPwXbRzUmSpqNJ1sGNXPlb8dnIP6Z1rGQ+3YMINN/ZkXY6SROA5MF9jrMOfR
         aBDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745429481; x=1746034281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkDmVE1oQubncGA13yoyJE0TwJhGavatFFU357EXcEc=;
        b=X3SoNH6Q0stEjmJhKqkNwmNH706YQTkKb71kvc5pOWVN5YGXmcYAFR/5zjTviSPH58
         +coNTLlu4Wr6we8xRs0I+rsA+dx7MFCMYIqwG0Vaq35vTc0lQB60YNG1npXciInAqwDw
         qbxQn0UvB7V3ABm5enp3mFsphhVhTfrTbIwB5sweVNXr5wn5YrIuy+oYuegT9QlSi82T
         Br8MHcJ+PgsPCYswLQ1+fIYtk+u3+3NHhzv9k/vYF99/S8BappTDETwSKAJ48ghm3u//
         RMKnu7hVw/4Eu++g/7vvd6YLMWbqrDBs2MLLA+f4Xspf+YZ4lVn9m/yY6TIYn77AqqEp
         cGnA==
X-Forwarded-Encrypted: i=1; AJvYcCVLyrzUuOidHCmXso3h6JRFUEhgn0iu12PWZAnkUdaeGLx5uXURUqcWVoFvJ10veEOJIxsZkXmv+jgX@vger.kernel.org
X-Gm-Message-State: AOJu0YyieP+BtNi/pempdofYEVzlhHgsyDSVNegAvGAvm7110GbbvrTW
	/drRviQxK2vjZj0mR0cpQfT4mzuIyU92qoZEwsDbeU2v+aOZefeKrxTtHnetiw==
X-Gm-Gg: ASbGncuhl7Ojp77oPHgyj06la2IynIDrDItvvgb6v6gcW9cZfnXOAugmZ7dSwx3IDbw
	03a6n0NK3EldL9PCvRoDogxECD091x9t4YXGKP59nK4TY041aqQPxz9reA06kr5SiHFp3ceXogl
	w9/EHuHOU6zpNZRKoQgvYAnnzrGCbVRlIuG0UnfL+54ExIWjN2m509BZjzs/NGJxq173B68kmeE
	Z1xGhPFjCA2IyJaodgkfEfBw4UHqUX7UChljyeyO8hLVdrjknNbBMGv6CgugKOBnhkJED8d2GkG
	w+rgvRAuyhGNPiIhZQctCHbxqyj4FlXnRVUNughz6e3usFRvJYrlnWxxwaYKmhCfsOYKuaTdjqE
	6lTiWMg==
X-Google-Smtp-Source: AGHT+IHJNQTbOTf5T97irPUNv+QmXLRPjJqv5JLklJLGHSWfRRkbgYAKpGomh75s0qhLStfcG3G05g==
X-Received: by 2002:a17:903:3bce:b0:223:3394:3a2e with SMTP id d9443c01a7336-22db2189d23mr394125ad.18.1745429480637;
        Wed, 23 Apr 2025 10:31:20 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50eb4292sm107648765ad.150.2025.04.23.10.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 10:31:20 -0700 (PDT)
Date: Wed, 23 Apr 2025 10:31:16 -0700
From: William McVicker <willmcvicker@google.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Robin Murphy <robin.murphy@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Stuart Yoder <stuyoder@gmail.com>,
	Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	Nipun Gupta <nipun.gupta@amd.com>,
	Nikhil Agarwal <nikhil.agarwal@amd.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-acpi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	iommu@lists.linux.dev, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Charan Teja Kalla <quic_charante@quicinc.com>
Subject: Re: [PATCH v2 4/4] iommu: Get DT/ACPI parsing into the proper probe
 path
Message-ID: <aAkj5P1I-e9lylIU@google.com>
References: <cover.1740753261.git.robin.murphy@arm.com>
 <e3b191e6fd6ca9a1e84c5e5e40044faf97abb874.1740753261.git.robin.murphy@arm.com>
 <aAa2Zx86yUfayPSG@google.com>
 <20250422190036.GA1213339@ziepe.ca>
 <aAgQUMbsf0ADRRNc@google.com>
 <20250422234153.GD1213339@ziepe.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422234153.GD1213339@ziepe.ca>

On 04/22/2025, Jason Gunthorpe wrote:
> On Tue, Apr 22, 2025 at 02:55:28PM -0700, William McVicker wrote:
> 
> > On this note, I was looking through `of_dma_configure_id()` and am also
> > wondering if we may hit other race conditions if the device is still being
> > probed and the dma properties (like the coherent dma mask) haven't been fully
> > populated? Just checking if the driver is bound, doesn't seem like enough to
> > start configuring the DMA when async probing can happen.
> 
> I think the reasoning at work here is that the plugin path for a
> struct device should synchronously setup the iommu.
> 
> There is enough locking there that the iommu code won't allow the
> device plugin to continue until the iommu is fully setup under the
> global lock.
> 
> The trick of using dev->driver is only a way to tell if this function
> is being called from the driver plugin path just before starting the
> driver, or from the iommu code just before configuring the iommu.
> 
> Given that explanation can you see issues with of_dma_configure_id() ?
> 
> Jason

I think the only concern is when a driver calls dma_set_mask_and_coherent() in
it's probe function. If we can handle that case in an asynchrounous manner,
then I think we are good.

Thanks,
Will

