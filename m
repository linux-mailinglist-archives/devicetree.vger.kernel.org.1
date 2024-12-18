Return-Path: <devicetree+bounces-132344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0BE9F6AEF
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 17:20:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18C4F16481A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A471F37C7;
	Wed, 18 Dec 2024 16:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="E1Pn2o1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CB31A4B69
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 16:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734538844; cv=none; b=FpCvx6t0koWHSNJWw/XDOBZxcHU7s1tdhzF9k8jTh9CDlb6YbjbzY24+lymTLHkw/9AuUo4Vwoup7C68cTuuGG3GytjVpPDP3x99C+6/GEIWjsXtdbQ5kBeMBOGwG6XH/ORPKy/eQZpspeX4hebj09ll+Q2lEeo5Rau8L1SWcdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734538844; c=relaxed/simple;
	bh=Crp7mWR9pb+zGr5vLlZL42T/++U2VUpNYvhInMGU+EE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EF0W5axQQ+3rE76C8khu+kfg8LCrmRFLj1QRDZHXfiLgMsBYEEZzejr0g3zSkRF3Kq0wbfwNyWlxtD8SteokrBU5IeWX+FjQmWM/dNK2ZmE7HcRHzM07miupveVzGNnSVhx01sHwE584PhwOl39MpByJ2v8Fqj8EUYK5yY2Qf5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=E1Pn2o1x; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54024ecc33dso7232019e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 08:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1734538840; x=1735143640; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i9el+ucGD1YiQvGCByEGQSud3O6Tse+nxNThpP2bVps=;
        b=E1Pn2o1x8b5JSD5FnzRy+zB1YtbECVMfbdunQvkOOqMHJYjdnIIjZOOU8EKkFx5Id2
         jJ0RG0r4pFzc/Nx84gjuRe9NzLuauRM6lX2zUaEE2ANpgv4c7YrDTBsYMFNaMzsB4a7n
         BPIS8jNdgVoNwKgfqaWe/921ntHENz3+KP/N4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734538840; x=1735143640;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i9el+ucGD1YiQvGCByEGQSud3O6Tse+nxNThpP2bVps=;
        b=UWXJg+vbMjoAmn0i6mRBe/3o4tY3X/v7gHMbePZxYgYyioUDA5p16JSwEnMQKmzwBy
         bqIdJfyWjnJB4F1Vy8XbCKUAf9fkyiyvw2l3Hor6vdypY+fvmxhwVYFKDthxA7Pr+Wpl
         I0WcfyHCp5FrkCXdTp9blnoi6fXoz5YXNrQWRg4yZT5BfziwCRbJSk3XAx9m5u3CnrqS
         zsN9t0ZQc9vQi7m6wG6ZZFDYSuaRLoKxu5m8+bqhSLN56qjGcR/od69ndFCGGmSY1uPt
         TUQTbY/IqDZMtP37dGvUPbG4BU07NJV0iD95n5GgA0gF8RAth4TgCnnpbPNJO4Pj9tcj
         Ichw==
X-Forwarded-Encrypted: i=1; AJvYcCV4UIcYC0azpGLj1j7AwbwG/YK5SuWmhpw7RCRRoyaF9LZ2ckTk/tltvtuwYC3NXGNQ1F04XHtyJJzO@vger.kernel.org
X-Gm-Message-State: AOJu0YzzhsxWwvr67v3uBKQfoZV1EW8Kqb81zKGL/m/VloJl2TT0ji2h
	tqPPUnai/02TtSjxfA5f0mfgmTSlUeH3WIvQ1DYkQJdF/8JaSbVkeEc0CaNlVV4AHhxXpA1OUUJ
	RQFwzQOvI3KjAMyIchiBXgNL+YG+0um5AHcWQ
X-Gm-Gg: ASbGncsL4/sKPybNhueDAVkE4wTzppciHN8eJIoN9PnD/Hd3Ws5ecj6Ds4UwYEdPQ+j
	K8sRrZyx8umlF/8ULx5746zN3Q27eXZ4q1DvCeuk=
X-Google-Smtp-Source: AGHT+IHPR12/buKMZ0hHVlYG+m7Psb/jp38L07d6lQgBRaffV8bsiA/VtiLkBrTXSIr1xkOGNxKVNTd4vBeI9TVWsiw=
X-Received: by 2002:a05:6512:3996:b0:540:5253:966e with SMTP id
 2adb3069b0e04-541ed901567mr1278594e87.44.1734538839568; Wed, 18 Dec 2024
 08:20:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025124515.14066-1-svarbanov@suse.de> <20241025124515.14066-7-svarbanov@suse.de>
 <f0a734d9-6bf6-4d28-b30b-99b6be9f62dc@broadcom.com> <ab136131-a306-4344-adaf-904e3b32326e@suse.de>
In-Reply-To: <ab136131-a306-4344-adaf-904e3b32326e@suse.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 18 Dec 2024 11:20:26 -0500
Message-ID: <CA+-6iNytvANeUb3ugW0q3B18MTNwnJps_yggonKRjXh_sTWHmA@mail.gmail.com>
Subject: Re: [PATCH v4 06/10] PCI: brcmstb: Enable external MSI-X if available
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Jim Quinlan <jim2101024@gmail.com>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, kw@linux.com, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrea della Porta <andrea.porta@suse.com>, 
	Phil Elwell <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000006838c006298dcb93"

