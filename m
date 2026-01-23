Return-Path: <devicetree+bounces-258846-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJjvFw5Dc2mWtwAAu9opvQ
	(envelope-from <devicetree+bounces-258846-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:44:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF57F7395A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D022C302F71B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09A7B366819;
	Fri, 23 Jan 2026 09:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YWGfAurk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BED372B41
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769161154; cv=none; b=C6Vq5p4CMKL061qNVViQVZkgFJO2eu1zF//GDo9vI1tkOmybb+bQyAtN509H2+Yjqrt7eAS0FE8a38aeEPaHEL3G+BUnWOQCT+Kn3VCPktN2Sso9pybEJUXGY21c/MmvTuHOg7U3tS+DUqeDcomhieXjfWvwbmDdRbeoKKOXWHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769161154; c=relaxed/simple;
	bh=1InEW1W4c/YN1YNZ7twlVHXHgi9spzvj4pl49gkLuYs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=o3vYMJYutoZR+JP2Vh7uQbV87DT7586Qmg7mJIXS/ilizlLPBPqsZOfR+KHJDlI3vzd91M4s9ZLI3rf+Psm/S1sqzh1FHfqe3wqWvdGWgGyrLv7rI03NIAgwR7osnpHyNXWz36fy9D3gLBr8LLABVYlI4pasOPHsYdT1xHvE+/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YWGfAurk; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47ee0291921so16626865e9.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769161140; x=1769765940; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1InEW1W4c/YN1YNZ7twlVHXHgi9spzvj4pl49gkLuYs=;
        b=YWGfAurkiMJUJwm/BOEr3KwVBQIgxTI/teVtUulMd8ForjGUn9O5hconJZ539QTcrc
         EfktOTkpkabQstqIOheIQtGcCsIARZat+rV7toFjDnQxeA3/XRo5+ohObo8g9G5b0daR
         XKKCRsH7oNewPHacHo5w1ksdNQw+X8jO3FBZYTNuoilml0wzWWHSjwQMbkPCdhwWqvqs
         yge0dZ6bwKwioWgzXGTD8uvELYFDc6WZGVcSl1QpPkPDaJwNBLRrn5g5aYsM8dLByI4V
         oqrlIT7BRAeo1wFc/+4uk1tjlaaEyBXoiTT3zJ/k5/MpIxHHYflnl6fE6WEf6fB/ngHp
         Qeag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769161140; x=1769765940;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1InEW1W4c/YN1YNZ7twlVHXHgi9spzvj4pl49gkLuYs=;
        b=eF8GOLW5xdIaeAFgrC67x2zy1aJvIIAggfBNI5G4DobAHStm+4fPQuxdAeorAOc0hb
         dPHRlptM9hdg0bz+KiTdKz8PEq96yBJQDk4s48JlzFD4C9PhJ30FY/lpVUWLIDUmzaw/
         Vv36z/nK11g69DXDYq9utS9kv6Y4wSKIGzBoQ/lkpfd1ClMFH5WpRzXiQKgwTQSyVHHS
         SBfsokSWHkwbm6tPojc1eWrnwxwlEzcKYv7UzwVxr4YXBeAbqDscG7lOSp/Sy8rc3CUN
         7FZzop0GvhC0g7adSRt8qo+yO0j6jHchI0oupwso9DIqokXTdnjPlSKQ19JHWFZPcdKH
         L9fg==
X-Forwarded-Encrypted: i=1; AJvYcCUGD9CH8JtKgALLfUqmWQXFKBiJatyZtLJ3jn8DwFs4VmeUJuTZqP6D2xJ7UM9EqPOUEXcon79ia+7L@vger.kernel.org
X-Gm-Message-State: AOJu0Yzih3XQ+LzNZXc9le9sGvC8l+4cXGzKX29+2uF9kKHn6lvAe/C0
	REgDYP0v7bq23qCsMYCifDnYAeCmbMS4lVjReCyRZRS8ImVeV/vLlhoKRGFdozFKPms=
X-Gm-Gg: AZuq6aKoiG8IKFAtZKtJ3O04IRD0T6ksrZEl8sY4M84zaCV2PZLutbsnOpcUduAVGO8
	lu2vAYW37BqX0AAFdYI6mccV/Ojy8nr5ijiI/rZA/FDo/FsXOMUqB8UKMQQsU8sGeUY6W3VgSy7
	+aXmAUsdr3cduaVDbfES0ofWxsyYaDAJkVqkecxhCdPd3kZYe4oBQSNUVLtPURokI2uqmmmhBPJ
	p0AweJBJ6iUAszyEf9PFy71px6ssKaSLg7q9oi0fcxFdy79qO+MUcXO3lMPznM+gGdHG8dY66S6
	1pYruiZBQXyzWjSSC9kdDiXiT/BT1yuGN2UDGROp/06AskEjN9qjRHiwDW1wPxtRfRIT5PuHaFA
	TlD79Ss5mCgPZXEnL7COKL6g11cu8q7qKiVByLAQRoqh3HPppEtr/sH7ArHwRqtM9+tkvmsFVcK
	X8Bp9H4iVIsg6oC8hmvQ==
X-Received: by 2002:a05:600c:6215:b0:477:5897:a0c4 with SMTP id 5b1f17b1804b1-4804c94156emr41349285e9.4.1769161139974;
        Fri, 23 Jan 2026 01:38:59 -0800 (PST)
Received: from draszik.lan ([212.129.79.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cf385sm122548615e9.13.2026.01.23.01.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 01:38:59 -0800 (PST)
Message-ID: <0b4c5e699ce1d8211314a2bb28d7b6566e577037.camel@linaro.org>
Subject: Re: (subset) [PATCH v7 00/20] Samsung S2MPG10 regulator and S2MPG11
 PMIC drivers
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Lee Jones <lee@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,  Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>,  Bartosz Golaszewski	 <brgl@bgdev.pl>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij	
 <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Will McVicker
	 <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Bartosz Golaszewski
	 <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 09:39:00 +0000
In-Reply-To: <176909970862.4046298.23888884171864307.b4-ty@kernel.org>
References: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
	 <176909970862.4046298.23888884171864307.b4-ty@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
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
	TAGGED_FROM(0.00)[bounces-258846-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,bgdev.pl];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: EF57F7395A
X-Rspamd-Action: no action

Hi Lee,

On Thu, 2026-01-22 at 16:35 +0000, Lee Jones wrote:
> On Thu, 22 Jan 2026 15:43:27 +0000, Andr=C3=A9 Draszik wrote:
> > This series extends the existing S2MPG10 PMIC driver to add support for
> > the regulators, and adds new S2MPG11 core and regulator drivers.
> >=20
> > --- dependency note ---
> > This series must be applied in-order, due to the regulator drivers
> > depending on headers & definitions added by the bindings and core
> > drivers.
> >=20
> > [...]
>=20
> Applied, thanks!
>=20
> [04/20] dt-bindings: mfd: samsung,s2mps11: Split s2mpg10-pmic into separa=
te file
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 commit: c19ccbf37758f90064f7b1=
e32ec291954d97b426
> [05/20] dt-bindings: mfd: samsung,s2mpg10-pmic: Link to its regulators
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 commit: ac1068790221a421e7bc4d=
acadfe8d39d6bec3a9
> [06/20] dt-bindings: mfd: Add samsung,s2mpg11-pmic
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 commit: d0cd9ded4bdef73303e65a=
bbeae47b00b7288059

Thanks for queuing these, but FYI, I think leaving out patches 1 to 3 will
give validation errors.

As mentioned in cover letter, the patches must be applied in order, for
bindings particularly the mfd-binding patches depend on the regulator-
binding updates, specifically patches 4 and 5 reference files added in
patches 2 and 3 respectively.

Also, without patch 1, I'd say there will be validation errors from the
example DTS that patch 1 updates in preparation for patch 4.

Maybe that's all OK while things are being merged via different trees, but
I just wanted to point it out.

Cheers,
Andre'

