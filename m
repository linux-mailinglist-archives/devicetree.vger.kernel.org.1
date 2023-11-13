Return-Path: <devicetree+bounces-15396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBA07E9E46
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1830E280D7D
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACFB320B3D;
	Mon, 13 Nov 2023 14:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkaNk6Od"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9161833C9
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:12:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 624ABC433C8;
	Mon, 13 Nov 2023 14:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699884759;
	bh=7n9z+cHpOQ8W91XBkYQLoFLrh4UpmQ6en6y1XeCK3Kc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OkaNk6Od6P7WGy82NQKqBftjUJ8iuNS2PhRkdz8VnwAV3mKYJ5Mk+KaKs7KA3WSyW
	 a7kDMBYayhA5IFV0P/w+CFhS/ZoaTMZcqfpbkA6jOHPAxqqvQ1REU9Iqf96v/zarno
	 0nl/6qmmr22QeG8oC8jEgdkb240HiEJgXXCsWx8uiOzgIYyeHJHwjHVybLfgRwiFtb
	 dhnOVdy8L+/5/fgnyO0XujxfX5xwKVFog+TAFRGKv/8vOtQR2+12oySA0AxmDcLvcJ
	 9BxNQtFf2solRjysjp/cdohH23nFQvltLOmKkMADTfXAB0m5nMmO3rXjQ8co7iRdLH
	 v9ElzPjCIZahw==
Date: Mon, 13 Nov 2023 22:00:17 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: reset: Add binding for Sophgo CV1800B
 reset controller
Message-ID: <ZVIr8VH+29lpSpxb@xhacker>
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-2-jszhang@kernel.org>
 <20231113-washable-elbow-629bf42b9be1@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231113-washable-elbow-629bf42b9be1@squawk>

On Mon, Nov 13, 2023 at 01:36:54PM +0000, Conor Dooley wrote:
> On Mon, Nov 13, 2023 at 08:55:00AM +0800, Jisheng Zhang wrote:
> > Add devicetree binding for Sophgo CV1800B SoC reset controller.
> > 
> > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> 
> With the unterminated ifndef that was pointed out by the robots fixed,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> 
> > +/*				0-1	*/
> > +/*				10	*/
> > +/*				13	*/
> > +/*				15	*/
> > +/*				17	*/
> > +/*				36-39	*/
> > +/*				53-57	*/
> > +/*				59-60	*/
> > +/*				63-73	*/
> > +/*				90	*/
> > +/*				94	*/
> > +/*				102-292	*/
> 
> There are quite a lot of gaps here, do you know why that is?

The tail bits are for cpusys, so I guess the SoC designer want to
seperate them with guard? I'm not sure.

> 
> Thanks,
> Conor.



