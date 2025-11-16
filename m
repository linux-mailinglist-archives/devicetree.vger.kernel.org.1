Return-Path: <devicetree+bounces-239082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 442BAC61415
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:00:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DF1134E3A86
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D3A27A122;
	Sun, 16 Nov 2025 12:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CVmDcesl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E6E221F13
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 12:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763294452; cv=none; b=O9A2FlIJokiuvKQ0we+0gbrJdt952BL9gPhenkcPkCe5skHA0LbThuawMIsJgKS56QdYXxZj8NOYgyH1YqL58xqwkIgMVYiuT9w+mgLpWddeWw0qhatXbqfr9Goen3miTi1sYw7XN88uELZZ81r7h9dGt/aO2ViGYye/4rJOPyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763294452; c=relaxed/simple;
	bh=y8FaqKEjgD4Y2LjTTGKyATQQX3MWIGa2bobHCkDv5PE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KY6SG0Pq5rnT0oWZn96yblSylfyaUMRScGDxb+KovSA1C9EL4Cs8VzSuvf9La7UroDmDb5j5dwhujypLmOLuVrRQALeVgAJNJ+TW5Z7OKS30DxJWmyQgWw88y13qs4CZ6E5b9K/uAeJsAPSue857F01PQ45z0/8GQwAh4ADlmvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CVmDcesl; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-641677916b5so6219727a12.0
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 04:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763294449; x=1763899249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8FaqKEjgD4Y2LjTTGKyATQQX3MWIGa2bobHCkDv5PE=;
        b=CVmDceslEFS5KH+2GMFa/SQodalsWRgxo5DoQiqFkYiKfg3wDkKlgYqkZ4Ag5M5BiT
         r2tlKSmhLSaiyvmFXGNGNJUDHQy3mG2JGCnAvodh9Uza2AQjtIQtAvXXk3q0W/iaPr7G
         EN0x/s/hspGBtclwuMWueiewiJwlr64aD45bcWc2P5Tyb2ikTWFSGlMtwOQKBZzcaKSW
         JOdhKg8GpXOrPsDbsjG4EmCmHKIyUyZQtCVDXVjzU1SJTSLUGMA1EAdD5JOkKIW54tQa
         pT7CtXDbCEohoS5svEiPPwSb+JcImTj+xHKChMdL4fzXvuoBUivz82p3AFKRZQQbYYrG
         fZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763294449; x=1763899249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y8FaqKEjgD4Y2LjTTGKyATQQX3MWIGa2bobHCkDv5PE=;
        b=jlIxC9WVtQGNsKqv4IVjYPkLRDxrNYlE7YX16xbRUce1w/UqTPlxRrfHrtgRxztNLm
         j2gVfXd67mmAoU0RX6fOLo6d3Zs/POE2+OG9LsVyEbTiw2rNvUonekbyy37nSGSBMqee
         nQleFiufjV7kOk/f/2cK+cUC8UNYernxNqLFqaGzk5Ek06DUHWYk0Mt3eAaWrGELuVRX
         QtwauJvdZplForb3tMzwtbIdv5+ZT47tlTXNbrvTbjYq7g8DJY9VsZFTuAKsZo9gWc1i
         Jvm3gSSKzaDPNAr11zKNLF/pDB7mo9GVLyMxOVzswmYjhPy9TG2FHUwSKMpMM3BdKvp/
         fm0g==
X-Forwarded-Encrypted: i=1; AJvYcCViV5JCQUdFJ5N4+1cDU6jjyprOIyaoUAYzigjNW35wrfcuRD5TGexzhxTij6R4iKQPiOpFSJBTOnhB@vger.kernel.org
X-Gm-Message-State: AOJu0YyQH8hPqakf9r4y3KRhs65cP+YSpwpXVrNBwb0xLJxASIYpxmF/
	OLgkg1Hvm6djMFob8+zusJGobX17T4Cn/upNu9gePpzXA5cWWhdmuDzG
