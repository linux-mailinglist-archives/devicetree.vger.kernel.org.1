Return-Path: <devicetree+bounces-269823-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEpSEztCpWkg7AUAu9opvQ
	(envelope-from <devicetree+bounces-269823-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:54:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5E31D430C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E75F0300BEAF
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 07:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D491387348;
	Mon,  2 Mar 2026 07:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CVyPVkGg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAAE337BB8
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 07:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772438052; cv=pass; b=AMySF4vsPEYo6GvGvdb2TvntLYhGwKURhdYVb3G066s7ckkZHN29ADzVm/4Qox0Gcslfl4c0KwMetq07Qfo8SrfgcC+4yTmsJOamlp7HZr+m37Y7k4r2mXL1FGwdIkIY6OM/XLnaWVyL7ITlKiYqqi12+WkZA/ssmYBGWzq8HTo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772438052; c=relaxed/simple;
	bh=uPb8XLMAB/eVIC8z/PoFZsfbo9bqAYSJ86y6yBPVFa4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=My8gbGBfm1sVbxklUV2YKjGF89nxba60jJh4+Mq6bVA1SHqOhJF+pjizDqax4f2KEJDdNbAcbnkB/qnHh/oq68sAz6KD2R6WMMDOXT6ZDIvzLWr2Dur6taZvDRHqYoXsGnFq+2elFVfCdKeCvdz/9Y8MIhTzt8jHRujqhkLNG6c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CVyPVkGg; arc=pass smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4807068eacbso33617345e9.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 23:54:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772438049; cv=none;
        d=google.com; s=arc-20240605;
        b=CM6Qb9qo1kVIBAIh0lnV1rwyqCIAeeKajHbjSBeEUyn9be4Gij0pesGFo/2GlLS4pd
         T6NeWEakzo4nTBHrhjc1JanCUNxMmhQJouja+d80q7v1OHim6R3MfyODj7qORC7fnznw
         HYznBjWHzBqkFLp7qEkzdk2HXf3sIYTpPjsISX3EHh5ACFHw3b+FrOhlD209b5qli4IK
         24BLpQujj96kwQso+AFpQenqa0+0fOxYQKy+Nu/E+gWbXIl/fQTmBp/7+73mt4IPSSI6
         T52JSoGpDBM2kiQqzf4Sb3p2Eqa7lXsTfEk3t/yTXolWTupqZktB1BV6SuZpTAxDgMlf
         vvjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=P5+6YqPpCYHdcREtIIaueUQZcnbsY/k4IiVYquZqQ4g=;
        fh=1ZQho50yWz8lLuHR9pUj43EITSbIkptLMyskQLLXw7g=;
        b=NmQXUwfRm91EhMievwa5efuK9Ccx/riUtE0aqLVFTA7LF6Rk/QAXDIURpdkHBgqwUJ
         eewks87KGX+F+s6Zrk5aSUaE7iZH8jxF4xuIkryBuO65sAPkMUjKh5qLmM0RXTdQUFNC
         Kts9ISgbcqovUXx2rDi0BFaJGu1uU7kPEe4fK5E/Zs2vYDayZFD4z8WUNP602N3+LSCa
         2qZwQf3bnbuTmGqrH0rWYkjR8rL3wrCJeLSlVCqPahQE+FcVNOSbaqsdZOB+wVHSJQvH
         XoDMGoSI4h94ScQWEuff7dQm9vLNUcgZ2E0HUJS1e2PAGLo1azbCWlrho7P+D7ax3qJY
         5mQQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772438049; x=1773042849; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P5+6YqPpCYHdcREtIIaueUQZcnbsY/k4IiVYquZqQ4g=;
        b=CVyPVkGgj7Y6CGG+CbKhrIra/DfATw7TNcy2XdPlsJm2Y2vS9lK2wNR7mViZPOA6Ws
         i4ToZ/nyjMtHIohguHIC5jBHgz8rd+E/8Dx9lA/FilKPCpAsWVHDMjBltyTAuinw8ODo
         wbctY/Q15j9zYczFPIF+7zeMzR4+2TQ2CjjtB7XTYHaAZZBNFqnZD6xT3tBUgkcf8lR8
         jtXT6Aw7GErhMQ61uEm+c1agLH5IaPr4SpV3cRhQSmxqp+j6KaROnQcg4NiRO2L8D4Iw
         gzKt6PQQs36Zt1SO8onI00d6WLlOPeJ1I3J2pWes60lXExlra2sEtKgnSjejjb9M2Q3p
         vi2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772438049; x=1773042849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P5+6YqPpCYHdcREtIIaueUQZcnbsY/k4IiVYquZqQ4g=;
        b=HV+qXK+D36td+6jbX57qiZbe4l18LsGqTAw3VuaMonuKZzbaWDSVcN50uJY7U9WeV6
         fd+hcZZljWVq/S+74nxu/2hUTGX1DxF6nxhMCxRfXzfxc4WHWgrQUwqj+Nk++FRwz6CJ
         sOMJPBWT486Ydsl6wTnjSr1aQAsBgsOBkGfBjwEcznpb9QOOcr2+83bieBZathrWB8NI
         YHhaVunEIYxPZFh4wCFd/XpvCGu4fcElYikP1ss9IqhdYN21lxtoZM/NeaGfd+Kd3NvO
         HxOAPEcJNDEoyxwEfXk2KyUq1GXenuSkr/lc47jWDrLICMtZSK16xjwwbzIezlbIApfW
         uSQw==
X-Gm-Message-State: AOJu0YwMIB0y+QeKgjQOlwkc68qTsjYv/WQ1/Dxrs3VIf6uJ+exL56VG
	0VhRe2DKN80NuN3yZPI9qmFu39sNsy97Cb5HCzwmn4RkF03LVeA2NOk3PGFpUq/qeD0zFTiBmUH
	Vt+fNNZqY6hgXXXBmlWTn2AGt4B+oMaw=
X-Gm-Gg: ATEYQzzW6d1C/Mg58gZXJGk8OWxoERTo9E/brqkZu1O8t+c44qZcwLrKLAs+p8Ydl6k
	p2UbSx0j71NDpUKSM6EkbxrX1YtP5ppP1WacdGbTyXYxzMP66K+4HTYxqdAfsPckHWlkdKdu79c
	zurMQmbQc2vfgcsTJ6PCjjwFDSpiKow7tqYYFzwJLyBuVNbbpDLoxzA4GwxGgdUdlcG4UZtp3iv
	OFjE0moZkDlrvqmiCly3L51roofnpTe0zZ7rcvs1aH8HVmArXCuSEd2mM2bDxcBYzctMrQLoKR7
	iGcKsXcl
X-Received: by 2002:a05:600c:34d0:b0:45d:d97c:236c with SMTP id
 5b1f17b1804b1-483c9beac83mr219348415e9.21.1772438049446; Sun, 01 Mar 2026
 23:54:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126101018.24450-1-clamor95@gmail.com>
In-Reply-To: <20260126101018.24450-1-clamor95@gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 2 Mar 2026 09:53:58 +0200
X-Gm-Features: AaiRm506qvRoGF6DoCpl6P5GcPjJm7j_vQK9_TMbHPXN7jmVA73dHMx5lkNgJTI
Message-ID: <CAPVz0n23ZW--SMO0qM9eKVcWQSAPgXKdz5Xb9_RAAU4d2Ft5-A@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] ARM: tegra: lg-x3: add missing nodes
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Svyatoslav Ryhel <clamor95@gmail.com>, =?UTF-8?Q?Jonas_Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269823-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3F5E31D430C
X-Rspamd-Action: no action

