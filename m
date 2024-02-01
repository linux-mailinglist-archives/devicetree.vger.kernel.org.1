Return-Path: <devicetree+bounces-37419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CE0844F00
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 03:10:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F10411F26401
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 02:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74171F9D0;
	Thu,  1 Feb 2024 02:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CYiWfnbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F5A1AABD
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 02:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706753425; cv=none; b=NlExP+JMlzyAyDCEg8KaIQEzQZDhtlKcMtPNHdXXrmVkQbQA59jk56sO7n753rl5Ad+NVtL6Ag9NH+q9nv+g+imSJORAH/ipQri9nVBBGIhUL8Ucpe+G9TT28d4Ev0ezO/dzlSQYyoHDUypT6JgxaHQB0wgc0IYuNdyjxRIkKZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706753425; c=relaxed/simple;
	bh=EZrBz6KMItLJOi0Z4XI24mGjI6M+j5O13Qpt1qGv7tg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RVe5REwnLcHa4bfU4sxOVCgWNpNIrNbpChbR6mloTe3xNNQamKwSoTUSUYPHu+y7ZSbwkXHhXUjZ4XpuEZiCr3tKDZ1/FjSo0D4sMq/eRxJTCLiFIh8MHWOXg6ffA9cyigcFsVywGp+4qduGMmbxeAXJsOJmBjd5t6hLbqdsBfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CYiWfnbt; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5d8b70b39efso450428a12.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 18:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706753423; x=1707358223; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j3jPZwXQuZ1YOcA4S4xlgTss4O8rCRxwY6BbfjNXe6s=;
        b=CYiWfnbto3nDjAg4DDOVD1gdZfCyHtE+eb3k54I0iySFcEx3IN149gk+dShccwYGyy
         Cgn8jQdQTzl31uu1KygKDKNhaIEOBx0pz8G0Skv0lnhKnINk0ynhbSDUBJyJW9lBzeeu
         8oLE/O+SzxlYzdzQT8bDUcWqjvM6t8OJ+ucWXEd7b+clb94G9Vzbf0kCP3s/huMpiYXI
         gWF7KnlI4C8q/+1G4bPGRi6LtV/KaB9xlCC7K32gdjvVgBJlzrM7nXAS8fe9qivawOB/
         IwrvwMMLPVFt6+pJ5uCsiRM6NEr+rY+bUHoc6TAnknKebiXKO9NuKaWbCJZ9hwrp3cSU
         6vQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706753423; x=1707358223;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3jPZwXQuZ1YOcA4S4xlgTss4O8rCRxwY6BbfjNXe6s=;
        b=m5vo3z0kQdIERoI6qTTE4L0e/Rm2xjz+0pS57hmrzH5EzQvjIabNsQHNkYap9raa48
         XNcQvuXQ+V/0edPao4vdrO4cOcnD2aKSsAbzugtoMl7GArPEW2NU41K/DTBszTcSEJEG
         FtqlA6Ppi8fOeoZ+1RM70/iod0+4XxBqw5sZY1Pd9FyGc4om++axE5p9sSC/1bepytmd
         ey/+MK6bprCX6nfA1y22rWwV/HG9veAW4e4NRvlR193XXHIgz6cFpwRPvxirGNjqfkjP
         Hei8I6imnU5xdpydeS5dipTwNcaEHzo4nPeXb/g0JwE4weTa1o0DgF4+mXtMy9nlBvH0
         GGFg==
X-Gm-Message-State: AOJu0YwDmKA0/JpGv/dBHfbi7l6bLxXaE6rnVTdPwpzweZTOrNVaet2l
	9GTaT2OXyhBMmEWIQUplSKwGtpWJDRWSyCSWykBr8wdCLkc2x68v
X-Google-Smtp-Source: AGHT+IGHLIvz+/AXnd3iHQjIuKHA17521x5sy/jzJ/1dlK8kmXl8ZJ0hqmptWO4Ml7L2Xi97d5uLnw==
X-Received: by 2002:a05:6a20:871c:b0:19c:935d:8a69 with SMTP id e28-20020a056a20871c00b0019c935d8a69mr3038964pzf.36.1706753423095;
        Wed, 31 Jan 2024 18:10:23 -0800 (PST)
Received: from dragon (173.242.119.193.16clouds.com. [173.242.119.193])
        by smtp.gmail.com with ESMTPSA id c7-20020a62e807000000b006ddcfbe736esm10877662pfi.97.2024.01.31.18.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 18:10:22 -0800 (PST)
Date: Thu, 1 Feb 2024 18:09:15 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8qxp: add GPU nodes
Message-ID: <20240201100915.GF463595@dragon>
References: <20231218142312.3175828-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231218142312.3175828-1-alexander.stein@ew.tq-group.com>

On Mon, Dec 18, 2023 at 03:23:12PM +0100, Alexander Stein wrote:
> Add the DT node for the GPU core found on the i.MX8QXP.
> 
> etnaviv-gpu 53100000.gpu: model: GC7000, revision: 6214
> [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

