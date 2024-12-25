Return-Path: <devicetree+bounces-133896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E70499FC31C
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 02:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D61618838EB
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 01:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DC4CA6F;
	Wed, 25 Dec 2024 01:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VX+ZwPi+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80D3257D;
	Wed, 25 Dec 2024 01:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735089177; cv=none; b=DlVzwztknVRaFvjUt0vHDDUx/AWYM86L0ykccJNM+IfbmCOzpSS2CsRcKhAIwX1pCrhN2GroAsK9RJCpHNT7iTp2FN7aGZP78RBN1hLI9HQY2W+f8P0u2upBSxurFUkCx3aRoIWwQ2Os0WjXShL5O7XnNcypWIFsrp3zYjQw8pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735089177; c=relaxed/simple;
	bh=13z+PjTiH06I/eeDc9B3A+IE+lB26kT5VEi3BNU35RQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N10qb5r/qT/bivJ+fxwHVwCTu3PbgPr+EKFUrZCtZf/yqSTa+lAcE87Z/8jT1h3ux6KwsTBuIVGiidHLWrTHiUlSsCdubUEXofLBAbY6oc8dz4A39k70EN4pPdNFELdTv5lFvtWKvT8QOb3n1lddsW/pigtpwuH2Z+ufLi7bok4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VX+ZwPi+; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e537d9e3d75so5157646276.3;
        Tue, 24 Dec 2024 17:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735089174; x=1735693974; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=13z+PjTiH06I/eeDc9B3A+IE+lB26kT5VEi3BNU35RQ=;
        b=VX+ZwPi+Y6EHNq2+V2GDAuplh6EhA9eZCuD6fc1D3R11bgTMUZZH8xChlfgsWD+qm7
         iR3uJos4OvVORcyuMIBXjO7K5yX12zdZqpvU4i239vqbxh4Wxu5x5En6KzZfd0d4g6Qd
         zGDDhhB+Spfdp2Kt9SmsifEl55CFFkMbY/rQcZCoqRBYRBjhfTZWBO7AK1aCw0FTLX8e
         e8jHeaftP9GaUUdpOO/xjgpGq6Lj9b/NXGPccV6IRhsmj9xpa13Wa9AYp0bGHGOYFU0I
         bIhnXPNTAA8g5cEuU7fOON/Jxpvs8pkBkxsw/6rus+VVgd8wAbEbopqQW4wlRCc4btfO
         IZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735089174; x=1735693974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=13z+PjTiH06I/eeDc9B3A+IE+lB26kT5VEi3BNU35RQ=;
        b=Y7/bXbV9jFsZFhG2f9a70Pcqww6/kOfIBOCtfPgOCwaD13Se4Fg0WNOpDYChrYipBi
         Saa7ckC+OUSPRwFhTCJ7tq9jBgwb+szEBedOYB0ivSx6Gt9fPOz8w8I91gG6OnP8B9RW
         uWKkapkeSTOsJmUxElERj+8LChnVWqL7SS3tJe3XRf08nIXNhhAbKF9yqbIvjzOF+VCL
         N1cqOm+K7N3JJTANN1B2RsE0Iy8OAd+ohbJAJxdbx/i11f5lastgee7vaYh5xcW64EQQ
         PpSl3dGus9I3vcpDBsj4RtlLkRN5Tm+BFHNJsHQEtTFjkWc0QirZ+FCoWOXWL9Nejd3D
         JUzA==
X-Forwarded-Encrypted: i=1; AJvYcCV/s9yOiv2E956J0X/oKJ5N+y2beudWaZMRWlo7xfazD1N1+OS4KwBXlehblBan9oR1CMsaMgiEJWSG5Fzn@vger.kernel.org, AJvYcCWSc68WiB9mQyx1qnrO8iYziet6vJv/BwMagRtPAKisYGguMmuJitqoeyLMAjb4+O0qYo4dHrZU/vFQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwnWQAdaQ78NuA9v175s7MyTZooj78UVDOOyH+fTzf/MB5isSMx
	fh4shYvBwelFaL44QbeU88cq99rPYSVT/ibEp8Qo4o8t9O/EAlkpK0W30qfRjbRTNaqs0moaJ5F
	Li7MQj6gAOl7FZ989rERCe91n3DrRXWIa
X-Gm-Gg: ASbGnctZoyColNA0unn+0NzF+nE1XgACkDG1Uq8mTTYdGeZEEBaDR8coDg+c5cftBIO
	M+RDEw37OzAVrzbNrq/06n6WGii1ea5+aX//pQGiClLokDilWWxWYlsN3AhU2aw9He+QkqL4=
X-Google-Smtp-Source: AGHT+IGPPoxV81wiCF1sSwbpw9QHpmTo/43ycVevjJu0wYolV3VEOx6O9n7HnqU6ZgVcIYIN9LeVDxASBdtunbD4+ig=
X-Received: by 2002:a05:690c:6a09:b0:6ee:7012:d72 with SMTP id
 00721157ae682-6f3f823f0d6mr139819557b3.38.1735089174529; Tue, 24 Dec 2024
 17:12:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241223034350.215375-1-gch981213@gmail.com> <20241224-finalist-unaligned-c94635604376@spud>
In-Reply-To: <20241224-finalist-unaligned-c94635604376@spud>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 25 Dec 2024 09:12:33 +0800
Message-ID: <CAJsYDVJr-eypyZuPrGywpdruzSXoM8phBCKHNg_VFsRfCi-T7Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Siflower
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

On Wed, Dec 25, 2024 at 4:24=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Dec 23, 2024 at 11:43:49AM +0800, Chuanhong Guo wrote:
> > Shanghai Siflower Communication Co. is a manufacturer for home router S=
oCs.
> > Add a vendor prefix for it.
> >
> > Link: http://www.siflower.com.cn/en
> > Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
>
> Where's the user?

I'm about to send some drivers for siflower chips. Should I duplicate this =
patch
in all the driver patchsets instead?

--=20
Regards,
Chuanhong Guo

