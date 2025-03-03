Return-Path: <devicetree+bounces-153999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A82A4E6FD
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:54:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABDF08A3B75
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9D6277020;
	Tue,  4 Mar 2025 16:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNF7zXrW"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764A8209F53
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741105540; cv=pass; b=Tryw1CpiOioHTenjqIrzQSqki9z6d9E9mWE5RrnT6jtezsX1FJ8fULtHgZYG1t/buyLQPQkkzUaKeFs9V4LwRuA7cj12IVCFPolTJN3wgmjh5PWXA7idKLfGfBkU9mnOYXppH7wEl9SFKozR1D7ib2q9fJDW8Sp2eSnkBf2io8k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741105540; c=relaxed/simple;
	bh=MIcJ6qza0x8UAoFaTaN141FosD7VX5v1L2Ka99l7UT8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iNQ6u34H2CphURxHjBpmHxXO78yiYGvAXtfGZmDe1oXYV4zyUqFmP5FtOaiT+Kvml1Mt/XV7fuzmgMewtHzqVammKkE3cOOZkRKlTugJ2oVH5hdkoatW9URlzqgFUFeTK/CvySvlJKprk3f81nfuKsJjL+I260nn7tGY2ZOuym4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNF7zXrW; arc=none smtp.client-ip=10.30.226.201; arc=pass smtp.client-ip=160.75.25.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id DD22C40CECBB
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:25:37 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6gxT75nbzG335
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:24:29 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 26B444272B; Tue,  4 Mar 2025 19:24:24 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNF7zXrW
X-Envelope-From: <linux-kernel+bounces-541833-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNF7zXrW
Received: from fgw1.itu.edu.tr (fgw1.itu.edu.tr [160.75.25.103])
	by le2 (Postfix) with ESMTP id CFBF441D0A
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:39:20 +0300 (+03)
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by fgw1.itu.edu.tr (Postfix) with SMTP id A8B5F305F789
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:39:20 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAC401892D4D
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97BB1212FB7;
	Mon,  3 Mar 2025 13:39:02 +0000 (UTC)
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17E278F44;
	Mon,  3 Mar 2025 13:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741009139; cv=none; b=lHCskcCZrpYJqmwe9cAD+mq8IzWge/+lDstx8Epr5OikYXcqY0gklHyefQQ7iYdaV6MIL+1Wsxuy/XvoXirrdXJIhxAyGa9cH0CkvXSZdM419/JIyjRx8gRf3bhea52K5jwFfFNiR2YbY32V8eab8zH/Hx6dpVZ7162iT4s+7p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741009139; c=relaxed/simple;
	bh=MIcJ6qza0x8UAoFaTaN141FosD7VX5v1L2Ka99l7UT8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z8Zm+8ryb3KXlH1IQCwa+0IFFYsQw0L4yVlk9/fhewBDmHQw0cjRkvOQzkz5oB1SRgPYXMbWVKuck3MbifcYKx2rgy4UZfOxm4T3e2xoae95DSBechBKClOBJdeeMM1xkz35QYyfr8ng5EXGtJtYny6iO3F/5tRyC/au4R9D+4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNF7zXrW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24296C4CED6;
	Mon,  3 Mar 2025 13:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741009138;
	bh=MIcJ6qza0x8UAoFaTaN141FosD7VX5v1L2Ka99l7UT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bNF7zXrWSKUgPYeWav/35e1168Z+ZTec+1d/GxCddFpqg0wrxKLncs0jQjxM4SK22
	 PbHh0IxwmTInpq9+/0ULJCbA9gWhC/zkISbn5A1SiSQkeDiX3tS4bsZs+5fCn5qgQ1
	 BryK1nRQNyM7Sa7DS7gBIBt2b14SkOkKh45dljp9AYjsmGzfDV4i1y09ywYZgTAxwv
	 mfcbFGgiHZur54Gq+6DuZc38+e34nabp3YRQRXnoYsBxNm9NaQ0xq1+DHMjL77BYbB
	 fU8qaUVIfyXGg/GcDw3ZoNGBakBuzKAq0Bt4dCXG3So8Ug4ak2m8IPEbTpPUHDxT1h
	 H8NkQw+SCo/lg==
Date: Mon, 3 Mar 2025 07:38:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: linux-kernel@vger.kernel.org, tomm.merciai@gmail.com,
	Magnus Damm <magnus.damm@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com,
	linux-media@vger.kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 02/17] media: dt-bindings: renesas,rzg2l-csi2:
 Document Renesas RZ/G3E CSI-2 block
Message-ID: <174100913611.1710446.8699796804081764660.robh@kernel.org>
References: <20250226152418.1132337-1-tommaso.merciai.xr@bp.renesas.com>
 <20250226152418.1132337-3-tommaso.merciai.xr@bp.renesas.com>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226152418.1132337-3-tommaso.merciai.xr@bp.renesas.com>
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6gxT75nbzG335
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741710288.55712@idVGnsX/bB7G+yjeDZhCpQ
X-ITU-MailScanner-SpamCheck: not spam


On Wed, 26 Feb 2025 16:23:26 +0100, Tommaso Merciai wrote:
> Document the CSI-2 block which is part of CRU found in Renesas RZ/G3E
> SoC.
> 
> The CSI-2 block on the RZ/G3E SoC is identical to one found on the
> RZ/V2H(P) SoC.
> 
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> Changes since v2:
>  - Fixed CRU_CMN_RSTB as suggested by LPinchart
>  - Collected tags.
> 
>  .../devicetree/bindings/media/renesas,rzg2l-csi2.yaml      | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



