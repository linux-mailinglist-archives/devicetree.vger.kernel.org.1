Return-Path: <devicetree+bounces-6020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5377F7B9B2C
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 08:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 782CD1C20856
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 06:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0132B5221;
	Thu,  5 Oct 2023 06:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="P/GmtBrN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBF37F
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 06:50:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBEF87287;
	Wed,  4 Oct 2023 23:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=PXvaL0YHKWoIp6ItLWn51f3AysUSNJgd0DaMiX2uAic=; b=P/GmtBrNdqyYciQSKghQIq5uyU
	hAQNHtExo+DtJclOklF5ySyh1Lj4xOOiJXjgMy4miZrkA9GcqmBCkfYR/+RvBfHCIt5cQM5u6jtAI
	oxHAl1beCpW8u4KIsFqmtp6fGtOeOr5uZUqdofoofJkEpDL277Lz25nqvR3AX7k33eQwxU/4P8OFf
	k8n3d2xVqtLb2Ag9VC1rJvUH7fm3CPzHigzM3j0gC0dr8j7Su1wkflAur6vCYoBqMqm5hiwqfVvg/
	U4T9c6FL0hTayMyVrZuFzJ9OoFSE/4yAd8Ii6SzVEUOzhr3R7t2cqjdFdh9tAu03O4VqA7LqVecy1
	ZN3AoFvw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIBI-001XnF-1g;
	Thu, 05 Oct 2023 06:49:56 +0000
Date: Wed, 4 Oct 2023 23:49:56 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Christoph Hellwig <hch@infradead.org>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shuah Khan <shuah@kernel.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	devicetree@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 1/7] RISC-V: Detect XVentanaCondOps from ISA string
Message-ID: <ZR5clPwviAN2SHVY@infradead.org>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-2-apatel@ventanamicro.com>
 <ZRpitP5y1yhzKwbE@infradead.org>
 <CAK9=C2XyQtHy3__i+fahbi49=j5Z3Z_Bv5s3Ptqjmuaa5q18LA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK9=C2XyQtHy3__i+fahbi49=j5Z3Z_Bv5s3Ptqjmuaa5q18LA@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 02, 2023 at 09:06:08PM +0530, Anup Patel wrote:
> > extensions?
> >
> 
> We already have few T-Head specific extensions so Linux RISC-V
> does allow vendor extensions.

Only for kernel internal operation and to actually boot the
chip.  IMHO still the wrong tradeoff, but very different from actually
user visible extensions that will lead to fragmentation of the
ecoysystem.

