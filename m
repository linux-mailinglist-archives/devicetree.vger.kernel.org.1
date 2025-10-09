Return-Path: <devicetree+bounces-225054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EABBC9D50
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 17:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 477233E7C0E
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 15:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9774A217736;
	Thu,  9 Oct 2025 15:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="TpQb9eeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f227.google.com (mail-pg1-f227.google.com [209.85.215.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A7821770B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 15:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760024491; cv=none; b=TbuuF0fKfzIJLeQxfPPhhdY7mfbGuan8DIEFLYWPPOlG13hxoZ7wkV1UWlGvzOFx1msLxB9s0uyYm9X7NdSp4uCd4T3+gQnys+B7+7ERYLsAZZFE8YIlaVMt3c9Reyn4opFb9zELKMApvPLIXRmMGJ874B1mFhThGDXW9sgeU18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760024491; c=relaxed/simple;
	bh=ULqk+pVG/xrUFgiYD+N+Qcu5CpFxzfsSQgh9oH9WmJ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=re4yBZDZQjetMDZxj1jj3FS2dKat83uGos3PBZNGqhVKRxv6/FPe10uQbPjNOPouBfTY0xtbKGOENVt3WLfN8VSmrqblqBSwnQ9j5zTYahADKYZiskel10SDrFABNOPoU+ELwobTQdCd/GvWkD4K1MpIpm7tPH7/Q8zxCYaMlCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=TpQb9eeq; arc=none smtp.client-ip=209.85.215.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f227.google.com with SMTP id 41be03b00d2f7-b553412a19bso692018a12.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:41:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760024489; x=1760629289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+IOqtnFQ3AG1+wAp0nabOmlt8cP9o96eS0MqgdGT35A=;
        b=cFZBYXfrN7KxNowapQAShDf+vficBKLv0vdhp7ATX2/g6Pzt3X1R/1drSzl1iPteV9
         tpmILJY3VG4Ko9Aj2LKWZRgWpvICfSvHibK/C0KhcECprLp7kGY8jj0hWtkuM+8UBV6D
         LC8SXKL9kvv3Y+iytze/vVaEgVHoIwBwmeBLRK3aE57ZGvCPm2HJ0NnG4o2g22G8bo9b
         oJhLVWtrb0cmQ/F8km1SFzarDyWdAkWdsFvOghdkjPaCLETcAI5dn8uhtNT3piz/BB7b
         LUpwOf8NSMwII3CpNeGCImQPuOv3GRSpicy6BNNPig6rl6eRObM/lstzhzEFOpaD225J
         WW5w==
X-Forwarded-Encrypted: i=1; AJvYcCVJtrtQmmlt54ENUzJEKNXN3BA0xUKjtx203o9Vs6Bm7uXFXHuqFBTI7XIlcmaKHa92o0FZ+qw4Oi6F@vger.kernel.org
X-Gm-Message-State: AOJu0YySCng5xEvqCon1JQZKZ+Eej5Rf+9nTXtvdT4NVaUPCQ5CHMzOg
	JinCeIXcJZGSJTrPXl15q+SJbEmqnTQNQcx6fPBSvpiwLaKF84FWlma9l/wAc9qEjRVrNKrGvtU
	Q8JK5d12iUftWGXkODyWif0sw/kT6EbhQkrxAi3KwrjV8P6b2riUk97qJsJCkZzlDBOzzad62Zp
	UdQOiCjaPo/VQc1NaRqi5+LO2Q/vzCdfEYGsqV08+Ji8/rZLovZT+sy8xLU0DVHat4CZEJ0w/pJ
	lW3zUYSQzjnCQ==
