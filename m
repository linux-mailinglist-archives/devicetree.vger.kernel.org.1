Return-Path: <devicetree+bounces-145137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E8140A306B0
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 10:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94D1A1608EA
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2250E1F0E42;
	Tue, 11 Feb 2025 09:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KgXL+KhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABFC1F03F9
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 09:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739265259; cv=none; b=gfIKBHM+tzRoj07JykbOlfeVAqbMiRbjZf+Q3s44eNUSCO4KPksighEJe1Bl6iN8snAZI8sp37NQ9g3moBweUtWy8uT9ZunO3iQaboMjbf8BBB/A5lrF8L4JWEoAq//iNelGkV+nosOabUBBpz7NtvRJkuSDilSAB7Eh7Nq+zdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739265259; c=relaxed/simple;
	bh=BgBeE2dHFG/fUDGg59ZBKfcaHQAIhsnOWY9IR+/ZJ5w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=n0J9XgIPZbEZ2Zbe9lKQsY7dsc0swumb3/tZrbAYHbC19OoE6aMa0s82thNJmCe35HETYxnJyQeDTlCF5V2v3dFacWyCly7w4mDLUrGDbKBv5j5uupjFwdYNXXuKWn0unIM9QJSgK/r6gyygwtN8P5EdvriZOt2r5oV+qHAYQnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KgXL+KhN; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso2732314f8f.3
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 01:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739265256; x=1739870056; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=e0gUrFkOMyKNFnFh3bFOpTeSy2QBMxAkVbnFWdeqIiU=;
        b=KgXL+KhNqxaD5gqX/oeozzizrStEH0KY5oM0bbVfo/hmvuL5tE6sKUtKaPZ7I7ViNR
         60rmzvplawq+yT7sBdtp31iHUXgAh/dDqIYZfWvBSTvbJDruwHTWBz5l+YUxtp92rQ6e
         LNAO1uL+2Aj9InvbJydrlcs9eMiaYtQDHSTbUf2MlvbnNeJTTlRsIfXREqpfAvMFmAcA
         DBBFuZFtRiYLhpivQd7P9/HrCFvfHA1KI+kPCmyIDXCVIOUOGAcsObYbRtbIDLqheGqS
         bIxIffsWEB6fzodSJ19+G4VvT+HQ+pPev41XN06HY/OfU0P8d3+s9fWyIAhh7FSPn2ok
         ZHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739265256; x=1739870056;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e0gUrFkOMyKNFnFh3bFOpTeSy2QBMxAkVbnFWdeqIiU=;
        b=lyccsAfY3lSF/vH6IjlV6z+xmLDViAQnwZPYBzuMhwnFoEbL8bRYs4YUks7eV3GcjW
         /22yrHbAdDdRVQJG2JKR6EbTPUL7r1qpGwLCsjo7CcDeSXhdCn/gVv/y3x41/VKjk/Fr
         KJN9EOymWazcjrYMdMRmGwel2X6vayYfsXnAHNmPeOUS0Sri79UeZTVPyHDEDw+wSUWh
         r5YmJraM1lnjONyvYbmO/zAEIdqH9k2dTMLMtmmA/NdGPhoGdz7fTaZSpyH3/+qX6Dc5
         tqI/daG1DNzoXEXwU/JmR/9MlTm86bd/t98YESnYtPHzeVHeKQthEe35lVhACMVTXgRS
         EHEw==
X-Forwarded-Encrypted: i=1; AJvYcCXvGzJiM2CP0LkbI5XkgO1S5iO2UtFobJGoF7Us3oZKjZam90dTxrNkkly72hheOokZYpHQwIaALEvU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7INaXfCjKld62fNgPS5XVXIsVtmKoRRFhqkKAIGCsp1UHqyRP
	nH5P1VZ+rM7G2tFzlSajb8XMkEJRY0E2NwVuScpbEnGEWZppnzOx
X-Gm-Gg: ASbGncshe+cXpYD6/Pt/uaPYjFn1r2J9Xs2MLCMsWy8vKyzXZcO5VGDIqiakibLIzDH
	IX3YePPfvkaRJAeazdNxSKDhUMcqRj0aqO8KwwbtcwDjcNbq3kEOX/6evlPB/LwA5mMomrSoiwR
	265fA3LOqDNtdggWouFBDlJNu20Sbj5JjzT0npioA96K+A26VSuiZ9ySNXtrvGFPFEEqzCJSDMT
	aCNr9sqgmZdfazwH7IALnfx+6vEwQwHDcPUYENNh3g3vXfoGpSEGkC4xDhvY+foGPMw5jvO9BGz
	Ltxc7cO7yIxqzzHIbgwxytbf7RGPflNZ
X-Google-Smtp-Source: AGHT+IGkTdyt5H6COEXxIblCp8Mkz8zw3aq7BTC3oTMMt/aizs2mFlO0xMqbkPV5ncYfNxXdId9zEA==
X-Received: by 2002:a05:6000:1ac9:b0:38d:da79:c27 with SMTP id ffacd0b85a97d-38dda790d9fmr7107010f8f.2.1739265255326;
        Tue, 11 Feb 2025 01:14:15 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbdd1af07sm14477397f8f.15.2025.02.11.01.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 01:14:14 -0800 (PST)
Message-ID: <bfe6a1cecdbeb6606cc69e851135033fb42ddd8d.camel@gmail.com>
Subject: Re: [PATCH 02/10] riscv: dts: sophgo: cv18xx: Split into CPU core
 and peripheral parts
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@outlook.com>, 	linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Haylen Chu	 <heylenay@outlook.com>,
 linux-arm-kernel@lists.infradead.org, Paul Walmsley	
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou	
 <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>
Date: Tue, 11 Feb 2025 10:14:11 +0100
In-Reply-To: <3f548621-6f66-41ee-a23f-ae4a8345061a@kernel.org>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
	 <20250209220646.1090868-3-alexander.sverdlin@gmail.com>
	 <dda5297c-fdf3-494f-854f-71a5000729e5@kernel.org>
	 <7fa3501bd59697e65ab1387e25cb815180c3378c.camel@gmail.com>
	 <3f548621-6f66-41ee-a23f-ae4a8345061a@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof!

On Tue, 2025-02-11 at 09:08 +0100, Krzysztof Kozlowski wrote:
> > > > +/ {
> > > > +	osc: oscillator {
> > > > +		compatible =3D "fixed-clock";
> > >=20
> > > I really doubt that external oscillator is a peripheral. This is eith=
er
> > > part of board or the SoC.
> >=20
> > This is actually a problem of the original cv18xx.dtsi [1]. Do you thin=
k
> > I need to fix it as part of my series? This would touch all the pure
> > RiscV boards (using CV18xx SoCs, not SG200x SoCs), which I could avoid
> > otherwise.
>=20
> You are moving the node out of cv18xx.dtsi, so you can move it to final
> place for example. But I do not insist, because I also do not know the
> final (truly correct) place - don't know the hardware here.

Fortunately, problem disappeared by itself in v2 [1], now I don't touch it =
any longer
and only move CPU and int controller into corresponding SoCs, so the oscill=
ator
falls into "could be coded as a fixed-clock in the SoC DTSI" cathegory of t=
he
coding style.

Link: https://lore.kernel.org/soc/20250210220951.1248533-2-alexander.sverdl=
in@gmail.com/

--=20
Alexander Sverdlin.


