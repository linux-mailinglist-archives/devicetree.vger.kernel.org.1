Return-Path: <devicetree+bounces-303889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOzPLItUGGoQjQgAu9opvQ
	(envelope-from <devicetree+bounces-303889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:43:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3200E5F3DDE
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:43:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4490A30558B8
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B033EFFBD;
	Thu, 28 May 2026 14:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVIa14dI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6302621E097;
	Thu, 28 May 2026 14:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779978697; cv=none; b=Wg/KhpMxhiZeCv1GUaRAN4n8m8ddOZPnov3rxAGJ4IG1MSqrpwJUSSBFxRxA/C2WuUQ9YhFGr5n+f/pvBjAiKajznBin+M8Qy8w6Ocx4oDXRSs4FAn3EWBuTu1d9R3SIrcesUvogQmZQt6TP24WnvGM0NPN3N7UGnmOX512c7+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779978697; c=relaxed/simple;
	bh=Td1xJitxiDzzJJjDE5oddeOX21u+IW8VKtI0m5Za+tc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=H285VBYwUFH7wPUUR9VrE0z9dv/gPN7m5ERMZIdSleayb5bp8WbegBwoI5yhY6naua++2z1petbdtDa0QOt3cVUl/Z2BCNBLi21dKUIbr8wggKYtAMRAeFPCt92/eRTwoTwMMLjl6BrxZE9c4x+XCX31ToD8j+D5QBzH1w5jZoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVIa14dI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E36D41F000E9;
	Thu, 28 May 2026 14:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779978695;
	bh=FO62eDUGPK4apFj2VsqGTNxsf+/LmNvLwxs5aBAFjl4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=VVIa14dI+WA//zejpEFiygn92BJoNH+6nEilw708S86ieBDt4XTT520sd9f3KmGlO
	 9lRV+O7YVZk/ntstWffYM/C8v5HFo7Xcf20L2X75IfcwBaLjFOn5Yzg8AWixqGFijm
	 ZBV3IjvJ9MVLBXay1+3+9PqNdWBxVNo+qh5wEtB6rClZUkjgf+mP7FMsLvSwzsnesh
	 E9u3EQIrlt3D1gZ0TX+kqRUSvRoPC2vTgzcMx3+tbpjpmGF65qedMe30FTAaytyjHo
	 0hG47vqj9tWX+EKR4SUiVKqD/Xi4vTp0iEJ60TU4cvZyAKN83ME/ELKZ2boARcmbIo
	 G2GlM8G8cZcYw==
Date: Thu, 28 May 2026 15:31:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jinseob Kim <kimjinseob88@gmail.com>
Cc: linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v2 7/7] MAINTAINERS: add Open Sensor Fusion IIO
 driver
Message-ID: <20260528153126.7be7c765@jic23-huawei>
In-Reply-To: <20260524085312.15369-8-kimjinseob88@gmail.com>
References: <20260524085312.15369-1-kimjinseob88@gmail.com>
	<20260524085312.15369-8-kimjinseob88@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303889-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3200E5F3DDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 24 May 2026 17:53:12 +0900
Jinseob Kim <kimjinseob88@gmail.com> wrote:

> Add file patterns for the driver, binding, and protocol reference.
> 
> Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>
> ---
>  MAINTAINERS | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c2c6d7927..9238701f4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19977,6 +19977,15 @@ F:	Documentation/networking/oa-tc6-framework.rst
>  F:	drivers/net/ethernet/oa_tc6.c
>  F:	include/linux/oa_tc6.h
>  
> +OPEN SENSOR FUSION IIO DRIVER
> +M:	Jinseob Kim <kimjinseob88@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +L:	devicetree@vger.kernel.org
As noted, no need for lists. The appropriate catch all listings in 
maintainers cover IIO and DT-bindings.

> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-uart.yaml
Bring this in with the first file, then update as you add additional files.

> +F:	Documentation/iio/open-sensor-fusion-protocol-v0.rst
> +F:	drivers/iio/opensensorfusion/
> +
>  OPEN FIRMWARE AND FLATTENED DEVICE TREE
>  M:	Rob Herring <robh@kernel.org>
>  M:	Saravana Kannan <saravanak@kernel.org>


