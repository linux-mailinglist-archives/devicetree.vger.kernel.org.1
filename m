Return-Path: <devicetree+bounces-273335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFqgDjLSr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:11:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AF724707F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:11:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3BEFC300F5B8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2142C3ED127;
	Tue, 10 Mar 2026 08:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="AbKdJpBJ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3143644C7;
	Tue, 10 Mar 2026 08:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130286; cv=none; b=NNd94rVVQ68S7oDidhFmJVKO96xdpVGQ+Had+50JIqQpwx1Eic8mOa1VoxCa6VsjIEyuGjgOV1iPTOMnLXwF6H6yO2pzUSQQJ4OFX8D7Nc0JWZ3zU7sTIJfCmrwPLvnlGdP+qJIZSpOe3TvAc5siKyzVtMsr16XEk74Ts7Kggfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130286; c=relaxed/simple;
	bh=ipr58oDiPJvPD66wTuXKeOszxNw/dgQZ9WEFfxa45YE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U4ZaqENFL/yat3RKN5qbfKB4W0mqivp2mup+ub91zU/P+PF7yW92NVAWAGPhFNK0uuvkqaDMY+/m0h/BgZUUrAaDiIOhj5zUqxLQRQAqpd0tN8f/KJb9BM9urLjKosrYOKtbZAR7rqorzf72oS/SB30TJFJ477587e4n2ZGJ8Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=AbKdJpBJ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=I6xrK61zKxaYaQBHuBwK+rNHZNpJEhlMQOrf1rDBu98=; b=AbKdJpBJ6sU7Tjs+QU3PGJAZHG
	SZyfscC6eWtu5evNx7s+iGSlcSTJ6lEOd4mHzE5IJjChLQxlC0VI6Uu8yhKx3KIzSEuFibC12epLP
	UPI4OLmhJCj/YfpEXQVDH4xkKgAhG6r6Uifui769iv83XWGsSBQi5rtx4UOK+YAHC1Fcvm4ezBZIR
	mbRFnv1tJI+jo+HqSh80RzFpPZ/A2UzswMqqYS0EB2HHJB02w0jvjrTJReWWgT7nKf+Ty51/4nK21
	OQwezbj6jUzs19w7Ig4Qq3Jcb3iT4ZZPhZCsr9Lxv6Q2Fxf9sLXrecocp65E2QI1hQBhy6KaYmKHi
	GeVVGuNg==;
From: Heiko Stuebner <heiko@sntech.de>
To: gregkh@linuxfoundation.org, Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject:
 Re: [PATCH v2 RESEND] dt-bindings: serial: snps-dw-apb-uart: Add RV1103B
 compatible
Date: Tue, 10 Mar 2026 09:11:19 +0100
Message-ID: <2468363.NG923GbCHz@phil>
In-Reply-To: <20260310000606.415206-1-festevam@gmail.com>
References: <20260310000606.415206-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: C4AF724707F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273335-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linuxfoundation.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

Am Dienstag, 10. M=C3=A4rz 2026, 01:06:06 Mitteleurop=C3=A4ische Normalzeit=
 schrieb Fabio Estevam:
> From: Fabio Estevam <festevam@nabladev.com>
>=20
> The RV1103B UART is compatible with the existing DesignWare APB UART
> binding. Add the rockchip,rv1103b-uart compatible string.
>=20
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> Changes since v1:
> - Make commit log more concise.
>=20
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.ya=
ml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 6efe43089a74..685c1eceb782 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -71,6 +71,7 @@ properties:
>                - rockchip,rk3568-uart
>                - rockchip,rk3576-uart
>                - rockchip,rk3588-uart
> +              - rockchip,rv1103b-uart
>                - rockchip,rv1108-uart
>                - rockchip,rv1126-uart
>                - sophgo,sg2044-uart
>=20





