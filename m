Return-Path: <devicetree+bounces-264820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEUfH2rXjGm+tgAAu9opvQ
	(envelope-from <devicetree+bounces-264820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:24:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 142A312725A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59FE0301CCC1
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0111D34A3C9;
	Wed, 11 Feb 2026 19:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IAViBgB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0446352C57
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770837849; cv=pass; b=BbmWNVBByZOtMmWGf5xmj080s70GlX2gJ66J6u7/KdRo1bZJc5OlNEWEwtPwh7SKMVbvrwqtrXwnpPiI/hGbFDtSjRsmMNpa06YtuhRdTZx0+QOkaxYHWlF1vLDLxro75SJSGkIjS6AsLMiMciFO3PJrKfRO5VHs8MUvMB1AXbg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770837849; c=relaxed/simple;
	bh=HaJDAk3mIX9LRxG8QNvxqKNRvtTw9xWVThyEOEHtLlA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rrL7XdmCDVcel3XZD3GpjaTNbAxpAUge9GzUEhAu0sKa33SE5z6rNtUSz19i5MySykN6JcVaH+RFjPqBHpg/QoKh6hLZmtBJGYvnzNpc+I//tgEQDaBdgWYIWL3UL0dB5PqKiwdfjy4NFDIgFF5bUNXMo2xc4Z43KwaqcE40rmg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IAViBgB/; arc=pass smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-79088484065so23874767b3.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:24:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770837847; cv=none;
        d=google.com; s=arc-20240605;
        b=dYL0EbbPIaqSz+GHfvBk5pMlOeVLlmpMXClt9XWuKAFvgQYK6lgu1LZkVSSPhS7HVR
         fnYt0YdH8oT/Uq5N3vKWnkkkTMvczqD6KWaXNSk3dkynrkGUmpNyQ5q3vDaIdE4Xbi4+
         prXLbhEeHOA5JrFsTF0c66AO76952J+pDAtGqdyYUIW27jPLBY85umq92YJhImJUeCjZ
         0coYKsENEGqpU9MZHxDO5B6vy10DASM43yaW8z7YJHtlUXfHA7a2f+H/Wh6cU6C9+X83
         3JHEeZ2X//Lrh3BCVtmuhvQMn+gLxANjPmQv0/nga9eUGCogWkXSKXS5GqspoS8O5/TK
         Vx/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xJnoBv8wPxr3CnPnohq7c8MjeZhtuaqwUQXnscm8xaQ=;
        fh=kXENmxH53dD8p4yRjZCrSxgung/JhoC+hNHMH4Sbx6M=;
        b=SEtIM5u4t3RP7z0y7uzMj0xXkX1ge6TRv7HhjjHALJnHFY7X2vCPaG6sIT64aAG1H1
         gQjM39ro8yrCOTgVR2rknlN0zY2YsXulB6gQU+tiLWgExaPjeVidBWXL90y/n/HVssxb
         5Y4rDedJAH/uPLlgjDqF9mRf3WLu7BjyxpEIH71PL4PT8f8lZUfc5KD9Kx4n+XSslWEw
         Dve2odlHGgCm7EjDYUY6bZmVq/ipn2BMWdScmFhpXeuOGZlqCuD4ho+SYf4B2+HoiYXg
         kvpGxMEvyPyuayKOUJIXDlpJd+LQcOFmUdfGz2kb+JynJBRT6tLbMgTaM5PxIJ/S5Ja7
         tE/Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770837847; x=1771442647; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xJnoBv8wPxr3CnPnohq7c8MjeZhtuaqwUQXnscm8xaQ=;
        b=IAViBgB/BpuQXupko04njcr4QRCCmbmb3OipPUPxbgwfFi1NvNYdellYyy9J1MhPGy
         6dRWmipvvRWojB7og3HJm1rU02tg7I8YrZu7fQp11KwPgU8EWF9X9R/DDkW+z/50233S
         QMWkjz+X02Ip89w6QLjJ4G63v+yrKGlgj8WGlFiG2G86giqhHpPUzn8iE3A2J8UCdjlW
         6AQFlEXPZqTGNV2585cANZrip5VTBrUZ25wK+dNDaiFid/YZPFRGqKRJo5oxgwmm0wSt
         56hQDDLdE7IFtJ6xzzYQyQWjOl9t93FvAHw4aKfoSfQcona0XN0+fCwTpFShUNDMG1e0
         Z6ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770837847; x=1771442647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xJnoBv8wPxr3CnPnohq7c8MjeZhtuaqwUQXnscm8xaQ=;
        b=OKilBqPiIlP8IXK8Svfv0XNdAK7StO7fS6gsHF/8/X8ik1w7Eyd9Hmlp2FdcbaFeR/
         MI4LGBASU8gF/RQJrSKu5wqoGXJERgaobnL9IfBoeS2WMXwTc8eeiKuUzOuXFZ34YwJk
         SqKf+LdHJk+bit0ieqGflwxgEhqE0h85kALz/Toi7gwmmCjg4Mr928HMfXXgOv3WmC6l
         HnvW7wozOYM0dFcWsutAB1qXKe89qeIiiVOujDHbIH+wwh9RyFFwhzwhEYqKYNoSEnk+
         iB+uyM11o1GOl3cCaZz02oapsWJGASDHzRowZ1p46UPR73S9o2zcLWosYqSCK1ga9lK8
         zwqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVz7uFB7T3fRqxXG82mgiDwQIpK77yB2dORonnZ5YS5AG44xYKNalf1ytrstSIgbol63YxOVjbteS7z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+6aaAcjix/eQNdic+cFAcDfKIl8XkhhX7NvqHastKfmbub1kO
	pg6i6y7nVQLMqKQXREjwra0oM5jSVJDUznBskHGbkSAy2M0f5Vfrh9/J45eRjqn14ziWHEzxwr0
	ozstAbX91QHCdmeh6qdluhZays7FRzkg=
X-Gm-Gg: AZuq6aL4fZJtSSqAlWo4hCkrazgZs5IV5gaq3KnGrgJ9iCnxQFTsHTKFSnI/H6KcECs
	OGl0xWvuIJ/jHByFgeVvYJ0f/bGon73WbHFmbMRD7jFYIyB9ruhWrzsdWd8+WfzyfYzwvCsBDre
	2yY9bD1is8eOCkzyrf4SOMyJaxQjnJ8Rsgi6ECDJTkPLitsFk4fhqh2zr+6uh2p4AMcnVh/GLfc
	Jwz/6cCa52ew4ceu2fclSwl8tXrkLcI9guQ4P9Wh90EbQGgQtOd8btT6XRELrPTZDmmLlJF7bAo
	lucQV5F2fgk+C7wDA0Dw9nYAkBFMKXRPbKBkhbu8vWK+GNVPEqmqDGDbqusEJeS6KJSMDg==
X-Received: by 2002:a05:690c:2021:b0:794:f8b6:44e2 with SMTP id
 00721157ae682-79737646ecdmr8996757b3.36.1770837847465; Wed, 11 Feb 2026
 11:24:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
 <20260209080613.217578-2-vivek.sahu@oss.qualcomm.com> <7cb9a945-651c-426d-8cc7-1ec1174ac68b@kernel.org>
 <8fab20ba-9924-48a6-b417-5ebd28b77cd9@oss.qualcomm.com> <6def8756-f4c0-4b4d-a20a-205d548acf88@kernel.org>
 <4b049560-94b8-4a7a-a60e-c2e0c1e58683@oss.qualcomm.com>
In-Reply-To: <4b049560-94b8-4a7a-a60e-c2e0c1e58683@oss.qualcomm.com>
From: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Date: Wed, 11 Feb 2026 14:23:56 -0500
X-Gm-Features: AZwV_Qiki52fD9FbCMBTd-xyRPxluVccdPlhJ5DuMk1Nadw8GlM6bpa_i23w2dg
Message-ID: <CABBYNZ+qeXwqFj1Trnt_c8y_w_nKD36AwKbNdZ5SEtkXERuJxg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: net: bluetooth: qualcomm: add
 bindings for QCC2072
To: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
	Rocky Liao <quic_rjliao@quicinc.com>, quic_mohamull@quicinc.com, 
	quic_hbandi@quicinc.com, linux-bluetooth@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264820-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luizdentz@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 142A312725A
X-Rspamd-Action: no action

Hi Vivek,

On Tue, Feb 10, 2026 at 7:05=E2=80=AFAM Vivek Sahu <vivek.sahu@oss.qualcomm=
.com> wrote:
>
>
> On 2/9/2026 9:38 PM, Krzysztof Kozlowski wrote:
> > On 09/02/2026 16:43, Vivek Sahu wrote:
> >> On 2/9/2026 1:37 PM, Krzysztof Kozlowski wrote:
> >>> On 09/02/2026 09:06, Vivek Sahu wrote:
> >>>> QCC2072 is a WiFi/BT connectivity chip.
> >>>> It requires different firmware, so document it as a new compat strin=
g.
> >>>>
> >>>> Correct the sorting of other chipsets for better readability.
> >>>>
> >>>> Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
> >>>> ---
> >>>>    .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml  | =
3 ++-
> >>> There is no such file.
> >>>
> >>> Best regards,
> >>> Krzysztof
> >> The patch is updated on
> >> "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git" rep=
o
> > This is not correct base. Why would you base on something old, without
> > any in-flight accepted patches?
> >
> > You are supposed to work on maintainer's tree.
> >
> > Best regards,
> > Krzysztof
> Yes, I'm now raising patch on linux-next branch. Please ignore this commi=
t.

If it goes in via bluetooth-next, which is probably the case, then
please rebase on top of it.

--=20
Luiz Augusto von Dentz

