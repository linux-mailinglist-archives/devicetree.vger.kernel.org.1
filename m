Return-Path: <devicetree+bounces-276399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wASSOmNyuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:13:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D052A090A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 108153028032
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9047B3624C3;
	Mon, 16 Mar 2026 21:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A4QXOr6M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6A232E13B
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695361; cv=pass; b=RmB8+oQs+eMQFmSH29uurZ+1E0KXaI6uZHcvYKKwdPwCqGPQG6AbtY883p1XBTm8ZnpvqsSDADn2CLkSylJSFJvXJvi66SRuKd/zKHkHLUSQvzACTeRl6dQDIg4KUWr99LNhi2P+XNW5+87xs1h0B/DZ2JaEDvhwnuHMLaWEYFk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695361; c=relaxed/simple;
	bh=Dlr7wB0rv8sQmrjoTlrAaBOXqL+Mq+yKnYa3vnC9aoY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XmleRNiaj+YYkZrPWzwMy4nGCgBiOtWXMGZXLlItVRKL2vpoF/z1ojou17iLwdXkR702uVa10VKCgEnDhbAV3/1f/MuDebVjgr7HRM4qm2UbgxGHPfWVl8Uz3pwdfgvgq+mYLJxW0KfLMoNA7haaXs+Y0Xfl2Vo0p6F5G+W+2JA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A4QXOr6M; arc=pass smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b94358796a1so722992666b.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:09:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773695358; cv=none;
        d=google.com; s=arc-20240605;
        b=DzbKPeN0quG2WM95TchcyEyDuEmSFI/HITmu0Es/v5qcf4+HUNe91P71Qyd5W0ZOEv
         5EMD3pdhWhsl8twBXftqLJOyfLKJZ8YTNbm0IXsX92e5fUIHf7l+gg0T1bakErnbMANU
         4AkS8fMk8n5pbJ4lik/XV/7pCdc/ROpIcFZwkwXh/2a8jPtfMJnel5+04dol/kyyEXFJ
         5vzDYrJpDL1oAqlGeBhIyYXPr47eaA8uv4yjp665jwLZguFray2OMzR29FGFYTeJCDgN
         YM1hHMbQuqK6VbfDyXIRnQB25E35c4wMSc/xpDkR7IecrfG8osOvD+ZpWvsLbndn/uLP
         piwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Dlr7wB0rv8sQmrjoTlrAaBOXqL+Mq+yKnYa3vnC9aoY=;
        fh=3RYZxl1ROtCrqvXs7v0NXjf0mcq2ffGLWnFSlTR9irE=;
        b=Q4bIKueILx3pXF04GKxSE87qgCKbq+SxL9swcP5m5lB5O5bTJGCf1xdlbJDR341nKX
         +4AVBNesm/oA+4O83/z4rcdk5ESYfjODdg07AgzQxc1zXnHMePXV2oBQe90R1UgdxABT
         8BgivhwrBjcm2Q9XQ55meRXCyD7it9Ej0yjWFbGCIKa2K7/NNQUQaM43Q3iV+z1oZQrm
         Vh3/cU5+zkBPh/eGPo+DTwoPnOu4x9YGIsE8c8iucgfQ8H/d3WaToeudoCN/BdY1JfUq
         9keX71l/NzyS0OvVZ+yK/foGO7gio0hNHsxjU6vZOtIk5wwBV1ll4iaJ7DN/ZgHbrtJ4
         pkQw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773695358; x=1774300158; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dlr7wB0rv8sQmrjoTlrAaBOXqL+Mq+yKnYa3vnC9aoY=;
        b=A4QXOr6M/VDEpxah+UydGop1JCCrBLq1iX9kkhqQircebulCMN2mnCokWJhtL3o7R1
         P16HImiRbgmVArwB+drn8NLv5uG2XpDVGqE9uECSgaQ5yI5IXC57AdeZwZUF5jITobyO
         Gdrkpu43KqQiMuEBcV+SXT5TEeGfkeS1EWg0iEAOaPq6xcqzAQKV33/T+xkb1ce8PB3f
         qTF57qj9uqM+XzsChoWLJrvc/t6TnyuePbmDNqQhG95h6CGQleZ9gFMgqIKppXmZNU+s
         YJ0xfH6C/s8BiOlnbn+TbXlKsr3bOF8z0xjKVgeXtupjtjgV8mxSvLjmvCReGmUQN7IF
         z7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773695358; x=1774300158;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Dlr7wB0rv8sQmrjoTlrAaBOXqL+Mq+yKnYa3vnC9aoY=;
        b=fNphD+ERifQlBRNp1HCbSB44pLHwYsbJnVf6smzE/s6G3kSk+JBKcJ7HSneoadhcXc
         7gnF6ny/XvMvfi6SS+vW5szbBcVUamjWNz7DdxNGndBLUd04MJdKiRASoS4DeyKf9UnA
         E8atPtwsklUGm48qxc/fpnP7FDux3t8FloHGuQb9nzV7XS2jN6gjYfH/qau1r9rFGcnK
         zYTRkOZyttuWwXTcmSIKu46o6+UfpA6naLCt5nYsY+mBLw+jTSnNoxHX4HErWaQ1on9g
         a8BJXAxqW2jyKE+Jc8wIff13KwD9JzJ18QwGwxtUMUp5qWoJwNf2Iptj8Y58aHpQ/p9C
         qufg==
