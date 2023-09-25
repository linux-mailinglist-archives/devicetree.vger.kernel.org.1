Return-Path: <devicetree+bounces-3222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2EE7ADB7F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 17:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CB8511C203DF
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC621208B6;
	Mon, 25 Sep 2023 15:33:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985491C283
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 15:33:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 605D0C433C8;
	Mon, 25 Sep 2023 15:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695656000;
	bh=LlQZWb94aVblB834U6IwUKmjry1skklBbOsT2TyvxAA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RMqq13vXMBhyLOmi1LtSzfzLW0O7BdcmEjHKNmYJ5V7O+I4jDqD2JmxjirQ4e+3gO
	 2B37U9le9l/3NV2eNlAdKm73O5EAtTRwfHA7Gnlmds3uLutLsjSoeUoOezVv4BSibY
	 +7X9yzr45tNYY8BOWkEwnOXsQk8DAdanHYl7dgjIDmZZnc+rteFd7CAoSuQw9KQbWQ
	 7ElJgyU1paGTIZEXxIRLDW6z7tbXlEJYQpuIyNc5VT4sZKaJJ6KxJeqTyrqgqDbaob
	 DM2YswOxsEloaqRHbvO8n9O4beizW9/FyOIRkeXWSDctfTUFgcP878tilySmEkmXC1
	 hIV7v1AE0uMDQ==
Date: Mon, 25 Sep 2023 16:33:15 +0100
From: Conor Dooley <conor@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shuah Khan <shuah@kernel.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	devicetree@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 0/9] KVM RISC-V Conditional Operations
Message-ID: <20230925-gorged-boxer-3804735e2d18@spud>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HnRIDq6Cwufm8SDg"
Content-Disposition: inline
In-Reply-To: <20230925133859.1735879-1-apatel@ventanamicro.com>


--HnRIDq6Cwufm8SDg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 07:08:50PM +0530, Anup Patel wrote:
> This series extends KVM RISC-V to allow Guest/VM discover and use
> conditional operations related ISA extensions (namely XVentanaCondOps
> and Zicond).
>=20
> To try these patches, use KVMTOOL from riscv_zbx_zicntr_smstateen_condops=
_v1
> branch at: https://github.com/avpatel/kvmtool.git
>=20
> These patches are based upon the latest riscv_kvm_queue and can also be
> found in the riscv_kvm_condops_v2 branch at:
> https://github.com/avpatel/linux.git
>=20
> Changes since v1:
>  - Rebased the series on riscv_kvm_queue
>  - Split PATCH1 and PATCH2 of v1 series into two patches
>  - Added separate test configs for XVentanaCondOps and Zicond in PATCH7
>    of v1 series.
>=20
> Anup Patel (9):
>   dt-bindings: riscv: Add XVentanaCondOps extension entry
>   RISC-V: Detect XVentanaCondOps from ISA string
>   dt-bindings: riscv: Add Zicond extension entry
>   RISC-V: Detect Zicond from ISA string

For these 4:
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for splitting it out,
Conor.

--HnRIDq6Cwufm8SDg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRGoOwAKCRB4tDGHoIJi
0r9rAP4nMvXYlok1V/XcbaH47Y3D800gwvZ9PgMg5igQpnlnlAEAqMfjnm+TcNSW
Io17cdSsNsEy4YSDZCN+vp62z3laxQM=
=ppj2
-----END PGP SIGNATURE-----

--HnRIDq6Cwufm8SDg--

