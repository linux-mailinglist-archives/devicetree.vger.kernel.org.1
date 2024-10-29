Return-Path: <devicetree+bounces-117127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FE29B5193
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 19:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A922A1F22EA7
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 18:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605EC1DD9A8;
	Tue, 29 Oct 2024 18:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="OtcjIpzE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B47D1DD539
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 18:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730225367; cv=none; b=WkJg9i3O4iQO/ekbCN49tOlw2dxP9PxwqA7zmaVJ7CuK6ONmSgHlfrPcgyrX4xYTTT38PJK6NjJLemQuW4RE5MSTVmqmeQlENqzD/9YwSEUpVpSMONTiWe80RZXPJVsQ2YFhHknRiw3f38OyZHkVaGCrMAeLk3FWAoGFmaBS1og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730225367; c=relaxed/simple;
	bh=vw0Pt+medcj+GLfv1om7aoP7ESB7kx3zfNjJJ7hN2zo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FQxeagJAZEcnYajk3cEM3r7PHelDVsN8qIWUcLh+W81I8qMGEJQjmZFM/8IqAMWjndBKATHXLWznrtGgRvyKp9jzxvDLBUun+dTZC3imEMbtb43B35lshe2+AnWMy+Fpnof6UoySajzcDcYDC+gql5w3Kqj/Z6Kk52q8BIZ7Syk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=OtcjIpzE; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=iT1KZstrKnsyqYo4dg3x0+KOMpIG9DHct4TKVU+Hs3Y=; b=OtcjIpzEOO5bIe4gAfLT5afCNt
	8vvMDAm8BhZplOlA4E5itIHKdRjAhF95wte24BJT6A97atK3LXtUcgH+h7egt+YrexjOfKhEh+PbL
	wDFJLiAo7RJKAIKUm32mfdkLNpKQmqee2ckHjJNcrQ946OZqMvgiOcLkGYY7zIAfu3yygi9+lRGt2
	YEpMFibNW6QuQzMXWMwK0bejU1V/EG0rKbXmhruHQHDEu8lRDafJLVAxq+rbXE8jZMzcN9X88ti9J
	RuhSK2FwjrnhDctFLQb9JaCFeEara1/zXkwqUsUT4O+rHwFm1UuFCK6B/89W6Lg41/M6kvsADya+H
	KuqqEptw==;
Date: Tue, 29 Oct 2024 19:09:19 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, marex@denx.de, a.fatoum@pengutronix.de,
 kernel@pengutronix.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 2/3] dt-bindings: lcdif: Expand the imx6sl/imx6sll
 fallbacks
Message-ID: <20241029190919.4c615621@akair>
In-Reply-To: <20241029120236.299040-2-festevam@gmail.com>
References: <20241029120236.299040-1-festevam@gmail.com>
	<20241029120236.299040-2-festevam@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Am Tue, 29 Oct 2024 09:02:35 -0300
schrieb Fabio Estevam <festevam@gmail.com>:

> From: Fabio Estevam <festevam@denx.de>
> 
> imx6sl.dtsi and imx6sll.dtsi have the following lcdif entries:
> 
> compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
> 
> This causes dt-schema warnings as the current binding only
> allow 'fsl,imx6sx-lcdif' as fallback.
> 
> ['fsl,imx6sl-lcdif', 'fsl,imx28-lcdif'] is too long
> ['fsl,imx6sll-lcdif', 'fsl,imx28-lcdif'] is too long
> 
> The imx6sx-lcdif programming model has more advanced features, such
> as overlay plane and the CRC32 support than the imx28-lcdif IP.
> 
> Expand the imx6sl/imx6sll lcdif fallbacks to accept a less specific
> fsl,imx28-lcdif fallback:
> 
> compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif",
> "fsl,imx28-lcdif";
> 
> This helps keeping DT compatibility as well as using the more advanced
> lcdif features found on imx6sl and imx6sll. 
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Newly introduced.
> 
>  .../devicetree/bindings/display/fsl,lcdif.yaml     | 14
> +++++++++++++- 1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml index
> 836955de3bc9..08ce19638fbd 100644 ---
> a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml +++
> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml @@ -32,11
> +32,23 @@ properties:
>                - fsl,imx8mn-lcdif
>                - fsl,imx8mq-lcdif
>            - const: fsl,imx6sx-lcdif
> +      - items:
> +          - const: fsl,imx6sl-lcdif
> +          - const: fsl,imx6sx-lcdif
> +          - const: fsl,imx28-lcdif
> +      - items:
> +          - const: fsl,imx6sll-lcdif
> +          - const: fsl,imx6sx-lcdif
> +          - const: fsl,imx28-lcdif
> +      - items:
> +          - enum:
> +              - fsl,imx6sl-lcdif
> +              - fsl,imx6sll-lcdif
> +          - const: fsl,imx28-lcdif

What do we need this for? Either imx6sx-lcdif is a useful fallback
compatible or not.  But not sometimes. Looking at the kernel driver: It
is. So IMHO only the three element variants should be allowed.

Regards,
Andreas

