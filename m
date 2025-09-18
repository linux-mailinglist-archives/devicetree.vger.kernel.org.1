Return-Path: <devicetree+bounces-218824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1719B845FC
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 13:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94F54543DF6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4299303A08;
	Thu, 18 Sep 2025 11:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HxRZA+7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C07303A05
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 11:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758195356; cv=none; b=NDifWGdft0yEyDOUVOfkMS49yM782cKWungXGT4b/Pr9f1loVyEvvlmhYRCgxuyaYDP4xG2Lnjd4W/b97knArMcVoE3q2acYQUzfoAyov2DMSdS4WMBr0zd9QYDvpyR6G/2f87GP3VUj/adX6viXuunWu5jA068IHp0+ctmquRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758195356; c=relaxed/simple;
	bh=CH1PrPamLBcIL2akQUYxoj1jI5NyoHazD5PXsVbHZK0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OCVj95CEr2mWSwwmjEElEfLsmrS7xNh6ZGw7zwC3n0IJ4Bjkiebsj8GWGkLmqcpENeHpTEEsute17sDey70O5lO4dcAryocPgq08rIoh6xLlhs64Kxts9RzzChTFnO5lsSD+z6/utbZyxhRNjT2vaF6Gx/he65ouUgla0vOiEjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HxRZA+7C; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b4c3d8bd21eso562616a12.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758195354; x=1758800154; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CH1PrPamLBcIL2akQUYxoj1jI5NyoHazD5PXsVbHZK0=;
        b=HxRZA+7C8cTiMcln5T+H8C+z3F8oif7sV4JrK+7+bTCTPUohOltquEACiw29uq2lFg
         GwnIxeL5YOAlzqmJY7pXQh9sS8U4HkCXW6HYyqvPRC2fuj1nvBU22v3UrPw/M8hUnPmT
         O2H8sz6jdoM7jJJUOW6dd7vp5D6GqfnrxBKLYGREu4XBK8Yi5j3MAZdNPvzqzM9znZvP
         lyxgMV3uRZt7JgHkKZguEcjWIY5zKkdKH35Yk2cR34VztBJlGvduTV1l7DedbOSlRuw4
         c3+c8HQHB0nED8l7X98KKa8xsNVwgrK5vgmg1kj3qCCoH8Wim1WJk3kVYLJPUSqkbpBw
         j5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758195354; x=1758800154;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CH1PrPamLBcIL2akQUYxoj1jI5NyoHazD5PXsVbHZK0=;
        b=YrHQ4l4GTK/mlG36WFOC9bW8E2r6auACbJxPw+wDeb5ceyXJksDzJazsV1+mpDdFXP
         /bTTP4ndttWS7B/QHuzCvFWreE+pQ2dnIa5Id94ntlLImalnfWtBSP+qkg4UruP9ZT1f
         /KFqBnnPZntL9O+gf1nbO+gUp4cfZVFc9C9CLJj9mhbcXontOej+jcSr7yBYRJiX5ZUI
         DwADCz6gO8TUsSs3VR6ZY9MQbg3ditWqNrxPv9L/zecnoAInq4zB9HMhMFXTSnAWBgNj
         +jSKYRAcsQyaV+1CRCcCdBfr4qjlNN5kAaLzNpwYzSOgMDlvGvBLyI6SWIBhlqMD7d5u
         60oA==
X-Forwarded-Encrypted: i=1; AJvYcCXPBXAglMr1DrWJreGyQkFy84ZuzZ47ENLKyxDjvygr2o7fDiW1IIixzSYR+0Zt4ZpxFvkYQ5CuWu3l@vger.kernel.org
X-Gm-Message-State: AOJu0YxPEu7EQimEBmxFGdQP8qOuWO/+FbgoCGeHwdtlFfAWmidg3+zy
	zKrzBcEoZPvNkO4FPOHTSbNn3L1FOvBNhdzwZP7TFdqQGlGNrKRu1wcJTMKkFNovDnpx1KC7p8z
	qyVbANx1LudiK8omYXJdzjl+YTR95r8I=
X-Gm-Gg: ASbGncvHMg9b0Os1NubXD8Ockgw90Wxw+vnAkLWQs5EN8obPPe5QjwK2KGLJX4onmd+
	4u+vZh0toa5wP+mfeeBpSxm2bJUe9kTC4PYA9flrYA9lGDI6kBkEixUfH0mmcYdeZtV4ZLytM94
	YXpV0kqCPvFMxrzuMa2QEGmqqZT0xZCcKU96IocBXtVicgb+ODpsqzwS/CX6Z1BsjxZDct0mkTx
	TMaTYA6onFnWchsjt3XOxkxBr3Rm3Wryj1A0DHEvHS/vLvgL0BsCWc=
X-Google-Smtp-Source: AGHT+IGj6a4sc19wyzd63Dixg/UySiquRPpGXq2m5G0nsVQ6YbTUTB+pMgEHhGrVA5tqjbsOrjjh+YB6F+lqKoiYvWE=
X-Received: by 2002:a17:903:1b25:b0:266:d648:bf53 with SMTP id
 d9443c01a7336-268119b832bmr72456925ad.7.1758195354344; Thu, 18 Sep 2025
 04:35:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918014053.696710-1-rpimentel.silva@gmail.com> <20250918014053.696710-2-rpimentel.silva@gmail.com>
In-Reply-To: <20250918014053.696710-2-rpimentel.silva@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 18 Sep 2025 14:38:12 +0300
X-Gm-Features: AS18NWCUGtPgOgXzmXtowvoHWKNQHRraFSnJDD8RcxIe00cDqMMkAGlPM7jIMlk
Message-ID: <CAEnQRZBb+FOah-owK2u4CM_ngLm675_tbrn5tdyUTnTSu-Mmbw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: add support for NXP i.MX8MP FRDM board
To: Rogerio Pimentel <rpimentel.silva@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, alexander.stein@ew.tq-group.com, 
	dario.binacchi@amarulasolutions.com, marex@denx.de, 
	Markus.Niebel@tq-group.com, y.moog@phytec.de, joao.goncalves@toradex.com, 
	frieder.schrempf@kontron.de, josua@solid-run.com, 
	francesco.dolcini@toradex.com, primoz.fiser@norik.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Aisheng Dong <aisheng.dong@nxp.com>, xiaofeng.wei@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 18, 2025 at 4:44=E2=80=AFAM Rogerio Pimentel
<rpimentel.silva@gmail.com> wrote:
>
> The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plus
> SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
> 32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIPI
> display interfaces, camera connectors, and standard expansion headers.
>
> Based on the device tree found in the NXP repository at github
> https://github.com/nxp-imx-support/meta-imx-frdm and on imx8mp-evk
> board kernel mainline device tree.

Hi Rogerio,

Please keep the original Signed-off-by from NXP (DCO [1]) and also please k=
eep
the Copyright line from NXP.

Also, adding Xiaofeng for comments.

