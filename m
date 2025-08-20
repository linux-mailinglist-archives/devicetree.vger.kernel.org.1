Return-Path: <devicetree+bounces-206978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5614AB2E300
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 19:09:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29027A04381
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 17:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80508334707;
	Wed, 20 Aug 2025 17:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FvvzylhR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f225.google.com (mail-il1-f225.google.com [209.85.166.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19D23277AA
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 17:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755709738; cv=none; b=Vutya1K9dGuv0OdCAgjW4td/y4B/i/VP283oVJ6f5dmYABMdEBgrtBqMjuJIjR2aB76i2iT6X8NDT+33kdZyVq4RM7eY2sYWHgomghCqPZlwNKJb16BMvnPGQwas6MqS1iZiW2LmBT1fnORwoUfZMmO1lX1fvJM7kj4SrevGYoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755709738; c=relaxed/simple;
	bh=WSupoze3qnsNBaa4KJUwislV3MzwGPkN8xT26WC0yTU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bMXJQ69UpRoMb1GN7sSg3a3NjylI7VT589OFkyHm0M/sQxkmdU9MhFccdFkKsCKPwOLrpPExmUcTcOlFoFDR+1UlOJkJXIrLMVR+OsLMj0AO/XhQCqy7rm3xfOnd+SXObGr4qOCU9XIbH1g8Y8tmiuPiXugXtdm1p8+HLkF2r4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FvvzylhR; arc=none smtp.client-ip=209.85.166.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-il1-f225.google.com with SMTP id e9e14a558f8ab-3e66da97a68so290265ab.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:08:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755709736; x=1756314536;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oFWREmL3wk7g4rzhIHJIZLyk6w2P2bv3wC4hDsxkpDU=;
        b=KPn4e5MsNUg9T1WeXxetrOi/QW+i756PU2ESIUsL9PKjaQok3YByjwcD5Cxf5MJTOK
         X0k6Bd9Dtdbmu01VSpBpuFwA8PCs6+a+zA1EKX9A325kEATgFtvLT+TVTbk1kgOXoR8R
         AMDyS6zPpPR3/F2lrSZzXNdCckWl6fXLjWnBMdlmaSLf/qdymoa+XwYn8eMPe42or4Fc
         ABHJZ0cvO8Fbo2xbPMg7rqajF0DF9gKX0OwcEqAva0jQnlMs0M05od72j3VjWaL5eR6p
         2m9Ibapjt2eQizUTGy/8oTSTvhaMycnYjzgZ0vubCX9dkFEVN6l8BnjZY2z1NiUcEQGs
         t+XA==
X-Forwarded-Encrypted: i=1; AJvYcCUY0ilWkJs+lxBQ6h5JRmH9z2WFjUdBPtsYTa5jqIw62YlDfilFEUSCmpyMwSUG142hYBpYYaNoy0Fs@vger.kernel.org
X-Gm-Message-State: AOJu0YzbvNh2kKV2NpjIqqyjzB+DjRoL5MJWQXh0OfIv/2IZS9Gtzrbc
	hrClAuyJpxGJBuA1ZiCmp3BJSv+g8GH+ARJpwdVCvt/04CCU9FlJpaE3J0l7PW3Sv5nbhu5FUqa
	MM7Pdl6FCkNKBR9EIsfTmGop1Av8J929fqxi+uMClzPukcaxzeitJu+H4Cwu5+KF8FvX+KXSvgN
	Cih93214hKsi+3n9KOjIvOBNbWHdDkMoSxkQuUWfcmz3RIAfRZzEhNkR95Rs7+AT+KFvlu5ytLV
	PWA8wLKUSR4rqAkUA==
X-Gm-Gg: ASbGncvmNFZyyNyHczovNC3rvgcir0qfhfIXgcF3Mtthun7bu3QoGk+qXE1UpHG6sC9
	THZHAkTAFqI3Z9B9cuHNyBlHFCK3tyzFC/tszk/NQ8/DirFBY3AQYCSisyx+m1VFOuz88DnTw+f
	B9MhhJkifuYloLv2tyVc74D8sHjV1em0BTVb9nOM82UArSYU/t0ah+3wdgD8LT8wsX2kPk3bykT
	FkOQdu4Rxln9PHMnY5QQt+fAQeT0dvpoPRIqP0qmkHROMwlmR46vsyxCIWedpUZFQ6zn66VOF/r
	eIAMy/Whypy7uLmcixmbxRGXcRfoHDrC+Kd9IP1+hxhTxNX0shuxLfYhAkoOpiwEp3x3Nsoie9P
	r6u7OFbELR7o+TEP7lUp8Jej06OeSKJWlBqZXWxCWGNgTqxpUUZ8QTpApds2mOGR97TP1HYuFE0
	SPqgA=
X-Google-Smtp-Source: AGHT+IEKp74tivRLemOVp3o/YnMeDnQ3dBhfdxg+NQO2DeJLvYOm4E+W1n5MT+4Ckbbt4ego7l5/9yYE50CN
X-Received: by 2002:a05:6e02:461b:b0:3e6:82bf:b4f8 with SMTP id e9e14a558f8ab-3e682bfc8f7mr12095355ab.11.1755709735763;
        Wed, 20 Aug 2025 10:08:55 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-100.dlp.protect.broadcom.com. [144.49.247.100])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-3e57e68a206sm10899885ab.23.2025.08.20.10.08.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Aug 2025 10:08:55 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-55ce520e01eso12633e87.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1755709734; x=1756314534; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oFWREmL3wk7g4rzhIHJIZLyk6w2P2bv3wC4hDsxkpDU=;
        b=FvvzylhRK1HQSZ5QNa134ju/lDvTE351TtU++Le5gFS+jxSmvOB9sWf5EJYpFlTlMi
         32wiOZwbSZzE47faEkZs1vd4rMRGvStgzj2OJsV1rWHIaXwnQQcyMbUJpARRpPdcf9yT
         Nc0eIT4QTANEmbDvx6LvSizojyeenceYgiKdw=
X-Forwarded-Encrypted: i=1; AJvYcCV4pMwFI9D3wq/m7ygfgDRK0DJpXOU34KxQUBPZlsLpEvz012Me94f4RZ7j7UpNPGRbMQRws4CfILDl@vger.kernel.org
X-Received: by 2002:a19:6a07:0:b0:55c:c9d5:d32a with SMTP id 2adb3069b0e04-55e06b2c9admr985644e87.3.1755709733643;
        Wed, 20 Aug 2025 10:08:53 -0700 (PDT)
X-Received: by 2002:a19:6a07:0:b0:55c:c9d5:d32a with SMTP id
 2adb3069b0e04-55e06b2c9admr985630e87.3.1755709733113; Wed, 20 Aug 2025
 10:08:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250703215314.3971473-1-james.quinlan@broadcom.com> <wxrnpfu7ofpvrwxxiyj4am73xcruooc4kaii2zgziqs4qbwhgj@7t3txfwl24tu>
In-Reply-To: <wxrnpfu7ofpvrwxxiyj4am73xcruooc4kaii2zgziqs4qbwhgj@7t3txfwl24tu>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 20 Aug 2025 13:08:41 -0400
X-Gm-Features: Ac12FXxEAltzz83t9Vo30BMgxvMUR3R3Gcl6u1hUhsD-lsob_1vGPSB8mZn1q2I
Message-ID: <CA+-6iNw6t36LogOroyQ8wNLOrSYPOJB0nxijbzcs2UWjwFkMXQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] PCI: brcmstb: Add 74110a0 SoC configuration
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenz@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Cyril Brulebois <kibi@debian.org>, bcm-kernel-feedback-list@broadcom.com, 
	jim2101024@gmail.com, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000077dc8063ccf07a9"

