Return-Path: <devicetree+bounces-13650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADCB7DF8CB
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 18:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0F66280FBA
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 17:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1D9D20300;
	Thu,  2 Nov 2023 17:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS8RJb4G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDF01DA2B;
	Thu,  2 Nov 2023 17:36:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7937FC433C7;
	Thu,  2 Nov 2023 17:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698946591;
	bh=E1TTEAOAkqbcpJE5z717MbPqX+Y4ObtvXO4GZpIrpbs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nS8RJb4GMZsLnV33wab1tAIurl5vrN/BaXAd984kYUysKdv9QSUmVI6QvhdB/Qd84
	 T/rMu9CeKSFoCZ41Yi4ed53YPC9RMOAU3wueinCnNiWh3/nLB5Egs4GTEPuLb/hP64
	 Vh10jMfNcgncDKB2M0aEneEm1eE+xBkhJngpNv2ILjvBRV7qWGpYdxHQNhgIQojn0j
	 BTlSPCB6tL5T2++8TKNUxucf8I7PIbwzWGy1L6flKxQ4O7haW1KoVOMAWJ7lYOeaW6
	 ubZaiAuvSzi4Aa4M0bgpZCMjrVSQAJinmbj6xdCSzIEwEZVXV61risvTQNWlPxVNO8
	 zsiiXOAauJMPw==
Date: Thu, 2 Nov 2023 17:36:25 +0000
From: Mark Brown <broonie@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Aishwarya TCV <aishwarya.tcv@arm.com>,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
	kernelci@lists.linux.dev, kernel@collabora.com,
	Guenter Roeck <groeck@chromium.org>,
	Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Shuah Khan <shuah@kernel.org>
Subject: Re: [PATCH v3 3/3] kselftest: Add new test for detecting unprobed
 Devicetree devices
Message-ID: <e72e144a-c617-4a9e-adfb-e25ddabeb4c7@sirena.org.uk>
References: <20230828211424.2964562-1-nfraprado@collabora.com>
 <20230828211424.2964562-4-nfraprado@collabora.com>
 <e90cb52f-d55b-d3ba-3933-6cc7b43fcfbc@arm.com>
 <CA+G9fYsbq28w7m-sf6LhMscXHdPs0cGXU7kK6YzjKdUFKuQ+6A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PzOuAaApHfvNPDUY"
Content-Disposition: inline
In-Reply-To: <CA+G9fYsbq28w7m-sf6LhMscXHdPs0cGXU7kK6YzjKdUFKuQ+6A@mail.gmail.com>
X-Cookie: A is for Apple.


--PzOuAaApHfvNPDUY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 02, 2023 at 07:15:58PM +0530, Naresh Kamboju wrote:
> On Thu, 2 Nov 2023 at 17:41, Aishwarya TCV <aishwarya.tcv@arm.com> wrote:

> > https://storage.kernelci.org/mainline/master/v6.6-9152-gdeefd5024f07/arm64/defconfig%2Bkselftest/gcc-10/logs/kselftest.log

...

> May be due to, A loop of symlinks that are pointing to self / same files ?

Right, it does look like something bad is going on with symlinks:

> > '/tmp/kci/linux/tools/testing/selftests/../../../build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/build/source/tools/testing/selftests/powerpc/vphn/vphn.c'

> Please build by using tuxmake and validate builds are working.

Note that tuxmake does an in tree build of kselftest:

  make --silent --keep-going --jobs=8 O=/home/tuxbuild/.cache/tuxmake/builds/1/build INSTALL_PATH=/home/tuxbuild/.cache/tuxmake/builds/1/build/kselftest_install ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_COMPAT=arm-linux-gnueabihf- 'CC=sccache aarch64-linux-gnu-gcc' 'HOSTCC=sccache gcc' kselftest-install

and does it's own tarball build too, whereas kernelci does an out of
tree build and uses kselftest-gen_tar:

  make KBUILD_BUILD_USER=KernelCI FORMAT=.xz ARCH=arm64 HOSTCC=gcc CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_COMPAT=arm-linux-gnueabihf- CC="ccache aarch64-linux-gnu-gcc" O=/tmp/kci/linux/build -C/tmp/kci/linux -j10 kselftest-gen_tar

and that the error is in the dt-extract-compatibles program which is
part of the kernel (well, imported into the kernel from dtc upstream):

  File "/tmp/kci/linux/tools/testing/selftests/../../../scripts/dtc/dt-extract-compatibles", line 107, in <module>
    compat_ignore_list.extend(parse_compatibles_to_ignore(f))

This all suggests that something to do with how the build is set up is
resulting in the source symlink that gets created for out of tree builds
blowing up, I guess it's not specifically the DT stuff that's blowing it
up but rather that it's tripping over an existing bug.  Really does look
like a legitimate bug though, the source link is set up by the in tree
kernel build infrastructure.

I did poke a bit at reproducing outside of the KernelCI scripts but
didn't manage to yet.

--PzOuAaApHfvNPDUY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmVD3hgACgkQJNaLcl1U
h9CV1Af/XvDWEqs0dEvo3YSlq7hdCU87XwG4tii0WazqGAe4BTjhDtd9QMjkuiHa
jbGSp4XI1Ip54USgUpM5MkQSXo2VAz+gAVSnK8Xv6OGHEbSS7ECve7ZUTBnyE7ld
F6o2OIR3omBOfmdI8dXZbfemhcsBOMGzos8C1u/AmffeRtn7l75zyARxo2rsO5Dy
2Ljz9xf1g3U2hQySTGRRYpF4ZmsQcevnh3lFoh1mwV6rr2E6+05khAIbpTvGUDhL
o0d8MBGvot0pxqdlciZi3LX1Hd6UPe66pHnpf8HDvi1OgM6QTrngIbuCM2tdrVp5
1QLv1gI2QfDJgR47QoV2AzS24XcHcw==
=JKT+
-----END PGP SIGNATURE-----

--PzOuAaApHfvNPDUY--

