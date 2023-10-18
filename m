Return-Path: <devicetree+bounces-9841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9BA7CEC75
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 01:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7200281202
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 23:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25CEF46680;
	Wed, 18 Oct 2023 23:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfDMnrbT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072193DFE5
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:59:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DC09C433C7;
	Wed, 18 Oct 2023 23:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697673587;
	bh=FqB0xX+9WJ6jUZfPZjzCTE6Y5V5SPa1rNDB782OU+Jg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=DfDMnrbTJRmdHYN3n1P8IIn05wCjMm3Cz+r8dvc9ix/w53TnqaM36PRYr5S7H+y+l
	 HSi/Zd2ng88iPWIjqgu58KNyoHKJdy8VI52I6rTbIAr1CN59cyb7JKv70Q9RoVIy0Z
	 pMGmIzQAxMg9s+eSyphYlrYVPEZgDmO3wAHBszEkYNEc9m1Ihb4P69jb3inEj8l0gl
	 7ckt4EVwd6cSqO9dCzWJGLMW7UN1I9KLjmF2vXcWknVJ5GdVR2p48nSC4+WrDNaeiw
	 dVeguFvToow349Rf9sCv8dACEENpuBVFcr7UTIYtSb45ABZdRR8en4EdKqgl9FOc6H
	 X4bLkzzIqwa2Q==
Message-ID: <d7772d43a9800a6e44a913f33fba163e.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <9fe546088cb150cb42237a6f6a3d68f1c2c87987.1697600121.git.quic_varada@quicinc.com>
References: <cover.1697600121.git.quic_varada@quicinc.com> <9fe546088cb150cb42237a6f6a3d68f1c2c87987.1697600121.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v3 2/8] clk: qcom: apss-ipq-pll: Use stromer plus ops for stromer plus pll
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, ilia.lin@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, mturquette@baylibre.com, quic_kathirav@quicinc.com, rafael@kernel.org, robh+dt@kernel.org, viresh.kumar@linaro.org
Date: Wed, 18 Oct 2023 16:59:45 -0700
User-Agent: alot/0.10

Quoting Varadarajan Narayanan (2023-10-18 02:29:15)
> The set rate and determine rate operations are different between
> Stromer and Stromer Plus PLLs. Hence, use stromer plus ops for
> ipq_pll_stromer_plus.

What goes wrong if we don't have this patch? Please add that detail to
the commit text.

>=20
> Fixes: c7ef7fbb1ccf ("clk: qcom: apss-ipq-pll: add support for IPQ5332")
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

