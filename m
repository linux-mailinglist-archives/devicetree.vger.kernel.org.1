Return-Path: <devicetree+bounces-87913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9647593B71A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 20:57:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9AE1B23C2F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 18:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2FFF16B741;
	Wed, 24 Jul 2024 18:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="akW/DMj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC60D167D83
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721847456; cv=none; b=jv3+0B+sUjehUfaKxVo7PgksOngT8mWwHGHRI3P984mkBKMb67hmO9Cw1pzDIhUfMUsL4T3M1z9yamioxiI3F2g5FsRY9kH+8nM29Ophum5fDwhAv/RvdSisL2zbFl5Qz9zj/RSaV6R0BIf2GKraualYn6egLJXC0VWlHA9qEsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721847456; c=relaxed/simple;
	bh=Yb9CkfGo8qqW2dqmtuJtJ29QpDprm7REjejdf5m4DRI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h4zOKUqeavQf3mpeubHjSiWA8jQbwxUV7oMiHNGvynYV+DVNz6a9wf5WTXH+sqrXhzkklOKPSZuQkwXmLYBFtv2ychAn35jgL0UrohYsz9jpiVKhBw4EONM+eU4YUwAj1fCFZhR7FD+NtaitvMnMsAWtna6HbNCm5zIOH2DfL9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=akW/DMj7; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52efba36802so34777e87.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 11:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1721847452; x=1722452252; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6WEhVZHrESmH3cPPuIg5IhaVug2Q8o2MhnyFIl2cWFA=;
        b=akW/DMj7wjjsGBp0tamuRcM58vjVzVa6c2DSCoj5VnTmylBou+yyH0SjLplDcH2YEz
         O4/iYUcYmuGvVS3cs53T5ek35c49oXAAaZqG8mLUC/JoMHgDJUF1c8fz0s6Y6t/gDfFD
         Nl1AxsWQKgxYgBFh+QKnQR2xjuVyrKjE0SGwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721847452; x=1722452252;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6WEhVZHrESmH3cPPuIg5IhaVug2Q8o2MhnyFIl2cWFA=;
        b=csIviArsD3g7nLPqVrsHJPlcf9JC1MTFTkG8rnYrvaH+13/M7ny9S/jXbsLwUzthUt
         DJSD42D24j3QYOMnUMgObbaejzjL93sdrRGNuiTgQBasHV3/IojxRQGtAZnNVWEsGvn5
         seuFtyzLBOFnaq8deuC/p1Xh11pisNtTcI8WROvuvgF0SqvUTA22XviO/LwSw7bikRKU
         hW1XdZEW8Kje0o5N9VRm+KzybCFj0O4bonvZqclY4/DukbcPungx3g7d8x43xhYXuzSr
         onOqG7o4Y77A8hQlRP6lHrxeWTH+4g3A4MQfO8h7OeVZUTIYqVI28py5137iCZbhinFz
         flyw==
X-Forwarded-Encrypted: i=1; AJvYcCWnfk+oPiCyUNw8cUTNm7nKE1w2pSLj63kR/UYrb9AMJNRpXEZOM8BGRecmnXPB3d5pslQXm2kPZl0Eu0wjW786or/1R5O1SD2Xzw==
X-Gm-Message-State: AOJu0YwR9rILChUUQDUVNDQm74CYNW8zbhHA0tRTqBeovCqbzIiTk/sR
	ByZRumCtVkD1+BCvYRDvWLIqiLaQd7WuDuqOJQWE/zm2uMa6NNVjodLKSmalvk5iu66pA4vs/gR
	kQ3WqPX5tNq30rlbdGpJNIm4V3VqoHg4EWooE
X-Google-Smtp-Source: AGHT+IEfsm25M/sKFQlEJmxL9cZCAqQoSSykARJVhn/uLnyhIXUrcNSLMNjZBdX91mJc4gZJYbUFf2dYK/voTLeqr6w=
X-Received: by 2002:a05:6512:3c91:b0:52e:76bb:c906 with SMTP id
 2adb3069b0e04-52fd3f9017emr436254e87.61.1721847451819; Wed, 24 Jul 2024
 11:57:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240716213131.6036-1-james.quinlan@broadcom.com>
 <20240716213131.6036-2-james.quinlan@broadcom.com> <d20be2d3-4fdd-48ca-b73e-80e8157bd5b2@kernel.org>
 <CA+-6iNzsE0hwUhFyfuUZtuAVgOAS-L8pR37x8TV4R779g6E-Jg@mail.gmail.com> <90d1d4a5-5d47-4ad0-ab0f-d4f549cd4eec@kernel.org>
