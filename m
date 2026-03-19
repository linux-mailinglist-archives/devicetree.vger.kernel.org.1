Return-Path: <devicetree+bounces-277906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHrdL10qvGn4twIAu9opvQ
	(envelope-from <devicetree+bounces-277906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:54:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 228F72CF303
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:54:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4278326EF55
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E15615E97;
	Thu, 19 Mar 2026 16:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gbGhuo/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206273EC2D7
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773938616; cv=pass; b=g19BeqYiV4iVVYR3zZSH3Dk2Qg2VphHspOKoE8x/fPLzwKpyd+Uto77eDEnyF2TFM0tFFUkvhR0okQ8FBRwIDC272BWy0adxjN7uJ7sQdX2nK88WKYEcLRjQIy0snlk+T/Wiu1cmrFSbhB6ScYQSixacrr7NZ6NFefh9DBbm2TE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773938616; c=relaxed/simple;
	bh=l0eU5c0HgKDSlNJCITX3MHjJtcSK/SPj94MpY96kAVk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h+JGZ9RnO0QEcFjR/3IqPf82gOpw6cOJMi4jpipJLdv4vJCuJYyXX89jMacJ/dDwz1Tua/+zJGoZV+KjA2kV5tw1gius2FbreGh3d6UIx8jV1gegCzH39xnQN7pzPaD7iIui5pkfJ+daDboRNiuY0WFkfOZeX/IG6IEVFhzoKeI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gbGhuo/r; arc=pass smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3878de20527so8793561fa.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773938609; cv=none;
        d=google.com; s=arc-20240605;
        b=HQ9dP17jo6tFpjvH2drYAhTTus6zCEB8hciiYkcDG/zxcbCWpjz54XWToBbbW4W0mS
         4Hj1+Q9pAQLkxZTH4O5XTTpD0hKbRFogzJNRe7Ld7jBIPOwlxkNU178u8BcyKuazRqFe
         uchsu0S+naomEA4SlbcRhJlkajjXue045bhKZ2ZpYoMmyoiLKfKNjQLFZlWRAPPl+Dey
         VEFPu6o000KFMmpj4gvGrlXsVunWPWBmo0yBPlRGLuhOUrkTwIRWZ/Efg86tHbLKrYs7
         v8F13i4jBSYGdf6aKK60/SI80EuX0x/sFJgfZMnWOcfj0aVUNjreYHacpZKJeSTWhhaS
         3+sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=l0eU5c0HgKDSlNJCITX3MHjJtcSK/SPj94MpY96kAVk=;
        fh=kv9rz9TZmD1UZsSEMJ3DFhZharMpeeiyUkZmc++DmVU=;
        b=aHq/0dNUCuZbshtczE00X4cOlo9oMQ5CH/Mc9TQiO3/CrW2B84kzNViomq1gAW3KN/
         2xt3G3nYf9S+Gf6L8NKbYTZijxR2LtQrar5Nu/TSlAiFWjQTlO6Lay9Qc2lSqOW65DIQ
         mGTQrVnWYqtDsgrujCBBbKkOciWoCUTic772dDzVM+oiAM/x2Bt3MUiGTSOXlN0Psxmj
         WV1YFHKR9odcHWyyVxr9aw9eKraxfysxSdan8G5KYJDvSEobesRwzuZfSB5tvu6xZrpV
         8tGBQRbjohTrqbL8du2uoxheHkS+gU2kRiHAGC/heFwRcFyE26L7/UO9qMRPsQQKQaXd
         +OWQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773938609; x=1774543409; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0eU5c0HgKDSlNJCITX3MHjJtcSK/SPj94MpY96kAVk=;
        b=gbGhuo/rG1KM01mbmrI/+n1PIhq6yLZERMlC49+Hvy5VWBMsywIYe1BtX10hy6z3NN
         Wq7WOe5trpwgbz9VXuddO7NeUPzPLCKRqvlYHwRXlj2ypsQt1s7F/4l+uoVfHhs9la5S
         Y1bb4CQexfezFo5JZPV7ZJ8PE4PVUdw+vPyAj7YcQz7nvo8Am1XPpTyUfE6iUY2pCk1M
         HU/eH4nTrEPb3S2WVOyONRbuBE8iJsJnubWqzp64+/xrtra6Ih4tNuFaUE7vczLQZSKv
         zEuHALM0AbYRZ6mkwWYUNcpM0yeSegF2olmHzpb55wWbrwOaqo0XM/X7RFlbmOUIQQj6
         fKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773938609; x=1774543409;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l0eU5c0HgKDSlNJCITX3MHjJtcSK/SPj94MpY96kAVk=;
        b=AuBpSIOUQsW0JBSjV7D5UZ/i2C//g8IPT2v9Rob0skUPjLhdpgA0d80AWTk/AkdPOu
         vnBbdhNcg+4E4c3rPwxu9h5OBsuqMwttJAgmRRTTQVdsuQSQ5Ybm6z10dTWnuP8DHEJ5
         /ldeVeS+NjdiXzDaWeV+eBlYR0FBfmCCwyUXQRMbsuWVXmLcsX6n7y8QhB4rRsTLgj61
         FM0K3M6O8NwOgz1XQ5S849M46kYrGNCTOWsAT2vp7mVO79+4ziIn7fviOhG+mvUv4imo
         kT2/70YOZQcTeScse+I/qJgK1D62IIks86o2c70L878snFO+NqigY9ba9QCMUEot1pn/
         v/zA==
X-Forwarded-Encrypted: i=1; AJvYcCXT7nMlYY1fNl4foqWPemEbQd4tHuZPo1QmGo30Y+c9wYVkL5CMZm3u+5a+su1lFUBdoHKR9ODgI+iZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzaRdgcN1kepUHBO5FnYy2psT5OZZyehtf7x/FFWyz70/w3pZEN
	fE/A0bimHy8qmABMDwdlUWO+7Kh0garhti86bdTFh3QrQybnbAUOZRGDYNESFbu3DJglqEPPJK0
	DnXq9zOIojpEw9ycKbSPiDAWCc4goBfVP3+rfYnMXlw==
X-Gm-Gg: ATEYQzyEEsRcXd7ynMB6gnUX+LN3iRBZc1srBJV9tggvdX9G0N9jnpLfeisAosH/VjX
	1hlGRnNEL0/iQHyEYTl7ixzfj0LNINZZcpZaZo7del6rGcC/9KCigjN0XxB8Rk9YW1VC4eoIxCg
	1tx+Dfo4F4wT1xSulK2e1M9hNGzD4c+ZTOiTOXuu03Sz45bZN9azhGlviLDHq+vlBidWqiYBYvQ
	Kl1WddcnzyNFEQVFTH2fvJ8Ukr29xVwkd9vnP6b4D4FBLw+QxTBNH9+CUXzpWPkUiei+oJ1gb1K
	WXrcy8Ja
X-Received: by 2002:a05:651c:324d:b0:38b:f0aa:36e7 with SMTP id
 38308e7fff4ca-38bf96ddf40mr439181fa.31.1773938608940; Thu, 19 Mar 2026
 09:43:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
 <20260318-gs101-pd-v8-5-241523460b10@linaro.org> <CGME20260319101424eucas1p2d5dca06240e8760046fb40507ffb3bba@eucas1p2.samsung.com>
 <CAPDyKFrprMSLOBMB_BHbi=j6UXV4dXBn-H8M1BsqDWNSCJwvuA@mail.gmail.com>
 <c5ba58fb-50f1-4067-a099-97169ea81f68@samsung.com> <ae31c62c940e99077d44e1935465dce7db0e4c06.camel@linaro.org>
 <4809918d-fdf1-48c0-bc10-fcf75837cb81@samsung.com>
In-Reply-To: <4809918d-fdf1-48c0-bc10-fcf75837cb81@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Mar 2026 17:42:52 +0100
X-Gm-Features: AaiRm53oqCm_eJUl4m-8pk5SCQoZ-_Pm5z0ieeorC9RntVzrStWwABAEThg9uu0
Message-ID: <CAPDyKFp8zsbgRA746Sds+1y4C0FvyohF7AFVsEghVkhukGZafg@mail.gmail.com>
Subject: Re: [PATCH v8 05/10] pmdomain: samsung: convert to using regmap
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Juan Yescas <jyescas@google.com>, Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277906-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,samsung.com,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.906];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,samsung.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 228F72CF303
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026 at 16:57, Marek Szyprowski <m.szyprowski@samsung.com> w=
rote:
>
> On 19.03.2026 12:58, Andr=C3=A9 Draszik wrote:
> > On Thu, 2026-03-19 at 11:29 +0100, Marek Szyprowski wrote:
> >> On 19.03.2026 11:13, Ulf Hansson wrote:
> >>> As a follow-up patch on top, please consider converting the open-code=
d
> >>> polling loop above into a readx_poll_timeout_atomic().
> >> This has been tried and it doesn't work in all cases required for powe=
r
> >> domain driver:
> >>
> >> https://lore.kernel.org/all/5c19e4ef-c4fd-4bf5-88b3-46c86751b14e@samsu=
ng.com/
> >>
> >> Probably a comment about that could be added directly to this code to
> >> avoid such conversion and breakage in the future.
> > I am planning to revisit this in the future and am hoping that we can
> > figure out what goes wrong when using regmap_read_poll_timeout().
> >
> > Hopefully such a comment would only be short-lived, so maybe not really
> > worth it? I can add it, though, if you prefer.
>
> Well, I think I've already pointed what goes wrong with
> regmap_read_poll_timeout() in the above mentioned thread. You would need
> to use regmap_read_poll_timeout_atomic() and modify it the same way as
> commit 7349a69cf312 did for read_poll_timeout_atomic().

Thanks a lot for bringing this to our attention!

To me, it looks like the regmap helpers should really use
readx_poll_timeout_atomic, rather than open-coding the loop from the
regular iopoll helpers.

Kind regards
Uffe

