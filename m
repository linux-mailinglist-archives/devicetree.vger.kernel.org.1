Return-Path: <devicetree+bounces-264955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFBRDl2djWmD5QAAu9opvQ
	(envelope-from <devicetree+bounces-264955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:29:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D6512BDCD
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 409B6301789A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 204DF2DE6F3;
	Thu, 12 Feb 2026 09:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PpVJHnc7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9AE224244
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770888538; cv=pass; b=o29SBw8AlObbMjY3wuRIkql9eYKlEQtMemaXtGlJn5RVFLWpCUTh1v064nL5+JuCbC855uFl26o5lKyOJ8tgNpW9CPts7FU4TVQ0w8z0N8HiDHX0dbfhbog/8Ti2cDB1wN4YQuL31Gr3JRxpYNGNejJqBYzWbADSwP5cjxNMKJU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770888538; c=relaxed/simple;
	bh=8UBxJormBXMIna0vALf5yVJXI99hPt+eRkrBgltu420=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XwcIKMvAMZM6cYRRTKHe2QN21cQ2xJK3qg/R8RNmE+i8IpifP4sZMjpiJUfNXjLk0XJYuoaTyjE3xQwPzGmA+go8cWW0GFaiZyyj3fUEtGztnLORdvzyVoRWopEDGee+L/1p1xCQ8KgeFo9dn418g2EQyVbY+o3h0apU6W0U9Is=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PpVJHnc7; arc=pass smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-124a95e592fso1294842c88.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:28:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770888535; cv=none;
        d=google.com; s=arc-20240605;
        b=WND1NsCJJp/CuO96avzqc0D/vrSXIP7K/fuzUp4iwAyAHOYzk6vKm6Q7ScGYlb1sAf
         nYuTyiJrMt4diulgULPeYjhXoYWqvSQ/BihufgdmPX1kL0vxQcwkqzHmmKk96DOW9wPe
         yd1FlRhjsahu/s8fvBDPhd8HsvNm6uAxQbdy0dUeZu4kRx9lKzJHejoqAQE7WJaMMEa2
         5yNmvSTVPS7PkRy0Na6TTf1BFBl+9YSzYiRuRtKBLZkmgPLfyjJAavLCyl7oOScEayDM
         5NBqBQWyHAn4DbuDQwHsfL2swuiKlX2bI/0Adp2L93GWlX/LqbGqVZoHwGveQTRZoo+8
         ES9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8UBxJormBXMIna0vALf5yVJXI99hPt+eRkrBgltu420=;
        fh=fMQhP7LwGG41NwEZtrAJLWNJ9aELf5vj4ptLvBPGLAM=;
        b=SsGFufPExND+6X3fubwFK2TZe17IZKU9qRcihBtw5buRpn+J1CncQz+pV24yNjyBGj
         Dd16PFoyAzWUehfxDAKLZacHrtJiyi4v7Sr7TzcFiod+jQ3tN3wUlgPXOctmAzYHWKwm
         iezSiwrui3zYzmYxlwx8K8bvk5yQz/sdU8BTgxLD8LIr5XjpztsAox4D7XlL5ViaLLui
         Zj0Tyac5uRh6N8AL6UcQieZE3FYcbzliqOaShKHvQ725bmZjNri0pGf9XVrTyRVyVocO
         SK0c1P251ONAcwqv43FBLW2TPPtRkON05FaTNlirNIi61koS7RRd2S0mnF4SIjTurUAh
         pU0A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770888535; x=1771493335; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8UBxJormBXMIna0vALf5yVJXI99hPt+eRkrBgltu420=;
        b=PpVJHnc7fE78GqFw8E3tDA2M0V/hhTJGnuSTMDogA+wsvGMPxk+HWFU5pj5vTkIRrV
         tUEnuGmMPGNmvyeYfef+QYGSEMJ5gaLx4zxb4MnP79EyUtkTvtz5HOfDD11q0TDLGNKD
         ni4wWw3L7c9vqZe6K45BQR3xt8EPio4J/nOFa0AEx8OJU6hV0EjKkKKvjVOH4SKstJd9
         Sz/ta/xJ+1WsYLC9pHQMaqLpyKXE5n1oLZOMDa/OXegQJm9aKpEo8ndEa/2AE+GIM/y+
         nowD5dZU3QJCS11Ja+FlvQJXDujl/5q73nvxzwPH7w9ECLsA+z1zZGgaC+up6n/aQTwl
         Yxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770888535; x=1771493335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8UBxJormBXMIna0vALf5yVJXI99hPt+eRkrBgltu420=;
        b=K/ZpS63JrxZfllFk+kDewOlV1W8W+63PFe+yDjhK7gNUYDKrXhhehsiHXpdM095EIR
         aCo1buSQXvuaohX37gyH65aq/PJTLDpYFOrrvwYJvj+ufXIhOrdEy8Rto7ouIMUyVkZ/
         SdeiHON14fCVqlkbW0Nxgs7kS5fTaR60Z9oJj25Ee2Bb9HBhpNhFgK9IJhMimx+CgL1R
         e+EVEDaKmjpXtK+44DQRD/7Oi9hEEhJ4ly4d+YIZIIZnJbCBrLMdjqux7YSQt3/9eCh9
         WTqWHWUIz67mFEbOV/UFNZIoruiUCT1KzhGuG/y1Cza31sHbIt6N/hGTvze6oo/6ZMR9
         pt6A==
X-Forwarded-Encrypted: i=1; AJvYcCXmkmCcY5iftFVtRNc+IwXAS5+lxo1b9nMskjAtGlPNPiFiNW4jC5Wdt/sVLD5FRBlQBVNplFaBzMrN@vger.kernel.org
X-Gm-Message-State: AOJu0YwaCyFSBfqqw8dpOOIK0ZzeTqvJ2SS7s40l4b5iYdfc1FB8QZR/
	1s4Yxe1g+QqKzMXJdJ2JldirVcVrcO9rWOfEPa3Yml1juCOq++LSHKWIqxxAEkWusjAVfwxRvxC
	JzxxlME5+CyQ6XF/T6T1gd07nQ1IE8S0=
X-Gm-Gg: AZuq6aIqgpovhk61+AVeNLCyvVvMd7T574tfwxPBBw4zwAKCw2VklzpoiQQuI3YSXha
	oYK3711G5XalquNqHXDuwj9DULv0ZFSGe1rDXKMQYSBabjI3ItZhiO+KtCDe+IAQxZApzcecjaD
	bGlPaXZOOpmDB4av/zHv0Tb0aAqEw/MfwEC8EGE0665nCUQfBeJPk68YNTAwHAawJDcZXDSLEp9
	06hlpOTd54kZ2x44D5B3F03TEnMQzqeM+VFib8wzoieNIi8oEtjjztGAtnANHwE0AFkmj/RCl9d
	IhdEpVfA64qr4jNTp2H0bCpyKGo4+qneAMdvrFzJbuSPxIxnu+BwO9/6XfroQ8mDAjxS460buqC
	xPjHYaIZK3paArcUNt+eRe5jay1MvJXmh
X-Received: by 2002:a05:7022:6081:b0:125:be41:db5b with SMTP id
 a92af1059eb24-1272f780d9cmr917943c88.42.1770888535262; Thu, 12 Feb 2026
 01:28:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211-imx25_dts_simple_warning-v1-0-7b40e1acca27@nxp.com> <20260211-imx25_dts_simple_warning-v1-2-7b40e1acca27@nxp.com>
In-Reply-To: <20260211-imx25_dts_simple_warning-v1-2-7b40e1acca27@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 12 Feb 2026 11:31:37 +0200
X-Gm-Features: AZwV_QgGMIlcIGcwVtxSix2gOB2fixK07XuT9MDhx5OR9fCA5qKRVtqrGhICOTY
Message-ID: <CAEnQRZBUNOiTBhgypWDjBUYqNv2LBUf33REqKRM-zqnnkwx9TA@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: imx27-eukrea-cpuimx27: rename uart8250 to serial
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Alexander Shiyan <shc_work@mail.ru>, Shawn Guo <shawn.guo@freescale.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264955-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,mail.ru,freescale.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,0.0.0.3:email]
X-Rspamd-Queue-Id: D3D6512BDCD
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 1:13=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrote:
>
> Rename node name uart8250 to serial to fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dtb: uart8250@=
3,200000 (ns8250): $nodename:0: 'uart8250@3,200000' does not match '^serial=
(@.*)?$'
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

