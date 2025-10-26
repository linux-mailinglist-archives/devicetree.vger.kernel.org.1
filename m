Return-Path: <devicetree+bounces-231151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 456F2C0AE74
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 18:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 176C418A0E35
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 17:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FE3244679;
	Sun, 26 Oct 2025 17:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VcSlnFjb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768091C4A13
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 17:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761498913; cv=none; b=dCZeR9jVcpl4bnSNPrbuGoyMp7PrWHTf147iNZIeFp4jbkP8cpuJdjLADI5DUQ9mjdnPa8pfo/cGbHLf0bBjXS410Ga4IGsLK4GmXGo90qGZD9T93iWPJxqoEwWtU+XovJfQOYTwBMx+NZ1EBD2d+eVovVETxR23Qut5kyCycuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761498913; c=relaxed/simple;
	bh=D3iyFU74SZm9l3VCT029e6L9I6zHS3Tfx/bSbezzfeU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=UGN3m23xS0hDkJubCHo3iAwkG+xNpymQRbiEZWC8AQUywaC5Ep8RD3uAigtRQvN7wIy/oyNRvwKAM5dBY+KHGx28iVahbIYFEFaty/K+6uK2X88vIZeGI40aDo98W6QMp5k3hX8fO7awnESp+9Et1yq3WbIGFasBPG+UEEW1Rkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VcSlnFjb; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b6d2f5c0e8eso786915766b.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 10:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761498909; x=1762103709; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Da7n/lRyiS06YbMDRGJe/PhIKNbj4s3MR8oTEu6nwl4=;
        b=VcSlnFjbcjr9MyduI7RJQePIMKmZQiQ2CUSR5S2Vlc83sZcJlZgZ/muc+wY5xsKaIX
         yn85UuOYQVbRLi3g2w7mQgVohEbX6bozarjzZi4WGshs+HPNQ7nyaE5Ot2ObkvBjhYlW
         26OQsHGqZcAPyw2XiHf8xWSDDzWfM7CtC6+L0GscmmBrc19SZgdMbzSUo53F6m79haw2
         Fxl/ytfEjMJarcVik2vsfEToIneLVNNfFlXCAGfB5FfxD6aqu6F7gFhhHr3TTGsiBkro
         BkWOmW4OnyymAgU0iCi+qVCYqA1TjMhl/WG8JKB37Z9E8VBOHudYq4gyQycD8mkdMTcp
         3qhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761498909; x=1762103709;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Da7n/lRyiS06YbMDRGJe/PhIKNbj4s3MR8oTEu6nwl4=;
        b=pPJyZq9JfBYS3uavOPui8mchza7PMYIB8g3AfxKZK/Q/0uZAKauC3S/KGVIVbS6hxn
         jKhiKpYtQCsnFGhYNUV929At13ZU3LtBQ7vou05ryDl9ZBTDHfm59QonokTcXlC0wPyw
         O1QdSh9MdvW2GQ61ZS2SnzzoS0iQrCTav3xKisrieFRp0X2IRzKR3h+1sLRlrN2O2S1i
         Y3jLma4T7gsjKI+6J4cD+aZoo5AdiY3o0VE9DgU2grM/0J52RN1vHIhB1Sv7Z3jezlyt
         s1Y8V0qgj6ZGbMWUuEWF2Clzt6a2k1BADhhf6IRXQekwMgqoXTID7oYpoCcNJTwgvr35
         aZhA==
X-Gm-Message-State: AOJu0Yyyf8sE0b1XJidHPhOZQCY2dYJ3Nlio9ft74R7iJ38TgDD0avEb
	TkYQuLOH0WXeIPUFS+G4GdbuhYVeIB7A/13H6Gp/Xe4/lU4k+DTwZpx6jEvBPLkO5Qqzpd3oAm1
	xFfVWZB5LZmfDFy4VszbvRxqtchjdr2EzgdY/mZgbkg==
X-Gm-Gg: ASbGnctYPRGhwPPKC5AzgMxKhtnBOLkE21Ik4/AbbDT19Rki3uyKIb3sGDfvCEmFvYE
	OUbZIxHWX/nSGqUcwHlvUcKIaRGl1V7ZVVt4uli4ga08QFOmMGqf6v+kQUm1VJiw4zV/w3R6sKK
	+KsbX4BMQc3VxDjZtyQ1lQ0v2slVulnXDuNL87HYGVMoi/oR26PesO7KqTE2HeIwyJXUBq2OkEx
	g8kOpt/xIA5242qVsdH/AERnz6i6LrUXZviTApCCq4AyyyR1hnH6WX/P1BBt3k0sbbfeSUX3g==
X-Google-Smtp-Source: AGHT+IFzqU3QsaPE1MW2duZ8/dKVM5Mj7D0icnFlvp/4DYRo9NMCY1YBcoIDI7zlJrtuI8cbSwsY9j7dHSYnlbDke2o=
X-Received: by 2002:a17:907:1c81:b0:b6c:8e24:21f with SMTP id
 a640c23a62f3a-b6d51c325c6mr1741819066b.55.1761498908937; Sun, 26 Oct 2025
 10:15:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251026150358.1078453-1-coiaprant@gmail.com>
In-Reply-To: <20251026150358.1078453-1-coiaprant@gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 27 Oct 2025 01:14:56 +0800
X-Gm-Features: AWmQ_bnvhjvqwSYSkZyszEhUHRG058LD6n9gayksgoabyqflquBOY2fvBCiBW_0
Message-ID: <CALj3r0jVPGtVtHUwxmxjePkj4T3jZD5JUHfJL6xa6h8CAKHRzw@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, v2/v3 causes compilation errors, which armbian's build system
automatically ignores.

v4 has fixed the build failure issue.

:(

---

I'm new here

OMG, Gmail Android cannot send as plaintext mode :(

(Resending with corrected Cc list and plaintext mode, sorry for the noise.)

Coia Prant <coiaprant@gmail.com> =E4=BA=8E2025=E5=B9=B410=E6=9C=8826=E6=97=
=A5=E5=91=A8=E6=97=A5 23:04=E5=86=99=E9=81=93=EF=BC=9A
>
> Add NineTripod to the vendor prefixes.
>
> Signed-off-by: Coia Prant <coiaprant@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index f1d188200..37687737e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1124,6 +1124,8 @@ patternProperties:
>      description: National Instruments
>    "^nicera,.*":
>      description: Nippon Ceramic Co., Ltd.
> +  "^ninetripod,.*":
> +    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
>    "^nintendo,.*":
>      description: Nintendo
>    "^nlt,.*":
> --
> 2.47.3
>