In-Reply-To: <90d1d4a5-5d47-4ad0-ab0f-d4f549cd4eec@kernel.org>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 24 Jul 2024 14:57:19 -0400
Message-ID: <CA+-6iNw-8co3Tx2S82To4Cs-6O+T+YrpaSBZBUci2sL4dRTpcw@mail.gmail.com>
Subject: Re: [PATCH v4 01/12] dt-bindings: PCI: Cleanup of brcmstb YAML and
 add 7712 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenz@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Cyril Brulebois <kibi@debian.org>, Stanimir Varbanov <svarbanov@suse.de>, 
	bcm-kernel-feedback-list@broadcom.com, jim2101024@gmail.com, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000bfe70d061e02d938"

--000000000000bfe70d061e02d938
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2024 at 4:05=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 23/07/2024 20:44, Jim Quinlan wrote:
> > On Wed, Jul 17, 2024 at 2:51=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 16/07/2024 23:31, Jim Quinlan wrote:
> >>> o Change order of the compatible strings to be alphabetical
> >>>
> >>> o Describe resets/reset-names before using them in rules
> >>>
> >>
> >> <form letter>
> >> This is a friendly reminder during the review process.
> >>
> >> It seems my or other reviewer's previous comments were not fully
> >> addressed. Maybe the feedback got lost between the quotes, maybe you
> >> just forgot to apply it. Please go back to the previous discussion and
> >> either implement all requested changes or keep discussing them.
> >>
> >> Thank you.
> >> </form letter>
> >>
> >>> o Add minItems/maxItems where needed.
> >>>
> >>> o Change maintainer: Nicolas has not been active for a while.  It als=
o
> >>>   makes sense for a Broadcom employee to be the maintainer as many of=
 the
> >>>   details are privy to Broadcom.
> >>>
> >>> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> >>> ---
> >>>  .../bindings/pci/brcm,stb-pcie.yaml           | 26 ++++++++++++++---=
--
> >>>  1 file changed, 19 insertions(+), 7 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml=
 b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> >>> index 11f8ea33240c..692f7ed7c98e 100644
> >>> --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> >>> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> >>> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml=
#
> >>>  title: Brcmstb PCIe Host Controller
> >>>
> >>>  maintainers:
> >>> -  - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >>> +  - Jim Quinlan <james.quinlan@broadcom.com>
> >>>
> >>>  properties:
> >>>    compatible:
> >>> @@ -16,11 +16,11 @@ properties:
> >>>            - brcm,bcm2711-pcie # The Raspberry Pi 4
> >>>            - brcm,bcm4908-pcie
> >>>            - brcm,bcm7211-pcie # Broadcom STB version of RPi4
> >>> -          - brcm,bcm7278-pcie # Broadcom 7278 Arm
> >>>            - brcm,bcm7216-pcie # Broadcom 7216 Arm
> >>> -          - brcm,bcm7445-pcie # Broadcom 7445 Arm
> >>> +          - brcm,bcm7278-pcie # Broadcom 7278 Arm
> >>>            - brcm,bcm7425-pcie # Broadcom 7425 MIPs
> >>>            - brcm,bcm7435-pcie # Broadcom 7435 MIPs
> >>> +          - brcm,bcm7445-pcie # Broadcom 7445 Arm
> >>>
> >>>    reg:
> >>>      maxItems: 1
> >>> @@ -95,6 +95,18 @@ properties:
> >>>        minItems: 1
> >>>        maxItems: 3
> >>>
> >>> +  resets:
> >>> +    minItems: 1
> >>> +    items:
> >>> +      - description: reset for external PCIe PERST# signal # perst
> >>> +      - description: reset for phy reset calibration       # rescal
> >>> +
> >>> +  reset-names:
> >>> +    minItems: 1
> >>> +    items:
> >>> +      - const: perst
> >>> +      - const: rescal
> >>
> >> There are no devices with two resets. Anyway, this does not match one =
of
> >> your variants which have first element as rescal.
> >
> >
> > Hello Krzysztof,
> >
> > At this commit there are two resets; the 4908 requires "perst" and the
> > 7216 requires "rescal".   I now think what you are looking for is the
> > top-level
> > description of something like
> >
> > resets:
> >   maxItems: 1
> >     oneOf:
> >       - description: reset controller handling the PERST# signal
> >       - description: phandle pointing to the RESCAL reset controller
>
> Now tell me, what sort of new information comes with this description?
> "Phandle"? It cannot be anything else. Redundant. "Pointing to"?
> Redundant. "reset-controller"? Well, resets always point to reset
> controller.
>
> So what is the point of this description? Any point?
>
> >
> > reset-names:
> >   maxItems: 1
> >     oneOf:
> >       - const: perst
> >       - const: rescal
> >
> > I left out minItems because imItems=3D=3DmaxItems=3D1
> >
> > Before I was giving both of them as the "potential candidates list"
> > that will be used further on, but this is not how Yaml should be used.
> >
> > Is the above in the right direction?
>
> It's over complicated. First maxItems are redundant, because you define
> number of items in items. Second, you have EXACTLY the same case as the
> hardware for which I gave you bindings to use. I don't understand why
> you insist on doing things differently, but you can. Take a look at many
> other bindings how they achieve this - there are many, many examples.
> But do not invent third or fourth method...

