Return-Path: <devicetree+bounces-326337-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6kJ+GJdRVmpL3QAAu9opvQ
	(envelope-from <devicetree+bounces-326337-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:11:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7BC756445
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:11:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=C1O0uUsg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326337-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326337-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1D28300C267
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97EE492180;
	Tue, 14 Jul 2026 15:11:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40492478846
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 15:11:14 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784041875; cv=pass; b=aRIIVqS6cYZ9gH10Y2+d8+Ok9nYas0Didez/2E6jtZFBuHEZA7laU8J9HR2LrpyleIOsQfEm9/pDCh/QHlFTHiRakyTUI4ckjuprz8JRI9MDXSoGNqqKHjrTNncm7L7umxv+ukMY4OqQxClk7Xt5DA8YV5raSyk+WwcK3KYoQ08=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784041875; c=relaxed/simple;
	bh=CeOe8BytLTsWfGvljuYZIJXqQAXY5yHjtMlbwzQHhfY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=darSRmtF7w3H4di3S40qY1l8rKIxbb+ZIkYmlX0/v1Ok1DrcoKzTBjsqVf/CZbnG8T+HuFocGIyn64ljYy680u9wfc3FwKlbkyyIFGP2pPNZocjkxWdWEa8pNjgEeOzGsx8N8CZTZKDAAwLasAjJls5pjTiTipQUyPOSzNpQMTw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C1O0uUsg; arc=pass smtp.client-ip=209.85.218.46
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-c15b509c323so578320566b.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 08:11:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784041872; cv=none;
        d=google.com; s=arc-20260327;
        b=Z1Mwv4gfIt/8+dAW+Ynd2BSyF4HbQp2M4XRVFxE0x59nsr/oBCsE4kTRlPyyA4Oayt
         CsJK+ZGc13SS4A9iOX5at6X2p+tQ+dAUBwKj7MnIwU5KlW2y3bBMyPaJFj4Tv2OjoAA4
         rNrvyIXmvOavjKPukCQWZNCt5ZkF+myPBT7hwCfGaBFHT9hR64Lrt+JaBfc4Y68NyNKz
         OeXzS9sqdAks0m4xx+YK0gdrFnc84nhS3UwXHahqmnE66TG0Q6qY+7suGFoYF5yHXlmv
         xZmNqgmy9FhWMk3lYpO3hk4su6OWXqGDlQqOyCCYM6RKz7ESoyxktKq6MBAIRpxs2qAe
         jVaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CeOe8BytLTsWfGvljuYZIJXqQAXY5yHjtMlbwzQHhfY=;
        fh=2jat/5KF9c02/v2DR+m6Kzzd73O3mzDToBHRxw5cQig=;
        b=mOBypRbAYrWieEUZWeK2NoA1PBP2e4BfgQ2ntpoWAmHpQw/gdZvtvXbvy2MOu5VaZf
         noEgCOAtEMYY8Vw5n84k3Y5Nf5vR7ulHmrFS/hs1h+vqrbBS5d+iePEntMzHbRk/K6Zb
         W+kfTsgcTw2llkHf5I3zH2bbCopWjZAkaSNa3vqqqAwGC26Yf7KMLNyvphyGYbAp6BoW
         l5BGB6w4zPQvH8G7bAjZb7/xkxa1Iu9giSo2YWzVo14njuJ9l5m5bm6Oxb08mgzcNSma
         car1lQtUr50K2VBTHNYSUJNfdB1iZSMYvfD8amuxkdESB4XjrTGLWP647T5Y7oxv9N25
         vEMQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784041872; x=1784646672; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CeOe8BytLTsWfGvljuYZIJXqQAXY5yHjtMlbwzQHhfY=;
        b=C1O0uUsghwCYJIIdSsHxw8OmnumXHl1hYeBIWGtoE/hBPGRj9906j6nS0AXSfHEQpK
         rwutTtbgeqRKql3Sc7/4AEqe5KatxhCJeHwxwprH9DQDXvyaA5vBeYqZ2TIj9SFB2aJu
         tKVw8AGy/104nv1g/k/jB49Kq3ppIvh5UaKzIhn0pIk/pgcOUJC0KgM0sK6EQyGnPArG
         agu7zRZ0RNp+YvmSUF9mNwgbItGfGbEKNEyOM2RK7JIVskhrvYRHfauNDEFyr3xyYhpC
         01fcZLR9si8PyqRQmu29Knpl2OCHmVakqJdyqSQck14GhzqFANEoPnw2q58HtKX3UATN
         fN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784041872; x=1784646672;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CeOe8BytLTsWfGvljuYZIJXqQAXY5yHjtMlbwzQHhfY=;
        b=U2BvzuR22eRpaW+s3OHA6rRl/1NRzG8fCUrAQmh0mPrngPHUSZE35DtK/yKRP0Y/aE
         hB2cOvMQyOSiXRBLQmbsZZPRJq+I4K7f7aieUDVM1OdDu+kLvus++xC4Ow2hp6hn1aq/
         4mBOF6V1H26ZrqLNVSlcDGOg5PCdGg5UFcaptbluc7/8skwbSzDwhlgy+DqYTZFaeqrt
         qfpx/gPilzdR0nNew8R1IVcZpl/hgnz32XYpk2baoIjCP+YrRec5DkZIAWKcKRzQMWFx
         Cl5R0SdGW0laeYPiZlo7bvlQ6432W46YQjZZpOa8cSdYi6dm/FZ3CeZiZDEY3rCLMGQp
         42sA==
X-Forwarded-Encrypted: i=1; AHgh+RqV2nvM2pY0xD215aHEfSM8BtwAOLDtVGJnQn3n9w3JDMebM+RMxjRbonjiX3I12j1nWpa0AFDkJaCo@vger.kernel.org
X-Gm-Message-State: AOJu0YxWTtwFWdZurdPS/OG/Q8k7Btj3LHJcsBcO8ExCCvf4tQfWtNn6
	hez5rlvlyMKa1CizlLqbVxNCDY6w47FSHW8RRFIpH+2zG7l/kVUrTyuVrUw2plTRaPm4yYOpIDG
	4fvIA8tgiWxr2I9lkd8sb612MdjPaYUc=
X-Gm-Gg: AfdE7ckSHOuszaeNRzZ3c5F9WtRsHkqP2pEkkK91mX0dOBCQ8PTftWIAN6jjnsRnmcT
	WAFDomO0yMqrPOuP2qB7o+lod8PTcvt6uXLiCliSWXzIfXhFo9PUVZ10CT2q5VWuM45uUm4rBvF
	UnK5h0tjm+4KrQwTPfe5fajs91Z6mV7TjsSi66QYbzH94OrPzb+M1ePevou7nYRM62fIvHIN4LD
	7wc4wwSw19zme1bIDNi+LYPgvePACdPJJe3nxjxqcuYoL3rgVBAU0YXwcNBrGcdF9uqHCLWZw==
X-Received: by 2002:a17:907:c01c:b0:c15:cc30:6c74 with SMTP id
 a640c23a62f3a-c1667a934e3mr152071166b.44.1784041872289; Tue, 14 Jul 2026
 08:11:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260713131223.279555-1-a.shimko.dev@gmail.com>
 <20260713131223.279555-2-a.shimko.dev@gmail.com> <20260713172244.GA2381778-robh@kernel.org>
In-Reply-To: <20260713172244.GA2381778-robh@kernel.org>
From: Artem Shimko <a.shimko.dev@gmail.com>
Date: Tue, 14 Jul 2026 18:11:00 +0300
X-Gm-Features: AUfX_mx7lE_nN8ekhGaYC-4WK9SqZefZ5Wc8omCFMKu7jWCwLuuVZoL2ZJ8_4RM
Message-ID: <CAOPX744QmBpZvQgA7Om_1DKOZeKCF3FdVc5XaaF8mCFJnQ4QYA@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: add DAPU Telecom
 DAP8211R(I) PHY binding
To: Rob Herring <robh@kernel.org>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:hkallweit1@gmail.com,m:linux@armlinux.org.uk,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-326337-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[ashimkodev@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashimkodev@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lunn.ch,gmail.com,armlinux.org.uk,davemloft.net,google.com,kernel.org,redhat.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE7BC756445

Hi Rob,

On Mon, Jul 13, 2026 at 8:22=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> This would also work:
>
> multipleOf: 150
> maximum: 2250
Yeah, great

> With this fixed,
It will be fixed in v2.

Thanks for your review!
--
Best Regards,
Artem

