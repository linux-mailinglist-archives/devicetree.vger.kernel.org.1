Return-Path: <devicetree+bounces-287646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGK5H12Y32nXWQAAu9opvQ
	(envelope-from <devicetree+bounces-287646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 15:53:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE59340507E
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 15:53:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4938D3017BC2
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 13:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3AF3CCA1A;
	Wed, 15 Apr 2026 13:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="na+26Wtf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout3.r2.mail-out.ovh.net (smtpout3.r2.mail-out.ovh.net [54.36.141.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2253B3BFE
	for <devicetree@vger.kernel.org>; Wed, 15 Apr 2026 13:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.36.141.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776261135; cv=none; b=dc1d5kXDOWXWXH4gmKsfI61Kk+sEZZBpIOrKGztMXbEJs1yhh52+Syt5tTiqu7zT/ORLPQF5EC/ax7aZ8yfwrvtbd/030i7r/iwRJm1tK5lcPXQZ4WJn17tMx+RHGigRv+xk5gel/mIzd5Q5z3dAYzd/+DMH8ShfNHSJrTtf1Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776261135; c=relaxed/simple;
	bh=bfUdp5yiGeveHx7awmwIX27sfdsCI3XlgjXD1amRh8Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:CC:References:
	 In-Reply-To:Content-Type; b=fgPWPYXyWISJN2Nifuzj1nixn3HHu71txoSRsnyGwanjmwGlQQ9sn9aenAFh0r2sLTEDw/hgGk9h14kuHiTdGfiGs68vMVyBH9j3t2Iap9gaqVaPmLr7Ws+r2/6bng5KaBLGQ39h06jktngbqGW3QALpuyKBCXVa3CDkOOJQc7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=fail (2048-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=na+26Wtf reason="signature verification failed"; arc=none smtp.client-ip=54.36.141.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from ex.mail.ovh.net (unknown [10.111.174.125])
	by mo511.mail-out.ovh.net (Postfix) with SMTP id 4fwj7Y1kr5z9snQ;
	Wed, 15 Apr 2026 13:44:57 +0000 (UTC)
Message-ID: <451d2cc8-d15e-47f6-be4e-515f9be62f9b@aliel.fr>
Date: Wed, 15 Apr 2026 15:44:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Subject: Re: [PATCH 1/3] arm64: dts: amlogic: t7: Add uart_c pinctrl pins
 group
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
CC: <linux-arm-kernel@lists.infradead.org>,
	<linux-amlogic@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
References: <20260415-add-bluetooth-t7-vim4-v1-0-0ba0746cc1d6@aliel.fr>
 <20260415-add-bluetooth-t7-vim4-v1-1-0ba0746cc1d6@aliel.fr>
 <956625df-0a80-4d0e-9bb7-8071d5797748@amlogic.com>
Content-Language: en-US
In-Reply-To: <956625df-0a80-4d0e-9bb7-8071d5797748@amlogic.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: CAS12.indiv.local (172.16.1.12) To DAG11EX2.indiv.local
 (172.16.2.112)
DKIM-Signature: v=1; a=rsa-sha256; d=aliel.fr; s=ovhex24454-selector1;
 c=relaxed/relaxed; t=1776260697; h=from:to:subject:date;
 bh=nXLEFR5ld0gmkhDZoJbppfO88OloAWVZCcUgrZTTpMs=;
 b=na+26WtfbGcCpipes2h38G9UemzYZH1/SVn5Lmb6XQwN5o2uB1iJAOUX8iU1R5V23jtCoGb91ZX1JqSgsNWadzZGAllXPnO0rwDjt0Z85MUnbObnQZpEU9u+e/nDtBlXeOJz09YqNqGbvKN3Li2mVOqxfhe88O8o9Mg9FuCQmtBPI+C1f8TK7wrZzS0lcVSAg7eEd6odXrIX0FFx43UfyCfPo+ITag4keLPX49NVRvJWqr/MpOl6nQJkKRKQ0+mcxbeF4miBrL7f2g93xYkxIe9ZHuT7/n4azyhU+UleABqsH/pDSFzwKlmspzWkXKDiYz5Gyztzun8w2cCYgYvRTw==
x-ovh-tracer-id: 10833971856656240110
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTF18bDFAC26Re3D/Quk/G2rv+fn1qEiTVJFd9A+lSh7lBclNoacWW6YyCzDY45eYv9KdsbYaW5wjpUkUFKkwhYtTDxn6xhgwPBnj8brLw3zfxZQkGokQuuvRgPYIy76QikIcN4cX0Ky2Ovmw80U7tpMOqpfGAulivI09vMONPaFTUIoRFDGWDzk6JdoeKmkOru6dRFXxpxj6cov/ntGBKVkn24Vws8jLuECq0+TbR2BjsfnNHwGyV0xxcuxOn7OlJSyZhmMJvxzAzOh+pQhNShyGh9nzQcM1NZEzJC/YxHn8Itu9fLdeF5h2eM9XQWuZyVLrPIitzsmwEbSMF3V4VkKLnXRHEWlQWl3F9bE0AVfBKH8VJPFv1It67F0Gwmt3Oe4TooOEbsu8bO9WJtrHEQXNPaW6gOiIH3Dhqu81Nb8RmYtgINQacbnfyYaYNoWLUJXV8EQoSepmREUHqVobR43XWLyrCpr8cVLh4PPfoZhO01nu2LTPlOVgzJ58+57CzQmsvM+ysKMKyBvBzAJrdr03QK7eQKDJNyoTFTOJ0ouAXVm6MaMvdeP64F73otWmiS9h2+c/N7St+4QCCuIq8LONTx26ibK8xqY4gzkhbTHTBgLDIUDza1kaCanMXK3ievGYHIM3ntiMYQYyQgwNKaUT7Hsc360I6cQCXOABh8cPQ
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[aliel.fr:s=ovhex24454-selector1];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287646-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[aliel.fr];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:-];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,linaro.org,baylibre.com,googlemail.com,kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_SPAM(0.00)[0.855];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.15.240:email]
X-Rspamd-Queue-Id: CE59340507E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Xianwei,

On 4/15/26 1:28 PM, Xianwei Zhao wrote:
>=20
>=20
> On 2026/4/15 19:16, Ronald Claveau wrote:
>> Add the pin multiplexing configuration for UART C (TX, RX, CTS, RTS)
>> in the T7 SoC pinctrl node, required to route the UART C signals
>> through the correct pads before enabling the controller.
>>
>> Signed-off-by: Ronald Claveau<linux-kernel-dev@aliel.fr>
>> ---
>> =C2=A0 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 12 ++++++++++++
>> =C2=A0 1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/
>> boot/dts/amlogic/amlogic-t7.dtsi
>> index 7fe72c94ed623..531931cc1437c 100644
>> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
>> @@ -553,6 +553,18 @@ mux {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bias-pul=
l-up;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 };
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
>> +
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uart_c_pins: uart_c {
> node name=C2=A0 uart-c

I will change this, thank you for reminding me.

>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 mux {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 groups =3D "uart_=
c_tx",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "uart_c_rx",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "uart_c_cts",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "uart_c_rts";
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bias-pull-up;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 output-high;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 function =3D "uar=
t_c";
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 };
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gp=
io_intc: interrupt-controller@4080 {


--=20
Best regards,
Ronald

