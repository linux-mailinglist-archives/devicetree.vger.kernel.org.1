Return-Path: <devicetree+bounces-263281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKMtF6K5hWmOFgQAu9opvQ
	(envelope-from <devicetree+bounces-263281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:51:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F347FC3CD
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 947D9301C16B
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E6E35EDC6;
	Fri,  6 Feb 2026 09:49:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE9D357A3E
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770371365; cv=none; b=h4bxdfAjs45DPHvcNt6jfi2MOGG4IZ8LsIh9bzhuZ2BprLumn5+YTXqYNiGQQFO0iXDcMQMwdcKPcuM6B08r0xBCOiwV9Si/M164gQseI8GrAt8Gg1FZoczbPDKDpXW7Fdr5HSiyjO2Sj7U8lr7ppEQAfuEtadR2c59Zl1fkf1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770371365; c=relaxed/simple;
	bh=nDt/vXkdrwlFLc6IplzqVN4ERfQQEKntxnB2CbvM//0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HylTDIjsxXoimPBDh7Ip/qQSRz14SbBJG2xuTJr+q64a2pBi1gn78k6lzYWZn2FWrni6oqC0BOuN3KqlOUg9nsfObeDwHQ46nj5AIn7/mnp4TBQu8eKBswOn6vk6RNZanVscjTSQ3xwJl0Daa4fU+7S8yLgiNi+du2biricBiQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-79274e0e56bso18070987b3.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:49:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770371364; x=1770976164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9PKdkFDBpdEaAPJ8ineUNhYTfLtKuh6xL3hbE89jpuA=;
        b=T04ElaNjPoBl66MOPHY/xHkSSZnDH8j0NEcYuHGhxsHQOl/vcFhU2fodKQBXJFP/ZG
         LENS/Q44hyTQD4kd1pNcJ5MbKrE7tnTX4qDcLmGJNlqNnUpcpjVuDwNDZuoTLedVkPww
         H5ojB+D3TEDXQPP7pE1jOxpn1pQ6Jsl7mH+ijJqJKrDUBznRS24LMmLsrJjZapyPHOwa
         Th2rqlym/N6uCZqXPPhEEu1pBkDnOpCHrztaq+XbiggwyLYFy3Fvcq+lKGnVbOLv05Hs
         ghO5KxYxPzjDQaGGQDMhRp0XdYUMFVwyocUrPB5bQ3fi7pGzhrYsOsm4BhmnNEcnsw7W
         RV1w==
X-Forwarded-Encrypted: i=1; AJvYcCVohp9Z8bQGr48UzW2UwZdRNOKLER+VGWjWNGVr83xy47YIoFCJE8wo62k87MAf77PZE9JTrLGnc7QO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx45jsnLqF4AB8XX27S261RDq0el29ZVQZ+FK3Yxn7wfQRK1TU4
	xtGFw4tF62WKfxx59bciB++KgjlBXdppZ9wkKcnplYdADZqJXOxCJV3U86uJoA==
X-Gm-Gg: AZuq6aIyYdoOMBzhPiALtx4Ir2l8kz2aZ1fqEJWm55ZCyIq4VBkNpILowCgVasQbDsj
	IWfZvWDDKSr5dSJ17NXVBrI6hfuV1MbO4afQMmliYPSLH3uRcaUEvmrFnXsfUEVPEzkLgoNx5E9
	Bu7CznisPSF/S9CFzNvnXmUz8lDegWIjVURgvI8yrVe12i7T0Lmr9Heztr1UMoLL+XPKQN1vmUf
	s1AYDweTtT8Jqdg8ymSuUnAlLukTGapcQqmtxQiVv8FNQkolKdmvlSWV0D/AFDPgTYIYyL346m7
	PI+zTKzPMZjjOVU7MhRf675w/vhaUMKV640q0ITO8rgwQjp+zbvV3K92SWAr/Z4tZmnZemkXMjW
	9CzPkLx09fCT6LsGsoYAbwXJHzbDY66G7ueRqTw5IYFcG0bFUPgCbzclEHOe99cPd+0A13HpsHQ
	2d8qErxydHkJkPgdFr+kROUfUklLSk8XA9zol35HgRiw==
X-Received: by 2002:a05:690c:6b07:b0:784:8994:297c with SMTP id 00721157ae682-7952aa715abmr21431447b3.24.1770371364707;
        Fri, 06 Feb 2026 01:49:24 -0800 (PST)
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com. [74.125.224.47])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1db63csm16578247b3.33.2026.02.06.01.49.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:49:24 -0800 (PST)
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-649ba412b8dso1826865d50.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:49:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUGNv87wo4is4LAN75F+dt/ijnw4909nuKYgIIYaHM7qC3Rj6ZULkX5LsJ+j8Hu9qAtbHv2nsbu3B4K@vger.kernel.org
X-Received: by 2002:a53:c449:0:b0:649:d604:fb90 with SMTP id
 956f58d0204a3-649f205a43dmr1514153d50.53.1770371364383; Fri, 06 Feb 2026
 01:49:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-rubikpi-next-20260116-v2-0-ba51ce8d2bd2@thundersoft.com>
 <20260128-rubikpi-next-20260116-v2-1-ba51ce8d2bd2@thundersoft.com>
 <20260205-winged-alligator-of-sorcery-aada21@quoll> <CAEQ9gEkkK_qBCq__oSJb1D5J=gLyw-kVDx1OD4SMPry6z-F7nA@mail.gmail.com>
 <0bcd3cb0-9231-4cb0-a726-c439d01f63e5@kernel.org>
