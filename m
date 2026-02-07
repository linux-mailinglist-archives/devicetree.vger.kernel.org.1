Return-Path: <devicetree+bounces-263548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Qd4GMsbNhmkRRAQAu9opvQ
	(envelope-from <devicetree+bounces-263548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 06:29:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2175310505A
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 06:29:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9ECC8301AF61
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 05:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A092F0C70;
	Sat,  7 Feb 2026 05:29:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBC023D2A3
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 05:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770442180; cv=none; b=uuLzNkAeTUryAhjZSs3Yugx09hYHjLbR2464CcVYO5lMHp3xn9/YNCrF6TzjTKRq1v41U/3gg+YXYU6nYJ8bc+hhSNyC7mZoc8nRXc+gSS7gpsFxXsCHa0Q0WiM0BuiueH/XbXKEyW6Pv6+BXGG5c5lrxJKj+p7Z9/xn1Pg/dNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770442180; c=relaxed/simple;
	bh=E5WS1EMk4WOA9/NiAFSXPnIITqHBHquNATRdykjjDnY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KZwLGVJTleBDVkLS8bOqq+C/0yYELN7q9rPM9zN4Ymko969tE35yFwAzR7++U06QvYA8NlYCbdWPSSJ9Qgj5lnR6ogClgHF64nuw19E8Y+NaaVwkJRwa2u72rTh4+frG91ILHhXkccSDrVPdjUFXlqNbgWmC9aanAMiwCODHL9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-45c889aba0dso2443430b6e.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 21:29:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770442178; x=1771046978;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=17OCwG6i1wi5ke5GRpB0Eh3X9L8aGMj6rgAo4LSUjdE=;
        b=pJ2/A1E3SeFfmhrEl09dzTP03PsbhjVS0vv9udk05kNhveceZSjapUzq/FMcXDbTvL
         BOjqFw6EBTXcUUhPSALtUST8nK+/SXjcMpQQ+WWDqjvqUauafvsEx4K/WAE7QHV8A6NF
         g7K3/wHbUuzyYscOBaWorfHduDz8fiAWXhR1lv0sK8BV9vaSWZuU4xpC4QQ5vnvmS3x6
         8cIYNN1bjhzPSJsFrU2I6Ffi2qGsgFM6W27IRQDPSoY9HmGje+Cu4sWllx4hQw0WILFr
         zD6aZxBXyZGOOlpxVCZ7RQGBsRLHJM2DiOZQpTXaTg62Iy0Ao58XZBRHLI+dxq8SkStd
         SXTA==
X-Forwarded-Encrypted: i=1; AJvYcCXxWLnlu7muesKhQGTsszJhaHKGTjK29FpfDOpOYxYVeaSj8O47JvNewidhOaEaLGsCcMKTFGcpM8iu@vger.kernel.org
X-Gm-Message-State: AOJu0YyMmgY3a1F4mFWJgpKg7CAL2eC+apPS/+wnATTxAFZikZUVpI2F
	dI/02eaZXwSqm/iheLERoZXqsKcB1qEqMRml6LtP6TPX94nAXPYR2DzDFIUDuA==
X-Gm-Gg: AZuq6aLaqDGtX+Mqe6DMTThCKeNLY7NafX8qSL+kJBtLPo+CVDlpf8VDDVf9qHYZ4X1
	qbY0fSy9zwYzM2INZd/CAUKqqkyCM1KxG8hoCSJl+iy3Qe468it+0LP2amc+QRRMe2MDdQqRCmr
	4ktF1gNXjiEaRcfeQfNKC2upB9j+IknT9eFUqU7VrE6dQX0Xm3ziGThIb6s4RoenOZA4S7F3SE2
	x+Ut+XMPvGQ6mAx6fySVivlUOC8WS3mx6Z2+2Pwy0LsgYh2OF5tDrN9QCj0DwCyj3ZdpZ2HDtcj
	mGd7FRGlqeGt3UL86cPeFoHIiDfK24WOeDbJTS3bcN0qtcvDP9t9f7ynLs25CEiM7T9szG/O6Gw
	tjDQyGlHzGRLeUOiW500X09ojDKQPa/kKW/gOejquWVN6oQflA8BWFB94ja11iUiBkQ9jS7xoc6
	oWPIlx6QMNnxDLZbnqiEs/67gMm+b3cUX93WpjzBhiLQ==
X-Received: by 2002:a05:6808:320c:b0:457:a9bc:dbf7 with SMTP id 5614622812f47-462fcbb39dfmr2687214b6e.20.1770442178400;
        Fri, 06 Feb 2026 21:29:38 -0800 (PST)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com. [209.85.210.54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-462fe6ee926sm2648296b6e.0.2026.02.06.21.29.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 21:29:38 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7cfd53a8c31so2151216a34.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 21:29:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXhQ9OnjyzNfT7+zBOJLocGsHhlpUP1yW/yycLlin8z0Zx3ZCrzMMfV2GP23qCm//SIRES8qsjwmVQe@vger.kernel.org
X-Received: by 2002:a05:690e:1508:b0:649:61b6:8a97 with SMTP id
 956f58d0204a3-649e87e21f8mr6826337d50.42.1770441740068; Fri, 06 Feb 2026
 21:22:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-rubikpi-next-20260116-v2-0-ba51ce8d2bd2@thundersoft.com>
 <20260128-rubikpi-next-20260116-v2-1-ba51ce8d2bd2@thundersoft.com>
 <20260205-winged-alligator-of-sorcery-aada21@quoll> <CAEQ9gEkkK_qBCq__oSJb1D5J=gLyw-kVDx1OD4SMPry6z-F7nA@mail.gmail.com>
 <0bcd3cb0-9231-4cb0-a726-c439d01f63e5@kernel.org> <CAEQ9gEnvM1x9zP2RDPpEs3TMZ2Jcah7OU6s0y9zJY-7qFUJJTw@mail.gmail.com>
 <1fee1990-f525-4559-b121-46fd1e1c9fef@kernel.org>
In-Reply-To: <1fee1990-f525-4559-b121-46fd1e1c9fef@kernel.org>
From: Roger Shimizu <rosh@debian.org>
Date: Fri, 6 Feb 2026 21:22:08 -0800
X-Gmail-Original-Message-ID: <CAEQ9gE=L3gsnyMtbVDbvHo-jhTSPw-8DJ7L2n9c=SKc6jOAHrg@mail.gmail.com>
X-Gm-Features: AZwV_QieKd_ZP4aFD5f_DxifB_sLkcMLB0SwbwiEzLFTZaXP5WcquLwWVuCYe7k
Message-ID: <CAEQ9gE=L3gsnyMtbVDbvHo-jhTSPw-8DJ7L2n9c=SKc6jOAHrg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: lt9611: Support single Port
 B input
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hongyang Zhao <hongyang.zhao@thundersoft.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[thundersoft.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263548-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.947];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,thundersoft.com:email,0.0.0.0:email,mail.gmail.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: 2175310505A
X-Rspamd-Action: no action

On Fri, Feb 6, 2026 at 2:56=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 06/02/2026 10:49, Roger Shimizu wrote:
> > On Thu, Feb 5, 2026 at 11:08=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 05/02/2026 21:31, Roger Shimizu wrote:
> >>> On Thu, Feb 5, 2026 at 5:07=E2=80=AFAM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> >>>>
> >>>> On Wed, Jan 28, 2026 at 07:15:45PM +0800, Hongyang Zhao wrote:
> >>>>> The LT9611 has two DSI input ports (Port A and Port B). Update the
> >>>>> binding to clearly document the port mapping and allow using Port B
> >>>>> alone when DSI is physically connected to Port B only.
> >>>>>
> >>>>> Changes:
> >>>>> - Clarify port@0 corresponds to DSI Port A input
> >>>>> - Clarify port@1 corresponds to DSI Port B input
> >>>>> - Change port requirement from mandatory port@0 to anyOf port@0/por=
t@1,
> >>>>>   allowing either port to be used independently
> >>>>>
> >>>>> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> >>>>> Reviewed-by: Roger Shimizu <rosh@debian.org>
> >>>>
> >>>> Where did this review happen? V1 had this tag, but the patch was
> >>>> completely different, which means you were supposed to drop the tag.
> >>>> Please perform review in public.
> >>>
> >>> FYI. v2 was updated per review feedback, which is public:
> >>> https://lore.kernel.org/all/7d9041a3-9d2b-469a-9fa7-89d53bbd2a1f@lina=
ro.org/
> >>
> >> Link above is not from Roger, so again - where did the review leading =
to
> >> above tag happen?
> >
> > Per feedback of v1, v2 was quite different than v1.
> > For v2, it's close to initial review, because it looks like a new patch=
.
>
> Where was the review of v2 given?
>
> The patch is entirely different. I already said it. I also said what is
> expected in such case. It is also documented:
>
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/s=
ubmitting-patches.rst#L577

Thanks for the guide!
Yes, v2 was reviewed in private. I'll inform Hongyang to remove the
tag when he sends the next series.

-Roger

