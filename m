Return-Path: <devicetree+bounces-262962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHSjMv1shGmJ2wMAu9opvQ
	(envelope-from <devicetree+bounces-262962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:12:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE3EF1378
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1C0D3011BC3
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 10:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F163A4F3A;
	Thu,  5 Feb 2026 10:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q9qOUSu1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71633A0B0B
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 10:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770286330; cv=pass; b=BAC9hffYRy6tzV/xXa1SM6KLkeqfIe/51Wt055oXAY+PyNHZnxgclv9UjitOCDqYwdCvwJUlXmBNo7YpdeYwJMkajkN8PltQK/ZWRKRzxJLGpmY5/NGAug3rSaqkKWRYI+NRyrg0SkkCbQIivBgWQbWvsLIg/WCZr0f0DbmOaOg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770286330; c=relaxed/simple;
	bh=2g+mgCNqV+Ig8Q/l9oyCK2GWwV8YswGyWilOwDfVwcA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jOv+bAKigrYRk3xEejrv6CjOlOyUazwi7iOLVgOdlGL/+lUCo1wglmhTXZJJ1nHji8ftvpG0ITJZTYDYOqB8SOYjpuRLC7LRvEenbTc0S8Q4wulgCso0M+NlBUpyN/52weTuwlA04icXMlRYRT7w2gesWmnOo3O11o6OFUoi/7E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q9qOUSu1; arc=pass smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-124b117776fso492952c88.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 02:12:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770286330; cv=none;
        d=google.com; s=arc-20240605;
        b=CBrxyQmsV4m26W40b5QEgX6lJzsFBJ0eMgWpbpBg1siyo7Q7XqH6OiwjsWWJaWgZj1
         rZdwrYy6ZADqoVMGBZ1Xhy2KZ08HI8OL0jCvvXQMlKmyIIc0Hhk5Ak7JsxttgnLTw16m
         E+pzEQZp5bFIPmESm0YOxn5bhugDZC3ptnyqsvdSP2vUjUh7Re4NcM3MQXSzrZNhIJBc
         IWL9Mw4E5T/e0xpv0jGKvt94kJqwhXGBiUqkbE4fm8vR7RlILCuB3DFQYBxYiDX+kEhl
         o+UE540bZhn/qcxjBAQGqMjUVRNfqDK0vc3sLKjT3d2uOxGhl/kk4yfPzI8u0UBktK33
         VDLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0g/5cSIXjGo3ImCL2VsizCAIdAMiuL2cAntOyKg+ot4=;
        fh=WHYhVI5X0Bl7UsHCRkqESnmcDzccpkGEtTpQkoeIpBw=;
        b=MVKmYF/LHBn6iZxB3j2UaOtIDcPKGb7dvt7WaBQIt3TfMr4WVtYNDQ4VH/+Kqf+rmB
         VjqCHF/2uXqp4oFtp3cm6boHFolfYKGa6t/sgYSPrBQF3k8blmyOYza3UoYEbnj//nIr
         u+CqKUlXCmosYFR2XMeTeVUTOAre/jL1oV4SQRYOqty2OgYb3cPLEZvcsQmzBsCQ+UBB
         AyWFK29qr+gxBXlJyZ5IvBP1ewVXEYhTjDx2NTCzKZFr18PmgD6hZJIhSMXVi/sJ4dCB
         nk0uHxwhxye/xAb5/weeKJEDPKzLdzA4VeZPIWWNPBfruLkoTQj8fXwyv7JUAuMLeqCG
         KoLA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770286330; x=1770891130; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0g/5cSIXjGo3ImCL2VsizCAIdAMiuL2cAntOyKg+ot4=;
        b=Q9qOUSu1PYN7zI7oQNSR9tMMGutHcfP89/PC92t21IVctLJAE/NTORVQdzHNotxuhs
         FFrHUeKPbimNdM/tQ4As3pvqs4kvFWB+UHtUUzhvRAzBJ0qaX8dGaRkBvY6NiWLAaK3a
         km30DzN/Sv1UtcJXvx1PK+oMeoD9RLid4Flf8OArzaH7+orajKrh6vGGhDV1bAq3fxdL
         elZhf+yCAj5P0TnjIg/nw3kApKtlhaS1Np4yNHSbmD7sPs//uv512f8I9N+wHeSxMvvH
         2W55P6stAlE6tGD/hByo8BBLylO285K6HNM2YG7kwgPxw8b6XyFmHsJ0zPDbJyf6nNJk
         j9eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770286330; x=1770891130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0g/5cSIXjGo3ImCL2VsizCAIdAMiuL2cAntOyKg+ot4=;
        b=sONxHztvU2EHObvbW4003VQhnUG6DdjoTBmjHaKu3ITFgPJX4BtIGYxP/AScwu7DOv
         yGi/wysQXYx427/+N9eRajt4m3i7BoTrvBMb+tAVDk91X2H1c/mmM4e5rFFWmImUoCsO
         agkIxrk8D7NEvxVzW1+MDJ47bScZ8B1veUoJZVYIZ5O59OAfLzuDPE0BiwAimt5xBGrt
         sWwVtoTXbUrK+2DArI1B9+7GQlIrbRXSq1Yq5Z1S5Ac6vxTTthWIr9+g19HJ3SKQ7o42
         wJB6uHBcyErJDD8uS+MiKbTMKhm6cQYNt9fYtVPpDJlANlj7yZOsxQA08BpFO2zfBoy0
         66xg==
X-Forwarded-Encrypted: i=1; AJvYcCWvmQ3MDpYQgJQL4V6wxnFFMROkOLyWfRxgRHxuQIDrrIN9PzQTrlG5Zm9pIjWAk4rZImDE1aDh0dBA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2NvH/u5AAVCnBmvK1iHs02XFw27m88YYDk7s9JQCryIl2kRZ6
	v2aCJ9QrGukT4Ao5fdsziV5TCvIRw+niilIbnlY4dGb/tF7y26D9cTp31Bj4sjoOfkRGJA93hLF
	a63eV+CmneHZgieyrh1ZCqEkiAyKRRdc=
X-Gm-Gg: AZuq6aIh1/+Ld3ndqqTBxr5SPSa5vY8+y+Uow0IXQ4OdxZyNTN9/FdUmjjuUAvHPQuO
	QLVllWFZ/s1upkgvQIL0Cx8wtXW4FzI3jv92C7m7veDK/R7vRdg7qE6CEiskCC4bB7kV9MUlLAC
	iwzTdGwqB7PbfA3iHq/Ot98ViubzqRljlQpve8Z4sYss8IjW00+jzHc5U59xCjj6Ty3BtguzQbN
	rAdk9CTO0vqsSxMxsXC3DbyO0CMVlK9oPgKe/xeL2XngRHwpa6hdXMicmt8LrkvC2BxDSt4UKMD
	j9oKzo3QyEHNjkX/kN7FP4MErjE3o5ArVC27aGDaxfpUK6kC0aw/XwEle27dbZEM57qV4g/lAKG
	zAuN2aOvnBg==
X-Received: by 2002:a05:7022:43a6:b0:11b:2138:4758 with SMTP id
 a92af1059eb24-126f479a420mr3236887c88.21.1770286329645; Thu, 05 Feb 2026
 02:12:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205100125.9095-1-stefano.r@variscite.com>
In-Reply-To: <20260205100125.9095-1-stefano.r@variscite.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 5 Feb 2026 12:14:54 +0200
X-Gm-Features: AZwV_QjJxBdSpSEqOMEqS_vmPt7Et7QepYBy906r-rPjo4KFoR-K-6KfSW1grbY
Message-ID: <CAEnQRZDVsv8_uH5B6k-RsrQmSszGQ8OCJT=2a9AqNCq+TzP1kQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Add support for Variscite DART-MX91 and Sonata board
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
	festevam@gmail.com, alexander.stein@ew.tq-group.com, 
	dario.binacchi@amarulasolutions.com, primoz.fiser@norik.com, 
	Markus.Niebel@tq-group.com, y.moog@phytec.de, josua@solid-run.com, 
	francesco.dolcini@toradex.com, maudspierings@gocontroll.com, 
	pierluigi.p@variscite.com, Stefano Radaelli <stefano.r@variscite.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262962-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2DE3EF1378
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 12:03=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:
>
> This patch series adds support for the Variscite DART-MX91 system on
> module and the Sonata carrier board.
>
> The series includes:
> - Device tree bindings documentation for both SOM and carrier board
> - SOM device tree with on-module peripherals
> - Sonata carrier board device tree with board-specific features
>
> The implementation follows the standard SOM + carrier board pattern
> where the SOM dtsi contains only peripherals mounted on the module,
> while carrier-specific interfaces are enabled in the board dts.
>
> Stefano Radaelli (3):
>   dt-bindings: arm: fsl: add Variscite DART-MX91 Boards
>   arm64: dts: freescale: Add support for Variscite DART-MX91
>   arm64: dts: imx91-var-dart: Add support for Variscite Sonata board
>
>  .../devicetree/bindings/arm/fsl.yaml          |   6 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../dts/freescale/imx91-var-dart-sonata.dts   | 498 ++++++++++++++++++
>  .../boot/dts/freescale/imx91-var-dart.dtsi    | 468 ++++++++++++++++
>  4 files changed, 973 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.d=
ts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart.dtsi

LGTM for entire series:

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

For next series please add a changelog for each new version added so
that reviewers
can easily follow what have changed since previous version.