X-Gm-Gg: ASbGncsp4lFvKgOl+G/X9FIB2vX9sWCPY36muAXxhHojx8kc+2QWSti3DhGucFFb1n+
	6RgQjFNsDceeKh9mdtOcI+kcExK5C5+Imzp+GIYouiXtJY87yURHMyyk1wuvaNyJHTBGaX/T914
	WW8HLJ/H4wbgayh3viDIstk9AItPIfrHA81Hpq4K0S8z1R+dnhL9HiNJg3A4gDezxuL5cOg1xyu
	BWGICItnqyXYo87KtrI4avM9MW9XmJWQDgIvb5zakbIt1RdvQyy6RHUD+qmvXrnzIjb7YlJscy7
	4BazXOQ1BHPoyhq6GhXnvmPCd9qYtRb5RQdfwh2Tarzj7wT8to1K2n2s8W7xyBiph1e3tMyTNna
	KgS6EGmBRuXBZqpWlv23CYp/9HgQ5ZQO/cMZw3Ixl5OSm+M8uN/MbV4G6k6vkschXZi5ZEI3qqU
	iZ/Cxe
X-Google-Smtp-Source: AGHT+IGRNkOLKEu5jpEjyw+St2TlEHpWWsUQJthi8mZOoYv9mHaHhgf+pZzp8A1olsMPEs7E352+sj76HyiJ
X-Received: by 2002:a17:903:37d0:b0:24d:1f99:713a with SMTP id d9443c01a7336-290273ef0a6mr98494995ad.31.1760024489008;
        Thu, 09 Oct 2025 08:41:29 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-103.dlp.protect.broadcom.com. [144.49.247.103])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-29034e02b83sm2473465ad.10.2025.10.09.08.41.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Oct 2025 08:41:29 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-27eeb9730d9so15310795ad.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1760024487; x=1760629287; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+IOqtnFQ3AG1+wAp0nabOmlt8cP9o96eS0MqgdGT35A=;
        b=TpQb9eeqny7fiQAcUI9TOuR8bywcKqkvm2ESma9hOZ5+9IPpUtIDdT5hkGTFrsFTVE
         nABH6tZ1KWFYAF0OtCpDyYnyco2rO1b17fADqrRpSQWK3WZ70EIrDuOggf8oXdbrZ8u9
         WvCgDrremDr2eIk3xmLyXinjNDDVB4C/WqyHg=
X-Forwarded-Encrypted: i=1; AJvYcCVsQNgFRXipS8zHr+vgTooLW8viw7XP6yyrfX7NwiKAO0YaeutcTlwsOphehgxmYV7pEntbtugxCcWJ@vger.kernel.org
X-Received: by 2002:a17:903:38cf:b0:267:87be:505e with SMTP id d9443c01a7336-2902737c68bmr89776655ad.23.1760024487413;
        Thu, 09 Oct 2025 08:41:27 -0700 (PDT)
X-Received: by 2002:a17:903:38cf:b0:267:87be:505e with SMTP id
 d9443c01a7336-2902737c68bmr89776305ad.23.1760024486978; Thu, 09 Oct 2025
 08:41:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
 <20251001181641.1561472-2-kamal.dasu@broadcom.com> <20251008155639.GA3512742-robh@kernel.org>
 <7d96e604-e485-47c8-a0fe-64201f30eaa1@broadcom.com> <248d0898-2eca-4ba8-9669-cd3d1cd8ad1b@kernel.org>
In-Reply-To: <248d0898-2eca-4ba8-9669-cd3d1cd8ad1b@kernel.org>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Thu, 9 Oct 2025 11:40:50 -0400
X-Gm-Features: AS18NWCOssCw7IteD2OuF2RPMcPlJQudhAAfNtYjHkJlAud1l44gWSuyO8OBSHA
Message-ID: <CAKekbesFvxD_=UKcDyTPmZGUmU3d_RXvjY6RMVRkcKCNz_g+Cg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: hwlock: Adding brcmstb-hwspinlock support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh@kernel.org>, peng.fan@oss.nxp.com, 
	andersson@kernel.org, baolin.wang@linux.alibaba.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000650fec0640bba22c"

--000000000000650fec0640bba22c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok I will send a v3 with the explanation in the commit message for
both the patches.

