Return-Path: <devicetree+bounces-12013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D1F7D770A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:47:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A142E280FAB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEC2D341AE;
	Wed, 25 Oct 2023 21:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlhcRMmb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D383F30FAE
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:47:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46A7DC433C7;
	Wed, 25 Oct 2023 21:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698270436;
	bh=/ssGNvI3QO9S6JDuh+JSb/c1bKl9Xnjh7wD3tiPxIfs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=MlhcRMmbtykHIDQi0aDqUZsjwUdqTZfyA9ISZJMLgAjAFFiV/KZNZAGeQLZhvvCiM
	 5dZgdIODPZ26Ct7w60rz1jJyacL4bVvvqZdKTMIJbj7tduWs6w1tuyjwtvvajKK0Y8
	 4F2uFM+lRl0ldY52WP50hWJqRH3w2eCEpTizz2n86fhsG8uviKm4HNN3U1eyX/X8Oo
	 LMXXmgUIM7Swia5UNLBd4/tn/S0lY07822+mzQPOHh3hEWdkJXC/pr2lW+11QADQO6
	 Wv/ofMhpqip+QOSD3zo6PmwyGtxXgewic8gxrkhfmDI3Hze8FDLCmhRY9DOPK/+Yfu
	 NQDpZEsHQnHMA==
Message-ID: <5f157c65b07eee357f7682be0945d638.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <be119e71-0456-4806-8c0a-e77732553f70@linaro.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org> <20231025-topic-sm8650-upstream-clocks-v1-10-c89b59594caf@linaro.org> <467bc514-1cff-4bc5-a553-fd1ef0886ee5@linaro.org> <be119e71-0456-4806-8c0a-e77732553f70@linaro.org>
Subject: Re: [PATCH 10/10] clk: qcom: rpmh: add clocks for SM8650
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Date: Wed, 25 Oct 2023 14:47:13 -0700
User-Agent: alot/0.10

Quoting Neil Armstrong (2023-10-25 05:00:54)
> On 25/10/2023 10:47, Konrad Dybcio wrote:
> >=20
> >=20
> > On 10/25/23 09:32, Neil Armstrong wrote:
> >> Add RPMH Clocks for the SM8650 platform.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> ---
> > [...]
> >=20
> >> +static struct clk_hw *sm8650_rpmh_clocks[] =3D {
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_CXO_CLK]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &clk_rpmh_bi_tcxo_div2.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_CXO_CLK_A]=C2=A0=C2=A0=C2=A0 =3D &clk_rpmh_b=
i_tcxo_div2_ao.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_LN_BB_CLK1]=C2=A0=C2=A0=C2=A0 =3D &clk_rpmh_=
clk6_a2.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_LN_BB_CLK1_A]=C2=A0=C2=A0=C2=A0 =3D &clk_rpm=
h_clk6_a2_ao.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_LN_BB_CLK2]=C2=A0=C2=A0=C2=A0 =3D &clk_rpmh_=
clk7_a2.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_LN_BB_CLK2_A]=C2=A0=C2=A0=C2=A0 =3D &clk_rpm=
h_clk7_a2_ao.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_LN_BB_CLK3]=C2=A0=C2=A0=C2=A0 =3D &clk_rpmh_=
clk8_a2.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_LN_BB_CLK3_A]=C2=A0=C2=A0=C2=A0 =3D &clk_rpm=
h_clk8_a2_ao.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_RF_CLK1]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &clk_rpmh_clk1_a1.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_RF_CLK1_A]=C2=A0=C2=A0=C2=A0 =3D &clk_rpmh_c=
lk1_a1_ao.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_RF_CLK2]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &clk_rpmh_clk2_a1.hw,
> >> +=C2=A0=C2=A0=C2=A0 [RPMH_RF_CLK2_A]=C2=A0=C2=A0=C2=A0 =3D &clk_rpmh_c=
lk2_a1_ao.hw,
> >> +=C2=A0=C2=A0=C2=A0 /* missing RPMh resource address for clka3 */
> > So, the downstream driver suggested it's there but CMD-DB disagrees?
> >=20
> > Can we get a confirmation whether it should be there?
>=20
> There's a clka3 on the PMK8550, but it's undeclared in CMD-DB since
> unused/unconnected on the MTP & QRD platforms.

Can you add that comment here so we know why the resource is missing and
not just that it is missing?

