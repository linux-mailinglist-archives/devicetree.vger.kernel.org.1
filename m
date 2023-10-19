Return-Path: <devicetree+bounces-9845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8D97CECAB
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 02:16:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C779EB20D72
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 00:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389ED18D;
	Thu, 19 Oct 2023 00:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8izOVvg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B86A17E
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 00:16:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73910C433C7;
	Thu, 19 Oct 2023 00:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697674600;
	bh=6uPwkZ4yiG6o3MMwW++45pNUHDSPtK16RZV1nf9Kw6w=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=f8izOVvgCNr3OCTnTZBVaFgBngHWPPx/mayolA5yr1fNK+U0NeZnCH63olaVpZGGC
	 NfJ9vsf3uh9bJK3bafY3C7e/J/GQcot0sgkqx7Rmc8TdKzGpBSem4ZEXcCKofmgz4I
	 X44gX+Z3yI1l5CGVHHmVwtRAPoZZ2Ottgaf6P82ir6k0eCzDpe2JUcXQXakXz2hTSm
	 GpvDSGHF5cl9AiuFxtArZGfoeINVdu3sYMBYiIvPyhiJmvZOkb2E5BXlTjiQrzFkH8
	 b9ZnHMLKHf4QeBiAWXy1HqKZ9I7NuNaWr5ZoCxh7oHkLsRvFlEsRZ1Wzfy7qILT2xm
	 CjQi+eAGTOKqg==
Message-ID: <c3dfeecf5cde513cf675b2f1a382f7a4.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <76f3bc23-8677-42bd-a3a5-43b17cbe552e@linaro.org>
References: <20230913-gpll_cleanup-v2-0-c8ceb1a37680@quicinc.com> <20230913-gpll_cleanup-v2-1-c8ceb1a37680@quicinc.com> <76f3bc23-8677-42bd-a3a5-43b17cbe552e@linaro.org>
Subject: Re: [PATCH v2 01/11] clk: qcom: ipq8074: drop the CLK_SET_RATE_PARENT flag from PLL clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, stable@vger.kernel.org
To: Andy Gross <agross@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Devi Priya <quic_devipriy@quicinc.com>, Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>, Jassi Brar <jassisinghbrar@gmail.com>, Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Sricharan Ramabadhran <quic_srichara@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>
Date: Wed, 18 Oct 2023 17:16:38 -0700
User-Agent: alot/0.10

Quoting Konrad Dybcio (2023-09-15 05:19:56)
> On 14.09.2023 08:59, Kathiravan Thirumoorthy wrote:
> > GPLL, NSS crypto PLL clock rates are fixed and shouldn't be scaled based
> > on the request from dependent clocks. Doing so will result in the
> > unexpected behaviour. So drop the CLK_SET_RATE_PARENT flag from the PLL
> > clocks.
> >=20
> > Cc: stable@vger.kernel.org
> > Fixes: b8e7e519625f ("clk: qcom: ipq8074: add remaining PLL=E2=80=99s")
> > Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> > ---
> Stephen, do you think there should be some sort of error
> or at least warning thrown when SET_RATE_PARENT is used with
> RO ops?
>=20

Sure? How would that be implemented?