--000000000000077dc8063ccf07a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 19, 2025 at 10:51=E2=80=AFAM Manivannan Sadhasivam <mani@kernel=
.org> wrote:
>
> On Thu, Jul 03, 2025 at 05:53:10PM GMT, Jim Quinlan wrote:
> > This series enables a new SoC to run with the existing Brcm STB PCIe
> > driver.  Previous chips all required that an inbound window have a size
> > that is a power of two; this chip, and next generations chips like it, =
can
> > have windows of any reasonable size.
> >
> > Note: This series must follow the commits of two previous and pending
> >       series [1,2].
> >
> > [1] https://lore.kernel.org/linux-pci/20250613220843.698227-1-james.qui=
nlan@broadcom.com/
> > [2] https://lore.kernel.org/linux-pci/20250609221710.10315-1-james.quin=
lan@broadcom.com/
>
> Have you considered my comment on this series?
> https://lore.kernel.org/linux-pci/a2ebnh3hmcbd5zr545cwu7bcbv6xbhvv7qnsjzo=
vqbkar5apak@kviufeyk5ssr/

Hi Mani,
I'm sorry, I thought I replied to this but obviously I did not.

Your points are valid.  Our PCIe HW block keeps on mutating, and each
time it does we add new code that is triggered off of the soc_base
config setting.  The end result is not easy on the eyes.

I  also have submitted the series "PCI: brcmstb: Include cable-modem
SoCs".  I don't think it has review comments yet, but I am guessing
that you will make the same points.

So it looks like what you are asking for is a refactoring of the
driver and, AFAICT, I need to first submit separate series that does
this before submitting the this and the cable modem submission.  Do
you agree with that?

Regards,
Jim Quinlan
Broadcom STB/CM


>
> - Mani
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

--000000000000077dc8063ccf07a9
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
75sSFMj27j4JXl5W9vORgHR2YzuPBzfzDJU1ul0DIofSWVF6E1dx4tZohRED1Yl/T/ZGMYICYDCC
AlwCAQEwazBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UE
AxMoR2xvYmFsU2lnbiBHQ0MgUjMgUGVyc29uYWxTaWduIDIgQ0EgMjAyMAIMSO43VW7D5NP1X/KD
MA0GCWCGSAFlAwQCAQUAoIHHMC8GCSqGSIb3DQEJBDEiBCCT4guGG458k9kmyct6iUtbPGQtSYOg
+Xy+OmyIBwk72TAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yNTA4
MjAxNzA4NTRaMFwGCSqGSIb3DQEJDzFPME0wCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjALBglg
hkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0B
AQEFAASCAQAk6pbT1CycczRqPZOeR3xK9p48qFnaLMXA4Rrjj8/BMR+OcQijl9ScUNvGKv/tqibU
DlOs0mMSOSc75kVh797/yWH4XZOkJUtx1mQk/nHXlfDZt8Dn6R37GTAa4EolyVJuMT7kh6yZdS51
CaAKLe/la79DSEzLxUhpC6yjdbLl5dtCJq8Ew9PYoXzJU88+nlj1icmHft/fQLVSyW9W/IjoRURE
irgOJv1b2pG//VZqaYIsn0UshyBRhBXd1y+hSUdVFxbBm3xvWbz2NxD1DZGdrr4Y1II27kAuNJE+
8oWuyCcfNBGW8yP3faOKXttJ/dDXryUGSq+Y9q+w7rsynNQG
--000000000000077dc8063ccf07a9--

