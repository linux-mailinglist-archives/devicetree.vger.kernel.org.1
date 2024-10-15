Return-Path: <devicetree+bounces-111353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C03299E3C4
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 12:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC56F1F230A5
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 10:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FEEA1E7672;
	Tue, 15 Oct 2024 10:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUDrhd7i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F91F1E7640;
	Tue, 15 Oct 2024 10:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728987800; cv=none; b=WSACnn+/w1w7ccF+OROp5Usnr4iDwp01L797KBqPP0oSCXsRQY47VYfU5GcpHcrN1F3H90h2bIeLkfu34SiBr7OgmZSFsm95TpjY/OEwIPB1ge/7inxBwNyQlUzZ0MhQ2J7XT7K1YvIz+MbeDPSvB6KaqrtUwT2IFpOwrPzawcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728987800; c=relaxed/simple;
	bh=oRNGjrDKi2Hm53gnbXJGC6YvgFgibQ8fpuTcUT3TPMo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R3ToSpAT2ufrlkiv66669hMYHhy6PksHS87rc0vURWMCPtpSUeaDENIWp0HMhfUHHp0dPKc6klcv7l7lpJ9kKLuV1OwWK+bxtJ557hk1OQ/puxdsyvpJ4YrHeLht9ZmHO8XHlaxbAyve1zLomC5Nf5DlWTFbZGcukGKAXfhVi8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUDrhd7i; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D8F5C4CED0;
	Tue, 15 Oct 2024 10:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728987799;
	bh=oRNGjrDKi2Hm53gnbXJGC6YvgFgibQ8fpuTcUT3TPMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jUDrhd7iBnTe8hchjCw5VvonV+PgBwSvS/GHTMQ6R+uLbL7GLKLUrqBdYaOpocZg2
	 XOBj0U2iJqzyrNtzp/xltjrfltk89lvoFBIinHdOb7/jhNAwewxxiu9GgjdQb/zVi9
	 +jh5+pe0hHv6RCObDWSSn4jEzqoMwDOuQ2ZUl0SukCfcnYcc5gqStIfzh+1TDaox1D
	 EhGVFCG6RWiljEMPUVVHXJAGei93AZupBXttsjrilUfB2A8XoORAYz6txpbZAgG5SB
	 ZHFQcdb2xMIMDvxvx5KQ8RmNoH15sC0chi2GlcsvaAEtYWDjf2UGle336VjWUC1LrQ
	 NejxIe3pfn3wQ==
Date: Tue, 15 Oct 2024 11:23:14 +0100
From: Lee Jones <lee@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	Martin Botka <martin.botka@somainline.org>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 5/5] regulator: axp20x: add support for the AXP323
Message-ID: <20241015102314.GG8348@google.com>
References: <20241007001408.27249-1-andre.przywara@arm.com>
 <20241007001408.27249-6-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241007001408.27249-6-andre.przywara@arm.com>

On Mon, 07 Oct 2024, Andre Przywara wrote:

> The X-Powers AXP323 is a very close sibling of the AXP313A. The only
> difference seems to be the ability to dual-phase the first two DC/DC
> converters.
> 
> Place the new AXP323 ID next to the existing AXP313A checks, to let
> them share most code.
> The only difference is the poly-phase detection code, which gets
> extended to check the respective bit in a newly used register.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> Reviewed-by: Mark Brown <broonie@kernel.org>

Mark, can I take this without issuing a PR?

-- 
Lee Jones [李琼斯]

