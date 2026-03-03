Return-Path: <devicetree+bounces-270288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLWPElN4pmnxQAAAu9opvQ
	(envelope-from <devicetree+bounces-270288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:57:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B75E21E95C8
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:57:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94894300C811
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 05:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09C230F95C;
	Tue,  3 Mar 2026 05:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wi6bop3J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640642F6920
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 05:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772517455; cv=pass; b=u9THZ3s/jHjUNV/ysBPByBbqGhHJ+bBRG4u2VQyZI3FKZ/5Kk9mP5HS517wQUIEF1jihx04AtBtecOQ0FoedDNwbatdyUqAZ2LQEwi+dmbFqm+0NyabwVldQM55nXnKr/Jjgt3fy5IQ905pEoEaKHPx2aGhxp9QBzqrvKg9kKhE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772517455; c=relaxed/simple;
	bh=xSqRiRO4QtdJPUtYtBkRw+9iQGBfoCjVp65Ni/N9uGc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o+uG5oietU4HdEsIaZ+sD2Ew9G8PcbHhFkgY4M9AgOEo+pHrXF96/8JthdjlEah38YvaK5kh7hWbeiatGy0pWqZw4HTRAgepw8k3FG7WRQeV3q63/JVSQfQZTckvXyqSWHU2hICp95TdGiuf6llZx4Jy1LotlXuqhCDqTU7shd4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wi6bop3J; arc=pass smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-439b9b190easo1009710f8f.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 21:57:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772517453; cv=none;
        d=google.com; s=arc-20240605;
        b=Vbpul1Mg9+gxwU/eAVXbPQoL4KISv9zWUKzlYkst6VZp88gMPpA8piyCxUU9Xke0xY
         waFvl/dvLTsw9PVLd6b0ozeA4tSWQy/rNQz2koNrFMjzGTc/0K61Lhp65z7C54px1Y9N
         BoyXtfOLFyl2eUYs96H1sMpV9P3O1wz+3Upy1pMAH48NLPCixm3zf7HEo6eDf5sf17Lz
         MOeEmrHR7Vn1Fiq/jJPIBCOzVrj8di1Xf568yXjMMGMX53+2Xu4g8YQvLwM7Y+4Fz3sS
         rXi8eGv/JOgNevofpnuVlP1F/gtWw+2s+lY9jw/70CSGSqUt4lV3a/dm4CAyugORsK66
         UGiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pX0VLINMz6A6FQc/U8nBqp0XlDLDKfuR77NNnYDj7+w=;
        fh=4BguhkwBM3w7TXRBTw8U4eOqjLK0nAMWlYpNKyamVWk=;
        b=PdojWUuK9nG0xBHnTpq/Ag2c09UfUw+C9caQhUT1KcUeQ+tsDGHP9b66JwYDlDtoIf
         aTrVkJBJgA0YQYROz2Gu7aHukpR8sCfXUg0eN8LIAQ2WAq13GyHObIZhcquFKYo9z/bc
         m/+VeO5B2IF1UjGPdbIBdkbU1IzCqs3+LC7ofMaa906fTb2NRMmIMOjNy4IsVgdmn8dD
         roIW9zaFwsmmAeYQV5voJimJDFRSx7nSXBAumkCnMHrF9tci1OoL3ZT3XRQ9TQX1YtIe
         OX+hzO6AcLQcPSQv6w72GH3IEgXstI8KFbBvgnvEYOcq+zDSvKhMML4CdJLlXKPMFTSv
         hr0w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772517453; x=1773122253; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pX0VLINMz6A6FQc/U8nBqp0XlDLDKfuR77NNnYDj7+w=;
        b=Wi6bop3J5w7p3PqFEPU2zYhjy/7jg5d/zsNNVVNNF877HFdkivFYvCuqTxjIB3kn9l
         7FOYzTGvDAmsu6kVLvUaDQZk+ZolgT994kssbAEXVXcsIg5BbR2Q9E2cq7pN3K3ml5MQ
         owLJPu6zhbzO+PtwzICrD9lLMrjlgYUAHEkPwZxSrwHzAG3zGsMkqXfZm2HL7GNJ3ry8
         duEb80TBVr0FJZ97Zukl7ifV7vZyEnxFQlMJtYrwxzgFx+Mr8G9Hk+q9l1Cjm8ClDBiR
         xTl2WwiUZxOWOGvqv3Nz9adWMpfOeTE/eds94YTRmjPV3gdXCt7iQac9bcggt6Wnof3V
         8GKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772517453; x=1773122253;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pX0VLINMz6A6FQc/U8nBqp0XlDLDKfuR77NNnYDj7+w=;
        b=lg14u9n9RAkFYyTkKIC6yUVJBb0gzROW9bZ4NL9uDFVzZLeUuU74NQNG7oBjOxWZwf
         ZdfobdTmtC0k7kfdtMYwS73/VtqKMNq+yxJfQNYtdfpVNj6ABkCrnJcDNNEOAlt3QHOX
         MK498/x72+xfVj/viqU/aPHaPMinkDYWhNqWb7p8jrGFTiWkj/4fCMxl/gSbIw6LrVvG
         CCgLrN/JXYagDIqZMRVNK78qTqiD+xFpBrODQSkQ3i7QwlcuBJ8tAVlf+WlmoGXp9Ipx
         znSney7PexvzqvD5OsgSHgnKUWu59soNWqGxhKn6rKwRC2Swm5G0LHAV1UjlBDaNVjRF
         bFfA==
X-Forwarded-Encrypted: i=1; AJvYcCWzHLb5GF0LO00lC8e+Xf4yoCKEAX+QYk6sl5cgg+XL9RV7rub5SwWOykhNSDotcHaRaA7eVRIre42q@vger.kernel.org
X-Gm-Message-State: AOJu0YyGpnAJttT2CFISQgL9Sx420DY00v6o4iWon1Uy6vQOg/Y9R9hO
	fOJxWuQ2M5T9s4JPwYBFk+4VjWk0r0d5damrg+x5YxmRevv/mesKa18ht1o9be5TuRptFfmtqfd
	VMEykTXHCw5F4o5ZpsWCboa6Qk6/vO2I=
X-Gm-Gg: ATEYQzx/TiuijQCMoHxkp3w0vFP+mBUKbzARdylBx5B66WG6ijcxZjFWSVZFVUvfktO
	qtG+x1wQd0Pu0C+Doj4HSKWHfKDV0E9KHsOpRVGEJFjRdTZ8MfSn9ZjF2pCEsM6rde+a4SxNRXR
	+o4rnhUywFyl5q95buQmIFiasGgKFLgUWINkG+e4trKWj6w6YzIHdUltkQrB4Vgxtp9NTt0V5N5
	LvqI8pzn10jdna0bmUtVXW63NR94Rj7lRkYkyTnmziYLHLixr8QpPs6W5df++9ISfElY+TrlPTA
	exWBADDIcvvE17EBqEAvKtCeJg/RjQLRiL43JEc=
X-Received: by 2002:a05:6000:2001:b0:439:b4c9:9061 with SMTP id
 ffacd0b85a97d-439b4c99198mr13341273f8f.5.1772517452685; Mon, 02 Mar 2026
 21:57:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
In-Reply-To: <20260228205418.2944620-3-dennis@ausil.us>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 2 Mar 2026 23:57:21 -0600
X-Gm-Features: AaiRm52w2RMmTSSLdZHxtEjWYjj6N6MGUqWIzppOn89hLbAKT7zZ6KSUnyUL9Z4
Message-ID: <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: B75E21E95C8
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-270288-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[honyuenkwun@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,ausil.us:email]
X-Rspamd-Action: no action

Hi Dennis,

Some curiosities below,

On Sat, Feb 28, 2026 at 2:54=E2=80=AFPM <dennis@ausil.us> wrote:
<snip>
> +
> +       /* Pro uses gpio-leds instead; pwm0 LED is not wired up */
> +       /delete-node/ pwm-leds;
<snip>
> +
> +       gpio-leds {
> +               compatible =3D "gpio-leds";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&leds_rgb>;
> +
> +               blue-led {
> +                       color =3D <LED_COLOR_ID_BLUE>;
> +                       function =3D LED_FUNCTION_STATUS;
> +                       gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
How come you decided gpio-leds instead of pwm-leds for this? GPIO1 C6
is muxed with PWM15_IR_M2
> +                       linux,default-trigger =3D "heartbeat";
> +               };
> +
> +               green-led {
> +                       color =3D <LED_COLOR_ID_GREEN>;
> +                       function =3D LED_FUNCTION_ACTIVITY;
> +                       gpios =3D <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
How come you decided gpio-leds instead of pwm-leds for this? GPIO1 C2
is muxed with PWM3_IR_M2.
> +                       linux,default-trigger =3D "mmc0";
> +               };
> +       };

Jimmy

