Return-Path: <devicetree+bounces-10234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2847D0579
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 01:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE0FE281F72
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 23:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C707450DC;
	Thu, 19 Oct 2023 23:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/J+mknH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A49D38F88
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 23:43:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6121C433C7;
	Thu, 19 Oct 2023 23:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697759000;
	bh=fggoXZ8ybZvMC7HbEMQdngXXOLUAC2C2LgXwXWkInjM=;
	h=In-Reply-To:References:Subject:From:To:Date:From;
	b=u/J+mknHI+BtbrJX38Z4d6fYnNfHjcNPstGgoOMEGc4wsOiYCPiGlZG4ZsA+Uy0uG
	 PotHuJy1eBlPUNoFXkNbsssnEzHblf80T7gRPH5OR6KOgGwR9750Mgn4Z6i0sfwhug
	 mJ40NRqtsF3OWuCyoBplZfjPV20MKYc+P2MfjvAIxdrSRdBs/hIf0ZkjyUcHuNA11N
	 X64DIszkTAWLEI0jRYerSyhaT0peo/2USECCiEBtHIbEnnZw7GdazR3g51zKTCPKNM
	 6Y568M1s8hkDORBxL5bt89BofpzLEHv2A8qnc7aom+bIpxfQMotulkQzRdhF3hX4TL
	 JyNYHCsji6ekg==
Message-ID: <bae818c0f067fd7ef9a7c7fdb15a2022.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230916100515.1650336-5-andreas@kemnade.info>
References: <20230916100515.1650336-1-andreas@kemnade.info> <20230916100515.1650336-5-andreas@kemnade.info>
Subject: Re: [PATCH v4 4/5] clk: twl: add clock driver for TWL6032
From: Stephen Boyd <sboyd@kernel.org>
To: andreas@kemnade.info, bcousson@baylibre.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, krzysztof.kozlowski+dt@linaro.org, lee@kernel.org, linux-clk@vger.kernel.org, linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, mturquette@baylibre.com, robh+dt@kernel.org, tony@atomide.com
Date: Thu, 19 Oct 2023 16:43:18 -0700
User-Agent: alot/0.10

Quoting Andreas Kemnade (2023-09-16 03:05:14)
> The TWL6032 has some clock outputs which are controlled like
> fixed-voltage regulators, in some drivers for these chips
> found in the wild, just the regulator api is abused for controlling
> them, so simply use something similar to the regulator functions.
> Due to a lack of hardware available for testing, leave out the
> TWL6030-specific part of those functions.
>=20
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---

Applied to clk-next

