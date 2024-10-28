Return-Path: <devicetree+bounces-116364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4209B2AB3
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E3F21C20D59
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C271922DA;
	Mon, 28 Oct 2024 08:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l3zh0Hr4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C645155C97
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730105337; cv=none; b=FHz9vvulCOdrI0t3qLdw4k/H3f+yaI56SGuIvcY1Rs6A2SUBOBmC5DfS1TpouFm29jnuPHT2QXEaHmcZdPW7H9yzsu91RdM0jBF+j8yzb+FaYAmyYNkePaUDFskMwlsn60T+jleXXkROgJl9uj9Uib12RRpn5ANsyP1l8fjGbxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730105337; c=relaxed/simple;
	bh=j2xt+trhQJQXYZaSllPkx3D8Wpc1vrMkDLbDwCWMDOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X/DuOYbs36NgtViTVEAdr0nNLeeTCsKlzA6yUBi7BV6qSJ/wgTWW9Oh5A15vK05K/R5McVdtcIscfrvDTMUCXsCjR27gg4Je7uN+ZvsAue6vpnPTb/ZvoKW3hLJ/t3m7yO9vhJOso3RfHZ0spyLtGOgQUGDuYCz1Y7Xk6OT3qfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l3zh0Hr4; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d495d217bso3835147f8f.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 01:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730105334; x=1730710134; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yH8rSI6GTPme8vkq348HNrx9rwQPSGuC28jjl3dlmxg=;
        b=l3zh0Hr4hplY7Z5GZlCke9s2uQ9f/DPcR6Rl6ZITB7YF7TVmnn0sDCWmHQj56HDCZU
         wXzqDZxcbMNghanFFryfwKrgsQf5NUnOnuCGaiHMN3LYIc01ldoTAZjwJ69ZsXoEOzbX
         TIfBWmu6uNKgm5NVa2ah94ZgnG5sSNX45Gl+kzRSGvnxYtTeNLjoeMJHDU5GN3NLkyl9
         EmdKHc6qro4nt9dgYzqGUxzZIz5lNy7ORhB4GISK1+160N1s1ghoccaJPmCgrLQ16RHR
         pqCFEJ9w14B5pa8lP4AKVobXwvAjDatDoZTJJMGmCzFl5J0jXS6Ph5YWzv/Q+QXgFz+1
         e1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730105334; x=1730710134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yH8rSI6GTPme8vkq348HNrx9rwQPSGuC28jjl3dlmxg=;
        b=EM2O6Bkqn/tOnokx3VC8ed2n7Pld4IDrD88sazKdsO1TYQDmR5e6mJgcKezm7/BrWm
         XmJMLZg+kbiXn74kiA2JVblaMXT7uwtM1P7UMyCyoZlkNh7+htlt3kmkdh3/6z1Mgynd
         ePNoDu3V4Le6TdkJyIurjXBIG0V4TAzJd2nOAP7sfcqBHZZ3pGxSQMGGWr5YeYNEtYAq
         IQ/Zzh538LSqNGgSjjvToMMddthLB9MKVyrcvJyRlEh2eF3cC958sBiawzFLPPuly5Kn
         uZYYsefNRypctnphiW3fwm9xCE5R2EoI1YlTqx4r8v4gsR3zGK+9Mzfw1bW6NOOmxACv
         Z/5A==
X-Forwarded-Encrypted: i=1; AJvYcCU+H4/dc+3naIOH78tqHnUark4tQ/cyey8ornEw7IiZ8baCO8JYG3ITwCDIDyvLzmWgHmFW4tLHfgdb@vger.kernel.org
X-Gm-Message-State: AOJu0YwN//P2WNXZ7MgaOQULu9NYy4XGaiCv3W5TBB1YdC3bBaMJwK+V
	p1TyQYmzrceY4LeveaCm6Vz64ysh5njVbHZRa0h/PmEzLqorEP/GWYZY/ex2uH8=
X-Google-Smtp-Source: AGHT+IH9y5ZsNU0/1IZVAwqxMjl/THOn02DoTBZeJQXoIQD78iYBw9cg5G5ERRFPQ7WvpJL4YR5few==
X-Received: by 2002:adf:ea91:0:b0:37c:c51b:8d9c with SMTP id ffacd0b85a97d-38061228564mr7060382f8f.38.1730105333982;
        Mon, 28 Oct 2024 01:48:53 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3c861sm8872842f8f.44.2024.10.28.01.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 01:48:53 -0700 (PDT)
Date: Mon, 28 Oct 2024 11:48:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoine Tenart <atenart@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev, upstream@airoha.com,
	Richard van Schagen <vschagen@icloud.com>
Subject: Re: [PATCH v4 3/3] crypto: Add Mediatek EIP-93 crypto engine support
Message-ID: <2c53b5f9-cba8-48a8-a9ad-9c72656b7479@stanley.mountain>
References: <20241025094734.1614-1-ansuelsmth@gmail.com>
 <20241025094734.1614-3-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241025094734.1614-3-ansuelsmth@gmail.com>

On Fri, Oct 25, 2024 at 11:47:24AM +0200, Christian Marangi wrote:
> +static void eip93_hash_free_data_blocks(struct ahash_request *req)
> +{
> +	struct eip93_hash_reqctx *rctx = ahash_request_ctx(req);
> +	struct mkt_hash_block *block;
> +
> +	list_for_each_entry(block, &rctx->blocks, list) {
> +		dma_unmap_single(rctx->mtk->dev, block->data_dma,
> +				 SHA256_BLOCK_SIZE, DMA_TO_DEVICE);
> +		kfree(block);

You need to use list_for_each_entry_safe() to avoid a use after free.

> +	}
> +}

regards,
dan carpenter


