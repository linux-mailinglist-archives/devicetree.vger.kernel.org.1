Return-Path: <devicetree+bounces-83004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 795C5926C7D
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 01:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06904B22782
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 23:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79FE41940AA;
	Wed,  3 Jul 2024 23:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b="i7wx02Rv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92B517A58E
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 23:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720049657; cv=none; b=Dad3CCRMfbaRG4l9PKvVKdxqjOu+9BZxIF1yKe4jFSEArQ2COC07ftSWUsBFQLL3Z4VNswjOqySkoQvhE0qruxBHBzR+/INrCEpDSVdn7kpzOoqZ7qZCmKJqVMRM+MXKOaD4yc7/Dw+9FEyF9YvRFZ9khP2o6ID2owlH3An2A5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720049657; c=relaxed/simple;
	bh=9ChJsKd9nUrCCIHOcicgHlKupltI6o7lz0YIiqLHyiQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Cqs4sV25O41zKAkr7EOlsD+aLS6i0saj3nEMNBhBzvenGMRxxG5sBTAWJUQCgGXKM+Ko1xEVMLR8MjbWztOT06wFTrj+GOnYge3O93zhTohx9HBviCbqi566jGfgJRLbDRtjH6yip6qgMdr8mCUYE+4rPov14Fc/F8X7mQ7vrS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz; spf=pass smtp.mailfrom=leithalweapon.geek.nz; dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b=i7wx02Rv; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leithalweapon.geek.nz
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5c45d13e658so648929eaf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 16:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bade.nz; s=google; t=1720049653; x=1720654453; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ChJsKd9nUrCCIHOcicgHlKupltI6o7lz0YIiqLHyiQ=;
        b=i7wx02Rvh8LsEJHmo9l/k86LvUOD+foEX55ZlZgtA+NKQnbE06vLbMnzp6BcbbWgRP
         LhSWIr0hqrjMlWcelwBq+nTSt1vGLbva21sWp78AGmulnb3re9ttRrvpf2qYWtCH3vXZ
         HdQTbywest2ztOcGkC2pi3FwGEvvJYZ116KUsHFe1kUFuuLjhbhLEIMZchZIwhvM5wjc
         Pkm3d793XCQ9NiIInhtTSzv+8WT7H7EHwb5oh4n5xzc4l+KNCJshsTJieFtolXflsjk0
         fkJhgfAhRdgBr8v5+2votdlT4CgsOK7jFes5vlOE0HOHSdJnPipTEuho/xv9AbQJ5ZFM
         86tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720049653; x=1720654453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ChJsKd9nUrCCIHOcicgHlKupltI6o7lz0YIiqLHyiQ=;
        b=jlrszA5mkNAhbZ4kqhNQrcjYK29821z7g610OkHEu1dxbT83hZfvk3z3UtkxPxPAO4
         vd/5SIs51z3L1NqRZYQ9IGE39BqHVS/YLAUSoiE8qIX+GOk8o/+COtbRbEs6snikhBhe
         1laBZyMTegTyO/4ILhQvEGUcKB33yWhBcKe81syejG8LaDy7XjYjO19aPKdsvAgHIAym
         7Gz0jxZoXN+wKIYO5iSmILJDgsfJrLolIdBq/QOWRcZIE89tDcEnoDfmCXyCFd+1XtVR
         affWkOzUXPiJWshEnzjxGGO7qXxTh1MiT1jENwQ0eyD8SuVUHXwDr+4lD3YJulaFa6ge
         okZg==
X-Forwarded-Encrypted: i=1; AJvYcCW6NWAf+d9tjG7CIOGi8WDNPANaJHNQMXL6Tff9wU8TBatD11T2FcJ7fZF6Lc2CSMi4H0dK/IInbSgGQOTr+9kF9uxGoIDZM3vmlw==
X-Gm-Message-State: AOJu0Yy5g8gBIKAoiOc+bnB4yCXAoWx5axF8wSl8p9Jst4a4CMaKQoa1
	Gw91UCcN9mb9fSt6HkmykVE2QKzR970/sibMGQSASBqGByCnUxMlkWkqyo4CAyySfhMIdiXMwTH
	abPWYFr5pK52udk91ce+mw96edRq1zsrrsxCPGDewStZa8+QxG91i
X-Google-Smtp-Source: AGHT+IGKlQ2pI7mo0VbCXTl1zMtiImR+Q3bkZ5aDzc2+PetUeMf8KI9s1d1gy4XqYnABgmOWCY4KaVO4ZAo/Zk+wakQ=
X-Received: by 2002:a05:6870:718f:b0:25c:9bf2:cc18 with SMTP id
 586e51a60fabf-25e10337e4emr1508238fac.7.1720049653415; Wed, 03 Jul 2024
 16:34:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240608080530.9436-1-linux@fw-web.de> <20240608080530.9436-2-linux@fw-web.de>
 <trinity-82c94d49-2a78-4470-83cd-3c6747e01849-1719434738199@3c-app-gmx-bs52>
 <726f2ed3-675f-45e8-94f0-d392181e7f92@collabora.com> <951E802C-1B53-45C4-B3E6-4A3400F47214@public-files.de>
In-Reply-To: <951E802C-1B53-45C4-B3E6-4A3400F47214@public-files.de>
From: Leith Bade <leith@bade.nz>
Date: Thu, 4 Jul 2024 09:34:02 +1000
Message-ID: <CAPDEroWUeR3iUFnjVr6WFLg3=dkML+5cbRPph9bj64F=zc1UWA@mail.gmail.com>
Subject: Re: Aw: [PATCH v3 1/2] arm64: dts: mt7986: add dtbs with applied
 overlays for bpi-r3
To: frank-w@public-files.de
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Wunderlich <linux@fw-web.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Yes, 1st reason is to check if overlay can be applied to base dts (the pa=
rt rob was requested). The second thing that was solved is that some users =
wanting a "full" dtb without the need to handle overlays in bootloader. Due=
 to hardware design of the board there are 4 "full" dtb's.

I have been looking at using the "u-boot-update" package in Debian to
generate an extlinux.conf file so I can use the U-boot standard/distro
boot. This script seems to currently assume that you pick a single
.dtb file for the board, and then the user can put additional .dtbo
files in /boot/dtbo/ for any additional hardware the user has plugged
in.

So having a series of "merged" base files would be useful for this use case=
.

Thanks,
Leith Bade

