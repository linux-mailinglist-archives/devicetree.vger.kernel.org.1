Return-Path: <devicetree+bounces-265066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDW3JiLDjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:10:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA30B12D505
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C38EA30041E8
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AAA83570A3;
	Thu, 12 Feb 2026 12:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Jf0WTXtX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay03-hz1.antispameurope.com (mx-relay03-hz1.antispameurope.com [94.100.132.203])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EA3B665
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.203
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770898207; cv=pass; b=de1L1RVsH2HAH6OCQo1UPwGy3SbFlWl/A3hCU4lBH/IZLSV4+Et/LMNlsDEjL/ITQQCluaDcdePD/+WePNFSOQt4pHg7NsN6VryaOWXjZT+ILY4XMnxpfcYq94RrYRhbjQKbPTOsby2BIne30OyIKtV6MruI+mgrNbbFfbSDZv4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770898207; c=relaxed/simple;
	bh=V8m1B3IMyBJaCsV1ehUqof4TcE092MGRa4DqV/Ym2r8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kIJ/1Q/vSC4dboqWj/SxuOiWaIM7oU8x98dd9yLne0avKEy+sN1S/oAfPk92U3AYhekPjx+HsO4v4vVIm+gAosOz3Ji6PJWOdt+aQqD/oKnmz1IfpbFOX/9cMckVHFcEDQ7QnwfPMWhgn0F1FVZMK3K2/qlI+kqPObnSMEqvTns=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Jf0WTXtX; arc=pass smtp.client-ip=94.100.132.203
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate03-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=C2s9Uwik4ey0QPF0cFc9vjorOTrHfL+ie5knWjmxYxE=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770898163;
 b=LYgL8salIIb6MswUZp7E6GD4M4msXIibRAsYkmsqXAYE5ExVYJeADNO1o9exBoh9OUT8MKf4
 EuAnuwlBFVgwzCZ010haIg1/lUI382UDMov0odeJQS1EadOd92Bg+E5TL4QxykJqkziXQe+lVRC
 2xbOuRQhKV6vI5eJMrol2DVclPLCWxeOeJ9n/esrY+ybTO2hUnUT5bkdmFMo+CfdDSl5hU4aeBF
 8CDA0rqRr6JoIUKwUJKlV8DDURy4+0/NoWXTXfjjE6B1SqOoKV7pc6+9/NXf7RHa2DlB7tUV2t+
 yWOaYSjBi/DTRq5MHDs+7BpOu9tSqtYLGtoQzHS0l+UqA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770898163;
 b=SwIHFAeJeVifMpGuf1kWiSdDxE9+DgzlJgE1Cei4ZBROnuX7GQb6/WvdihCRNaM57R15AHxh
 I8AvdUM74/OcJPmFho9mKIIvNCp7hwXxOO2NX6d1MpJm/W1hH/lXLhWnI5Z+XYe8bic4CSr5QnY
 NKJPbtg7Lyh4M7eeRiLlt8vyivhpHY1j3R3oR5BO2cG5opFlBgJ7bpdLpzAPtAIoyl/ZGSjWEmP
 m5UE/xOgQSqNzAJRYghsmhiaxXnKnh2DzR0CPWtYY335QIzXC4DQuDC5Wa6rHJy70LRGWyoDf3L
 BKvyJaAhcma7XjHzYxIXJSVcV37GYFAEuvOp/PhuPAsOw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay03-hz1.antispameurope.com;
 Thu, 12 Feb 2026 13:09:23 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 5DB84CC0D2A;
	Thu, 12 Feb 2026 13:09:15 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] dt-bindings: gpio: gpio-delay: Use Alexander's email
Date: Thu, 12 Feb 2026 13:09:14 +0100
Message-ID: <4284138.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260212110905.52842-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260212110905.52842-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay03-hz1.antispameurope.com with 4fBYxl6JyfzdkLB
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:81aa4e1a7eaddeddcc84b29bae09efa0
X-cloud-security:scantime:1.861
DKIM-Signature: a=rsa-sha256;
 bh=C2s9Uwik4ey0QPF0cFc9vjorOTrHfL+ie5knWjmxYxE=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770898162; v=1;
 b=Jf0WTXtXYvs2JnO8ECVK2Gl+lG8LBWdL8cMNX69DMtD4qq86qyU3qIUaA5e9eiZvZUqZ7bwZ
 vagJQ5i7Es/cUeJN2qwvH2kZLc7qNwiv0VWoRhmyR1vpI1HJECY3sqvBotTfZ7thvK8Ky4w0dmd
 3Dk92TG/gqqPZEuvYCSwmIkM4w+cT5Fvi40k7FPs1DDpAOPpFBi+xzYc5xR3k2jV7cfJ/cR5jMg
 11D8GvjhiSuU7XDOqrkJnnV4DP3T0feFzNfeQRhoP8urOCjDf+zECw2MV+K+PA5iPMtdRh8LAIW
 pKdxPa5hGdD9QV1GTG0UZlB11hcdvdKU0uZyxsUykcRtA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265066-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: EA30B12D505
X-Rspamd-Action: no action

Hi,

Am Donnerstag, 12. Februar 2026, 12:09:06 CET schrieb Krzysztof Kozlowski:
> Group/anonymous mailboxes are not accepted for bindings maintainers, so
> switch from such linux @TQ mailbox to Alexander's email.

Is this stated somewhere?

>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  Documentation/devicetree/bindings/gpio/gpio-delay.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-delay.yaml b/Doc=
umentation/devicetree/bindings/gpio/gpio-delay.yaml
> index 1cebc4058e27..b99ceff6c5f6 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: GPIO delay controller
> =20
>  maintainers:
> -  - Alexander Stein <linux@ew.tq-group.com>
> +  - Alexander Stein <alexander.stein@ew.tq-group.com>
> =20
>  description: |
>    This binding describes an electrical setup where setting an GPIO output
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