X-Forwarded-Encrypted: i=1; AJvYcCWSRmxKZglC9bTpx7kzL/ImjO8PvlGrbtbXTYyNgPt1grCr63bmImMnA8uYsmg96yqz05xpmyERPWPs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc/CV8lcCE7eIeiYr0ZntpylFejX3JxBvpTZ9pGnAUXJ2kKXer
	Wg+KkKyyBYyWPbNkJ57Mt4/h/lnEe0kxsL55IjjUhqYPFas6rPNKSYuoyK2Nwjb5vtq2B81Tz5T
	oyhLkyNmWp/Tk2kNh4TrKa1ESfbZfVWg=
X-Gm-Gg: ATEYQzwnZfEQgE57uo8ufNXXmsa4+rd9vlzwiqaLuzthdrLrkUZb+d4RCYLOu+7wx4z
	eA8UNrftENrxhFLcJvoIZEzfSEzukYWA88IIaQphBp4EaoIozk6eDGSSO2hWOihqQsA6mowJoXJ
	bZqtgfUospOJt1omtBauDn+yZlZCetMW0A1dVAic4eooRt0a/BrgagN06MT51mSM4sNPvrTeOCa
	Hnu8XQdaGc3X7O8M2uBxPmzCmm5HjCkUsvtTYMFliQVbynX3dyC5DAgKnVg2zZry0isexZ6ULm5
	roB56MDpdSVevdXjNRezcqGIHKjR/IGoKAFI/fdF+ttLHufuVJV9+HNLzMTDxyb4ehxK75hartC
	XjlglW+aby5cLejVi
X-Received: by 2002:a17:907:1b21:b0:b8f:a5c8:f75 with SMTP id
 a640c23a62f3a-b97653bbab0mr857878066b.52.1773695358108; Mon, 16 Mar 2026
 14:09:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225230827.21715-1-rosenp@gmail.com> <20260225230827.21715-5-rosenp@gmail.com>
 <20260316204422.2145317-1-florian.fainelli@broadcom.com>
In-Reply-To: <20260316204422.2145317-1-florian.fainelli@broadcom.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 16 Mar 2026 14:09:07 -0700
X-Gm-Features: AaiRm52aXQEgdzrzMqb2fhW4mPjLDkWE8Ucj_OrzRd5eKxaoFWM7VAAel9ZUUQI
Message-ID: <CAKxU2N8bNdUC9eS_qgqsJ3o=scmGnYoWh32AMQCpL2DDmdt52w@mail.gmail.com>
Subject: Re: [PATCHv2 4/4] ARM: dts: BCM5301X: AC5300: set WAN MAC from nvram
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, 
	Florian Fainelli <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276399-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,gmail.com,hauke-m.de,kernel.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,broadcom.com:email]
X-Rspamd-Queue-Id: 52D052A090A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 1:44=E2=80=AFPM Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
>
> From: Florian Fainelli <f.fainelli@gmail.com>
>
> On Wed, 25 Feb 2026 15:08:27 -0800, Rosen Penev <rosenp@gmail.com> wrote:
> > The WAN MAC is offset by 1. Set in dts to avoid having to handle this i=
n
> > userspace.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
>
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, =
thanks!
There was a copy/paste error here. et0macaddr should be et1macaddr.
Should I resend?
> --
> Florian

