Return-Path: <devicetree+bounces-260821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPpwBO8ze2lJCQIAu9opvQ
	(envelope-from <devicetree+bounces-260821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A697CAE7E2
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9B84030168B7
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EEE033CE85;
	Thu, 29 Jan 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mZVu07Tm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EDC335BC0
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681852; cv=pass; b=Qk6ci2tfpk1ogfZWpvnL+9VagDr0FNfQInsNNvKWVR/aFGuhWLYMEB/ciLyWEHAfpHl+Sd0FjnwfBUYG538XLXTpJ4A970DMGqU5ZdDjfSXHPiWgQ0obFYloEI7KNDYa+r3AaZa5xTnGPtraoV0Q/s/WuvF0x50J/HC1rfSNQsM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681852; c=relaxed/simple;
	bh=67FVUEbikh1tWd3SMc0geGTYOpFjct8hhO43NGCirpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZdvOqLHxD3HapjnTu7QV31ABWIm9ot5ckuATu2fwNfyeiHN7SnzHfbOafB0yf8CKSPHe7McgF4vi1aoM98H9Inawlp8vocOjgWU/I0jt+t/LI4w/EQk1BvGZmIe3hFBjtdPP1YSY0+BbWKy0f3oYN4vNctW/Bg6B5cR7rBDMnic=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mZVu07Tm; arc=pass smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-8946e0884afso13666266d6.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:17:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769681850; cv=none;
        d=google.com; s=arc-20240605;
        b=VWbphxth0p+5srjo3gUOvkW5TKShPbna//o1ctaW9hHfDSJRSIg6LjdyStgscSBz3n
         mUppOtFiCSjTYOrUA/KTPyfWA7yjZ6OTPhTwiynAPDvy+tuwNkO1cS8KvQEhxFnEhG29
         kYsw4TFi+xPnA9XEyR2vX4hvBEzbnCeNkIbxsbKyj32LLGW6/Xo30oXQKoq3lGwdSlbV
         H0sX+FRKvAIAFkQCAQILCuImy7Z43UBYT9w8l/I6svpS+vsDQM48Yl+fJExwrp8tA0h+
         oFCYBPDE3nGxl0GCIr3DL8IAwXrFu/wNo263xsXXhMwE8nlhnyYNHs6YgOCFs1lV//Et
         SVtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=67FVUEbikh1tWd3SMc0geGTYOpFjct8hhO43NGCirpI=;
        fh=j+aq1Y+qbi2rhghk7dqJrWVSX1SrQAAd6CytgFVjAVk=;
        b=fzEVaxOugjl4svyVP2WAADjYnjkHAZgQvf7Et/CGHx+FghY2/GipKtvVxAO3p0q8m5
         Ed9CkmNnqLkmgY5X8GJ6C1YNsEn28XUbwuMmKVDIRlRPVBhm2k3RzwrR0q2c265mGbuC
         MWHM1Uuxjx8KLWvUwY1XRQpt3uONcoibNdKf0eV8IZ5y7H0Z/7kQBXNQGmX3eA8g9dRM
         kTXxIxghl7fQoJQZ4dHIQAeF4QJBTPGHtz9oENavhOQr3l52C53CqzbLdv8gnKOzcJz7
         anJ8/EouSXMrPc4SdH48yujmOcTLj8DWb8x4fy2waD0DBsvvD2SsQOfHL+gPcpGvI52Q
         Xw+g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769681850; x=1770286650; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67FVUEbikh1tWd3SMc0geGTYOpFjct8hhO43NGCirpI=;
        b=mZVu07Tm1TRlZMjGSOIEb0Cd8yxggnlGYoG+8d32Ia7M+UWkjIQ8G9j5ZtaVAZ/rSa
         8sSh8nqD3D1v07hBxmAYR3ehJvtPzi5lB1A5quKOWoJ5QV065H8x0znl96cjmpkD/7V1
         jXW3Ppy9cTfUwZLHKRDse0qKX676ou4RXyiotJWtuaHpdad9kYqSPMITi+z6FLJkRiEP
         1//4nzFZ2pN+4lpy4fGocAadn54rbwkv2GnxoFHykuIvvxn+2GOU3IERB5/EImvPnqoe
         d5GK2pbgYXmxk4BcCt6FWJBF5fSqOq7+ps3EPnsfdrVWANcmtF/etPvPeeRyXJTIZ7iG
         97VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769681850; x=1770286650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=67FVUEbikh1tWd3SMc0geGTYOpFjct8hhO43NGCirpI=;
        b=NQduELrxuRc7oPXcTc8C951S0R/Nlq/3ua/o2TGgsPvX/mhHhZsXvIUBOQ45JGbWdI
         ybPUfoar6HpcNT62KYcJvRBKFwMqMfkEGDUuSiOXeGsHFD3g/mBwHN5jZcu8OAMGuFHN
         V6+wPrVagWtHzFPgyVnznoIkaBkxOxn7NJO+0BHDy52w+l+zD2YeZun7J8UdhFNyxF5T
         HwpwbQm+tvLgw63DOsqCtSZUd+Mzv3c/QB6r4g3dkguvxadxgzeeyxeF1ByMtfg/JOoJ
         FcPooJQf2syrnS9o7MQkEqgWfpBNOuhQydCP0EWZAhDkl6rfiAhPRgqSyz7/yt1EQ3mg
         jxDg==
X-Forwarded-Encrypted: i=1; AJvYcCVnTT/BO2Ee9Xy/xW+7n+FW6wG3EsCZqTxq1zHvLhM4s6CAG+Y718WVpgVeJQbe6b0JcIgwQL2W4ri0@vger.kernel.org
X-Gm-Message-State: AOJu0YwTSj30GqpwMrQe7iviMTNvLJ6XShZrWmThjqIhV7D9kLJ8sUHO
	+dEx+L0sxQP3GMJPZxn+3+PB4BKuUnG2UgaFrXf9DcAd0oAQnOhwWYU0J9/CeDDcFa/+PKFINUA
	fAGzSi2prXiiVtQRRilqsP/Hx1d34cx4=
X-Gm-Gg: AZuq6aLRoupMWr1pqNUncTFmOst56VdN3Lo0OFvgGVrnENxmOi00wwlSaUBKJqIBrCk
	LYtnM5fLtMn+815Km4rVuLzPyW6swL40b5WQkNvVtkO90XQoERLQNz+sDpUXcPT4ZDo3pJ/Bz5X
	MEPK9UFPNlvlxaMs0m/xfWGZfanq3GRRwbuLs3aU2DSfPZoY6ozqLWYW4Xf20dj5jZqYSLYc79i
	nc+GyFaljkI/WOrLEurnNT9iDcwbvFrcwgXydcixT72EWovjcpaSbSaLm2mR/rE3tObnDfUTkU6
	Pa5hDmGUnHU2WPoEQkF/FsVEPFW1KaV/Kxru+Q==
X-Received: by 2002:a05:6214:1244:b0:890:6331:7e88 with SMTP id
 6a1803df08f44-894cc8c78edmr115125256d6.44.1769681850480; Thu, 29 Jan 2026
 02:17:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125200259.2903271-1-dam.dejean@gmail.com> <20260128190213.57f89092@kernel.org>
In-Reply-To: <20260128190213.57f89092@kernel.org>
From: Damien Dejean <dam.dejean@gmail.com>
Date: Thu, 29 Jan 2026 11:17:14 +0100
X-Gm-Features: AZwV_QhKtwbRbhZkhP_1x-krxME0HXC7u9WmW_2XB22Jhr1HtclcbA1zizWEIcI
Message-ID: <CAErgN1AB+XsBRWaEf+s9=EffMkdigyJ8+2cL-Ze=QjBAVcVS+g@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: net: ethernet-phy: add property enet-phy-lane-order
To: Jakub Kicinski <kuba@kernel.org>
Cc: andrew@lunn.ch, krzk+dt@kernel.org, robh@kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, edumazet@google.com, davem@davemloft.net, 
	pabeni@redhat.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260821-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,kernel.org,vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A697CAE7E2
X-Rspamd-Action: no action

Le jeu. 29 janv. 2026 =C3=A0 04:02, Jakub Kicinski <kuba@kernel.org> a =C3=
=A9crit :
> There are net/phy patches in here but the series does not apply
> to netdev/net-next/main. Please rebase and repost.

Rebased on netdev/net-next/main and reposted. Thanks :)

> --
> pw-bot: cr

