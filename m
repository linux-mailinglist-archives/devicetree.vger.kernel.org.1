Return-Path: <devicetree+bounces-10634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDA97D24F2
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 19:31:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F33872813F4
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC9610784;
	Sun, 22 Oct 2023 17:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzAt1Vab"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF42223C9
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 17:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82B6BC433C8;
	Sun, 22 Oct 2023 17:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697995868;
	bh=xIa81NLUBml5MoS2Eb3kkSqN1ZIghfNeP9hiSlzUH1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hzAt1VabW6duveqB+z3dICSEWrqt9VsVnC0iGerJXDVutrrQ3RPrvRAb17u/S4miQ
	 AR0wwKAyW+F3mbb1M9COYxgh3b1h2pLza2D9VUc3LpW2edvGjMsw1F0fgwOnU4YExb
	 vQ8GKVmWOCcKGtGECvOb68yz+p+8HjHzXOdURqwjuFYnrfSUIUKqDs0e2VsDJ5XyAX
	 IElUICMjwaB3hrzS9SfdIV7hqHuR3Q1PbDXdfU2BIpKZYFomxCV07vgn7SRdAYxIIC
	 qi1tm0ffkcJ4BLKpKti+UqrL8srAGFS6d0kZ64b+sGuEih/DXeVP02rGaIrSF4KY1P
	 jC+1JkrxllYng==
Date: Sun, 22 Oct 2023 18:31:03 +0100
From: Conor Dooley <conor@kernel.org>
To: lukas walter <lukas.walter@aceart.de>
Cc: agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org, robh+dt@kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5
 (2016)
Message-ID: <20231022-sequester-atypical-325eadda7a15@spud>
References: <20231022-arousal-glowing-f72c8f2e44fa@spud>
 <fc5234cd33b78369f792479795abd02710dfcdbf.camel@aceart.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RN7U2wqAnTB6dxtW"
Content-Disposition: inline
In-Reply-To: <fc5234cd33b78369f792479795abd02710dfcdbf.camel@aceart.de>


--RN7U2wqAnTB6dxtW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 22, 2023 at 01:40:41PM +0200, lukas walter wrote:
> >> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> >How come this v1 has an ack?
>=20
> This is supposed to be a v2, but I had problems sending it correctly,
> sorry
> https://patchwork.kernel.org/project/linux-arm-msm/patch/20230916134147.1=
63764-1-lukas.walter@aceart.de/

The joys of email, ehh

--RN7U2wqAnTB6dxtW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTVcVwAKCRB4tDGHoIJi
0jJvAP4+ghdIssWpblmMi9YkVOa7s1TtwnvzXBODtTruht2GyQD/ewbu+P/6wDqx
0A0ZZrh0Z3J/IfGnZcwNsjK3VxxvCgI=
=XBcM
-----END PGP SIGNATURE-----

--RN7U2wqAnTB6dxtW--

