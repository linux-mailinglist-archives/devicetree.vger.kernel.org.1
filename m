Return-Path: <devicetree+bounces-263154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBhAHlD+hGl47QMAu9opvQ
	(envelope-from <devicetree+bounces-263154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:32:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC78FF72BC
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 442F1302B539
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 20:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C915313E1A;
	Thu,  5 Feb 2026 20:32:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C288217D2
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 20:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770323531; cv=none; b=jj0d4TqwifvuM1g+V5QdOyIjrX29jTd8zDpOArIZnfv7rj18x1M1+gICPE8dOfzqLX5KH+zUNehlVOChf2LVxy9aZ3RkjlPpekUk4gQ/5Gb7Z6dCYscCuYztiJEiC4/7H1Fqhu4M10rZSzhLz5lHRilBJZsIiuPdIRmpbUkCnYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770323531; c=relaxed/simple;
	bh=hHRM1hG5u64AI+78FHy2jBXvmx8Dnw4TMlLI/0c55EM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u9Mbb1XvPfXbRIBXEsfUmH5O4M4R0ynyUZ/WsQe93WGyZoUQsPqg3b7/vSLiqoPxLpxEXjQzRyed6/48Xh4XxJsRxN6nnTb05RjT5P4O8BpA7Y8t7/l7gRBy65/+2PAtrsUSg066alaRvTHetTTy/BetzQwns3DtdQ0G3F/UIdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-794fe698e36so16887247b3.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 12:32:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770323530; x=1770928330;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Uw9NFSYymdF9cfh8JgFLbLxokKprMEjCgsdfjzfGOUA=;
        b=inj4FSgodsReD6lumSRz9lPScqmfARmNuyyIRyGm3ApuMugCD6BOAv2Dz40yeZBvgD
         hMUAvqoFFVzG/atZKVfw1Ql9OlDceez38Q+lSiJnI89KAFYSx7qa17gK0aVgqlraghpa
         2TRAYzHOzvsD31gxxHXS6tQJGBA2B/LLw18hDfje8JOO+qxiWlfGknrgR048C2lAy3gw
         KcBvq/k6h9UCUWp3v/2Ur+Yo3J5YBpxbIXzjtZjfiaoRbE/mmg2JiZOCz+OvSd61trYQ
         ap4DygnymF8pnTj1KNlAEYXwgxgzeXMUqLTIb6cIqBPC0IibTzNiMgT1p40r8RbJICm5
         /AQw==
X-Forwarded-Encrypted: i=1; AJvYcCXoE98pHBeCy7audQxvtpRpNEHbnBSc1xCAoSNzn8VUJ6WXBcqRC/HEEAjhQ5pr8O12nlt9wyCy0qth@vger.kernel.org
X-Gm-Message-State: AOJu0YwvzskkSWOc8dpK+lCXvxFHs6h75L+XZZnMbkGRYbSoKEPvlhfK
	kF9mccqQDAFBOoykbu2rRkJY6ocM+2TMG/vs1TcnHrNDcLnqnEakEDdHJz/Okw==
X-Gm-Gg: AZuq6aKkvXXyM/OxPQTlaXt679wBdNFF2iVLX7v087nvPxL3c8zektWLCTh1sB+E+eR
	deUSZkStm2jitdiZTrbYghQyNBuQjkikbo5nfIg/HyrCUCcbkaxtbF7w83Da9znvkDrv1Acoxp/
	7DWXqMhLa6v/1257y37q2z3dEh2GOE6QrWclENC6WJUJCVrEIklF80JeThl/mZCyVF9J8580HX6
	Rtar0MwhhF2yP/+0BD9klnbPkDGE40oNQ8w2GljiBzRFXq7MEDg/PMA1MPtkDcnvXrSN2zSMMHt
	C/tp8kTJcz/YB8fx54xx2Ef0Ek+7qdVe6h+HtkcPPURp1OwZ2ypwkXNQQQ770A9BtI3aOefpnd1
	oQ+Lj66ggFY3271gRUhUxnLMr9iO4qz3sPg+MndPHK9/jZH0bsF2J0T1552VTw4WGyuGp+FpMhT
	9pzO1UNog0KYeOg14uee16RXAkaoRQF8enwOruxnVXLQ==
X-Received: by 2002:a05:690c:319:b0:795:1470:2030 with SMTP id 00721157ae682-7952aa574efmr5033237b3.12.1770323530537;
        Thu, 05 Feb 2026 12:32:10 -0800 (PST)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com. [74.125.224.51])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a074c2bsm5373597b3.21.2026.02.05.12.32.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 12:32:08 -0800 (PST)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-649bff225d4so1408607d50.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 12:32:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUUTM8CqvKtZsdq9IaOeA1p4KZiRlqn3XEy2b2YT6h6iGGtuu0eJvTSKsAk7HMh/qgy3NclAWxfYojS@vger.kernel.org
X-Received: by 2002:a05:690e:4259:b0:649:d5ca:7988 with SMTP id
 956f58d0204a3-649f1f53982mr512491d50.48.1770323527220; Thu, 05 Feb 2026
 12:32:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-rubikpi-next-20260116-v2-0-ba51ce8d2bd2@thundersoft.com>
 <20260128-rubikpi-next-20260116-v2-1-ba51ce8d2bd2@thundersoft.com> <20260205-winged-alligator-of-sorcery-aada21@quoll>
In-Reply-To: <20260205-winged-alligator-of-sorcery-aada21@quoll>
From: Roger Shimizu <rosh@debian.org>
Date: Thu, 5 Feb 2026 12:31:56 -0800
X-Gmail-Original-Message-ID: <CAEQ9gEkkK_qBCq__oSJb1D5J=gLyw-kVDx1OD4SMPry6z-F7nA@mail.gmail.com>
X-Gm-Features: AZwV_QiroKm7vTG3Gj0nXKqwrJ2f1hhd_XI_tJeNywGoynyWCjVs8fpCZhr8ft8
Message-ID: <CAEQ9gEkkK_qBCq__oSJb1D5J=gLyw-kVDx1OD4SMPry6z-F7nA@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[thundersoft.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263154-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[thundersoft.com:email,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: EC78FF72BC
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 5:07=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Wed, Jan 28, 2026 at 07:15:45PM +0800, Hongyang Zhao wrote:
> > The LT9611 has two DSI input ports (Port A and Port B). Update the
> > binding to clearly document the port mapping and allow using Port B
> > alone when DSI is physically connected to Port B only.
> >
> > Changes:
> > - Clarify port@0 corresponds to DSI Port A input
> > - Clarify port@1 corresponds to DSI Port B input
> > - Change port requirement from mandatory port@0 to anyOf port@0/port@1,
> >   allowing either port to be used independently
> >
> > Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> > Reviewed-by: Roger Shimizu <rosh@debian.org>
>
> Where did this review happen? V1 had this tag, but the patch was
> completely different, which means you were supposed to drop the tag.
> Please perform review in public.

FYI. v2 was updated per review feedback, which is public:
https://lore.kernel.org/all/7d9041a3-9d2b-469a-9fa7-89d53bbd2a1f@linaro.org=
/

Maybe it's better to add this info to v2 cover letter / trailer for
easier reading.

-Roger

