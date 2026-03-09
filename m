Return-Path: <devicetree+bounces-273103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOIyOcMrr2mzOgIAu9opvQ
	(envelope-from <devicetree+bounces-273103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:21:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 65688240CB6
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5861D3013ED3
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE9836A003;
	Mon,  9 Mar 2026 20:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="D+Tb9Ckm"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (unknown [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF8026AA91;
	Mon,  9 Mar 2026 20:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773087679; cv=none; b=qQynh547CjNWarL+0HPg1Ig+a/aoUSgl/Xy7U5Li2HS7GF8RTv8WKr+35uKLho+iFU3LglZhKHcr/GatEYn8IP+BTcXXKTYeiTJmeW0xDXQP5pWqfRae57FMLTZcObnz2dQxA94OE6TA3sAXPuV7NmmAZAW80JnFtNGW8qThOik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773087679; c=relaxed/simple;
	bh=TqSEwB6ftB6EChAdYtUSEYjrVcG+vsVX3U1TnmfLdZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JAiOWsqMK8ySVdF685uuNks62qmJbYNj8aA51DKdaWhVtWADJPEQpqvJRk42IqJGhruYAXoGGcli1PqKWTKWvzvbXaS3ZEI+L5/oq4kGV9qx6TaFRQ+JamC2xdfgGCpaC+3lL21sAC6XQTooyKLgbzJqanYdDUzcp0gR5WsLx5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=D+Tb9Ckm; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=TqSEwB6ftB6EChAdYtUSEYjrVcG+vsVX3U1TnmfLdZE=; b=D+Tb9Ckm3akoSkL/fOwXmDknrd
	NU3bx2vX9RW2gSfQNPT61jNCz2IYx6othdpqaycogPnwHqhkNtqjlR5tnB6Pn3+vvIm/0uZqY+5UI
	U3pVwNRRE7Lj2VKGlq+HiPCKSROJCC3pyBKqiaif5nSNODbcRcReIQFlFcMWU6TlLFiy1Gihl1Y8s
	9xXzTEl+VEH2gbI1pSMBFurZb/SvbaboxcCSuwVrxEITTTLIH6oLVv8SifuQiUm8iabS0dR7hPM3E
	+qcpGaluXDqKLy5jxYjIT/hbHW0ZU/MJCKcRmwaGUzDok8MR9+Rfm8lKItnVuMfJsTQ6BOnFVZNYk
	uGYvoKcg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject:
 Re: [PATCH v5 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Mon, 09 Mar 2026 20:40:40 +0100
Message-ID: <1996728.taCxCBeP46@phil>
In-Reply-To:
 <CAOMZO5CNB25j=JoK6C7CGsXFq5Vg2j=nfrbaL163qjeWYa4J5g@mail.gmail.com>
References:
 <20260216010219.2131484-1-festevam@gmail.com>
 <CAOMZO5CNB25j=JoK6C7CGsXFq5Vg2j=nfrbaL163qjeWYa4J5g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: 65688240CB6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273103-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

Hi Fabio,

Am Montag, 9. M=C3=A4rz 2026, 15:57:17 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Fabio Estevam:
> On Sun, Feb 15, 2026 at 10:02=E2=80=AFPM Fabio Estevam <festevam@gmail.co=
m> wrote:
> >
> > From: Fabio Estevam <festevam@nabladev.com>
> >
> > Add the PMU GRF and IOC compatible strings for the RV1103B SoC.
> >
> > Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>=20
> I'm sorry to bother you, but can you please let me know if you are
> happy with this series?

At least the uart compatible "rockchip,rv1103b-uart" is not yet visible
in next [0]. Last I remember, you were asked to re-send that binding
separately.

Similarly, please also create a binding patch for the watchdog [1].


Heiko



[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tre=
e/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tre=
e/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml#n20




