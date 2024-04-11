Return-Path: <devicetree+bounces-58390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A06378A1B13
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 19:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 427241F2805B
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 17:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B637F205E17;
	Thu, 11 Apr 2024 15:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoLCpgu3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92666205E11
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 15:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712850267; cv=none; b=VXtqNh5icbbJirVFFxu4/tDWV3uwR0kLqtW4dZTipKKlBMYLFcuhjo0XXPMTuvdCPbmYUrSvB9Iymn/7Ds7F8pdvpGWJ2SX595UwukY4mJZ2nvtB9ThAiC3HSP/dx1zXkRQTBTacMUZl0r3Cp6Hfl1nxcKxWG8Yh0YWS7x/WnnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712850267; c=relaxed/simple;
	bh=Q7T05n/bRmt7K8PzR4/KkY/dtzAT4bPc+jlYO77+dSc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jpyj0LAv84/0LcQCb+b8/eUOAweC2rT1HQUh6jJ316mZBWEAESiWiu990Bbnce8QCz6LYn2H7V7uW6i0Qq3Cv5utIkOEWT5o5QJWnPn7DLm/SUUFClqW4MbhQup39Iz/j/Rfw9U96T7rcf+tWyrnXUpgAwJwt/u/JKv2tICLkVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoLCpgu3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A757CC072AA;
	Thu, 11 Apr 2024 15:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712850267;
	bh=Q7T05n/bRmt7K8PzR4/KkY/dtzAT4bPc+jlYO77+dSc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BoLCpgu34vWWN0gwhn3gXmAkigqMG1pzn1TMT65KRHClZZcecpuxcdzdmcjxUT1tn
	 vy+UmY5WRQFWVDxfX4Q20mN+5U01rbiqdm6l/1JRPhNbfInFcu/a/KWq8d3WPb96wM
	 Uu2EKlSiACDX5w+GL+/jp2BmCPfabCXhBrG9uMJYdSk/HBIim9iAtGvTCP+KeR3QqU
	 toVllHDIQ6Ce35NZEXy01lFdrm6ZNesuwQT35ve1N6pBJzN+QCqDHJuiq9jrFy4BD+
	 ApUzYvT19AgAot2RlF5Yxrv6hoW+X1NLYdOkpId0SM3nyEBcC4SclYjowrWgD396Sa
	 RvNNSBxgZx09A==
Date: Thu, 11 Apr 2024 16:44:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Trilok Soni <quic_tsoni@quicinc.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240411-platinum-phonics-864bb08dab8d@spud>
References: <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>
 <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>
 <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org>
 <Zfm5m2zp4A06ZunW@bogus>
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
 <afc07c5d-640b-4eaf-94a2-086a6d43d712@linaro.org>
 <ae74fd28-9658-4461-9b4d-e31443e7d377@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7OViSEgeCljCTk7U"
Content-Disposition: inline
In-Reply-To: <ae74fd28-9658-4461-9b4d-e31443e7d377@quicinc.com>


--7OViSEgeCljCTk7U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 10, 2024 at 10:24:02AM -0700, Nikunj Kela wrote:
>=20
> On 4/10/2024 10:13 AM, Krzysztof Kozlowski wrote:
> > On 10/04/2024 18:55, Nikunj Kela wrote:
> > > If there are no more questions on this and everyone is on the same pa=
ge,
> > > I would like to conclude this thread in favor of using a new DT prope=
rty
> > > 'qcom,firmware-managed-resources'.
> > Just to recap my earlier statement, because I am not sure if I got the
> > answer (if answer was provided, then I don't forgot... sorry):
> >=20
> > This is a new hardware, so you have a new compatible, therefore any
> > additional property is not needed.
> This is not a new HW, this is the same HW with different FW and interface=
 to
> FW is different too. As you can see earlier discussion on this thread, new
> compatible was ruled out since it is the same HW IP.

Can you link me to the post that ruled it out please?



--7OViSEgeCljCTk7U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZhgFVgAKCRB4tDGHoIJi
0uSaAQDYTzLj06Z0nIPypKW6J/TdYLZ7ZpBD9MwcZj+znORTFAEAtd+llB8LRraD
CJNJZwlwd6yw2qBqdBoQmVmRkUB2DAk=
=C3kM
-----END PGP SIGNATURE-----

--7OViSEgeCljCTk7U--