In-Reply-To: <0bcd3cb0-9231-4cb0-a726-c439d01f63e5@kernel.org>
From: Roger Shimizu <rosh@debian.org>
Date: Fri, 6 Feb 2026 01:49:13 -0800
X-Gmail-Original-Message-ID: <CAEQ9gEnvM1x9zP2RDPpEs3TMZ2Jcah7OU6s0y9zJY-7qFUJJTw@mail.gmail.com>
X-Gm-Features: AZwV_QgaD4XmhDKNBHfx8XaTKWfKOlqUfpjXIlHN1Z6ouM3UQ5-2qulJHJBUYsw
Message-ID: <CAEQ9gEnvM1x9zP2RDPpEs3TMZ2Jcah7OU6s0y9zJY-7qFUJJTw@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[thundersoft.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263281-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: 8F347FC3CD
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 11:08=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 05/02/2026 21:31, Roger Shimizu wrote:
> > On Thu, Feb 5, 2026 at 5:07=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On Wed, Jan 28, 2026 at 07:15:45PM +0800, Hongyang Zhao wrote:
> >>> The LT9611 has two DSI input ports (Port A and Port B). Update the
> >>> binding to clearly document the port mapping and allow using Port B
> >>> alone when DSI is physically connected to Port B only.
> >>>
> >>> Changes:
> >>> - Clarify port@0 corresponds to DSI Port A input
> >>> - Clarify port@1 corresponds to DSI Port B input
> >>> - Change port requirement from mandatory port@0 to anyOf port@0/port@=
1,
> >>>   allowing either port to be used independently
> >>>
> >>> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> >>> Reviewed-by: Roger Shimizu <rosh@debian.org>
> >>
> >> Where did this review happen? V1 had this tag, but the patch was
> >> completely different, which means you were supposed to drop the tag.
> >> Please perform review in public.
> >
> > FYI. v2 was updated per review feedback, which is public:
> > https://lore.kernel.org/all/7d9041a3-9d2b-469a-9fa7-89d53bbd2a1f@linaro=
.org/
>
> Link above is not from Roger, so again - where did the review leading to
> above tag happen?

Per feedback of v1, v2 was quite different than v1.
For v2, it's close to initial review, because it looks like a new patch.
Of course, if you don't like this way, we can drop this next time.

-Roger

