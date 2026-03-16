Return-Path: <devicetree+bounces-275991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IILAJDu5t2mpUgEAu9opvQ
	(envelope-from <devicetree+bounces-275991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:03:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6D2295EFA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:03:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0C346301387D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E46B354AFC;
	Mon, 16 Mar 2026 08:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qdptwblc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D545E3542E1
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773648184; cv=pass; b=jA1VscyJJ7OGd4yc8RdS4lVD1PPawwLb2eAm6Q6W7sFFXSdv5bys1RuklyNorVSlNmzBEKhEiGfy2qpIJuQ6555fHtRPK0qBns826axGMmvXFcQdxr7DlYXUuNOGF82bSPTGWO/VvxooY7wBad32VQT3+la/bi0Lptj+iDy0peM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773648184; c=relaxed/simple;
	bh=eRbmuWlGmZzWgA7efRphnlq71lwFWNCcHXTYn6AgAy4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KWi3u2Lx4Z6bdJICSnjeBrlQ4c+xSjRFrovOSYk996ST1z8/KayV0zh3NllNi12p4wMD1c3pmvz+R0mbCsPgunEHYja1edNPGka3gKsw1lVAV0GRG153eEL32fzXFouidW3su0nE6ACpEsIry4xDqt2EfAYdbPTS05pknMkF5dQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qdptwblc; arc=pass smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-94abd52b274so941099241.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773648182; cv=none;
        d=google.com; s=arc-20240605;
        b=hYfCXsbTWtzSGTLACia7K8FMR1wMdNQBztuIh3N13gLFDvOeUDRQmc82uaoiXFDf8v
         f/RSGNmiHf2JnzUM86ylZwS5vJ5Wt4aO5MfPGeej9usd4ElayYUkYhJ9T/Puq/vxvnTB
         pr3IOE+ypFNXA3Ws7TMMBZm9oiiVprgLwPUym6RgscxC7cDqo9mGfV4fVML5QQaaJ3bn
         07oYtYT+AvBSe4lwOwn4kjCB+KS1EEOcLZrUcb05zi053hgTC3APJbUphJ5wPaNnv/mh
         QDqhwsfGjsAbct8ja3d+6/wMIhfNhFzL3aMEWEZsvb8tDxpEEBNUiQ3Mn3Jio1uYFq6v
         LmoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eRbmuWlGmZzWgA7efRphnlq71lwFWNCcHXTYn6AgAy4=;
        fh=m83dbAj668QXT9neviJuyN2uA86O77VEA1txs9/Ku8A=;
        b=fmpzRYnnk0RXHNqbXVsRmBAM7Mx4aAXS9ilcvXQYNlVfzXGO5t052WFszwJZ5M3UoV
         hvjy0XJTUFWkfW78WYK7q4rLbmj/nNh9Enpb5gYXeIk90MwXFllijcwqGNWbqrLSN3nW
         3mYh6FB7Xhekt1dXvqQoR+MiVCylJ6FhvzREQpQg+L1RSZS5YuXr//0fXFRoKwUcFaoy
         NGoa/GgJhAXzXo4xV1mWUN8AE/vtgGQvZmq3PjxNcuDyudJzd7oAcVuWlDfsz9NCZUg4
         X9rQu3XAytgOkYxA4fBg/nEVP2Ze/hM+fufZgD5/Vitr8OTfWelZttt7vgl00zxgK7q3
         ZeIg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773648182; x=1774252982; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eRbmuWlGmZzWgA7efRphnlq71lwFWNCcHXTYn6AgAy4=;
        b=Qdptwblcg9iolgAfZtHEW+vehJrqx1WmDW3kAysjHAs9bOluu+pCEayWLAAxmiTvgO
         XFQxYCQOY37l8ue2ejyJ8gMwwlkR412qPavvr83Dityf0bSCHvWe4LcX7xzYiSt3Ail5
         HbZmV2pllvjQ/dSbx/xUD598YjQOYpssmiAdAVuXvNRKP9eTOO7sFlRr5aSyLYqs+hrD
         IGbDUzotD8PKWXJnoAqbaaaqUWwJ64SNC17lYnOX+oD74/BGelMHS6I+aeDV9pa4PTAh
         HRKvQKN4ifFbCS8bKqHVQRARM4zG/JWd6DDR9iCQA9OuMOTPKrXzjHInJT8dw+MuZ6pS
         FtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773648182; x=1774252982;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eRbmuWlGmZzWgA7efRphnlq71lwFWNCcHXTYn6AgAy4=;
        b=fvLn0rM4IeY9VUyqu/wdMQ70qxR6AZnQQz6eOK9W7UkNh5F70rjrU7rdHETHIL4IJs
         AIfJISY0dc17FuMkSvDMwm52m8KamNew5Z5GcuI2mQFexTDGSScN2jzRmr0k+sX1aTGR
         OsTt5TpRN249IDYoTUKYnon0i3kMfzkuj6j5YLRlLgDBlq/pOtTa/sIXlfIUeB9uprF7
         UBajmA9bMSWTn491SFrJ6TD6/CeGWYSNpZhnUGqVMlYz9NdRjSVhaCCbx5siDwDxhG6u
         93Vmx1KXn0HJJdAey8/sXRMOcKOJzE1kKsdwdGrEkXU2UCyoPPLY0vcVXi2Gw6NMF9Im
         i7Hg==
X-Forwarded-Encrypted: i=1; AJvYcCVhTjS3tUmlEj1sBHLVcAKkzL/zNvoteDpuzVKJsucyiz0Slt9vG430PPLRD+3hCRmZGBTqyhYNzTkT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8MSMk6aw0F/sce0Qh7dG9pPtPqVeNcCn+PnyWC8e07a1ab3/g
	AY31sD4cBxDAtUeoyqF+ESVoWLzYYPbMKXILE8BVjZ0mz7IW4/arj+DuK9TE/BTDLgWf0s7YBBM
	0og0wKV2jjdLHZ06oLexdbhA0FQrpz2U=
X-Gm-Gg: ATEYQzwmqj+ruFlgJSDZUDB4FqwVxmwtIQLF4d0wHgB+4wOK2AOf6ZPBZC6J1iLv7S1
	qRcARj4LWK4rBbcc/ptJxlhGlUJavH5hx5+idAaetJo3wj7q6yKFkZJlmxO4eQVG6aRzEIQ5vMG
	t2S6TEK4v2GaTjS+LIRk/OiWAQTyjuHFKkxq2Fh2jNSbnbdmwI5IkLFyCIOwyzCx9I+e6/ox4cf
	xoV0zV1PGtnOV41wo2psL4IGJUA3KX2Hh6yHR1EyKeAzAsbmsjdc167PIhVlA1L3QQX1fYUcC8l
	HQjTgBVB
X-Received: by 2002:a05:6102:e07:b0:5f8:e47d:165 with SMTP id
 ada2fe7eead31-6020e20d416mr3737253137.8.1773648181650; Mon, 16 Mar 2026
 01:03:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260315144536.515032-1-mitltlatltl@gmail.com>
 <20260315144536.515032-2-mitltlatltl@gmail.com> <20260316-demonic-delicate-manul-8ffb80@quoll>
In-Reply-To: <20260316-demonic-delicate-manul-8ffb80@quoll>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Mon, 16 Mar 2026 16:02:36 +0800
X-Gm-Features: AaiRm50gdkcfTDnMCdX8yuJBSODCuTTuvjktTUMybni_sKPxSjfZqKKen2r8Ekg
Message-ID: <CAH2e8h4US7Ut=u3AW6bra9kUhCo15k+sWmVw40adVE-JQ+ayVg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275991-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 0E6D2295EFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 3:44=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Sun, Mar 15, 2026 at 10:45:35PM +0800, Pengyu Luo wrote:
> > HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
> > in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.
> >
> > Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > ---
> > v3:
> > - remove '|' from description (Krzysztof)
> > - drop description for reset-gpios (Krzysztof)
>
> And all other changes?
>
> Why aren't you testing this code?
>
> NAK, drop the tag and request re-review.
>

I see. I will send a new version later. I made changes to v1 binding by mis=
take.

Best wishes,
Pengyu