X-Gm-Gg: ASbGncvZe8Tm1eoSdq+F4UpdnDQYVAz8qW81xJ+7I94X7ZjEPMY+6RU2aetUSG2gQ0L
	e+zI4op05CkCgQ26qE7tvJxKvh78HxCSm1EAAqk7qArTtxXpbKsyLCah1+qkLBX9vVlfMtuwxKa
	sdLHCb+BOaxmHUq+YjKl4OLJr7ZQ3vPZ75gqFKaf0b2aZ223w8jEn353H/POMbA/GWVIsAzLzd3
	1FDLenFr3TOwGdJ9hfZXmXFPk+rpY4sXygYd6JpRLJyt9uiiIQGLTYigJ3tvklf42j4B48f7FAg
	65H7xTY5xiV0+y+1dklwMZ59CDfABwhWAUggoWGPA6QzvGXI4z+wfVjDpFFnN3k/ZcdNKnTICoZ
	kK0E6GI4V7AYXBMeE78rbUOPAx0UYvChdZAOmJhGRyfSV3UcQMSQdxMRSbrFRZDPZTfBsxFHCm9
	ZUeJQmsSLnBKi6DL2afGiNekqNWsjBulUVTyz0bRC5CKfUF0Mybua54DKWullEgvo3TbxB1JjOO
	+uJCD0MqgidJGna
X-Google-Smtp-Source: AGHT+IFWFubjCIweyb9YCoKzVFcXXsXAAvddERhRBpi3vJIG1VQ4HjCz6c3ATn4RBI8dMcQCX4ffyw==
X-Received: by 2002:a17:907:96a8:b0:b73:989d:3a86 with SMTP id a640c23a62f3a-b73989d3e2bmr79438866b.40.1763294448767;
        Sun, 16 Nov 2025 04:00:48 -0800 (PST)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad48dcsm826174066b.25.2025.11.16.04.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 04:00:48 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: wens@csie.org, samuel@sholland.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject:
 Re: [PATCH 6/7] dt-bindings: display: allwinner: Update H616 DE33 binding
Date: Sun, 16 Nov 2025 13:00:47 +0100
Message-ID: <10753322.nUPlyArG6x@jernej-laptop>
In-Reply-To: <4b4ebcc2-491a-42d3-9758-60de80ce5eb6@kernel.org>
References:
 <20251115141347.13087-1-jernej.skrabec@gmail.com>
 <20251116-pigeon-of-optimal-blizzard-2cb3b3@kuoka>
 <4b4ebcc2-491a-42d3-9758-60de80ce5eb6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi!

Dne nedelja, 16. november 2025 ob 12:33:55 Srednjeevropski standardni =C4=
=8Das je Krzysztof Kozlowski napisal(a):
> On 16/11/2025 12:33, Krzysztof Kozlowski wrote:
> > On Sat, Nov 15, 2025 at 03:13:46PM +0100, Jernej Skrabec wrote:
> >> As it turns out, current H616 DE33 binding was written based on
> >> incomplete understanding of DE33 design. Namely, planes are shared
> >> resource and not tied to specific mixer, which was the case for previo=
us
> >> generations of Display Engine (DE3 and earlier).
> >>
> >> This means that current DE33 binding doesn't properly reflect HW and
> >> using it would mean that second mixer (used for second display output)
> >> can't be supported.
> >>
> >> Update DE33 mixer binding so instead of referencing planes register
> >> space, it contains phandle to newly introduced DE33 planes node.
> >>
> >> There is no user of this binding yet, so changes can be made safely,
> >> without breaking any backward compatibility.
> >=20
> > And why would you configure statically - per soc - always the same plane
> > as per mixer? If you do that, it means it is really fixed and internal
> > to display engine thus should not be exposed in DT.

Not sure I understand what you mean. H616 SoC has 6 planes which are
represented with single DE33 planes node (see previous DT binding).=20
Driver has to decide initial allocation. For example, 3 planes for each
mixer. However, nothing prevents to allocate 1 plane to first mixer and
5 to other. You can even allocate all 6 planes to one mixer and none to
the other, if board has only one output enabled.

In any case, plane allocation is runtime decision and has nothing to do
with DT. Since planes are shared resource, their register space can't be
assigned to only one mixer.

See [1] for example how this would look like.

> >=20
> > Describing each IP block resource in DT is way too granular.
> >=20
>=20
> BTW, everything is update, thus subject is really non-informative.

I guess "fix" would be more descriptive.

Best regards,
Jernej

[1] https://github.com/jernejsk/linux-1/blob/d93d56d92db52c7ff228c0532a1045=
de02e0662c/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi#L181-L235




