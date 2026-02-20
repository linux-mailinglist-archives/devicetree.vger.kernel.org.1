Return-Path: <devicetree+bounces-266925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBcCFyFEmGm0EgMAu9opvQ
	(envelope-from <devicetree+bounces-266925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:23:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BCB167429
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:23:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8826E3008765
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 168B532F757;
	Fri, 20 Feb 2026 11:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ezc8orMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B012B324B2C
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771586501; cv=pass; b=EghmVBH/AK5iSqTz2eNWU5FIdbF4AWZT0jx3lP0aaQ6pSDwhEC39USf8oxbIWjq5eRbtoLUAXT91w0NtrS/c/s8C8EmoA+ZE35yzttNO74UKworT1saaW2PvofohfI4O/lVAJmeXN95jD1DloyDnAMdQUlYU3cEWyVmR0F3R2CE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771586501; c=relaxed/simple;
	bh=5tvCpGtC60kr7PZ8TJ1YtQ7guU+6pXgo5tCrHV/eKdI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q6MhbflA0Mtd6zhAaTNnH8QztIfWF6iktbc9gHBZqbat02IPEndKXoz0kezlNWmKWTD8yF2+Ss4Q3SNu6m87YYugY3vQZlPi+HYL77CyFAUwB91ea4xmPw51ScL0YtQNbJwFek/skjKo/Hs7CRVNqBEdrkaH1LNcw847zjubrRI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ezc8orMg; arc=pass smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso2225265e87.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 03:21:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771586498; cv=none;
        d=google.com; s=arc-20240605;
        b=gYgAsXKXzt3/+ngBIqe3xFUuIo6qWtlkfqtM5+3xnEWaIjTZaC68WRAEh8GixvAbm8
         21K5deEpT3ZNTu6YR6zmniQcltKKEX+/lm/p3xMntgDjoyuewDDYCqudaXFh2er1b4+9
         nyATbT8oZ3/WGVjH6YeK7zz7LZQs7P0ygZj0SmMPHhZzxUBVvTSOAb3W6tVROFA6WxJx
         OpK5eO6lgVclg8FTNlobYHMJ4C4sJBRI0CE01UQ3EN0kFhZpe9B5ElxrPR9/vP57QKkW
         muZ8HiU5yBfeGYYQtUkfAvFYaTCxSVFb/ZSOdMGKJj23K6X0aUMyIMuY9W2TAhBd2JdG
         TOUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5tvCpGtC60kr7PZ8TJ1YtQ7guU+6pXgo5tCrHV/eKdI=;
        fh=NXWGJwO/OfMojoRFD3ZvIXKYQ4amQtIJ+joo9p3/m5s=;
        b=Jr1yJfrXt1kUr/p4kabg/uBll/ZA7q14Aq2R/2Tns+bbmYAdtZbecFH7A6tkFM5N1R
         I84tQOPSWIacu+mDDfdmV33GTk+RrYnXnuKt4PEyAA6l48IuOdIDZ0UM40GdvOKuZj0G
         KYhHgfCrtJVmStF0QEcygasuW8Zf7eUSlUmfKaGZVESn6ZLquJm6c6aOMVaWwxH29zUT
         4A9KAdkIAlTHcbDtLcwfjZbPo5GJ36e9b6SZFKyCnwyrkdZM4qoCMwRSCg/m1lRM0HZT
         yEY4xpXhTavFVetOaPVw/+mj+/wM4eHGl/bJ4zFzj4WBFhxAoRnZjHiTygOb9tLQJWz/
         FFAA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771586498; x=1772191298; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5tvCpGtC60kr7PZ8TJ1YtQ7guU+6pXgo5tCrHV/eKdI=;
        b=ezc8orMgUVfvyAm46BBQkchpBGpfAO1lbIu/5jcP4sbm4mhUAqmz11/1xRnLmf7I54
         gNp4rLrgu/e6FTfs0Q6mUveKjTcJ1yjKs9BbOsZ2tg4yj2u+y4xsW5VFs8RyBeVHe1Wv
         rl5gQRYWDF8+2OR+bwA0ha5bwazTKqBqKUynMiFLs/2vNcP5eSSIVqMMPXpLrKVzKnJm
         LjvhShbeilQwN9C82Tf5Hh7CBXLatYHSFjPewBZ353xgeLFNeinZGxZyjrbUDha6V9fd
         4NGrhUEEnmLKWIgazDtrn+ZEmzPEAInwFe7rJjjED4o1azfcGS/Fc1qdOws/cJ8nLZKp
         Fz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771586498; x=1772191298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5tvCpGtC60kr7PZ8TJ1YtQ7guU+6pXgo5tCrHV/eKdI=;
        b=E7K3WBSH8LUI7K7pmuz10iLvGJwdRzklbEo3Shi2V8uLUX3280Wz/rImWGK+R9ccsF
         u9hhugrdy2rW988SNHWmJkR7dSUY1aTCALKgvQmvGy6iXpUfmC1MyuiZ0fpdlZwdd8XW
         iAa8vnhIxVCWvYJcjAPjFofpyH/UdXcrs9ig2+X7DKwf1LIhsBAfEKRhAHLIarmrwgyq
         ONzFrF36c5IAcWkUF+0XE+3s5XBukg3Vt/yb8BRWbveT412SFl8pPs8ASYeI4uHF8TNv
         0DP7/aHUYlHd50Wo//r7GXwBxU5hauheK0qNL41FoL5/d7/W6H3bgv5eccpXRT+YmuuO
         43og==
X-Gm-Message-State: AOJu0Yy2B0h65Fg43ibtBLXeMU7RatX+W7/7MX3Ugs73SdIGjnPYC5jH
	U/X10L9hFzhSSD0u0bnWUcDLX/yfEcPYoMNH5PrVXUjEvtyphrNrX4jvvA3k54ZT/20iN0TlMTR
	i+AIMWi94gYyvDdlsXhUV4ib1LhJBtZU=
X-Gm-Gg: AZuq6aKqPzhegVqHXx3khAjxiz/XTTsMgo+LhT8gw3IE9YxNmsWOWcAGf7wdU0JUCPL
	56SwsndpY/+fA1qcPsJ654o+sxfXLaS6Nj2kfc5XlLovOVOX3ITl8eOKnDJrWkJzRCXXQssu0Ct
	0GEu8lr7i9RBt+QFN4/0pfXBt1NM9mgQ4wGxf3t1lrxoXrI9E1LPkSbTPb/2fuKF9RKEMD61w3P
	t5XAzsklGSSVQptzb3xHlWciUHcLP23f9yKozGrCnmZz71kXDS87df8N03qiM7DLIn4FJLum9Xn
	idNzPtQn9Pqo8bWIdmOG1T07/lgfxgDvqk2Ytw==
X-Received: by 2002:a05:6512:3ca8:b0:59d:f80a:629f with SMTP id
 2adb3069b0e04-59f83b8b3c9mr2800376e87.9.1771586497502; Fri, 20 Feb 2026
 03:21:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220021353.40554-1-rosenp@gmail.com>
In-Reply-To: <20260220021353.40554-1-rosenp@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 20 Feb 2026 12:21:25 +0100
X-Gm-Features: AaiRm53ZEQkGl-wQSfiEv76gUZanO7ErQ8jxfK7qwDQjNOMQqFvrhR9D0BkWdss
Message-ID: <CACna6ryBW-6b0UYaMq12Xf6bdgQV9AxYajb9use7g4o=VK59+A@mail.gmail.com>
Subject: Re: [PATCH 0/5] ARM: dts: bcm470x: set MACs where missing
To: Rosen Penev <rosenp@gmail.com>
Cc: devicetree@vger.kernel.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.05 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266925-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zajec5@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B6BCB167429
X-Rspamd-Action: no action

pt., 20 lut 2026 o 03:14 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a):
> I believe these predate the bcm,nvram driver, which makes this
> possible. Downstream OpenWrt currently assigns these in userspace.

Changes look good, I just posted one comment about commit description.
Thanks for submitting this!

If you check
git log --oneline arch/arm/boot/dts/broadcom/bcm470*dts
git log --oneline -- arch/arm/boot/dts/bcm470*dts
the prefix always used for NS patches was:
"ARM: dts: BCM5301X: "

I guess it may be preferred / required to follow that.

--=20
Rafa=C5=82