ack, I will follow the qcom,ufs.yaml file you referenced.

>
> Best regards,
> Krzysztof
>

--000000000000bfe70d061e02d938
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
mOAplh6h3nMZUZxBguxG3g2p3iD4EgibUYneEzqOQafIQB/naf2uetKb8y9jKgWJxq2Y4y8Jqg2u
uVIO1AyOJjWwqdgN+QhuIlat+qZd03P48Gim9ZPEMDUCAwEAAaOCAdswggHXMA4GA1UdDwEB/wQE
AwIFoDCBowYIKwYBBQUHAQEEgZYwgZMwTgYIKwYBBQUHMAKGQmh0dHA6Ly9zZWN1cmUuZ2xvYmFs
c2lnbi5jb20vY2FjZXJ0L2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNydDBBBggrBgEFBQcw
AYY1aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAw
TQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2Jh
bHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwSQYDVR0fBEIwQDA+oDygOoY4aHR0cDov
L2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcmwwJQYDVR0R
BB4wHIEaamFtZXMucXVpbmxhbkBicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQwHwYD
VR0jBBgwFoAUljPR5lgXWzR1ioFWZNW+SN6hj88wHQYDVR0OBBYEFGx/E27aeGBP2eJktrILxlhK
z8f6MA0GCSqGSIb3DQEBCwUAA4IBAQBdQQukiELsPfse49X4QNy/UN43dPUw0I1asiQ8wye3nAuD
b3GFmf3SZKlgxBTdWJoaNmmUFW2H3HWOoQBnTeedLtV9M2Tb9vOKMncQD1f9hvWZR6LnZpjBIlKe
+R+v6CLF07qYmBI6olvOY/Rsv9QpW9W8qZYk+2RkWHz/fR5N5YldKlJHP0NDT4Wjc5fEzV+mZC8A
AlT80qiuCVv+IQP08ovEVSLPhUp8i1pwsHT9atbWOfXQjbq1B/ditFIbPzwmwJPuGUc7n7vpmtxB
75sSFMj27j4JXl5W9vORgHR2YzuPBzfzDJU1ul0DIofSWVF6E1dx4tZohRED1Yl/T/ZGMYICbTCC
AmkCAQEwazBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UE
AxMoR2xvYmFsU2lnbiBHQ0MgUjMgUGVyc29uYWxTaWduIDIgQ0EgMjAyMAIMSO43VW7D5NP1X/KD
MA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCD1vkufEO7dIkSTe0b7kToXkpptEW7b
X+3wvLGrSbd9ADAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yNDA3
MjQxODU3MzJaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjALBglg
hkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzALBglghkgBZQME
AgEwDQYJKoZIhvcNAQEBBQAEggEADHD/qS4oNSDpGaBYmPGqLEQMIX7Sxq8TKIGwAGB0b/bQiOCn
Fj5bMbPz/YlaSOrjYoByn9K+10b9oM/eU+YYf1l/MXbPaP8vFS7LHrSVauXmuU7fCDc5CrloBwKC
zxE72TDLThx6T6Hsyww84cyhtHzHSfhaUGhe3R1QPT3buFPtjTIghdhj8SbN0wjsjftUEHF6gHss
+Rxid/1So3WQMz3VPmTFw88l4NC8snEJfI4N6jfx8i5H5OjJJOBg3EJYlZgELzu989HIRvwhf9Oy
XdsExRGhkWVouCQ43vwKMQQG4ERscS7+mJIA9lf01f/KlVstu1Zlaq4CGhzL1XE9Vw==
--000000000000bfe70d061e02d938--

