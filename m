Return-Path: <devicetree+bounces-266930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LtzHXlMmGmaFgMAu9opvQ
	(envelope-from <devicetree+bounces-266930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:58:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C753A167652
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FD99303182A
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAEA3382DC;
	Fri, 20 Feb 2026 11:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aQGAWrnr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800B9330657
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771588684; cv=pass; b=cgdchhZb9yqsWGx7DbB83FtAO5nYGqsSV43oRRyh+1UL1roVK2bCCTKqLPVznAh39bEn73U01SbdSuti6qbw+q/FQbI0QsSDNJ06g/ECQU0SoIqJkXuz5H74KwrI3Mi0K/BFy/mKp/n2kD5prEFF0wBq31ek/ib8xlM+/sdiGN8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771588684; c=relaxed/simple;
	bh=R4mldCpjawAhR8uySP4hZ8wH3xA8XRX1Pyv4rGdxrbU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U8dO1IEyabyClLYtbUD2AN9DL1X24sb6/sJbc15ZWnhSUzfMak0zIsW/kyF+HBOb3tbbiKdriOb6TcJb/z38rWck2Aeu1V99RYi0OV+BXGFRtMTTswU8/+vheipB/1wUDW7swSYPPUqcLrCKCEFsKt2su5wRWOhWRKgi33l2LUM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aQGAWrnr; arc=pass smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59e6491f1a2so2316471e87.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 03:58:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771588681; cv=none;
        d=google.com; s=arc-20240605;
        b=DRIkCTmA+gvxSaJrKgzULpwvBM2MeRvjw6lyiuXZkZniKjdQ9madkAPJBZk5OP4hEb
         OEAzx5dIS1WYdqFUI1tmRWmItzHpkiMV1hr3rd7D+A2MFdTOouftp01yR9wo2VJ2LPuw
         s5Z8W0PO55L/a5Jq9jZIXEy48yXKaDlGZGUUhOJTfXYteXwWtHutmKDVI44e/pp+MygM
         lIc/BlSH2E+lacYxCki7Q0faXhe3v/Yg3FYaE2wMwEpRL+8h3EHMUG6bmEsVI9fKSb6A
         LQrq6c1PKDj21CEoMLFp4r8/THu7Za6tX1hS0nmO4nm3Vg6GOX/GUj2OUI58WrXIjv8K
         mGsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=R4mldCpjawAhR8uySP4hZ8wH3xA8XRX1Pyv4rGdxrbU=;
        fh=BTGUHhuUHe9w+dcRohPz4R4IeHOsGCXthu8eFyTtHPQ=;
        b=iFC7m4GjqpJ0Q2FMXSz3OMuG4eqwJuuze12xnBvp3GzgQW8n9YduufVKpM3wZvE7M1
         LxeCw/a0/unYwnF+rrCRkGZaOgZtQUoO9I2zo20MTG2iWQOMd2oyOUF6St4d7CriZals
         2fPyPhEAoeuHAUVVTlHMxv+BPzoeHg0knoRzyjGI7TOc3TvfLv8FEhilM0adC3N06hWY
         zyXN8MoxuKr2xUAOdMhXY7MIXvAIALoBN3FHP84+eqn3frpVD7l936lnj7sd/Jeu77Xh
         CwP6yRyeHm0CjLj6OIvrU20YU8r3n2FODUEkuX2q+j5QSrM8BEZsbfZu80CaMohI2wXf
         jHiQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771588681; x=1772193481; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4mldCpjawAhR8uySP4hZ8wH3xA8XRX1Pyv4rGdxrbU=;
        b=aQGAWrnrt5BQ3Uql11/7/jq1TGU3dnQraVwnrsyWFrLIElTUxTxhk6jQ7Xz831eaSN
         uYghVeGm7eUdn2iwBFhYlLFFg4CXUQA9q8GAfkSmXZ03dTCb+Z0h9JqGlECwNtKcnTph
         vhk1l0fh2ZTLQgNFQXX//WWq390AcP3YJppR6Rm0zpBDmfPcPAcve0kQ7dXXAcd6dpep
         rhXyQ8TVKzrl1ODC+8yIpnoAMRWWjeSPGNIIykOer11xthjKzyfDBytkjC5AW8DJTwEG
         5T+5Neoek1LqFfwSgVuiuZOd1E2IZFRkTKf+7/FpvUccnruge23CX16/PAYWdITn2mgL
         19Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771588681; x=1772193481;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R4mldCpjawAhR8uySP4hZ8wH3xA8XRX1Pyv4rGdxrbU=;
        b=wqiOr29riUDKmHmjT6wsilN9IUtsrwQaO1kcW6kDWiAY34C4DvLtINhiKgt3un19De
         q9aG2cLRXxFxC+AQKVLQbtc0drAHvtP7qVqz9DK2QfeVV6ovC+VoKBskODEXbICaylBF
         GUbIxTYgWhqV4bVeXUKxkb5kt8uMoJ3CANBgNjGBH5yD/RJovIryIy6pxZzHxiQZ/+tA
         tIhfK+1+1LCEQJRCg9PYWNJZcx9Z4La5JOEArNobaLoTClXVd10BEN9jB7KxQneG8VOX
         ie5OIMJM5Lxqf3mthxvq9jtMRHX2PXeJoVqAUOa9pcvTFWZAD1Ug0tSx6WlVchg3hvgs
         ws7w==
X-Forwarded-Encrypted: i=1; AJvYcCUOn5bGSaurRoWtFiiGFRJRjQulS/mz7uXEreZl7k4/a7VdbkDUK0WMTj/ngUXIwAyGCou2ROEqqOtz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw57rmQ1CEX19FRDrr95UC0Ng9KI1xbJEkwqdjlJMq4iAdFqq0g
	xapo70f9sqpuSj1K6AGthHatEMVQXS6Se0m/leXaaY42NLSX/AaTp80tEuNCzKjff6LweGdS0Qd
	LrODrHiwnhIhgDCt8W3iLcGqCddapp78=
X-Gm-Gg: AZuq6aJf5B9kC3GUSWZR+VVa9h4QldBNeF0y18CJaZQP+BEaUrmd2Z13i3Dpt6Ccv8i
	pZoOlWsJgepBYSM77fsx7JpW6Edc+XyePxO5Z8bPO1JDgUkfdJZJap02XJHbwfMG1lzouUKInqz
	j7MfU/ADZNTvoYuv6IGNIfAAmTq2oMwCWqnjmp6EHYTxKLU6ReOXjAvymwwTj2wb8VR/9u7/3P/
	yCn/EXiF8MCOstuxjHlG/2axBcBKU7UdAmtuY2IT/SXffbabLI1XLSUmpV+RdWGj752q8BwgbAR
	G6M7/6NTa/1Qayyb898HXUkrQDKqeRDv/2EAtTf9Vj92vdF2aJTkNhKB3HkoXLXkVnYZ+Iw=
X-Received: by 2002:a05:6512:36d9:b0:59f:8dca:693d with SMTP id
 2adb3069b0e04-59f8dca698dmr1155437e87.26.1771588681209; Fri, 20 Feb 2026
 03:58:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220103636.9697-1-frieder@fris.de> <20260220103636.9697-5-frieder@fris.de>
 <b1ac1eb1-41c6-4267-8ab2-cb5a72cc625f@oss.nxp.com>
In-Reply-To: <b1ac1eb1-41c6-4267-8ab2-cb5a72cc625f@oss.nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 20 Feb 2026 08:57:50 -0300
X-Gm-Features: AaiRm50XZNrFKYb5ETk17Lmql-pIZCo4EU6DvZWKcKq6NVxcvVE0Q46aMC1Z02M
Message-ID: <CAOMZO5B7kYtXzKtguYe=2YEnSm6rwa0vTHJwn1p6pUqjgZ-b4g@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: imx8mp-kontron: Use GPIO/IRQ defines
 in DL devicetree
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: Frieder Schrempf <frieder@fris.de>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Frank Li <Frank.Li@nxp.com>, imx@lists.linux.dev, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266930-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,kontron.de:email]
X-Rspamd-Queue-Id: C753A167652
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 8:20=E2=80=AFAM Daniel Baluta <daniel.baluta@oss.nx=
p.com> wrote:
>
> On 2/20/26 12:36, Frieder Schrempf wrote:
> > From: Frieder Schrempf <frieder.schrempf@kontron.de>
> >
> > To make the code more readable, use the macros for the GPIO and IRQ
> > settings.
> >
> > Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> > Reviewed-by: Frank Li <Frank.Li@nxp.com>
>
>
> Typically your Signed-off-by tag should come last so you need to swap S-o=
-b with R-b tags
>
> in the commit message above.

Is this suggestion valid?

Shouldn't the tags appear in chronological order?

