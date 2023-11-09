Return-Path: <devicetree+bounces-14856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4611B7E70F5
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 18:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBA2628104B
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 17:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24455225D7;
	Thu,  9 Nov 2023 17:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42B431A63
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 17:57:02 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C013AA4;
	Thu,  9 Nov 2023 09:57:02 -0800 (PST)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1f03db0a410so629276fac.1;
        Thu, 09 Nov 2023 09:57:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699552621; x=1700157421;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahGv3h71TMlXo9IWrcIVCfdBV4TBPnVCQHHMMkvxImc=;
        b=sivO7rgA0IJRYr7X2nNYA5TkSiANZ3iT/P3mtdPTqEMAuvMfDI7g4mkhApAmcWixxx
         jwjeBpzcCcWX+3Xb/TGfuKWXNfV+qan0FY3hXNrM4qYrP25BlIA78lz9Wjlewm0iC4XM
         kaR5EYi19UgfVDUPDfElxH8GAr/qc9Wo3H3xgOUfphG7j8h9GVpjDZ2A/qJSNCQix4NJ
         iJIzso3vBfJ4LdafguzC1x4hBcbbJ3Ejs0EClRG4epxl2UgPfysNwNpVg7a/BDcfivkt
         RqY5ekjmX2cmCX4pnKrdQ1PW+7jxMt1pIJK/Bt1jhaK0K+47dKztf8EdFKvqeOgJQ6Nv
         HdAg==
X-Gm-Message-State: AOJu0YyQeMJfvH2j1fvhXH5I8GBNWyPspgTaVHxu0kaTtIwoM5VXLO4h
	DKoHow0C2BXd0LMtJmDgyD3biImnBw==
X-Google-Smtp-Source: AGHT+IEx2gv5KzYWxNgThvFHI01AaDRSpM+cu4t4TxmJmbKoTyF6VnPXOkxYAWwwc3uiKbRFdmiFng==
X-Received: by 2002:a05:6870:934b:b0:1e9:8ab9:e20 with SMTP id j11-20020a056870934b00b001e98ab90e20mr5739955oak.58.1699552621363;
        Thu, 09 Nov 2023 09:57:01 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id kr13-20020a0568719ecd00b001dd17c5356dsm791581oac.11.2023.11.09.09.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 09:57:00 -0800 (PST)
Received: (nullmailer pid 1617335 invoked by uid 1000);
	Thu, 09 Nov 2023 17:56:59 -0000
Date: Thu, 9 Nov 2023 11:56:59 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>, kernel@collabora.com, Mark Brown <broonie@kernel.org>, Aishwarya TCV <aishwarya.tcv@arm.com>, Rob Herring <robh+dt@kernel.org>, Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: Re: [PATCH] dt: dt-extract-compatibles: Don't follow symlinks when
 walking tree
Message-ID: <169955261140.1617124.16120515959862033493.robh@kernel.org>
References: <20231107225624.9811-1-nfraprado@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231107225624.9811-1-nfraprado@collabora.com>

On Tue, 07 Nov 2023 17:55:28 -0500, Nícolas F. R. A. Prado wrote:
> The iglob function, which we use to find C source files in the kernel
> tree, always follows symbolic links. This can cause unintentional
> recursions whenever a symbolic link points to a parent directory. A
> common scenario is building the kernel with the output set to a
> directory inside the kernel tree, which will contain such a symlink.
> 
> Instead of using the iglob function, use os.walk to traverse the
> directory tree, which by default doesn't follow symbolic links. fnmatch
> is then used to match the glob on the filename, as well as ignore hidden
> files (which were ignored by default with iglob).
> 
> This approach runs just as fast as using iglob.
> 
> Fixes: b6acf8073517 ("dt: Add a check for undocumented compatible strings in kernel")
> Reported-by: Aishwarya TCV <aishwarya.tcv@arm.com>
> Closes: https://lore.kernel.org/all/e90cb52f-d55b-d3ba-3933-6cc7b43fcfbc@arm.com
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 
> ---
> 
>  scripts/dtc/dt-extract-compatibles | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 

Applied, thanks!


