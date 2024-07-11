Return-Path: <devicetree+bounces-84913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 208DF92E38E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B460F281409
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 09:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7882156C78;
	Thu, 11 Jul 2024 09:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="VH2EbyHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA21F155726
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720690735; cv=none; b=FHucyc9KlPRN61fAaiWBTKI8iTettXTF0PERCLSGYMBkYndLc3ShnV2xdI5nfaQ8WquCbFoO3fMwYcLtu3oVElqa5ep24q+5vcHCPNa4UBp1GUsGjm8JBF9V3ylmZ1t61TzgizQQ2FFjnEBmy1+9GtzwRtEaeRCdbpc3/rNeHeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720690735; c=relaxed/simple;
	bh=pikkcTYggb8u6JWSfeF94wMpQIB37+wYenmi0I2i+os=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lO+GN0VxgLcy7bkSAl/y9CkjWg824JwLfrmPDnM5/GUFJYpg3PVaJKNWGUdflTpwSCVrO720D5O+XHBVYRWiflrZHNle3R23PB8XMFWtM1jJLS5Cq8WqsJiUVFscZ1o0RvTIUy0BH7nSY4csxktRB9Ybdnilx+8btTi9NwgzCSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=VH2EbyHO; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=pikk
	cTYggb8u6JWSfeF94wMpQIB37+wYenmi0I2i+os=; b=VH2EbyHOCWZAK9wNKOzj
	pC+jtE6ioTFfQrePdbqSobn7QFaFyhJOMcQ8KGuS/+RUts+ZgcpN/whp9ok1BU81
	A8CG39dWpFLp8SoIEd/dqgyARndAjNVBUwEmGiZolNoJrdFKE3S4KFYo8vEXy9UI
	qKsb7E3WdidxU6jktaAs/C1Szj/KpDAOjlT3Y6ClOu4//vx0G8+UpYTq5nRQ8Eoh
	N17eYOLSfZiv8tsElbamXAshrup0RDxgw+zm+I8VIswGxMWIbjfUyebe3WkGmCEf
	jJoP7BDXBREHxQWRUTaNgae4R4zH1r+n7J+CTXsgzunlojetYt+49stvtqD5Iran
	3A==
Received: (qmail 797100 invoked from network); 11 Jul 2024 11:38:51 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Jul 2024 11:38:51 +0200
X-UD-Smtp-Session: l3s3148p1@pLXRh/UcVt4gAwDPXwmZAIsFIv4n+Dpm
Date: Thu, 11 Jul 2024 11:38:51 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Loic Poulain <loic.poulain@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: i2c: qcom-cci: Document sm8550
 compatible
Message-ID: <Zo-oK1w3VRNP_Q_b@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Loic Poulain <loic.poulain@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org
References: <20240612215835.1149199-1-vladimir.zapolskiy@linaro.org>
 <20240612215835.1149199-2-vladimir.zapolskiy@linaro.org>
 <glda7ssote475kihs5c2wuff6k4slklzjb532uxiatxi5mdlfr@aiywubn3kert>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JYhQc9Xxk3rR1lI/"
Content-Disposition: inline
In-Reply-To: <glda7ssote475kihs5c2wuff6k4slklzjb532uxiatxi5mdlfr@aiywubn3kert>


--JYhQc9Xxk3rR1lI/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2024 at 10:36:43PM -0500, Bjorn Andersson wrote:
> On Thu, Jun 13, 2024 at 12:58:32AM GMT, Vladimir Zapolskiy wrote:
> > Add sm8550 compatible consistent with CAMSS CCI interfaces, the list of
> > clocks is reduced by removing "slow_ahb_src" clock, which is derived
> > from "cpas_ahb" clock.
> >=20
> > Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>=20
> Andi, could you please take the two binding patches from this series
> (patch 1 and 2) through your tree, so that I can take the dts changes
> through the Qualcomm DeviceTree tree?

Andi, ping for patches 1+2


--JYhQc9Xxk3rR1lI/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmaPqCsACgkQFA3kzBSg
KbZgxw//W7LDLHU2p3IAzUD4BKzmCs0uazlECPHmQo5yCqXM7VNO5+PO+gOkBCKT
6geZFNsIU98jzR3E5rRCkibjOMNW2V4bzYxezP8cYPUtRuHaG2hboBhYCwmoHjC2
SrNGyxEGiM3wFlg0tTj+JHpxIYUN+UUYgknzRO6jk93Hjd35AGSeNfCgJzXvMchx
yhhV/KRSaz1JRvVt4Vkq3ik65eANQUARMTn99XhvYMlrXGU+kupZZ1sfX2C7Qhr6
9D7zwDYV55Hj4Dnh+nT4p8VSjdmjCd5fMigEqiHbLhZ8xqEh5H/hh0w39M6s9rsP
9HGox2auembLWwLYvIM+WXSlPFHx0hovT2CtlP+GB5JPKrGD3L0Lr+TpZiImk/f7
CSP6QfxBbaibXgqUR38Bpw0dRZl9N5QaDd8TxVATjO1OEjkstwh2MQoA9eJMb+Oe
+LZreor5De5JunxM22uSX8SFrzU6/t3BdBKS+mKqf0DGERlChlGrROzfmBr5w4eQ
By6JXBDdOsiKtsAzZM3I3z+1pwdfdSPqYzQa0LgT1c2GOXTWNgA/bxm754fRpMB1
SzzK1/v2UhZcDfH5plK1LBCOLBbzP66TXxj+8/aFUhBEKw4XIizntAAuzFulJytA
yJV71ymHQSc8gkndHOiLbskCb0jeluH4Ily4wkP3zJOkqnL9HCw=
=WBow
-----END PGP SIGNATURE-----

--JYhQc9Xxk3rR1lI/--

