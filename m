Return-Path: <devicetree+bounces-26352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D05816365
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 00:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E630B20D14
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 23:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120C54AF76;
	Sun, 17 Dec 2023 23:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd2LJNB1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E063C4A9B5;
	Sun, 17 Dec 2023 23:28:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C64CC433C7;
	Sun, 17 Dec 2023 23:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702855725;
	bh=Y5vmisnpCfwM3nq3Ldl/MvKxSvzZbmBvrC35k6aJhNw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=dd2LJNB1q3Ph9W19m6XEmZikvSbeehOR0NGehBGDr+jPoojP/mPBrszM5C7luBXeI
	 umhzE0oDsLKICbQjP38sWSl8VkeB7zPVXp+YLtEY2zNenSh484bxbwuM8JZUzqRi1+
	 +PFhvi4U64qGMMJbfkxOXZHIqGoaV28vT7hXZG9vSn5Fc8XSqwKVTB4BDNvWdsFrrf
	 y77Ha5M62tfmcUiDESCL23VCVINYYHRucwoOzMJ/LjHRnQZotbdIQf6Rw32UPTmylp
	 bfC3bTHpL0JqpaG/tXEQA68I/SaME4viHCM2LQzNbWZnKLkDYaOYcylAsgv6SvPUTO
	 t4JGwuqGiTqdQ==
Message-ID: <9df67a41ede67fc78b6f014e7935c8c3.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231113221949.111964-2-marek.vasut+renesas@mailbox.org>
References: <20231113221949.111964-1-marek.vasut+renesas@mailbox.org> <20231113221949.111964-2-marek.vasut+renesas@mailbox.org>
Subject: Re: [PATCH v3 2/4] clk: rs9: Limit check to vendor ID in VID register
From: Stephen Boyd <sboyd@kernel.org>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, Biju Das <biju.das.jz@bp.renesas.com>, Alexander Stein <alexander.stein@ew.tq-group.com>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
To: Marek Vasut <marek.vasut+renesas@mailbox.org>, linux-clk@vger.kernel.org
Date: Sun, 17 Dec 2023 15:28:42 -0800
User-Agent: alot/0.10

Quoting Marek Vasut (2023-11-13 14:18:52)
> Extract only vendor ID from VID register, the top 4 bits are
> revision ID which are not useful for the vendor ID check.
>=20
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---

Applied to clk-next