--0000000000006838c006298dcb93
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2024 at 9:54=E2=80=AFAM Stanimir Varbanov <svarbanov@suse.d=
e> wrote:
>
> Hi Jim,
>
> Thanks for comments!
>
> On 12/11/24 10:01 PM, James Quinlan wrote:
> > On 10/25/24 08:45, Stanimir Varbanov wrote:
> >> On RPi5 there is an external MIP MSI-X interrupt controller
> >> which can handle up to 64 interrupts.
> >>
> >> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> >> ---
> >> v3 -> v4:
> >>   - no changes.
> >>
> >>   drivers/pci/controller/pcie-brcmstb.c | 63 +++++++++++++++++++++++++=
--
> >>   1 file changed, 59 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/
> >> controller/pcie-brcmstb.c
> >> index c01462b07eea..af01a7915c94 100644
> >> --- a/drivers/pci/controller/pcie-brcmstb.c
> >> +++ b/drivers/pci/controller/pcie-brcmstb.c
> >> @@ -1318,6 +1318,52 @@ static int brcm_pcie_start_link(struct
> >> brcm_pcie *pcie)
> >>       return 0;
> >>   }
> >>   +static int brcm_pcie_enable_external_msix(struct brcm_pcie *pcie,
> >> +                      struct device_node *msi_np)
> >> +{
> >> +    struct inbound_win inbound_wins[PCIE_BRCM_MAX_INBOUND_WINS];
> >> +    u64 msi_pci_addr, msi_phys_addr;
> >> +    struct resource r;
> >> +    int mip_bar, ret;
> >> +    u32 val, reg;
> >> +
> >> +    ret =3D of_property_read_reg(msi_np, 1, &msi_pci_addr, NULL);
> >> +    if (ret)
> >> +        return ret;
> >> +
> >> +    ret =3D of_address_to_resource(msi_np, 0, &r);
> >> +    if (ret)
> >> +        return ret;
> >> +
> >> +    msi_phys_addr =3D r.start;
> >> +
> >> +    /* Find free inbound window for MIP access */
> >> +    mip_bar =3D brcm_pcie_get_inbound_wins(pcie, inbound_wins);
> >> +    if (mip_bar < 0)
> >> +        return mip_bar;
> >> +
> >> +    mip_bar +=3D 1;
> >> +    reg =3D brcm_bar_reg_offset(mip_bar);
> >> +
> >> +    val =3D lower_32_bits(msi_pci_addr);
> >> +    val |=3D brcm_pcie_encode_ibar_size(SZ_4K);
> >> +    writel(val, pcie->base + reg);
> >> +
> >> +    val =3D upper_32_bits(msi_pci_addr);
> >> +    writel(val, pcie->base + reg + 4);
> >> +
> >> +    reg =3D brcm_ubus_reg_offset(mip_bar);
> >> +
> >> +    val =3D lower_32_bits(msi_phys_addr);
> >> +    val |=3D PCIE_MISC_UBUS_BAR1_CONFIG_REMAP_ACCESS_EN_MASK;
> >> +    writel(val, pcie->base + reg);
> >> +
> >> +    val =3D upper_32_bits(msi_phys_addr);
> >> +    writel(val, pcie->base + reg + 4);
> >
> > Hi Stan,
> >
> > It looks like all this is doing is setting up an identity-mapped inboun=
d
> > window, is that correct?  If so, couldn't you get the same effect by
> > adding an identity-mapped dma-range in the PCIe DT node?
>
> Yes, that approach could work, I verified it.
>
> Do you want me to drop this patch from the series and make the relevant
> changes in PCIe dma-ranges properties?
>
Hi Stan,

Yes please, that was what I was hoping for -- the less code the
better, assuming everything still works :-)

Thanks & regards,
Jim Quinlan
Broadcom STB/CM

> ~Stan
>
>
>

--0000000000006838c006298dcb93
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
MA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCBFED7/qjrkPTzucAY7hjTJNrRD+6+F
nyPLFdKyQbzBOjAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yNDEy
MTgxNjIwNDBaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjALBglg
hkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzALBglghkgBZQME
AgEwDQYJKoZIhvcNAQEBBQAEggEAcL5nW3j7McrTrwLnVFCNqj0JPbjzTEBlo3oMFk6EEL4o41MC
yURD/0xnl6G0cDb4NTCX1/uIaCSD+zWOVzPm+NABhkYepgDA82CSDd2ip08w7wuM6paOA97mep0g
CSHXGLttSdoqGmSKnJsurJ+VfXaGmSKynTkBTq2sp3kUMapwObjrToj2OtMT12PIIT6jWy764Yv1
SdPC3c0woFRcDI1nnRe3SW2FzdIK7W5USaf08uICc30KNRIuXzZYol8ZWSrOV+rlsAef7K1O/Xzc
kpkdmliwxmMFK+V5GyswfGP5zHtm/KOzZEC/NpUVfAjJZWMT7DCm1+H9ru4dZi76MA==
--0000000000006838c006298dcb93--