On Wed, Oct 8, 2025 at 8:40=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 09/10/2025 01:39, Florian Fainelli wrote:
> >
> >
> > On 10/8/2025 8:56 AM, Rob Herring wrote:
> >> On Wed, Oct 01, 2025 at 02:16:39PM -0400, Kamal Dasu wrote:
> >>> Adding brcmstb-hwspinlock bindings.
> >>
> >> That's obvious from the diff. Tell us something about the h/w and
> >> convince me we don't need per SoC compatible which is standard practic=
e.
> >>
> >>>
> >>> Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
> >>> ---
> >>>   .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 36 ++++++++++++++++=
+++
> >>>   1 file changed, 36 insertions(+)
> >>>   create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,br=
cmstb-hwspinlock.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hw=
spinlock.yaml b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspi=
nlock.yaml
> >>> new file mode 100644
> >>> index 000000000000..f45399b4fe0b
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinloc=
k.yaml
> >>> @@ -0,0 +1,36 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/hwlock/brcm,brcmstb-hwspinlock.ya=
ml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Broadcom settop Hardware Spinlock
> >>> +
> >>> +maintainers:
> >>> +  - Kamal Dasu <kamal.dasu@broadcom.com>
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    const: brcm,brcmstb-hwspinlock
> >>
> >> hwspinlock is the name of the h/w block? Use the name of the h/w, not
> >> linux subsystem names.
> >>
> >>> +
> >>> +  "#hwlock-cells":
> >>> +    const: 1
> >>> +
> >>> +  reg:
> >>> +    maxItems: 1
> >>> +
> >>> +required:
> >>> +  - compatible
> >>> +  - reg
> >>> +  - "#hwlock-cells"
> >>> +
> >>> +additionalProperties: false
> >>> +
> >>> +examples:
> >>> +  - |
> >>> +    hwlock@8404038 {
> >>> +        compatible =3D "brcm,brcmstb-hwspinlock";
> >>> +        reg =3D <0x8404038 0x40>;
> >>
> >> h/w blocks rarely start at an offset like that. Is this part of some
> >> other h/w block? If so, then just add '#hwlock-cells' to *that* node.
> >
> > We've answered that in the previous review:
> >
> > The block is part of a "sundry" IP which has lots of controls that did
> > not belong anywhere else, for better or for worse (pin/mux controls, So=
C
> > identification, drive strength, reset controls, and other misc bits).
>
>
> And every time above explanation will not reach description or commit
> msg we will ask the same.
>
>
>
> Best regards,
> Krzysztof

--000000000000650fec0640bba22c
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIVUQYJKoZIhvcNAQcCoIIVQjCCFT4CAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ghK+MIIGqDCCBJCgAwIBAgIQfofDCS7XZu8vIeKo0KeY9DANBgkqhkiG9w0BAQwFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSNjETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMzA0MTkwMzUzNTNaFw0yOTA0MTkwMDAwMDBaMFIxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBS
NiBTTUlNRSBDQSAyMDIzMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAwjAEbSkPcSyn
26Zn9VtoE/xBvzYmNW29bW1pJZ7jrzKwPJm/GakCvy0IIgObMsx9bpFaq30X1kEJZnLUzuE1/hlc
hatYqyORVBeHlv5V0QRSXY4faR0dCkIhXhoGknZ2O0bUJithcN1IsEADNizZ1AJIaWsWbQ4tYEYj
ytEdvfkxz1WtX3SjtecZR+9wLJLt6HNa4sC//QKdjyfr/NhDCzYrdIzAssoXFnp4t+HcMyQTrj0r
pD8KkPj96sy9axzegLbzte7wgTHbWBeJGp0sKg7BAu+G0Rk6teO1yPd75arbCvfY/NaRRQHk6tmG
71gpLdB1ZhP9IcNYyeTKXIgfMh2tVK9DnXGaksYCyi6WisJa1Oa+poUroX2ESXO6o03lVxiA1xyf
G8lUzpUNZonGVrUjhG5+MdY16/6b0uKejZCLbgu6HLPvIyqdTb9XqF4XWWKu+OMDs/rWyQ64v3mv
Sa0te5Q5tchm4m9K0Pe9LlIKBk/gsgfaOHJDp4hYx4wocDr8DeCZe5d5wCFkxoGc1ckM8ZoMgpUc
4pgkQE5ShxYMmKbPvNRPa5YFzbFtcFn5RMr1Mju8gt8J0c+dxYco2hi7dEW391KKxGhv7MJBcc+0
x3FFTnmhU+5t6+CnkKMlrmzyaoeVryRTvOiH4FnTNHtVKUYDsCM0CLDdMNgoxgkCAwEAAaOCAX4w
ggF6MA4GA1UdDwEB/wQEAwIBhjBMBgNVHSUERTBDBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQB
gjcUAgIGCisGAQQBgjcKAwwGCisGAQQBgjcKAwQGCSsGAQQBgjcVBjASBgNVHRMBAf8ECDAGAQH/
AgEAMB0GA1UdDgQWBBQAKTaeXHq6D68tUC3boCOFGLCgkjAfBgNVHSMEGDAWgBSubAWjkxPioufi
1xzWx/B/yGdToDB7BggrBgEFBQcBAQRvMG0wLgYIKwYBBQUHMAGGImh0dHA6Ly9vY3NwMi5nbG9i
YWxzaWduLmNvbS9yb290cjYwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjYuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yNi5jcmwwEQYDVR0gBAowCDAGBgRVHSAAMA0GCSqGSIb3DQEBDAUAA4IC
AQCRkUdr1aIDRmkNI5jx5ggapGUThq0KcM2dzpMu314mJne8yKVXwzfKBtqbBjbUNMODnBkhvZcn
bHUStur2/nt1tP3ee8KyNhYxzv4DkI0NbV93JChXipfsan7YjdfEk5vI2Fq+wpbGALyyWBgfy79Y
IgbYWATB158tvEh5UO8kpGpjY95xv+070X3FYuGyeZyIvao26mN872FuxRxYhNLwGHIy38N9ASa1
Q3BTNKSrHrZngadofHglG5W3TMFR11JOEOAUHhUgpbVVvgCYgGA6dSX0y5z7k3rXVyjFOs7KBSXr
dJPKadpl4vqYphH7+P40nzBRcxJHrv5FeXlTrb+drjyXNjZSCmzfkOuCqPspBuJ7vab0/9oeNERg
nz6SLCjLKcDXbMbKcRXgNhFBlzN4OUBqieSBXk80w2Nzx12KvNj758WavxOsXIbX0Zxwo1h3uw75
AI2v8qwFWXNclO8qW2VXoq6kihWpeiuvDmFfSAwRLxwwIjgUuzG9SaQ+pOomuaC7QTKWMI0hL0b4
mEPq9GsPPQq1UmwkcYFJ/Z4I93DZuKcXmKMmuANTS6wxwIEw8Q5MQ6y9fbJxGEOgOgYL4QIqNULb
5CYPnt2LeiIiEnh8Uuh8tawqSjnR0h7Bv5q4mgo3L1Z9QQuexUntWD96t4o0q1jXWLyrpgP7Zcnu
CzCCBYMwggNroAMCAQICDkXmuwODM8OFZUjm/0VRMA0GCSqGSIb3DQEBDAUAMEwxIDAeBgNVBAsT
F0dsb2JhbFNpZ24gUm9vdCBDQSAtIFI2MRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpH
bG9iYWxTaWduMB4XDTE0MTIxMDAwMDAwMFoXDTM0MTIxMDAwMDAwMFowTDEgMB4GA1UECxMXR2xv
YmFsU2lnbiBSb290IENBIC0gUjYxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2Jh
bFNpZ24wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCVB+hzymb57BTKezz3DQjxtEUL
LIK0SMbrWzyug7hBkjMUpG9/6SrMxrCIa8W2idHGsv8UzlEUIexK3RtaxtaH7k06FQbtZGYLkoDK
RN5zlE7zp4l/T3hjCMgSUG1CZi9NuXkoTVIaihqAtxmBDn7EirxkTCEcQ2jXPTyKxbJm1ZCatzEG
xb7ibTIGph75ueuqo7i/voJjUNDwGInf5A959eqiHyrScC5757yTu21T4kh8jBAHOP9msndhfuDq
jDyqtKT285VKEgdt/Yyyic/QoGF3yFh0sNQjOvddOsqi250J3l1ELZDxgc1Xkvp+vFAEYzTfa5MY
vms2sjnkrCQ2t/DvthwTV5O23rL44oW3c6K4NapF8uCdNqFvVIrxclZuLojFUUJEFZTuo8U4lptO
TloLR/MGNkl3MLxxN+Wm7CEIdfzmYRY/d9XZkZeECmzUAk10wBTt/Tn7g/JeFKEEsAvp/u6P4W4L
sgizYWYJarEGOmWWWcDwNf3J2iiNGhGHcIEKqJp1HZ46hgUAntuA1iX53AWeJ1lMdjlb6vmlodiD
D9H/3zAR+YXPM0j1ym1kFCx6WE/TSwhJxZVkGmMOeT31s4zKWK2cQkV5bg6HGVxUsWW2v4yb3BPp
DW+4LtxnbsmLEbWEFIoAGXCDeZGXkdQaJ783HjIH2BRjPChMrwIDAQABo2MwYTAOBgNVHQ8BAf8E
BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUrmwFo5MT4qLn4tcc1sfwf8hnU6AwHwYD
VR0jBBgwFoAUrmwFo5MT4qLn4tcc1sfwf8hnU6AwDQYJKoZIhvcNAQEMBQADggIBAIMl7ejR/ZVS
zZ7ABKCRaeZc0ITe3K2iT+hHeNZlmKlbqDyHfAKK0W63FnPmX8BUmNV0vsHN4hGRrSMYPd3hckSW
tJVewHuOmXgWQxNWV7Oiszu1d9xAcqyj65s1PrEIIaHnxEM3eTK+teecLEy8QymZjjDTrCHg4x36
2AczdlQAIiq5TSAucGja5VP8g1zTnfL/RAxEZvLS471GABptArolXY2hMVHdVEYcTduZlu8aHARc
phXveOB5/l3bPqpMVf2aFalv4ab733Aw6cPuQkbtwpMFifp9Y3s/0HGBfADomK4OeDTDJfuvCp8g
a907E48SjOJBGkh6c6B3ace2XH+CyB7+WBsoK6hsrV5twAXSe7frgP4lN/4Cm2isQl3D7vXM3PBQ
ddI2aZzmewTfbgZptt4KCUhZh+t7FGB6ZKppQ++Rx0zsGN1s71MtjJnhXvJyPs9UyL1n7KQPTEX/
07kwIwdMjxC/hpbZmVq0mVccpMy7FYlTuiwFD+TEnhmxGDTVTJ267fcfrySVBHioA7vugeXaX3yL
SqGQdCWnsz5LyCxWvcfI7zjiXJLwefechLp0LWEBIH5+0fJPB1lfiy1DUutGDJTh9WZHeXfVVFsf
rSQ3y0VaTqBESMjYsJnFFYQJ9tZJScBluOYacW6gqPGC6EU+bNYC1wpngwVayaQQMIIGhzCCBG+g
AwIBAgIMRxplQYK7p3ShPUz7MA0GCSqGSIb3DQEBCwUAMFIxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
ExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBSNiBTTUlNRSBDQSAy
MDIzMB4XDTI1MDYxOTA4NDAzN1oXDTI3MDYyMDA4NDAzN1owgdExCzAJBgNVBAYTAlVTMRMwEQYD
VQQIEwpDYWxpZm9ybmlhMREwDwYDVQQHEwhTYW4gSm9zZTEZMBcGA1UEYRMQTlRSVVMrREUtNjYx
MDExNzENMAsGA1UEBBMERGFzdTEOMAwGA1UEKhMFS2FtYWwxFjAUBgNVBAoTDUJST0FEQ09NIElO
Qy4xIDAeBgNVBAMMF2thbWFsLmRhc3VAYnJvYWRjb20uY29tMSYwJAYJKoZIhvcNAQkBFhdrYW1h
bC5kYXN1QGJyb2FkY29tLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANYnWmzR
GGguz2PH40SpHaw/tESF4nlf3YYuxXpp0U9KEiIPEDcrxS6lcojBW16h3RppkY+lAbs0mzfPKysT
H0K0rs+X8O45xZIUJlxzf5UZex3BLi1f/H+08rSQULWEtO/ECwkFod2DIzSX7fZdz5RQ1PpziEOp
goo/JZPYIeCmgt3rIyvMuupj8Ymb0J/velhpXfQuYUM52viw2nmqVcxCwBqyM3Iq7eI4xtEOFRmR
wxSizd3MSQMf6GCHA4/B/6ttnxhGAr3utaOU+x/RnzG0gPLTW1XRAQ0+GVc/tGFdI864OG1cyrRl
GvBnHJQSAFOIKwYrUk2oFpgMbafQ6osCAwEAAaOCAdswggHXMA4GA1UdDwEB/wQEAwIFoDAMBgNV
HRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDovL3NlY3VyZS5n
bG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5BggrBgEFBQcwAYYt
aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUGA1UdIAReMFww
CQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUFBwIBFiZodHRw
czovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDagNKAyhjBodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwIgYDVR0RBBswGYEX
a2FtYWwuZGFzdUBicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQwHwYDVR0jBBgwFoAU
ACk2nlx6ug+vLVAt26AjhRiwoJIwHQYDVR0OBBYEFOV9h+N/T9ZsJ40qRxh7NYYD+N6MMA0GCSqG
SIb3DQEBCwUAA4ICAQAKtKh30wv1/30230mCimgUjMWQE/LImRmyfDgrp2IhBVS6mDun+wH8thEB
WhBHQMz3gsGixU4ZBJG72eWi39IzQ7CGnisJwA0+hsGaGg03AVtFtqo1rXYRZ81MEDOb6BPYLigJ
RsHbNmrUGR+LsGeUwOWUeRXqBrYaYFrkgHKvVK1NEewv+vUY08n4tsezO3jq0HKhVDY46bMbf8vL
oQqqhtcQvu2+5FK2jpUayeubpzPwobjEG61RIhBvM0KivY4CB2s9A7qgjL1XBycAybIvG03BbFoT
t282FqXwk9JU6YihLlt+hpzO9UF7E8GZYlQlVIZOLOvytqilhua+2h77Yy8Jz/FJyIXKuaLPtvb2
SC2shL7jF28kQbP3QUKwAig+cxwbpngnUkd9D9cXSHVq9PPwYm0A4eAO0YQ/80Uq20+gXF++g0sy
NKrrV3i0T1dbCd86miGDKvarGzjh7pdsdwNY15liGP6Orib1tnWkJcbtP1rJty4r/mbbxcK8ILO4
IvTGFG6BfjJ+La0aRt69i1fQmjUWHLwzkLNpw9cJH8/MONZcEJeDkq9WELSyy29bagStk5KHu7NO
TH65sZg+i/4qmj3DEeEGTr/Shzp4YWSNn4W7NEelr0VgDlwa7xqlwZjXxG4MIJqy0SsQlAwEXtqd
nH2FpJfzgAetkuyU6DGCAlcwggJTAgEBMGIwUjELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
bFNpZ24gbnYtc2ExKDAmBgNVBAMTH0dsb2JhbFNpZ24gR0NDIFI2IFNNSU1FIENBIDIwMjMCDEca
ZUGCu6d0oT1M+zANBglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQgtSx301wUKFdhp+nN
egMZAc3XfRpt+3PGSOz/MHPfIC8wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjUxMDA5MTU0MTI3WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFlAwQBKjALBglghkgB
ZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEw
DQYJKoZIhvcNAQEBBQAEggEAYwaVZa9Biad3m8cLEw2HTxAK3j8q3kyf/XsHildvsyq8emU9Upyr
2+yS4d3sQHPMjypMbBDwKvgCNtH3cZTv5SlicZ4VwGI+CG/o5+S8t1wfAB56fYGoMwAUoSCIXc8H
xLF3s+VPkADbce1x7I/jlFho0K7VgiFqVXJsAXjv0jLCdA1I9QLYeiyLTHCbZv1LYONXrWymR8V1
mjt8ip2/QrKP+y6eMv1vYhf2XANNZjLBhrGeIalLFAwo0/6l36QEWkPUZUpZrUqbP7PjfPAXkp6S
KLlhbZeuEtB8OBvzHfiQo2uYyv9T8VNlcbivkiOJaEThvN7+T/2GF2LhJ9B0EA==
--000000000000650fec0640bba22c--

