Return-Path: <devicetree+bounces-325809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3Zb0BmiJVWokpwAAu9opvQ
	(envelope-from <devicetree+bounces-325809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 02:57:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A9074FF18
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 02:57:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XkdczLdr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325809-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325809-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 144BF3014670
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC9002E62AC;
	Tue, 14 Jul 2026 00:57:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAF9245019
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 00:57:07 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783990628; cv=pass; b=iiakblo5YlpxSay8JQv3bfRSBYHqYxVd/PMz0+Ts5MwL+jQ39JxCnMOj/93p+tCXuE5tmv3eI6vDEnBNt2JNb2JdozFWVtIiJUBWd3Z/eO7j+4VrrbvmFSIQjPGWFohVYWdscFhYcjyymBdYTwCV+XiK8L1v6riL3XQM+tsqV6E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783990628; c=relaxed/simple;
	bh=zBOuK1fiJIvJEdnKEb0XcGLpoyn5VXPUIs3BDtPFNdg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hqynhUhHQ75haNWjGKLRrp1Ns3zP3RFLr7f0oImcpXVYHZ+9D+neBd3ZMKzA8TlN5mXQjE7dqWNTPR1/mqFLW8qOy/duJl2NGNVHWo4pBz3FbcMAXenKVhjCt2t8XTgwHVNKYJmS4Okhi9dBfwILM6/SChBXzDKUJvcZSIz6j38=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XkdczLdr; arc=pass smtp.client-ip=209.85.128.179
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-80a123ef90aso9569707b3.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 17:57:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783990626; cv=none;
        d=google.com; s=arc-20260327;
        b=dvLryxj6tQBxdbxWfgITyykwRyQaf8F6B2Mc+rZHOC2lzBiTqPTm5oa5UpJsxG1IoI
         FCMrkjYQ8sDFGmfUZ+if0X09JdAdofZFArQSlq9NB9+cZMQrr4w88HpYSaTJt/stHa3V
         KRT7yCcbWNh5G3HR0Nxnmh5GAOsJFwrjjyY06zgob+cLJD/uEo9WIL1pPtk9jF1iSIQk
         bVrBKJDce5YFS0yrsqoDSaF8XnSEM8EdXsJtObAOg+UfvQZb/LfvMNRjMA6UUiy6sRxm
         cdUH5aWaQjiGHG/UeqGl2KPNOmA0A6aLent9EB8kYmFeb0gf6luOxVuc5hcnuKtx3OAv
         Rv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qRTzldVn7TOQ3wVT2lQ87Jq3ZB+fgzKs0gQwg01R4AQ=;
        fh=U8+BJ2M66il3aooSIikNbPHoCaNl+WWNoSZ4cfzmFvo=;
        b=NiqYktUsFNEINI+p5RJSR8v6mtIMoDhjlJgfqE8wASxSqgzO4dQqxQeKi9ZqBKMLJk
         cIpshr/CrxifRxVuZRrxluEe3C9EnReqO4vRRSYB7jJw7h1K/lN1/WhDVlPfgMlgMM6H
         jzv/P9k9zzmyHjPN2oUFsYMZ20yo6etvozbtiEJuMH2vBcBhIilXq5Au7zqDVrlmAxs0
         Q3vhHhVeNLyoExSzWKQlmSohzLqSJq0pr2yQ8JuXirPoWbkI6mzgpGaXajc151qlw6Zu
         1mzqMYmZMv56mDIBPGBz8rGhS4E90BxYxqB4KWowd3J3xfqkfj0kTZyzY7rIctcak19y
         Ekmw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783990626; x=1784595426; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qRTzldVn7TOQ3wVT2lQ87Jq3ZB+fgzKs0gQwg01R4AQ=;
        b=XkdczLdrq70FASbqPH0OLCXS7exHrjfyQqcnjyGmzAcha7/Wd+TcDZ6gJORwnwzEwq
         s1Em1kAw9R6Mgy/Qu8wSGcoesE3itTFU1tnS2+XMG4XnrEC1jkVQqp3JxHl2W/FnWiuI
         m+1FRKZJNvd5vmngTfV6GOP5toFBEmeb3m9ZRnyILnYouQ/TAxv8kykRBdGEPWcOpxcm
         bPNBDz720aVFXPPu2tQo70IhyfKNSCw7irBT4tAU3WAscI9KhEd600Elv0SOPwlzEogf
         B1VFfKS+sMPsTeELOi9efTVh9x9MewbxSFm0Wz72Vou0OL/tsHNEVo51d7BIDMxKsh/l
         OlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783990626; x=1784595426;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qRTzldVn7TOQ3wVT2lQ87Jq3ZB+fgzKs0gQwg01R4AQ=;
        b=iqTy67xfH6cVPAlwYPkY0GNMF/mS4dbd+6BC6F7jQTWh9Ek0XS9B6GtAePS+v8MNlO
         gkne6DcFWhzQeDeMUuchLG7d/DaAowOk6NhjDXH4U1q643XQgoY97HZXkHmvtr6OefQU
         ESq2fV9KDp+cw6oTWMlh4Zi7yU9kHE/Rl1javSa/SU43lUgNVekrzACyLkcEQdaeUP42
         Gf76o5DTzdm/xq2yzZfha86ZSbgmb+foJM459YrbtuOGBJfcTWaylzBmdiXuaENf7pI4
         ZqbweshzLNILoO5P3pIX9rElsv2xnGAzgQSBFwj/M2OEhq1oOf18sro380cAeHdmcaxG
         BDTQ==
X-Forwarded-Encrypted: i=1; AHgh+RrQmWk4IemVXRbC60xQb5qLQ/zGorfjEcZHXUe+o3uMvV3Uoy+dfenaRmtkgL3SJWZ14b2ubtTisUz8@vger.kernel.org
X-Gm-Message-State: AOJu0YyjXryqjZOwuO5RWDnqXJq/oJCcs6ZllK3xmml44YxKBpRbOoEU
	vNUcXjpksxS9oqvUJgZRiHSofU1rgzElmEgQKn0gHk4EEAyuN/PQ0fThpbEtCOLSx8ckzn3YRAx
	CYt+5mtXTmIcOmvBakYLXN7mpgVIreqo=
X-Gm-Gg: AfdE7cmiwbUdrTbGCtqQRSEEW5huCkRZtklfaAmJj6TrqFLIwLzi4qp4/UxGFrpPw8B
	NMq26xuHkJW8Xo/5NcowFyMcZS62o9OMgUDJkLpnSe67LKhfKloYKf+tDQ0ZlYDB9z1Jlvp/iMm
	RwGZEbVqe9EWtrxPsWGIr7dUDeDJBrIk4S0yREPQ7cFLUBffTlo+9aC2tF83Dfmp+vvRg6SEdct
	HT1X7XzyIGL4JeI3BYOwY+4EKgNATiup5BWGKyaDeEtYZbHuTaC1chN8JB+U60rx2ez9Q==
X-Received: by 2002:a05:690c:b0f:b0:81e:7e26:7ece with SMTP id
 00721157ae682-81e9087e4famr82465377b3.30.1783990626355; Mon, 13 Jul 2026
 17:57:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260611132700.671322-1-wafgo01@gmail.com> <20260611132700.671322-5-wafgo01@gmail.com>
 <e01d100b-9809-4af3-8f21-055f687ca6c6@kernel.org> <20260612184729.795e0e84@jic23-huawei>
 <4e4ef1ae-62e7-4639-914c-19f49930be02@kernel.org> <20260614161011.7f7946f1@jic23-huawei>
 <84503093-4bff-4c93-aff8-aa07e1a6a1a1@kernel.org> <20260621145117.70b2d50e@jic23-huawei>
 <20260708065010.89252-1-wafgo01@gmail.com>
In-Reply-To: <20260708065010.89252-1-wafgo01@gmail.com>
From: Maxwell Doose <m32285159@gmail.com>
Date: Mon, 13 Jul 2026 19:56:55 -0500
X-Gm-Features: AUfX_mwA2BgyHnPNIz4R8kEeluKzuMzjL5SHhal5QSS7J-VY8o2-IW29ho7SEEg
Message-ID: <CAKqfh0HwuKt-5=ARirHw_-QjM9TLzE2Ravgz7e-sLdxFC+yDcg@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] iio: flow: add Sensirion SLF3S liquid flow sensor driver
To: Wadim Mueller <wafgo01@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Marcelo Schmitt <marcelo.schmitt1@gmail.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wafgo01@gmail.com,m:krzk@kernel.org,m:jic23@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt1@gmail.com,m:455.rodrigo.alencar@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,m:455rodrigoalencar@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-325809-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 69A9074FF18

Hi Wadim,

On Wed, Jul 8, 2026 at 1:50=E2=80=AFAM Wadim Mueller <wafgo01@gmail.com> wr=
ote:
>
> On Sun, 21 Jun 2026 14:51:17 +0100, Jonathan Cameron wrote:
> > Ok. We aren't really making progress.  Let me layout the three approach=
es.
> > + advantages and disadvantages as I understand it.
>
> [three approaches snipped]
>
> Hi Krzysztof,
>
> short ping from my side. I have prepared already a v5 with the review
> comments from Andy and Jonathan fixed, but I hold it back for now,
> since I don't want to change the binding two times.

Quick update, I'm going to be updating my email to maxwell@maxwelld.cc
so before you submit the v5 I'm hoping that can be updated in the R:?

--
best regards,
max

