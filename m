Return-Path: <devicetree+bounces-258253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHIQBVLocWkONAAAu9opvQ
	(envelope-from <devicetree+bounces-258253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:05:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FD764319
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:05:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A967A4F8EB4
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09B6D2F7AB8;
	Thu, 22 Jan 2026 08:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mld9DEyN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D0F30C373
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 08:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769072253; cv=pass; b=UorzKrfh0K85yutZQXqcJmN0reg/h7kcw2gsYy80YN9VFtur/SFZ1XdDnob+T8zDhV7O98wLarifbyhGgRa/B+dElezqGNj7j9d2+tiLSiljlUVfj9ioPJ5MUBTZw4WUFL3qmNJY6WDF1hZFhWoTtmJMTeXKbgiNyJWjZBVrpWQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769072253; c=relaxed/simple;
	bh=3J6gYorDtO7mNp6Qmg57Ase80b6wKmggy4kn3B0XUVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NpdDcH/gXfVLvwB14GGjMJynOpWMOybSkhJKWgGoaYTGbrv6XzMWn1MwK3TLTv7zoR7f/1r0zFZCCIWJxu7gGXhhoksCR3NRADIGqdh4HQmTwMF75otDG3i/DJav/7MKm4v64s3Yso6Ey8dAsTBb1MHYkNtMw8Up618DivsI1EA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mld9DEyN; arc=pass smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-1233c155a42so1058500c88.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 00:57:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769072251; cv=none;
        d=google.com; s=arc-20240605;
        b=Ek2k9afqiBZQOyES9sfJOsoqo6Gacgjr5C4ymz9vzp0FDvx3cHj8vUPlx5ozFLB5R4
         2EHv/5ugEAuBDMRUQYaaSRuHWWYkaHsN848/iUBq02sN9XxplTIYHMUkvxf+gnia+lOE
         gIlJ9U32onwTXZYGeQB6Ymxzpiky2+AUai6CYyfA/qN57FfIQz7Yt/avxCXsb1yvxIsi
         3er5bsvPWbBp4cExa/NghTfrt8Sotdo+A/roWOzDSNce5f2Kp+GDWs0MJcNXi0HcD49Q
         E0Rhf7qM1O0KUAqW6Bj+uPQWc2fl4QnLqNqDslTxxobKnNj7HGzwQzp1w55qcTXicRiE
         2IpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3J6gYorDtO7mNp6Qmg57Ase80b6wKmggy4kn3B0XUVM=;
        fh=TnUbThg0zaAH4rCFQnor9Mqn7MznF5r/Po+VETH6pVs=;
        b=Y2jS1gkT2noDkzonPkfwCtqEf4dSlzB5PGdstwZjt4QqCe1uYxcm3Dbhb6lYzdvHyl
         jfuZwzWnp/COAgIjCKD5CmDnRjpekik1RGFsRjbtuaCGDG/xBGq2o/s8qe33K8MFFbyP
         vJbofivC5lZ3+RsifyXs+UiJOr5wkJ3ZlzcfaKaVUj2/Q9SySbMmIclmUnbD8HWopADK
         0ZljqyTiQ+y9lOr1MgtEYxHn41dhnR0dOm6aZAonJcQzSuLzPkmUgBl+aYKYyOFjPZt6
         jKjJuiPLV4QMi0ND3OcWAn88oqEdcXYw9NqjEQBVzWttlVJOWEg8mdprEUCmiVaCj3yX
         OR4w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769072251; x=1769677051; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3J6gYorDtO7mNp6Qmg57Ase80b6wKmggy4kn3B0XUVM=;
        b=mld9DEyNrR3wMJ9O7cIiMykatxx9De1bP9atRA/FqT5FyP2uZj6SJPxcZFj139K9wB
         dVZjPSZDRXC13jXda/PChEf0Tv9DVSaKiz+x8H5TE5WgxRBVxp/VVgOkL5acpTqZ7cwY
         dtX9fVxG8p65lfHDFh7LueqonYvg2P2BMTKauqv2CT5pES+kUjHhR6jsX+GyR7Dmvkgg
         u8OlO7No4074NtDivk9EYs5N+X8Dl1Opx3LreoF7MtXa+s4kg22UZoc/5ekczlE+c4wk
         e327J1ZjXk9zxLH+YmTN+03JYTj322eJelfoHeAkaxCY6TA+Qf5rTMQreOR5wWymbDX1
         YfnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769072251; x=1769677051;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3J6gYorDtO7mNp6Qmg57Ase80b6wKmggy4kn3B0XUVM=;
        b=uAuJL/HXOyvLLI0Kmky35WiKUdBdi+Za1Qe2VoOXGPkxSICInPLkCvzEj5+XTLXl0g
         DlvADOQf3AS7RrRkKg3Mn0Vfdtjxd9qAhqArtFQiYGscEndAQs38qGU+Iji96n6+813d
         sPMeDX3CHGOktPaUvWG98ZiRqOyUJ4KhyDk397VFr7aJGLFglI4Z8R6+IE8A1CE8pub9
         tZTiVyQwOp/6431vkkj5dmkOUycdITjTHbBZ8Bh3f1vkqnAWvePou64gFnqGkRt/U0ar
         SHHGgqfQlsnwaX6wCGIb4Z37x11lwLoRA2y9Hh06VTOkK5ypzzL/Oct68TsR+K1Qq92n
         bqmA==
X-Forwarded-Encrypted: i=1; AJvYcCXuqBPCCD0175ORw7Dt0LPzsQ9sS1e2dFUcevEwZeMKq1ltNu0Ffu2z4xvAozYBPmDrvBsa9Qm02ZM+@vger.kernel.org
X-Gm-Message-State: AOJu0YywSi5wUNd3+cLsyBOwCyO8OJRg78xrABEHcNeiiBbtyIgGFjEn
	aRiBdlj/8rCzg6q5y1BMbEZ/KIqZGutV2X/92CkIKfUjIqc6PYhiRjf73E1ylo0jStDfsZkpyV0
	imSW/8C9qb4d47sHdejeSUZCAchPxXGY=
X-Gm-Gg: AZuq6aIcSKg24Hujm2F8lUUyoExCQ8yOWWFgvejsrBserbZ7uWEtGyFoWj5i2XLlOHb
	69JQj/6x5rGEcoU3ztNmUaXUNlkPjbs6bj7SoPCjxNVyz99c88P9kAATT6bo+kM/Y6AC5omaJNQ
	INgojxXOs5GGCFhEQxh5/+hWeQDd+69JTiN6rcHeOYKa2wUZm6c88LkKtnWY4Q2eZ2zgOsiS4BF
	QVGAvwp519sQrzkXNXrka/EIWTuSMacud4QrTcHLxTirjeCoUFkpn8HN2iGxAI7FqNR0Ksvl2+p
	AgYI9nh68lARVEAElO0cEqlmkzTt5uB4H3n9l1iSYVQULx0yiWun54/qYhysPwR52TiEDfHSoYn
	wB3nhRl1Tiw==
X-Received: by 2002:a05:7022:f86:b0:123:3364:2ca8 with SMTP id
 a92af1059eb24-1246aac4ac7mr5540316c88.39.1769072250797; Thu, 22 Jan 2026
 00:57:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120-imx8mm_gpu_power_domain-v2-1-be10fd018108@nxp.com>
In-Reply-To: <20260120-imx8mm_gpu_power_domain-v2-1-be10fd018108@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 22 Jan 2026 11:00:08 +0200
X-Gm-Features: AZwV_QizKXTxpcD509WTM7FJXkGnjUZe72Tjh_1y1VK3GaZGPTzVAx6Yhm6EfFE
Message-ID: <CAEnQRZDo3Y+m3+Pdq3QTaPi0M71NGAc40NxCw0c-GUuAQ5ZRhQ@mail.gmail.com>
Subject: Re: [PATCH v2] pmdomain: imx: gpcv2: Fix the imx8mm gpu hang due to
 wrong adb400 reset
To: Jacky Bai <ping.bai@nxp.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258253-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 78FD764319
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 7:54=E2=80=AFAM Jacky Bai <ping.bai@nxp.com> wrote:
>
> On i.MX8MM, the GPUMIX, GPU2D, and GPU3D blocks share a common reset
> domain. Due to this hardware limitation, powering off/on GPU2D or GPU3D
> also triggers a reset of the GPUMIX domain, including its ADB400 port.
> However, The ADB400 interface must always be placed into power=E2=80=91do=
wn
> before being reset.
>
> Currently the GPUMIX and GPU2D/3D power domains rely on runtime PM to
> handle dependency ordering. In some corner cases, the GPUMIX power=E2=80=
=91off
> sequence is skipped, leaving the ADB400 port active when GPU2D/3D resets.
> This causes the GPUMIX ADB400 port to be reset while still active,
> leading to unpredictable bus behavior and GPU hangs.
>
> To avoid this, refine the power=E2=80=91domain control logic so that the =
GPUMIX
> ADB400 port is explicitly powered down and powered up as part of the GPU
> power=E2=80=91domain on/off sequence. This ensures proper ordering and pr=
events
> incorrect ADB400 resets.
>
> Suggested by: Lucas Stach <l.stach@pengutronix.de>

Correct tag here is:

Suggested-by: Lucas Stach <l.stach@pengutronix.de>

Also, no need for a new line between tags.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

