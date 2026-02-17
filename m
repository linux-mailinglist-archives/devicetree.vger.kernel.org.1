Return-Path: <devicetree+bounces-266112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIjTDlBflGnODAIAu9opvQ
	(envelope-from <devicetree+bounces-266112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:30:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 912AF14BF65
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 170A030125F8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BA5733CEB0;
	Tue, 17 Feb 2026 12:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VVaqjOUl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE90733C182
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771331405; cv=none; b=uqeHPbGPacPAiDMda4VlMV+GLQiQlPqM/RcaUrRoVD9aFrDPdF+G8ouY1+Gt8qZv63+ksP9mutDdEkDei8DavjXCsq8kXhSOz4NSeFIEl0ZgMqbPx3zRtwDswM4iQccqU+FG5h0wSppKsZPApGsu61Avb2DWGl6d/mwFw20qc7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771331405; c=relaxed/simple;
	bh=veW04ITIm+kS0Va3WwG1j5wGlLSf3zAowo/9T/TxpYk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jA779xduJ3gNHP2gU8go+LSHL1xX3M0K4IalZZgiHfK+XwsipquFtbfaHeo7IDDbJnnLDYrh6dPsJaUQwj8xBMFuQ1M8N8Te1FEAgSw/WWi1MnGoOK1RSK3tbNC4rkHQcSP5ogFEMpu4d3ObrzpzZBvfaEtsEm5gzryOsqHp5tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VVaqjOUl; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48068127f00so44372615e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771331399; x=1771936199; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=veW04ITIm+kS0Va3WwG1j5wGlLSf3zAowo/9T/TxpYk=;
        b=VVaqjOUlEnbQTJphLvsPvgl4lkEKSy4SyceAemvE1XVLVwgZW65D6T8/t5uU+loLX5
         RSu4hZ8sXzUlckC3vMKUTvP6unNvI1IC4pkil2Vz7YWZ0LklilbHqY3gq9/HZJtevgWK
         kF1oLzDGjFwhTgbnafuDz+XwySMKwyGDr8zGuEMvUwFZFZZGUCZo+GiCiidzMVCzVoue
         QouAVgMpfofzxLSJKRq3xmU+eBi4RKYEPX/B1GkwuYufz299O4VeZU3/OpnK0biO8FU5
         FM1lIDdJoWkrog+qhsrBpp0OylUGNdbzWF1mRQ6MiP0IM1Su+TDXzBjfWUMNmKCdHB3b
         KmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771331399; x=1771936199;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=veW04ITIm+kS0Va3WwG1j5wGlLSf3zAowo/9T/TxpYk=;
        b=h/fhs6YattnzJpdjx+K09XpisBHRJx0mH1fhsNYWeKQcQ2nOS5MU6SOOqXacEjly/S
         /5btgoGa2moa/HOWRfKnO6Ht5bRwXDBKgZtGy1H2CxZk92uBjx/TcGRC8oOmcJrz1YF4
         SAqodwt1f7Qqovv6vZMTUyCpe+tkn6oGk893Og3tA8bQ/O2ee6qLuPww7yGm31lkPpWF
         +Wt3wIB7iVEib18cckcm6VYP2yvJWT16HfvneuLjmKXMNWdm9aGloTcGnpWs9/Wb/STe
         9JpTgIykNE0pTq+Hsyzaxk2WUMOmCwNrAmmnOXrApOfcoE5R1U29qTqnod39aUergZCO
         qr5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUD4us48tdf8NMnAMfGg0jr10be2qlcUkalIdYGXTRFORiyHo8SAMLrzKl0wM4QD6/bGZYQF7w02b0j@vger.kernel.org
X-Gm-Message-State: AOJu0YxXWs6dSFlNRdFlnaPeLk35xjOXnj/EVocVCbOfO5LvXGSQvlzD
	70T2OPnjkr4KCQWUyimi//krIYvVGR/u5veIVMO21Z7gcUJEUbpwTZPa4vSR2Yricp4=
X-Gm-Gg: AZuq6aKtM0tZ8p4y1ba4eVWk2iMyHXmjiCdeKHVjqtDQEsBXTKHXWnCr1caBM0e+1WO
	4bMkFORQx+1wykMRVW0oGaGsYjcG5C3zt+j4Ff/lWbwt/KDOUL2/TWWGdgzB9WBFlJQvGWV+XCt
	wS+qKZ0PGFAW/uwH3B/5nIO9eEyBYzy7o/nLIMIoBdzI5JUNsu37N/hqsmsT+hlywhrvq3lMgL6
	1nZgOT945VxFvUEDkSB/sL4G6FS7pmrR5NTeq3uKTRJxN3lAWzE6GwILOUAzyQoT66IOpvKHYDT
	wfSmQ+2c2p1iexo1XYjiqypUbDiqRUSwqpneC55Xtq4pIz9xCoQn5jrkyflQJ74tECM4wODwLQr
	5i7P5zauVDEXUeK7/lyxwHfbWuoDfHCZT8P4FCD0DXgicYS7m30Qp/mtDGLkn1wb1Cr0GiyLNnC
	UMrFX9u66UYR5pdu/yeupZeoukJnE=
X-Received: by 2002:a05:600c:1381:b0:483:4a95:66da with SMTP id 5b1f17b1804b1-48373a1ad50mr231637905e9.13.1771331398916;
        Tue, 17 Feb 2026 04:29:58 -0800 (PST)
Received: from draszik.lan ([212.129.84.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48371a44ae0sm99721435e9.29.2026.02.17.04.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 04:29:58 -0800 (PST)
Message-ID: <9ac93f5456adb209bbc0e750434c356000eec6d6.camel@linaro.org>
Subject: Re: [PATCH v6 3/6] mfd: max77759: add register bitmasks and modify
 irq configs for charger
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: amitsd@google.com, Sebastian Reichel <sre@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Greg Kroah-Hartman	
 <gregkh@linuxfoundation.org>, Badhri Jagan Sridharan <badhri@google.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus	 <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, Mark Brown	 <broonie@kernel.org>, Matti
 Vaittinen <mazziesaccount@gmail.com>, Andrew Morton	
 <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, RD
 Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
Date: Tue, 17 Feb 2026 12:30:17 +0000
In-Reply-To: <20260214-max77759-charger-v6-3-28c09bda74b4@google.com>
References: <20260214-max77759-charger-v6-0-28c09bda74b4@google.com>
	 <20260214-max77759-charger-v6-3-28c09bda74b4@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266112-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[google.com,kernel.org,linuxfoundation.org,linux.intel.com,linaro.org,samsung.com,gmail.com,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 912AF14BF65
X-Rspamd-Action: no action

On Sat, 2026-02-14 at 03:12 +0000, Amit Sunil Dhamne via B4 Relay wrote:
> From: Amit Sunil Dhamne <amitsd@google.com>
>=20
> Add register bitmasks for charger function.
> In addition split the charger IRQs further such that each bit represents
> an IRQ downstream of charger regmap irq chip. In addition populate the
> ack_base to offload irq ack to the regmap irq chip framework.
>=20
> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
> ---
> =C2=A0drivers/mfd/max77759.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 =
91 ++++++++++++++++++++--
> =C2=A0include/linux/mfd/max77759.h | 176 ++++++++++++++++++++++++++++++++=
++++-------
> =C2=A02 files changed, 230 insertions(+), 37 deletions(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

