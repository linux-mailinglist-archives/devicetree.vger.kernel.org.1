Return-Path: <devicetree+bounces-114162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 576BF9A9F85
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 12:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16C251F24ED8
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 10:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD63161302;
	Tue, 22 Oct 2024 10:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WjD14I3n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785D1145B24
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729591479; cv=none; b=kJg9lE5Z2B/dHGd5t2KGLJwlybxymcvKWuhnIxXflvvcP5M3fa4gF57HP7Q/8mZMyX65BCDGTAooMbi0uUNdZzzgZr/m/FpPJcCzB7oV/pU0nVv95WKajwV+2WhP6JUWcA7SmiuR8PnQWY7/2U9Y7MvkB1PJvQ6pYrLAqufHFY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729591479; c=relaxed/simple;
	bh=oHtbnhl1fHgdxuL8E2Mae962EdrPB3seI2yeQ4GwdqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iYj0ECiRaV4ycjd24btnREnVuQt9XczRKTJVZ0hWW58sMy8oAht7VTPMJwm3zgk2CSwgvsD2csZWkXur+QHyWlSsRDdqly3w8nEghYIh/d032LG/SEZ9G+86fQH3KJBqvh0jhZ8tSBGYCy7ZBqffLkKe4ZdUfHbhN/BZf+FmJyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WjD14I3n; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7e9e38dd5f1so4060047a12.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 03:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729591478; x=1730196278; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MOb3/YiZFds7rNs+QE+YkdVNWGtcSeJSYIfyVNEkARQ=;
        b=WjD14I3nbYpxDH7R+QmGz6o5u1UWBSu8KtwWZMq7305/m5WfLdaz2gOATRr161WWBZ
         N94KQ79EJAWYs+bq0ruR4IXepjfD5fPlyXMX9xxWUbZT6eRunExmt/B7UB5mVt/MB669
         Obkal8g94TpvvBq8GtmI2nNZvcXBObgIrBjPe3VepufAe5Ga/uNC9vFpYz9qrZPxb55S
         PaSf7eRn9MDzfFLMyerQUw5qxVfjWHHFnawRhBfvd15G7ihnevN4AQorO1okKK+lEw6N
         c7rud0SZM3MIYaSGYgSkSquiKSR2fb2Q16lLU2dNDUkO0hZg6zhRkDta4TallZWPqhJm
         Nwhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729591478; x=1730196278;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MOb3/YiZFds7rNs+QE+YkdVNWGtcSeJSYIfyVNEkARQ=;
        b=OmQYGrp8BVEhPjzHcHHr2+yw80WagtemYw3ic4RtRbcv5siFtSpnQMl2KIqIYzQLNN
         SUUVwdAEKmn4eIWb9pPN1Jz2+vvYGG2Jxi0uAsvMfEg0oL6b4q/+7Jayc339JY9iLoy6
         RqMpkOFJsbPJSdoBPduDrh0T5hE5AjmODWbyELqVG4urfp8IYNzn2CgxrjCTDoDQ6Qzy
         nsfsc7CCJCuZz4ThTpqViwNRiuniEByqHB5nRm38LWLINdFhgJGH9yrQhIPiON2DSU5x
         qikhZUOiX6GEmzX0CpmRcmhAevpJ/XwgvBjLVo25QkPQAwQmMt7JEXcIHSWEEk7xB/xr
         90Dg==
X-Gm-Message-State: AOJu0YymtVWbcbmYJdHrWh3wtWoCV2JFtq2pGGvvBFJdEVi7AyGzneDV
	W+iqOxIJAxTdVOMOfMm1FhXE4zTfcIXGfb7kUJ8SQmoJ7SFBRABq
X-Google-Smtp-Source: AGHT+IGOk/LQ50NJpN2PWIn4JJAGyCC+Hy2bBsADd10/1fceblYcgZvJdY8CU9OM6Rlaznscb8QJnA==
X-Received: by 2002:a05:6a20:b58b:b0:1d4:e638:d066 with SMTP id adf61e73a8af0-1d92c4a1c30mr20381950637.6.1729591477771;
        Tue, 22 Oct 2024 03:04:37 -0700 (PDT)
Received: from localhost ([121.250.214.124])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ec1407f63sm4377863b3a.204.2024.10.22.03.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 03:04:37 -0700 (PDT)
Date: Tue, 22 Oct 2024 18:04:17 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@outlook.com>, 
	Guo Ren <guoren@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH] riscv: dts: Replace deprecated snps,nr-gpios property
 for snps,dw-apb-gpio-port devices
Message-ID: <d5vjohhftbx5zlsay6hfij7p5qbcrrebnj2sspsdtkgrkz4scq@aifcdtxcqqqd>
References: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>

On Tue, Oct 22, 2024 at 11:14:30AM +0200, Uwe Kleine-König wrote:
> snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
> ("dt-bindings: gpio: dwapb: Add ngpios property support"). The
> respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
> Add ngpios DT-property support") which is included in Linux v5.10-rc1.
> 
> This change was created using
> 
> 	git grep -l snps,nr-gpios arch/riscv/boot/dts | xargs perl -p -i -e 's/\bsnps,nr-gpios\b/ngpios/
> 
> .
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>

Please add Fixes tag.

Others LGTM.

Reviewed-by: Inochi Amaoto <inochiama@gmail.com>

