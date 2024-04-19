Return-Path: <devicetree+bounces-60965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D840A8AB1B1
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 17:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F8D51F215C1
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6131312F5A4;
	Fri, 19 Apr 2024 15:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq7MJf0A"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D09812F583
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713540184; cv=none; b=NpwLl6EZwjav0/Untyp56BabneBSQ5MM75ozZG9Z4qNJgMK1N8N6g4UT+Y7P7X7jtHT9EV9g7tOB/AuZAQ55EKRzm9tuiuqNCb5MBXWgaY0FDRO5UqIiaeGLwrQUyJIoyEdhWksiqSuKANXjaQeEj5Je6pqQE5sbhnPNW27Ic+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713540184; c=relaxed/simple;
	bh=WgpaSd8gGDM2VtZUXLsdlXMBesxAbl08DIZs+EshcWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QajCSQLktNhPsfArfkfQOenoJUTi5vSLhSg5pHjIxCQ/+EI4MW9EdyhZfPf7mQgNgJozYfKfD3OuoGHq0SWO4ZYTO7KlGxtkMHcEfEjNnbv5P9LQQvFU18vBL59mpyWbeDJgAwVrTSBC/1V++U0ugV4C2sq90sgLLAVDdZsjymY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq7MJf0A; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23AD5C072AA;
	Fri, 19 Apr 2024 15:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713540183;
	bh=WgpaSd8gGDM2VtZUXLsdlXMBesxAbl08DIZs+EshcWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bq7MJf0ANxxVvko+MORQK7tkExjxY8t0FWI5XkvrXHcW6V+mywxMoakepDADp5ZGP
	 wzFLOrjI2yZUukXlpppIdA8V3ZIxHTfX3anctFdKP+FtY4RKwQ6fVUC6Ajki9tRUEi
	 16UR77KQtNzq8EWPZ1NaaCghjMq0JheCv7Q9Es+Ool8LYeMP8GxZRANDBD8S148g7s
	 nwGZLcTr1eycU21O1cCuM9XqOMdZW0hGdA5dz/c8vdw3K30zuwVKpXXx1rz1OJFpO9
	 BQXrfRZoknTwZlM8x8AYRfzT19g4De/QhALHhRLujMZDHbtq74uMxMT8OIOYoBifJz
	 RxbK0dTlFobrQ==
Date: Fri, 19 Apr 2024 16:22:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 3/6] riscv: Add Zawrs support for spinlocks
Message-ID: <20240419-irate-dispute-2714c42f3a63@spud>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-11-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="28c4hpi9ivVxCwkB"
Content-Disposition: inline
In-Reply-To: <20240419135321.70781-11-ajones@ventanamicro.com>


--28c4hpi9ivVxCwkB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 19, 2024 at 03:53:25PM +0200, Andrew Jones wrote:

> +config RISCV_ISA_ZAWRS
> +	bool "Zawrs extension support for more efficient busy waiting"
> +	depends on RISCV_ALTERNATIVE
> +	default y
> +	help
> +	  The Zawrs extension defines instructions to be used in polling loops
> +	  which allow a hart to enter a low-power state or to trap to the
> +	  hypervisor while waiting on a store to a memory location. Enable the
> +	  use of these instructions in the kernel when the Zawrs extension is
> +	  detected at boot.

Ignoring the rest of the patch, and focusing on the bit relevant to our
other conversation, I think this description satisfies what I was trying
to do with the other options in terms of being clear about what exactly
it does.

--28c4hpi9ivVxCwkB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiKMSwAKCRB4tDGHoIJi
0iHgAP0bVRo/k8VGTCVwXeHhxWQfgjD463Unkv1KkQBnmsakhQD/Tkvq1OZjDrZp
rJPhWINZM3MPa7ALj6yQ2JG6CVw6ngQ=
=5nYv
-----END PGP SIGNATURE-----

--28c4hpi9ivVxCwkB--

