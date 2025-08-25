Return-Path: <devicetree+bounces-209120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B53FFB34A5B
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 20:31:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB35618924F5
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 18:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89769309DDC;
	Mon, 25 Aug 2025 18:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="Mkd5hZVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72C63019C7
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756146687; cv=none; b=i18gFPG1zM1sizWkvdH4yoAz7hnjQ3IQD+d6X6c/UR4hNUQpNFw6GHH10ZVD5pQwyMaJa5mGjeE724GPgR2mYvSuZx4sGKoC2nW1YGieRFTe3aSwIPYo0EXakiQ3a0xthy1CoUOWcMgGRAHzGYYKaFKX9vREfohWbnaqTwNQOQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756146687; c=relaxed/simple;
	bh=NqoYACXOw8wDP1WvzCpUxeuUy2wpqRUkEhJcPRJdMis=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=onnK5lUobYa5cVd6IFeQctpiawWDF9vL6QVUDbw95J8vT+ymG5zfGFb4FlXyg04GODEduqI54CKluFMRBxsfjXbDA4uvK7jma0l7h3wrl3QEAaf9uUzx6QRQmJ2XEZfS3QiZd1NG78E/HK0wR1RjCgHQ3MI+PYf1OZmURDjP0PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=Mkd5hZVG; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7e8704b7a3dso510952385a.1
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 11:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1756146685; x=1756751485; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zWiX+6VTPBW9oMyyTDAuGR0ExNJ3ZNdezl4Ijz6qJzY=;
        b=Mkd5hZVGu/b/GU+kngDzHawWbY/jjvSzPaiweah/pf6kkPDmHnSjXC5fzj3U4l1120
         Z9LRXHDfRYDTSgHdxJmDqe2Z6LpGExX686NJKCJaUyUJjpiTQm1HiceiNGNbKkcpARWQ
         0etukc66301QUvGyMI1Zgt6yS7q47l/r2tqYTj7spJOIFlX/wLcGL7y0ZYZWASn2PzoI
         qwyaCGhLfNLb+w3GfR3qdV/AmdhGQQ59EBrndszGpFDxVu/yW9Sg/ADcxUfcwJmxLYjQ
         LzESJF7XJajG22pPJ7f8liLxgzFFEN35Ai00Dziaj9lKO2vM5jlQcjQNyJUfJ3B1+hPs
         SDXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756146685; x=1756751485;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zWiX+6VTPBW9oMyyTDAuGR0ExNJ3ZNdezl4Ijz6qJzY=;
        b=ZHjQ0eOcFn/7Y1n4jSNB+7yDGnhpPjaPvAb5ACJbl56RLNahaBdm+Vta5kXjDeH9mH
         GVLLUdckBJJs6Flc09+ZfXw6uqnfDqhMcPRgiS4qzo2WlseKYJAxCf0a3FVk0+h7VNlz
         wxaKLqGZpEUAHFmqkZxkuMa7s2d36/oopWhP5Pt+ouaXY9vBJ5gPGmqxjt6vkPocRVgE
         HmtwhxJGyzYnXyzfDfXKl4IltjDzreGRXF45fgudTnHYNOY2k4AkNofCnBes5wUuD9+m
         +Zl5npVMZ5wARMc6EO+AM0TiTGbUp+6sgchA54FS4PMFZBj5Tezn0WCapscLXL8ekRZG
         5qjw==
X-Forwarded-Encrypted: i=1; AJvYcCV6fZNy6DiDxM6eDfBTacLlVxqY2zwnSDe77AvgQiXJgC4qR0cdsC6UAqwKc07g4MthXz4q7TTlcF28@vger.kernel.org
X-Gm-Message-State: AOJu0YwhCXQKRfJdCCAav1XiO91fFiPsVbKaFcUruOQ1Q5j+o7V0K2B9
	m5CbLd+K014MSC4ZLzLwZcyhWHrrjvPXdsxlYAFqy0d3NOphAbGkTh5isF64Z5VyaMQ=
X-Gm-Gg: ASbGnctq+tnAdePfYLWx5pzTZF4DDpZgOYeIBMIhYYGjoDSZOphGdtGNCLTKvWvPSDT
	HpcOQjxGcdZe8Y1J9o6nI6vE/8txXFw2/JRdIqVeH9LhG3jfNjKcVHOM+M69gDpgaofWr5M7jiA
	MjimMHLD4MhaXMlwRSSi71NWOf/sEk7SRk5Tip69JChRBUIzL1vUkXE6aEdSnxDQNzL6A4MQOW0
	itRr4EKltu+1ugHyJo1iKeLQBZUG27FsS3GTtsU+AZQpD2MFio2eOwWWrI0qlK2T8wCApfpmhkB
	R8ywvkBFRwFr6M4FEvypZWE54kMaUK5+jqMO/8ny53r4kIYDSNam3nXP61YCj2kUE/WJkMyzLGf
	NyURjRmlIBeEZyYM/CZsceZiYwmDKMuUPWowBA1HOAG0HLj76XPriW+if+yQeYumaIRNa
X-Google-Smtp-Source: AGHT+IGrrqtb5FLiQ6yBv5bSbXionDmSOOeGsus0fmtyrIvrknH2Q5meU+RUaqrB7rQ0ZREIDsRXNA==
X-Received: by 2002:a05:620a:1726:b0:7e9:f820:2b95 with SMTP id af79cd13be357-7ea110baa0emr1337281385a.86.1756146683666;
        Mon, 25 Aug 2025 11:31:23 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b2b8c631b8sm57949871cf.3.2025.08.25.11.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 11:31:23 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uqbyU-00000008lWr-2NRj;
	Mon, 25 Aug 2025 15:31:22 -0300
Date: Mon, 25 Aug 2025 15:31:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
	will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	p.zabel@pengutronix.de, mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v7 4/6] media: verisilicon: AV1: Restore IOMMU context
 before decoding a frame
Message-ID: <20250825183122.GB1899851@ziepe.ca>
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-5-benjamin.gaignard@collabora.com>
 <20250825170531.GA1899851@ziepe.ca>
 <01c327e8353bb5b986ef6fb1e7311437659aea4a.camel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01c327e8353bb5b986ef6fb1e7311437659aea4a.camel@collabora.com>

On Mon, Aug 25, 2025 at 01:50:16PM -0400, Nicolas Dufresne wrote:

> Jason, the point is that the iommu and the VPU are not separate devices, which
> comes with side effects. On RKVDec side, the iommu configuration get resets
> whenever a decoding error leads to a VPU "self reset". I can't remember who from
> the iommu subsystem suggested that, but the empty domain method was agreed to be

IDK, that seems really goofy too me an defiantly needs to be
extensively documented this is restoring the default with some lore
link of the original suggestion.

> the least invasive way to workaround that issue. I believe Detlev tried multiple
> time to add APIs for that before the discussion lead to this path.

You mean this:

https://lore.kernel.org/linux-iommu/20250318152049.14781-1-detlev.casanova@collabora.com/

Which came back with the same remark I would give:

 Please have some kind of proper reset notifier mechanism - in fact
 with runtime PM could you not already invoke a suspend/resume cycle
 via the device links?

Or another reasonable option:

  Or at worst just export a public interface for the other driver to
  invoke rk_iommu_resume() directly.

Sigh.

> Benjamin, please improve the naming, comment and description, I agree with Jason
> its not completely clear. I'm also surprised that you do that every frame, seems
> excessive.

Indeed if it is just error recovery.

> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ff8c5622f9f7c644e995d013af320b59e4d61b93

This is already merged? And now you want two copies of this? I think
this is a very poor direction..

Jason

