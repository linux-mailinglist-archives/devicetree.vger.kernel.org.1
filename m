Return-Path: <devicetree+bounces-275997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFcLAy29t2mpUgEAu9opvQ
	(envelope-from <devicetree+bounces-275997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:19:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 61606296110
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:19:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DEE7301185B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B243563FB;
	Mon, 16 Mar 2026 08:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nLfrsntU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581C7357A3E
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773649165; cv=pass; b=J3hUQWd/a5KMno2TYKfLaXuDPG6CcomxuPRA9xa0x0ZMH9rP/nagvll8keuNYUn1NzFx/mOzDATzqpOzJMpJ+mk4qoswmMgYdKPzXpSdQ9ej+i2sm+Ds0ghjK8NLmLjPVoZhHgVo6LxExq61M+cBC0xZAzDzJ8H+HP+wAV9rvE0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773649165; c=relaxed/simple;
	bh=z92d2h4C2EUu0ME+sfNVOt2211TfUL2AGc7b7GuFF7E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BrtB1p6dfmcw3afBpO5WgHTa/ZgMct8JBuHu1NAqk9Z34yItdHQugt1DWVwUi7aAhPYEfMUOOiFI9wYZqzzpFMAUisRF4ZqT8Gcqwo1u6N8PczvJLj5vkzg4lv1vX1poFD6DcZIMgp3JLNkSwcepc48X3e/oJblhgbBVgOk6xMs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nLfrsntU; arc=pass smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-56b6c3e0166so2355334e0c.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:19:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773649163; cv=none;
        d=google.com; s=arc-20240605;
        b=B7QNo+Ps0XlBFEWCwpE19Fjo6MlsIcEXT7se7GxslZw5WGRs0UnSNFDhxoJc+vxM/4
         PdWhYrrC+RTs+7CEUhY6BYyj9ic4Jf+2o7o0PqT7FPxSUvsn7iPYce0pnBRk3SjojY3l
         78uX1kHC361T/2pAWSKJbhYo94ZiNfJIueqVs4S9gD5FpdjDt1nphtytdNhDL1dHgd8A
         BmlXHVrLIDtlwaL3qCuR6UoGMAfu68RttqhD7hbwT6a209lCtTRbqr9VTbR2zRe7Wh/O
         6oqXnDGIte/x0Lq6KSKHfw/5JfXQvK6CbOJveDgIMClQ17XASHcx3eqAxzm2mvzEeYeV
         wJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=z92d2h4C2EUu0ME+sfNVOt2211TfUL2AGc7b7GuFF7E=;
        fh=bXvMS2rQGYSyjr36xycdzQ+AZ4TkPI0p183dsckgbfQ=;
        b=lavLRrxfGtSH9Yd8pFkq3hc8etoxp4xeJH0yCfsLOCWBRR9uzlsxslp85I8PI6tru9
         LAtU2i6P9S/l7NieX0fyXxERR63jVO1pliddKZpayOOmgfnPiHQBehwsoYLnRTJCzagE
         5fV185X+P+sCQCnNYwpk+WW5xuNCw58Zo1DYZUXh86Y3zcep+cx02BNgkh53RsVTbmgO
         IxFdKOaJP7wa633NysVJJPl0/AWizStZSBcfA1CB+LstS0HAMHI9ZmzvVqlaWvD/DmVT
         Hd//toxszhIGTYRwQMmmSaKC7ru0wX8DOPUkRlRdhEWy8KZ6gFvGFjMD+hNnV1i3C04K
         t81A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773649163; x=1774253963; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z92d2h4C2EUu0ME+sfNVOt2211TfUL2AGc7b7GuFF7E=;
        b=nLfrsntUrouAh7B7psRtePD4acuKj+sq+HD75mfq2M83016FmJH0hy6qIU4cTfNZVL
         sq7k+6p/0f5x/GMTzeuIfLlH1cec/8ATbkZYJVDFxuurnJSus1kQ9pi8UrGj2Q678zGG
         AJ7nNw8C0ob5Nci0R3bR6JdKmsv2MLLCbppbMgDvsppn2T72nEzmFBSYIyW0a8lWjPg3
         jwiktD7LnndXe4DXnO3hjWs9uZJOXAOGhx2AfWVmNU94hJRzlT4QHIuACpHRFkKGDNBz
         PTgBTYgHMvOUlH9Jioyc3JWFjrtqNZYsH3cW4iEUVfOzXWcrLcgJT64Xb4o72DQD4ZoM
         5FfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773649163; x=1774253963;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z92d2h4C2EUu0ME+sfNVOt2211TfUL2AGc7b7GuFF7E=;
        b=CDwA0YHy6BAkWUQzf8UdIftBU0Q/faf8w6VyGwa/C41TNQY+jMxUVufAXVxqB7MsbA
         qwwTOX56J4BnnBE6v8eXtXxWFg0MjCxfNTpSbU/mpxa4kW6KgUCFlyZcvhLPNEK5nFML
         ZEGRdGc9ACBck56hXhtBMxgwWTzGiJiXS1E1hh/TqXrnZy9d7IDkNKOITS0YABOkpk4D
         BSqJIqcT4iOZ6Vgl/pEzHK//08hK92Veng7bPvx1M0Tmi1vWgLmlImLXadc8m7A+oTU8
         BMahjAU//1BhdD+8Pog1BRcAeWCRuZw8hu1XSpbJni9BjgbFE1J+YsYXG6jfPWIVuM+b
         ecUg==
X-Forwarded-Encrypted: i=1; AJvYcCU4AakYxYdmqW9Ji4TeCKoQfUQbs9Hubjc156X6Ejkpk9IVos1sXIMlHOu6YTH/Iktvj7uCaFlhR4Xk@vger.kernel.org
X-Gm-Message-State: AOJu0YwDAns56HuIwupUjyOPrdfdrSN2XygaHnCsnTSA1uHfpzsYQYDP
	m5epOCV01CPXG7uscDwCmhlLy0/II+PdMdIyCUoyoQaIqwK2bTtNVT3bhHICxaf8JxUE3M9GAj9
	iivGMtjz5qWmvZGG0kzj+dfLVDwfRZCw=
X-Gm-Gg: ATEYQzzH5NqJD4VZ2ykkhnT4pExy7cs1CzfIrUQ385VOsQDaRrIEoPcB/faDLmWSHFF
	dMsI73jN/mu6MC9g1zJdV/orXqGomIul/aD+Zu0uRrJ31ZuXvCsJX7GQlk47ycBjq0EQ4KCoZvS
	X8ocFBm+pvkZuuuqFH5KqOTSQgE2CGlrpPt9z3wJwZ9Ql4COTWx1JWkB+d+m2kreR/Bt9rogFG0
	OMT+hP4RvAUWfL+ky926Mi6LiUVXr4yFPkSDcDhORk2M424FZXO5G9/4BUAN/NlZauARaFUP1Ej
	bx5xLM5DU0ZjuQ70gq0=
X-Received: by 2002:a05:6102:38ce:b0:5ff:9ef0:9978 with SMTP id
 ada2fe7eead31-601f47313cdmr6960412137.6.1773649163216; Mon, 16 Mar 2026
 01:19:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260315144536.515032-1-mitltlatltl@gmail.com>
 <20260315144536.515032-2-mitltlatltl@gmail.com> <20260316-demonic-delicate-manul-8ffb80@quoll>
 <CAH2e8h4US7Ut=u3AW6bra9kUhCo15k+sWmVw40adVE-JQ+ayVg@mail.gmail.com> <6e00e9f3-0ff2-422d-b79f-fff8ebd47e58@kernel.org>
In-Reply-To: <6e00e9f3-0ff2-422d-b79f-fff8ebd47e58@kernel.org>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Mon, 16 Mar 2026 16:18:58 +0800
X-Gm-Features: AaiRm50gLbGdGr8rNok5-hrG0NMe2RJownVmEyvoHJPIbWUrNakdDWolpC5BLkU
Message-ID: <CAH2e8h7x-xFYCDNx3BL25wheYbz_CAwX_QiO_ETxNvzf44e-hw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add Himax HX83121A
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275997-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 61606296110
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 4:15=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 16/03/2026 09:02, Pengyu Luo wrote:
> > On Mon, Mar 16, 2026 at 3:44=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Sun, Mar 15, 2026 at 10:45:35PM +0800, Pengyu Luo wrote:
> >>> HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
> >>> in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.
> >>>
> >>> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> >>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.co=
m>
> >>> ---
> >>> v3:
> >>> - remove '|' from description (Krzysztof)
> >>> - drop description for reset-gpios (Krzysztof)
> >>
> >> And all other changes?
> >>
> >> Why aren't you testing this code?
> >>
> >> NAK, drop the tag and request re-review.
> >>
> >
> > I see. I will send a new version later. I made changes to v1 binding by=
 mistake.
>
> And EVERY patch you sent must be build tested, which would tell you that
> you made mistakes. Why do you think build testing your code is our task?
>

Thanks for your suggestion. I will remember that. I thought removing
the descriptions would not break things since I tested the binding in
v2, until I found I was using the wrong base.

Best wishes,
Pengyu

