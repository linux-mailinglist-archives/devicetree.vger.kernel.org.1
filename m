Return-Path: <devicetree+bounces-216021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D709B536E6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20A9F1622D8
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51ADB33EAFD;
	Thu, 11 Sep 2025 15:04:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF3B2367A0
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603082; cv=none; b=orsigdDatdaCo/T7t8Dbg2RZnMVIxY0ly4YK2G8MTjpaVbpawbE7wQMY6M4LUqFNUenwxPmZ5M30KAkWyYNbWHzijLDdQkjE7ZB2qYMEyjiti7F4tY8dcfRSk6p8MdNqpdzD4qvPyQhpxg/H5XCiTD2ZmrKMA0AEMDz70V5TOHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603082; c=relaxed/simple;
	bh=hDIjhZ6wAHYWNsMfgUFiT7VXXk4Wa0eoDOj1hGyg8P0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V9zglcPMZ2MkbXlTZyeLnvMDnRT3nB8N4m7mOlp3QOEIzW9WMrlnUVuN3YLByroKMakYbBdnyov0DgWShX/MG1aHy7eGOdAhOMIWbLsaz5V5OVqBzdSVcy2Z6EUMeaS+0Kb/Ij0qCoN4vJNN/tFzhx58TfJoQP2qVtK9so1r4FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-72267c05111so6182777b3.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:04:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757603079; x=1758207879;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TS0EL8aORZwbi8PmaP9iDcnqk5bgKxhbrNCQjz+ikhM=;
        b=w+/GzzTF19Z4Pz30jeOIeE46LAjZNcBjNzNpQUoeiFxtOz1EmAa/ExLl455CTiC5+q
         aj0W5n5YdjeJ9DK4Hn/SLdnIFO0jEYbcrpDsJrhBStImgI+MC88r8pSxjEYemafEciu7
         eyOBC9zqb1+rgl4ZFXigXT3qTtiBej9kjlpVldQOqHnN6KyLymTs8S8FWKRoqqQiY0w/
         nDHTOFbLXYHhuC6YKXUZwTNvAtUv+dMg55GmhyzY39+MdfoEUq2SJl/XeUbYqC2ZM1jD
         AYZlA0rj7xZ28Mv5pVV4a4Id8/692EQVAw6saoWGYWBsObT1oIA52lyHeSz2VQc+oEcB
         FZgA==
X-Forwarded-Encrypted: i=1; AJvYcCUE84UHsZlA0eYHdK8vnAA/gHVirg3vujAZb5fN7fMEG8wjwQd/RIY2tAZo7iYug2x56RE2SMZMbstc@vger.kernel.org
X-Gm-Message-State: AOJu0YzDtb7OMsgrycewXjH0ftmSYO8YNgUTUHTrbo2FxpQ/RcY44Frp
	pUKR61c8tJx/CsJEkkj8/uJBWxlwqkHPK8wW0NUsS+ZfA9DhQ6yeGEq+r+m43U1pkmA=
X-Gm-Gg: ASbGncsDzJ68g8A2McodcpK0KNfyo7Y6iwDmYOvhiaRM3EWMTxwMqHzrpvxMMxR9BcR
	KQau4KE6tQPOjDINOpVfU6fODUPTya/4cvO/nd+dh/au2WZ+IfP373r5NlIKpKh2Xn1SvzkQCpm
	7vyBMSmFEz42z7AbJMCMI1Gvk3O39/QlRBKyaRYcTsvIR2BgeeYCGtgR3fztjJFW/aBB4jlUktc
	GhMah8vE8pYyPWP6IWnnxfrq1ye2G5y1Q6DRo7zNhcbPFylDI7yMbuEpcPQvt5m6Z3nLdXZxcTr
	J0u+26zeIm5cZFDZE+Sf2DO8ceSUSr6GVFxo54acBQJO92CxMZRa13oly2kCHALSdHectq+wsv3
	6oc5+zYyj4sVbIwMW7sQJtoWLUb+0hAHxogHtyx6cfhsDpowefTFSV+ft9mzx
X-Google-Smtp-Source: AGHT+IGeDmV05ETva63H69JhogRT9mupsWwYph8Z5h63eCR4YghT5hRX2HqNIDzkkrIehelmhB7BVg==
X-Received: by 2002:a05:690c:450e:b0:723:8943:d6d3 with SMTP id 00721157ae682-727f2dbf912mr153061577b3.6.1757603077641;
        Thu, 11 Sep 2025 08:04:37 -0700 (PDT)
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com. [74.125.224.50])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-72f791a38cbsm3989367b3.42.2025.09.11.08.04.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 08:04:36 -0700 (PDT)
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-624e08e8e64so391069d50.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:04:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVntwgKzXPMs0lvbyV+h0d3UtptVm4kl9IB9+10In8MxzEyEOSE1YXF7/aAlfuJYOmkxfyYfPQPgoyM@vger.kernel.org
X-Received: by 2002:a05:690e:1515:b0:625:27aa:61e8 with SMTP id
 956f58d0204a3-62527b9a69cmr1270304d50.1.1757603076433; Thu, 11 Sep 2025
 08:04:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250905084050.310651-1-niklas.soderlund+renesas@ragnatech.se> <20250905084050.310651-4-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20250905084050.310651-4-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 17:04:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVUYFiHx2owbezcOLwUdYd5_7XZEYjF8-Khvc1WWavGQw@mail.gmail.com>
X-Gm-Features: AS18NWCW04nNVUUV0t60126nxRdvBxmyhce0KqBQMo7ha578-b8sIe7Ehrnf0RA
Message-ID: <CAMuHMdVUYFiHx2owbezcOLwUdYd5_7XZEYjF8-Khvc1WWavGQw@mail.gmail.com>
Subject: Re: [PATCH v5 3/4] arm64: dts: renesas: sparrow-hawk: Add overlay for
 IMX462 on J1
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 5 Sept 2025 at 10:45, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Add an overlay to connect an IMX462 camera sensor to the J1 connector.
> The IMX462 utilizes 4 CSI-2 D-PHY lanes. This enables the video capture
> pipeline behind the CSI40 Rx to be enabled to process images from the
> sensor.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.18.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

