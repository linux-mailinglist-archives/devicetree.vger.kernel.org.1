Return-Path: <devicetree+bounces-260951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOOMFieQe2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:51:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC3FB2730
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:51:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27B4430037EE
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCEBB33F8DA;
	Thu, 29 Jan 2026 16:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CpfMCmDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CAA2DF14C
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 16:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705482; cv=none; b=OrlUTYueXfXYS+pHfRvE1PWNzo4x18Qe0jbjPTA5xFLztIFTafewtWFJmPdeowLp269SawWIZ6dWEwl1qf+/egbbRVRn9wYWNWSH+Hg1QOnQgGb+ei3i53NSatMn9liPe5MFSxHl5456pCXJB38lc61ILNIMynuVdYW0bgbpkvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705482; c=relaxed/simple;
	bh=yXNzbe5mk3xlwa4MkQahqod8cIV/AMEhF/kr05ffRPY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hLBbvmEKP+zA/M9CHDLjFR8v/Nzk9DusnZ6LmzvSIG1D/YhGuWdqwdjtCD5hPY14uuZI/UOY4V5xKaffWFX5nh7zj6pzqsOb1JPZMfClAC030C90vodh4MkIF0yZRC10qDTuaKY03Syvo4gUu7Dv5PmSmCqtakXFBCXQOiWK9SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CpfMCmDI; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-6582e8831aeso2018512a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1769705474; x=1770310274; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yXNzbe5mk3xlwa4MkQahqod8cIV/AMEhF/kr05ffRPY=;
        b=CpfMCmDItnt68Y/QCrRAyiknZiHQKZIc6fJ0WZYj87wRp+l2KbvJtB7Od2Q2SW4Gw4
         ITbQCxX+knGsPhQNd24fdR7WXu/0F6OctrPoaqwbTmn5bskUtllbUDrIf6zXrJSS0y90
         OlY1QvzEQdTjH2FMGIhMn0vUCb57Lto/e+KAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769705474; x=1770310274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yXNzbe5mk3xlwa4MkQahqod8cIV/AMEhF/kr05ffRPY=;
        b=YqYTSH1MkPRi/Qd5wYVyUtvWTyvS50SCGd6tXkW13PN66aZH/uUz18gmhwGlD3W6Qq
         Yu+6F2YwObi+Yca+Tu23yDnACDFkFpC2oRg3eMLKDXgdSlQdGrQMIL+sZxyNcpXRw8sY
         oybU74VeB8V7Xrzyfz/FVG78QLjVogeHqLG07vXO1Te4z9+kK7BPEV9iJxDRS/9hDVj/
         peL0KimvRsC6StfWTRM4pk8RjLx3DkH8jM0pFSlnoo4rA7PVj/d4Um0VsncXl2q8QEIB
         f/7MzFBdMDlNUVj5qbKkMFcUxK0e84zCwjWkscOo6S24Zsm8AesJocMnJXvTkVyQqbyi
         2dvw==
X-Forwarded-Encrypted: i=1; AJvYcCVfPZ/qHsK8lUky1SSjQSfAZnDG7+26llb3euxDWXouiZH+MYcpHtclR736rTyN0PpvtQQ134I3jv7X@vger.kernel.org
X-Gm-Message-State: AOJu0YwC+o4wKF7tk1Y7/cYhNSX49ZiXV/rzu/qJSd4/6YU+pg7zlS4G
	U00dRUIWm+3/6Ge0SP6y9u24J6Be6k0t8zYVn2iyXVybsM5xOcaHBG8nmMpr8izGr4oFyCPGtuI
	7j/rGPQ==
X-Gm-Gg: AZuq6aKNvBe5CmisEpdd+F7MlpE7DziuATjRRJ3K7A7VgIgkvhFXvtlqOlSW1YetawV
	/et5vSkcWaF0Fy1OqIx71nVJDPaWLYG+jPwN53zpPOlLeuxkeHlnNOhN59ree/PPnVN3d0LiIS3
	mAY93MDLlYYXcUztStvtGbrrZo1VZXyiixXtUVRVW16BbZbJBUDbFre94VrJq+pNZ/X6NFm7kBC
	9Mjtwkh5cR7H5za9/+lQchRBc1eY5+qDvceo70WITXaP5fI5hTM9u6E7dXlEzxSS+0UIFeMl9XI
	J0ddI/YwujnmxwCj67BcpZfVTNjESgyHjXuLUhxM9zbUtlG19N6FuAD7scZB/RsiHnnl77jZMSY
	5NWVGVJqM7krgyS/Z03EmymRp7fQjkRH7qQvytDFEsMLyOSmkjkr6hXLxIwcLDlsHzf8dwto25U
	wxdDUdm32QwdYuD7yrEt6tjf9FKdIJcLtw1s5h92SEoDjFhgXuoQ==
X-Received: by 2002:a17:907:94d0:b0:b88:4849:38be with SMTP id a640c23a62f3a-b8dab3ba27cmr654329666b.49.1769705474203;
        Thu, 29 Jan 2026 08:51:14 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbef86991sm285178466b.4.2026.01.29.08.51.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 08:51:09 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-4327555464cso1010844f8f.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:51:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUGn4eoKJygmnOGqx8VJjplqPu3Wvik6q0jMlr3rqQ1i/yofO5KigFLeXc9ie0QeDCqCr1fPwY033Eh@vger.kernel.org
X-Received: by 2002:a05:6000:2405:b0:435:9522:2bc9 with SMTP id
 ffacd0b85a97d-435f3a6ccb7mr399351f8f.5.1769705468701; Thu, 29 Jan 2026
 08:51:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
 <20260108063524.742464-3-yelangyan@huaqin.corp-partner.google.com> <ffqvva5kgyh25mpquackob7fnlaxseu5stgevneqynwa7m77b3@totpb762p6te>
In-Reply-To: <ffqvva5kgyh25mpquackob7fnlaxseu5stgevneqynwa7m77b3@totpb762p6te>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 29 Jan 2026 08:50:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XKqFTNYopxV9H8rnjEYAgDebW42Ot92aZYiex5MP1wnQ@mail.gmail.com>
X-Gm-Features: AZwV_Qi0Z8168L4gaPZktw99T6_nZRbAiWWywdG0fr-ESdZGsorlaIsuTWXlIik
Message-ID: <CAD=FV=XKqFTNYopxV9H8rnjEYAgDebW42Ot92aZYiex5MP1wnQ@mail.gmail.com>
Subject: Re: [PATCH V3 RESEND 2/2] HID: i2c-hid: elan: Add parade-tc3408 timing
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>, 
	Benjamin Tissoires <bentiss@kernel.org>, Jiri Kosina <jikos@kernel.org>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260951-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,chromium.org:email,chromium.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CBC3FB2730
X-Rspamd-Action: no action

Hi,

On Wed, Jan 21, 2026 at 2:40=E2=80=AFPM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> On Thu, Jan 08, 2026 at 02:35:24PM +0800, Langyan Ye wrote:
> > Parade-tc3408 requires reset to pull down time greater than 10ms,
> > so the configuration post_power_delay_ms is 10, and the chipset
> > initial time is required to be greater than 300ms,
> > so the post_gpio_reset_on_delay_ms is set to 300.
> >
> > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> Jiri, Benjamin, another I2C hid with bindings...

I guess maybe this could go through the input tree, but it needs
either Jiri's or Benjamin's ack? Is that the plan?

-Doug

