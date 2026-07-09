Return-Path: <devicetree+bounces-323866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 95bPHKK4T2oynQIAu9opvQ
	(envelope-from <devicetree+bounces-323866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:05:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8E37329C3
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:05:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=9elements.com header.s=google header.b=RxiDQrM+;
	dmarc=pass (policy=quarantine) header.from=9elements.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323866-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323866-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC82F30AAAB9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 14:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2795348C48;
	Thu,  9 Jul 2026 14:21:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F5D1BBBFC
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 14:21:33 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783606895; cv=pass; b=UC4Nwng1qf6BS4qHGxyLv5a9gOndQDaaTMa2jF65bEehCkCG+Iu0Uy+hZwpjIQWEoB7ReTBd+Ipa0s8ChVzOpaFdS3vZ6DjuCoysIt/MqKODWEwEG2ilMnZF5s94zO6LIs+oiaLbJVpousq8pnRbvC8xV2N9hk4L7pZzBgSSbi4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783606895; c=relaxed/simple;
	bh=1LFi/C2g955kXJ/o/L4vV9qdHPO2Wk9Vvl9Gbcga3LE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IQgHif6RmvoXuyNIdewVQLW3SAkmb0SwBHF/nVaVV8WxshrJmDLUoH99Rxk3Ry9IhmIpjnWP09ewpjCIUgL2nUeiJASsew/3ZEq9TD1Fl3qNgTgZIbAmf+TTEQA24oSSqR/4UAQcJGkQU5hcI29SPm9nQJjPWGPR3s9CO6PXz2Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=RxiDQrM+; arc=pass smtp.client-ip=209.85.221.47
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-47640541585so1002619f8f.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 07:21:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783606892; cv=none;
        d=google.com; s=arc-20260327;
        b=HjEX6ywUoaQJGDNt9gZDWiLxOyprLkxG/z/hC+eLt4i3ucm6DaGlNsEQD3wT6QcUok
         ylIDusq6cU5bQNN16bB1pQyx2uZ4biyJGQDSy9yHrvP8X9UKxId8VeOu9Dsb3F0M6nDP
         678fHvi7QXBiYlLPhsosbei+42T+OMSwbZZiYlbASkAmJEZ2YZFIQMmBBAA3au2sjXqj
         TUcPfnjVvl4RRT/PuOkytBIHEwS7qmSoiDRL7lDgPj5xqE34KA8xRmy8+vVfI++Rh7yV
         RVyx55Rh/tDpsg5YB8jlPgms6cXqezfr/3C/dJuLA6ezthUqqNT/wqktQEqeDs9lE1Z/
         sJXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PJC4lX0tZTp50J0S7on2pHdgb/jZHm/OiyTuKIg2KPY=;
        fh=sHwLEOWaTygO+d8AYQb2/7KT3c+sH3Jh3ft2lrw/oQY=;
        b=ZBApx9YJVl/9fb+WQjkYmyjGkmIDprRgHuOfM7CrHIpamjVK6N+gfWqMFW3Vn6YTzo
         XiPUmHA3zQKrBdcswZ8sTfhvo9WMb4IesIP73/U6NZmv8egHcuQ1NaZCBi8ft6vk3wdz
         l2pNgo+tBBvaVTzPuJ/8vYVTWv1OVKaZGOVmeALymHOvJqk2aiSn/WfHAXLFWzpGss/E
         DPxaKxHJroF+n8XbRXZ8HKpXYbo7DBz8A+zN3eGviD6RpVoAGrJyFBDNuCbbPsElrV5T
         LJoqWhqLidAQ10kOGK6LjJjTMz1STD4TlHnuueEmTWD6TNH+qQdquwn4NaMMR725p+VA
         Eq7A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1783606892; x=1784211692; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PJC4lX0tZTp50J0S7on2pHdgb/jZHm/OiyTuKIg2KPY=;
        b=RxiDQrM+/nel+al0V1Yt8xIPucCgxXSo8TzCvLkb4XHIgAD0zYBlDnoLxFbB7sKNKL
         tYmzUKu7hhJ7gtVbqp7bJQ+Vy5KmVCBhODoYK/vzSrNe5zODVPcsC1vvaX8yGwz/d9TD
         mKrAAo+Ohh+gCv9NOzcUzX4xgoB26D6Nfd/unSnDnSuwL8ZWKuowZgar1RthPeRdfqwR
         n0TL9PxkBWcVdYgSK2XRMtxO8GOOuWBbawDkNQ46pMuopjd1vGeu3ktIcjlMuOCF/JmU
         NvUT9slLQqvAzx0TIsDHGTdfIdCBBe/LeoIDb6G6SAT9Jp8X/HOCpTXDRZO4O5E5WTPi
         KL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783606892; x=1784211692;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PJC4lX0tZTp50J0S7on2pHdgb/jZHm/OiyTuKIg2KPY=;
        b=ThsiJeoVaAEMMUKSDXxn84Mj51kxWOgZikA7VTJR8n4/ftFA4xcrZzEbh0Fa7RXRU2
         fYz/8CGABYmVO84/VbkcWHPTKXSsqX0U0g8Dmc75jxyuQpSJ7wCxbFg2f0zEw42k7x3T
         oq6uTeDZRJsMrrWEzciFQNS4SzAi2zpd4SNsD5Bd0g6btbYnQ0MWowIvVefFvZvy3EM/
         VZo8bVwsW6kHVunmTTAB/0/Ur9o6SNdu77Rbw+RPg5xsrMvkpw0w90jnARHK9xnuXfls
         stoNU8o8p/SgkBiJdqg5i8nWR9uXTcY2D1XixrHJ1tA80pG8VjGZGEAnfQzAcgPMrdxo
         Zuvw==
X-Forwarded-Encrypted: i=1; AHgh+RpYVKsYGxINU8/d9oBlu0CQeljYwCoV57hxvowtdm4GFBP416Hlk/bjUs/QpKPGVysAkfSN+tHR0vWJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNnsBMT27kiOABgyKPPYkXMFSr0TCWjVx0X8bRLG6NRaaxutRn
	3DW4nRqSws429Uv0aZI121QQnH9KN7NyEA4TuZif3v4s/YZ32p+bfMqM66XTyK+qpgQG2ZHJNxZ
	IF5ZqzY3affo/sCnUZ1N6h+zcc8XBAHCw87YxQcRjhA==
X-Gm-Gg: AfdE7cnyfB7bgA88LkJJTR1vOEhXvlPEVwSOw9j9V78KzV7+2rea9mxKZsjZNkQ9D2N
	d5ZE37xrcMc4m9YxA22Jz+lWAxW+6sC9bZ6ijuAcGieWJJTi207b/hZ75JTFmz5YoBpZoVsN+jW
	h2X+NXSP4qIVVElkXrIJR0FVxu2mT0iYTKYuDRxteGB0Erui0zYrXUzwMEntGhHosMKuYhRFpQ9
	XxOL6YV0OLtP25uw9JxGIDdTecrTSLNKJ3kHOt5QAPILcX28bnvupraPx1gVU9rWFvvQTvqntRn
	k/VKDVzBaYdKLW23z9LH2ZjsriWKqZLrAckPWoT12ZMKt97pLYqHI3lW4JAFgoJfHgJu
X-Received: by 2002:a05:6000:25c7:b0:477:3986:9b54 with SMTP id
 ffacd0b85a97d-47df07390e5mr7576513f8f.20.1783606891990; Thu, 09 Jul 2026
 07:21:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1783524645.git.gregoire.layet@9elements.com>
 <cbe59dfba231dcd55fa86233dc076b017d67463a.1783524645.git.gregoire.layet@9elements.com>
 <20260709-convivial-classy-mouse-db0b2d@quoll>
In-Reply-To: <20260709-convivial-classy-mouse-db0b2d@quoll>
From: =?UTF-8?Q?Gr=C3=A9goire_Layet?= <gregoire.layet@9elements.com>
Date: Thu, 9 Jul 2026 16:21:19 +0200
X-Gm-Features: AUfX_mxl9lcJsse3vhAYFsJh4Ndo0WrxC586WRK2sT65vAOI74m33ywGfCLJYeM
Message-ID: <CAFi2wKYXVoBRHOCgA_6F20F2Wm4Z2wVz19+XRE9dH=gP3X+i_A@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: serial: 8250: aspeed: add compatible
 string for ast2600
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, lkundrak@v3.sk, 
	devicetree@vger.kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, andrew@lunn.ch, 
	jacky_chou@aspeedtech.com, yh_chung@aspeedtech.com, ninad@linux.ibm.com, 
	anirudhsriniv@gmail.com, linux-serial@vger.kernel.org, 
	linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[9elements.com,quarantine];
	R_DKIM_ALLOW(-0.20)[9elements.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrew@lunn.ch,m:jacky_chou@aspeedtech.com,m:yh_chung@aspeedtech.com,m:ninad@linux.ibm.com,m:anirudhsriniv@gmail.com,m:linux-serial@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323866-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[9elements.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[jms.id.au,codeconstruct.com.au,v3.sk,vger.kernel.org,linuxfoundation.org,kernel.org,lunn.ch,aspeedtech.com,linux.ibm.com,gmail.com,lists.ozlabs.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,9elements.com:from_mime,9elements.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B8E37329C3

Hi Krzysztof,

On Thu, 9 Jul 2026 at 10:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Wed, Jul 08, 2026 at 03:35:53PM +0000, Gr=C3=A9goire Layet wrote:
> > The ast2600 was using the ast2500 vuart compatible string.
> > Make it possible to have ast2600-specific properties.
>
> Then add these properties here as well. Adding a new device is one
> commit: its compatible and its properties.

I thought it was necessary to split the two. I will squash the two
dt-bindings commits for the next revision.

> >    aspeed,sirq-polarity-sense:
> >      $ref: /schemas/types.yaml#/definitions/phandle-array
> >      description: |
> > -      Phandle to aspeed,ast2500-scu compatible syscon alongside regist=
er
> > -      offset and bit number to identify how the SIRQ polarity should b=
e
> > -      configured. One possible data source is the LPC/eSPI mode bit. O=
nly
> > -      applicable to aspeed,ast2500-vuart.
> > +      Phandle to aspeed,ast2500-scu or aspeed,ast2600-scu compatible s=
yscon
>
> This is a deprecated property, so it cannot apply to a new device -
> aspeed,ast2600-vuart. You cannot use deprecated code for new bindings or
> device support.

True, I'll remove it.

Regards,
Gr=C3=A9goire

