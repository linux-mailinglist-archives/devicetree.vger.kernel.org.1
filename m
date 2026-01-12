Return-Path: <devicetree+bounces-253811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B35CD11815
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:32:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4F6030B7169
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B393491D6;
	Mon, 12 Jan 2026 09:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DevmpoB6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50BA34889A;
	Mon, 12 Jan 2026 09:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768210112; cv=none; b=OfcgUOkgjzPi16hhD5KMPEZlzMGrOJ+GxDKjTWzEPX3X6j10oiOT61wFlor5NBDbLizdXmcKWB5RHSfQYy/2l3dwI0Fi9hV3Qq1n1PtZ82QObhrjV2VXS60p8kKcWclyMseB2xnNHK6DvFnrDu8TrfQLCx1X0jDFes5ROGoIcWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768210112; c=relaxed/simple;
	bh=7ZldtWXHtKGxFetGQYV97HjB15LNQqoYIyFRNep5wyE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QBSz2SDmWKP2ARgoOmMlMwjGXxfUBxR6BGuL/679jqjs2Olg/WFHOgPWqcVJuwrwQspk2OMRD0CU80j5bob/o/oex5lz0yfHdtHnOCNiRTlnM7mASvuODm+MJwGcFjX3C0UbJayO3QcTMNzyx3BwQYFa9GRJ1jk4PdNbUUUE0dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DevmpoB6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBFA3C19422;
	Mon, 12 Jan 2026 09:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768210112;
	bh=7ZldtWXHtKGxFetGQYV97HjB15LNQqoYIyFRNep5wyE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DevmpoB6BPtI09eRjeZGCWvkSmSBtkogyuOZSSnGkG4ZedLe4HiwA/fqO8rhnjult
	 nkkqaNseL0sbUSJEXETC4NKXni45fVKeyq2olLeN8GqtuaJ+9muaTA8VAonaGb+khb
	 E2b1CzXyHWAAlPcsxPvthmdu3fA19sbjptLJfKlbYdo2APZNTq3Fd7xXsmfpBq9zqo
	 AQt2vH9fhc0RHFTG2DbvKyu/s8N5QE/S8LvULuzhCRTqemUq0whkeagraYOaOSVYtK
	 PArBuJtBbvOq+nB93VC0EhxATGDQGxPhTDvbuTzQrni11yOUe4x4iKwp/H+LJgnZ4N
	 yBx2vlzlNG5RA==
Date: Mon, 12 Jan 2026 10:28:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: mailbox: sprd: add compatible for
 UMS9230
Message-ID: <20260112-translucent-vehement-gopher-dbc46f@quoll>
References: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
 <20260110-ums9230-mailbox-v1-1-5941cab4f4e5@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260110-ums9230-mailbox-v1-1-5941cab4f4e5@abscue.de>

On Sat, Jan 10, 2026 at 04:43:35PM +0100, Otto Pfl=C3=BCger wrote:
> Add a compatible string for the mailbox controller found in the UMS9230
> SoC.
>=20
> Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> ---
>  Documentation/devicetree/bindings/mailbox/sprd-mailbox.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


