Return-Path: <devicetree+bounces-270664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABGOFYQXp2m+dgAAu9opvQ
	(envelope-from <devicetree+bounces-270664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:16:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ECE1F47D7
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:16:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0143A305365A
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0224CA26E;
	Tue,  3 Mar 2026 17:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mfqnEx7X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354592E6CC2
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 17:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772558155; cv=none; b=WhgY+jVqhTdwLNZLzNgwveZX9wGI8GL6jwWYfOcp+2Xc89sS7jv/tf7qVkcEs5Im1TjOGhRba3VRSS1CgyijwgG5RB+d4dgYIgnkbgMMygxQbE6IyN2VB+2V6J0y1K2KTuV/sje4b/0U0LWF/tXDYRnVQG5SMBS5p6gRoCRzcOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772558155; c=relaxed/simple;
	bh=mXYstQbPCoqDNWhpwz7NiKnDkvyfKfjGt+vFhq+wBaQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=atYVYrT9aN9BfrKF9c6cedWnEz8BgxGUKopf6vn+/rjQRo28j4cn/Doap8z6xjp1oyFK9hDvtvWo3pF3iAvjxavADdxjBdcl8P1PXMuYdHfbLBIwx21zF2UxeHNdrgRkB9a2VoQvWPaguGjIrcHWQVtVlEBvod5gpP6G6LrFie4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mfqnEx7X; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso50725285e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 09:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772558153; x=1773162953; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mXYstQbPCoqDNWhpwz7NiKnDkvyfKfjGt+vFhq+wBaQ=;
        b=mfqnEx7XR7yDGan2EjsrccJ/Y7gpsuG2h9MMQXBSPiSsrTCsSiXPcsJg338UVd5Zmw
         pa5shOLbFd4ccdp6ScgNh57gJifBRkUPq+Yp6UQqxjMBIFRMGjN6b+amInQxETspMfj3
         uDWBeksyE9eTZ9ITiaW6+55+mKUwqIf4dY7mIJC6gDiq38sB+o9jb3EGoOv2CpNN+eJI
         y/baonLapFHgt0H9M0BpCwfy/OqEzPpOcHLTnAcZT1kS+Qc8hfQLcz0PP8H/UZVYZPZZ
         GOvdU0eyC32TEngBRoWAS6fKZM439k7vGqXf+gXa+88+xF97tIuyU7Ypj80EUPF1TnhR
         lf3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772558153; x=1773162953;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mXYstQbPCoqDNWhpwz7NiKnDkvyfKfjGt+vFhq+wBaQ=;
        b=W9xD/Kd1FCDJ2UdznNYgjOOIdm9mO6lb024KnJyRtKRDgbE+V7D0gGpE4iebd5YhCc
         4UknqGvgiTZZXCENjTCmEVqdxyykSwy/kqe3qmw0+mdYKBlTG1mEQ5NFj31TDM2O7w/n
         f9isQhrRuXAoS6XoCVTS3zMXn+RS91cyZrpw/Jao39O4JA5zwpgn4Q7O1VQ+MFzTNdvS
         q3vDomvTAWHL5D8EYWkeMNiXStBgrPEBeR7QiG6cM90onu6cRQjj48P8dogfQWzQaVCa
         gWxZOb2Ji4AaNafIpx8DS9+6IHE1QeFoX8tjwB1RWRt6rVx4O0buFC6iSQyORR7ZhLZd
         JPCQ==
X-Forwarded-Encrypted: i=1; AJvYcCX52tUd792LqTpki2Jp3PCIx2i4TygPR1I60ltR6EgrgMUkVD3oBMccMN2OiBmaNO+uyIz1zm0AH+P5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3a5/z1mtxgTHJjqk4N6dFV2lfUJ5E2QoyPgNRZukIjE55XoI5
	M7QZS1AS7ZocrLcQBqKQlst3muAh4vWkV2vy2EMEK66LmIKSJ0biGLgc
X-Gm-Gg: ATEYQzwOmO4eed2qdF5Ec/Bz/+CckdesWAcgDEm+MB9azqO8lvrI1WTyKH8oELWwAdW
	mVHO3uzVGKGjhlsBDrzbORM0ukevezfOxQxBbNLNvXmGVhXNOZBta5iS+tQVSbiv4+GMt8fkA2z
	yt49P+BL0tJ0hCMDzobBM5fQxW53qkPmXAhHyFjLdUFyb7GO7UWiQwUWbg/xVmKg3Er69GzD736
	k9KeBKnEuNMsqbi/QfCKwD7nnWw9ix1sUUwmdF+q+ah8rTT6zd7x0TrCNFLu7IAbG5UziH7drpS
	TuvfQNgnRhWewUHMGPXmtT04PJa/HSeR9F/5M1Tii38NU7lE221VJVU/WDdZEDceNzGWoDofy5V
	k5eZbNheeJ0LbiZ+Pb5lAlNwV/PtVy2pLJzwuNlM043eSb13KhaGBK7TEt6LaBiBg82psrK9QhD
	FUlFOYVxjKvBCQFfPJzAGl96kB5UrUJU4=
X-Received: by 2002:a05:600c:1c15:b0:483:6d4e:9811 with SMTP id 5b1f17b1804b1-483c9c0b6ddmr328267815e9.31.1772558152274;
        Tue, 03 Mar 2026 09:15:52 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b130abfasm20520790f8f.34.2026.03.03.09.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 09:15:51 -0800 (PST)
Message-ID: <59c3c6324ca971dc081624e0c31131b9e7dc9c63.camel@gmail.com>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, Jonathan Cameron
	 <jic23@kernel.org>, Rodrigo Alencar via B4 Relay
	 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Lars-Peter
 Clausen	 <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,  Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel	 <p.zabel@pengutronix.de>
Date: Tue, 03 Mar 2026 17:16:35 +0000
In-Reply-To: <4rzqg6gax4r3symyoimekikz7p4pfwjzhfamjudk64f32675oj@nlrz53u56p55>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
	 <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
	 <20260301133153.7f2f8501@jic23-huawei>
	 <4rzqg6gax4r3symyoimekikz7p4pfwjzhfamjudk64f32675oj@nlrz53u56p55>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: B3ECE1F47D7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270664-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 2026-03-03 at 15:32 +0000, Rodrigo Alencar wrote:
> On 26/03/01 01:31PM, Jonathan Cameron wrote:
> > On Fri, 20 Feb 2026 16:46:10 +0000
> > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel=
.org> wrote:
> >=20
> > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > >=20
> > > Add RAM channel with support for profile-based control. This includes=
:
> > > - RAM data loading via binary sysfs attribute (ram_data);
> >=20
> > I'm not sure that's a long term viable path.=C2=A0 We either need
> > to figure out how to do it as firmware file load, or via an output buff=
er.
>=20
> Could you develop on this? it is not viable because iio would drop that
> support? using sysfs_create_bin_file() directly would be better?
>=20
> > Firmware load would probably be too static and I'm not sure quite
> > how we map these to IIO output buffers.
>=20
> will investigate this buffer route. At this point, we can have multiple
> buffers, right? I have the DMA engine buffer working with the parallel po=
rt.
>=20
> ...=20

In theory yes but we do have some issues with the implementation. I have so=
me
fixes but for code that, unfortunately, cannot land upstream anytime soon a=
nd with
no users, these fixes can be an hard sell. So if we go the multi buffer sup=
port it
could be a great opportunity for these.

That said, the fixes are only meaningful if we do need to restrict channels=
 to a specific
buffer. Not sure if that will be the case here.

- Nuno S=C3=A1

