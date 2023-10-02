Return-Path: <devicetree+bounces-5281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A627B5C7E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 23:35:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D11AF1C20841
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 152AA20335;
	Mon,  2 Oct 2023 21:35:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061AF1F5F8
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:35:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7AC9C433C7;
	Mon,  2 Oct 2023 21:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696282548;
	bh=dtMicesKSYyffCRL1N76vJcab9XftRh1uSrvFlXyJlQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H6oQheMcpgg3FqmQTqYroj15/fG8I5vXCMRa88CBhuyBN3mstQ0cxbevUHPrWkg/F
	 CKAohIBN5cRLup6hOZLTxl8QhgsZcfPFhKm3+4V683KHwb0KhbEZB1Er4FG2UWxrc/
	 3/3hQaiaYkmJwXDf95Nmts2yk/jb8tP8wHccTv8XMWqQGsXLAzZu0FhZ6j+cuE8dCY
	 G+kk7NyGmDF770sUphucFI1SFADPh0BXdo0kZJpSN1ZDr4WJk6C/0elwsaBHlvg6oQ
	 HJHC59BhXeXOxzJI2bFY25gngbeZSVqYCpsQFCJsS4AlrkTxWMLrsrGv2k0fw5yYg0
	 dzz5bV0LhI29g==
Date: Mon, 2 Oct 2023 23:35:42 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Loic Poulain <loic.poulain@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: qcom-cci: Document SC7280
 compatible
Message-ID: <ZRs3rlbPAfYJtHJ0@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Loic Poulain <loic.poulain@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20231002-sc7280-cci-v2-0-9333fda4612a@fairphone.com>
 <20231002-sc7280-cci-v2-1-9333fda4612a@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KUY/m73HFlcH/V/c"
Content-Disposition: inline
In-Reply-To: <20231002-sc7280-cci-v2-1-9333fda4612a@fairphone.com>


--KUY/m73HFlcH/V/c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 08:55:30AM +0200, Luca Weiss wrote:
> Document the compatible for the CCI block found on SC7280 SoC.
>=20
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Applied to for-next, thanks!


--KUY/m73HFlcH/V/c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmUbN6oACgkQFA3kzBSg
KbbccRAAnY69h6ee7uMb2v5YFdYnPQWU+bEimrwo3FXAphFPDwoPoenF6H2hsZ3j
R6GnkgpK6cJekEOZNV5lGtT7EuX8qqea15ap0KKyZ7h6ueX9ZvNVfkD0gUcCDE2L
sgYkNS0ekYs4mwr2LnnaFD3jDaMWwQMZXcZiMubYGjX5Qhzwik428eNjeug5w5/G
/dzwmJBVYV27XL8JOePFgkc013qcs4a1E7G7esmKuLVphiUj2M8/qeoBkbaAqPx0
SsbpMpvCzwWBymeXZTU/8LEkpTGfF8wJoqKV3+KUl4CcdTp05NGlwj3MI66PfZa1
kb/KxyKBHkjH5G5l4R+PnGh6T4+NnQ6vzb6p4rviOxtq1J3us5Vlf5YCHrs73KTT
d7fuo1p7AUQRp3say4pGBKHB0cKhZMMMGIZLvMng1uXHYx+j0lVa+rOsyjMzN1Q3
qiu4hixoqdIbZIgWkSzkNbDWdC7DU7SUpEfZcJbUEx+kczDb3pA4UZXK96ERLez4
Yw9l8Gy5ZRPP0SfVl5/GRVC/OQtgYG8y4MBNle6ZIPDSKJGI+z5jPiksv7lW7ekS
MalQ/bNfiAGlvzjeTT+yP4dj0lghU4kCRg2uuf9D5AcPZzBIsGtZJRPr4U4MFaR0
gkmU7G7J3mS//puQm1tAdhnqArIUX/UMUqA6Crn3Re7EettcXX8=
=RDHQ
-----END PGP SIGNATURE-----

--KUY/m73HFlcH/V/c--

