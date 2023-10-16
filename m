Return-Path: <devicetree+bounces-8925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E00C87CAA54
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:48:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6EF42B20EC8
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A386028692;
	Mon, 16 Oct 2023 13:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dweae+Ln"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8687727EFF
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1EB8C433C7;
	Mon, 16 Oct 2023 13:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697464104;
	bh=mp6Ing2YjlDv1+wriMn3sVvWUPfFi63z7zsEQ3CoIrw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dweae+LnGibLZesbVnqLLBumRbUyfz206BCR1yQZqc8RdVV21FzYK8n7v+ymThCF2
	 I/klQuyMWVsm4BRTvm4rwgXbI3/7Cbly2L/gz2MURSY0akDWuDgNIQbykAsa1wigZZ
	 LHJOYY5xOdwK2OKSzpTVT1x9nOMwiUHTdGa5qY9tRPgj3HWxx4Hiu/tXFCJJCU17pG
	 r9wbcDpAm4VKxKlxT5WQmM3N3JwnMcrmmxFW7yYSatTSHJx+8sHSfgCdsKTPzp+P2z
	 d5zmoSHwBpItr1h3emi6v6s+5B2h6e+Q+5PSP8i4FGD2fyYnpRlWSHerskiVQ5MyHE
	 QMGNBy2Z6kYjA==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1qsNsp-0004Di-2T;
	Mon, 16 Oct 2023 15:43:48 +0200
Date: Mon, 16 Oct 2023 15:43:47 +0200
From: Johan Hovold <johan@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: gnss: u-blox: add "reset-gpios"
 binding
Message-ID: <ZS0-E_h4I_g7zVIm@hovoldconsulting.com>
References: <20230921133202.5828-1-wsa+renesas@sang-engineering.com>
 <20230921133202.5828-3-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921133202.5828-3-wsa+renesas@sang-engineering.com>

On Thu, Sep 21, 2023 at 03:32:00PM +0200, Wolfram Sang wrote:
> Needed to enable this chip on a Renesas KingFisher board.

What is needed? Please make the commit message self-contained.

And what GNSS chip/module is this? This should also be included in the
commit message.

Do you have a link to a datasheet?

None of the u-blox modules I've seen have a reset line so I'd like to
where this came from and how it is intended to be used.

> Description
> copied over from the Mediatek driver which already supports it.

The mediatek driver does not support managing a reset line, but the
binding includes a description of this pin for completeness. Also you
don't seem include any description of the property below (which is fine)
so perhaps you can just drop this sentence.

Johan