=D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 12:15 Svya=
toslav Ryhel <clamor95@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> With the recent kernel updates, Tegra30-based LG smartphones now support
> several additional features, including an RGB-DSI bridge, DSI panels,
> MUIC, a charger, a battery temperature sensor, OTG mode, and capacitive
> buttons on the P895. Add required nodes to device trees.
>
> ---
> Changes in v2:
> - fixed dw9714 and tx13d100vm0eaa nodes
> - added video device pipes graph
>
> Regarding CHECK_DTBS output in v2:
> - nvidia,tegra30-pcie, nvidia,tegra30-gmi, nvidia,tegra30-kbc,
>   nvidia,tegra20-kbc, nvidia,tegra30-ahub are not documented yet
> - nvidia,tegra30-vi was adjusted and applied, change did not apper yet
>   (https://lore.kernel.org/lkml/176860988748.1688420.11717122647073678.b4=
-ty@nvidia.com/)
> - st,m24c08 appers undocumented though it seems to be different from
>   st,24c08, at least they google as separate devices. atmel,24c08 is not
>   documented, though it is widey used in linux device trees and is
>   supported by driver. Here is one of examples:
>   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tre=
e/arch/arm/boot/dts/allwinner/sun7i-a20-linutronix-testbox-v2.dts?h=3Dnext-=
20260123#n33
> - onnn,mt9m114 does not have 'orientation' property, though it should
>   include it since it is generic for camera devices
> - ti,lp8720 and maxim,max77663 have txt documentation and are not yet
>   converted to DT schema
> - backlight in panel nodes was not added since lm3533 has no DT support
> - missing '#io-channel-cells' in ti,tsc2007 addressed in
>   https://lore.kernel.org/lkml/20260122193549.29858-2-clamor95@gmail.com/
> - missing dsi controller properties of ssd2825 addressed in
>   https://lore.kernel.org/lkml/20260123073411.7736-2-clamor95@gmail.com/
> - missing '#io-channel-cells' in generic-adc-thermal was proposed in but =
rejected
>   https://lore.kernel.org/lkml/20250310075638.6979-2-clamor95@gmail.com/
> ---
>
> Svyatoslav Ryhel (4):
>   ARM: tegra: lg-x3: add panel and bridge nodes
>   ARM: tegra: lg-x3: add USB and power related nodes
>   ARM: tegra: lg-x3: add node for capacitive buttons
>   ARM: tegra: lg-x3: complete video device graph
>
>  arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts |  39 +++
>  arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts |  79 +++++
>  arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi  | 328 ++++++++++++++++++-
>  3 files changed, 429 insertions(+), 17 deletions(-)
>

Hello Thierry!

May these patches be picked if everyone is fine with them?

Best regards,
Svyatoslav R.

> --
> 2.51.0
>

