Return-Path: <devicetree+bounces-108787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C45A7993DA0
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 05:42:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56A40283D75
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 03:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2812E40858;
	Tue,  8 Oct 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="SbNYiBR/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499A740849
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 03:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728358943; cv=none; b=hMTZxefcTKxJm/j5GtWQs6fZT60Pn78N8ZT7SGPhDxiO2ddR+3i5bK3uYUI7qWepdjWA1BWuoUUsk8MAfcns2SnGP+S9LByiC9In9RQHkWpIgBhm4oql1rkZw+5Gc6eUxoFyo4MhiDqNggiZNkLAKHYOlN1fk5/f/dHPK7Jl9ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728358943; c=relaxed/simple;
	bh=LAX3avxmBONvvLzRgngbwDK6ModYcDan6vB3/Suq7Fc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bjj/gReJq/1Ovd06THxUbdtMRaNjhU6TxsiHKcsTicukGMWcCMDKoMeHdvfyGBw8A0xTCqHtWaNcpziz2lchPW47w/Us+869yP5KMGy/VvHZnjsrl75ojKNbqK4+0zBwDTk/ThwDSzYBg7fihy2ywRgT2shTsmv5D54DewtvC00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=SbNYiBR/; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53994aadb66so4594774e87.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 20:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728358939; x=1728963739; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YXGk1Xe8Nr0AunRsAkte/qCrtQTC6nI2ayrwCPzU7c8=;
        b=SbNYiBR/S/tkFkZUbcuhHmkqTxYVg0SOscoORb2+7Hc2ox5O7+OQfAF47mWFjIaPVy
         6fXJDIeBg702PhwXX774WJjalp6Ur+V066LSz2EE4USomLDtev1DrtJ+XSSsasS5rMz8
         Bu6Mc1JtddCg0EJQcXWGuqyMPm2KRV/BFUAFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728358939; x=1728963739;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXGk1Xe8Nr0AunRsAkte/qCrtQTC6nI2ayrwCPzU7c8=;
        b=reDLxngCPWTDMU6MzF020RXIZHA+O1gcssLAEdSArr23zLNiAkLZ5+HP1LNzLfobxE
         WvumOAOv9zu4YEsrDr9MxX49iAVEFwhy/XhvqJl40bUheYpKEzdGMvJCH3fm54ScFgR6
         F2oDxumZzSZYpx8+tT5JgKZltYIk4tbG9Hj7WlbyqJLmaJeLxgr6mXV7Okg4RUM+Zolu
         EqLlnNkv1LEMvJYQ3SFU3X3BSMaPdazayS7l7wWFRePLnX2m3K+dotNKptxfTjo1eFBJ
         dZVxqV+Qf2xrHVbC3ecEMKX2jNCF6nZfWX/PPt9f1/fTBFITZQbO6SCNDZ4tUFtcpnjj
         hikA==
X-Forwarded-Encrypted: i=1; AJvYcCW0DnrzWkK7+WBpjdJyUSf0P59dO/2ZLu+Kx9oSUtb0h8NTjAtLt5ChUrurmoaivI1ZoSK7hoZoKsSm@vger.kernel.org
X-Gm-Message-State: AOJu0YwGJUuHGiv9z2BkKg2Qh0WTLi96CZ78YjfmbwrIkMa4Ceana/YP
	nH5zWDnaMwIUo3Ld0N7URjVBcZ2gKC1hEm6MspaAcFpm5W9Y5HiTwBhFsGrT32GJs4Ph9v7Mw86
	xx5ynOj+OEc0hyQPZo+v300pH1xTaq6xiR9Fg
X-Google-Smtp-Source: AGHT+IHP5Qn+CH3sA3H4Xy2bhOI1ZxtBg0fL280wdAQq9OvqQHlFzkajSUYnx65X64+Vi1qZUBXKMRfiZ+VF/8t9ajs=
X-Received: by 2002:a05:6512:68d:b0:539:9064:9d04 with SMTP id
 2adb3069b0e04-539ab873f77mr6546111e87.33.1728358939218; Mon, 07 Oct 2024
 20:42:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1728313563-722267-1-git-send-email-radhey.shyam.pandey@amd.com> <1728313563-722267-4-git-send-email-radhey.shyam.pandey@amd.com>
In-Reply-To: <1728313563-722267-4-git-send-email-radhey.shyam.pandey@amd.com>
From: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Date: Tue, 8 Oct 2024 09:12:07 +0530
Message-ID: <CAH-L+nMoKyY26XD+oLXD3-JWGRW91=FdRFQSazKJEM_XxRk_AA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 3/3] net: emaclite: Adopt clock support
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, 
	pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	michal.simek@amd.com, harini.katakam@amd.com, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, git@amd.com, 
	Abin Joseph <abin.joseph@amd.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000a544720623eeec4f"

--000000000000a544720623eeec4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 7, 2024 at 8:39=E2=80=AFPM Radhey Shyam Pandey
<radhey.shyam.pandey@amd.com> wrote:
>
> From: Abin Joseph <abin.joseph@amd.com>
>
> Adapt to use the clock framework. Add s_axi_aclk clock from the processor
> bus clock domain and make clk optional to keep DTB backward compatibility=
.
>
> Signed-off-by: Abin Joseph <abin.joseph@amd.com>
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
> ---
> changes for v2:
> - None.
> ---
>  drivers/net/ethernet/xilinx/xilinx_emaclite.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/net/ethernet/xilinx/xilinx_emaclite.c b/drivers/net/=
ethernet/xilinx/xilinx_emaclite.c
> index 418587942527..fe901af5ddfa 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> @@ -7,6 +7,7 @@
>   * Copyright (c) 2007 - 2013 Xilinx, Inc.
>   */
>
> +#include <linux/clk.h>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
>  #include <linux/uaccess.h>
> @@ -1091,6 +1092,7 @@ static int xemaclite_of_probe(struct platform_devic=
e *ofdev)
>         struct net_device *ndev =3D NULL;
>         struct net_local *lp =3D NULL;
>         struct device *dev =3D &ofdev->dev;
> +       struct clk *clkin;
>
>         int rc =3D 0;
>
> @@ -1127,6 +1129,12 @@ static int xemaclite_of_probe(struct platform_devi=
ce *ofdev)
>         lp->tx_ping_pong =3D get_bool(ofdev, "xlnx,tx-ping-pong");
>         lp->rx_ping_pong =3D get_bool(ofdev, "xlnx,rx-ping-pong");
>
> +       clkin =3D devm_clk_get_optional_enabled(&ofdev->dev, NULL);
> +       if (IS_ERR(clkin)) {
> +               return dev_err_probe(&ofdev->dev, PTR_ERR(clkin),
> +                               "Failed to get and enable clock from Devi=
ce Tree\n");
> +       }
[Kalesh] Braces are not needed here for a single statement block.

Also, I do not see where you use this "clkin" in this driver. I may be
missing something as I am not an expert in this area.
> +
>         rc =3D of_get_ethdev_address(ofdev->dev.of_node, ndev);
>         if (rc) {
>                 dev_warn(dev, "No MAC address found, using random\n");
> --
> 2.34.1
>
>


--=20
Regards,
Kalesh A P

--000000000000a544720623eeec4f
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBWowggRSoAMCAQICDDfBRQmwNSI92mit0zANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAwODI5NTZaFw0yNTA5MTAwODI5NTZaMIGi
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xHzAdBgNVBAMTFkthbGVzaCBBbmFra3VyIFB1cmF5aWwxMjAw
BgkqhkiG9w0BCQEWI2thbGVzaC1hbmFra3VyLnB1cmF5aWxAYnJvYWRjb20uY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxnv1Reaeezfr6NEmg3xZlh4cz9m7QCN13+j4z1scrX+b
JfnV8xITT5yvwdQv3R3p7nzD/t29lTRWK3wjodUd2nImo6vBaH3JbDwleIjIWhDXLNZ4u7WIXYwx
aQ8lYCdKXRsHXgGPY0+zSx9ddpqHZJlHwcvas3oKnQN9WgzZtsM7A8SJefWkNvkcOtef6bL8Ew+3
FBfXmtsPL9I2vita8gkYzunj9Nu2IM+MnsP7V/+Coy/yZDtFJHp30hDnYGzuOhJchDF9/eASvE8T
T1xqJODKM9xn5xXB1qezadfdgUs8k8QAYyP/oVBafF9uqDudL6otcBnziyDBQdFCuAQN7wIDAQAB
o4IB5DCCAeAwDgYDVR0PAQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZC
aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJj
YTIwMjAuY3J0MEEGCCsGAQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3Iz
cGVyc29uYWxzaWduMmNhMjAyMDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcC
ARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNV
HR8EQjBAMD6gPKA6hjhodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNp
Z24yY2EyMDIwLmNybDAuBgNVHREEJzAlgSNrYWxlc2gtYW5ha2t1ci5wdXJheWlsQGJyb2FkY29t
LmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGP
zzAdBgNVHQ4EFgQUI3+tdStI+ABRGSqksMsiCmO9uDAwDQYJKoZIhvcNAQELBQADggEBAGfe1o9b
4wUud0FMjb/FNdc433meL15npjdYWUeioHdlCGB5UvEaMGu71QysfoDOfUNeyO9YKp0h0fm7clvo
cBqeWe4CPv9TQbmLEtXKdEpj5kFZBGmav69mGTlu1A9KDQW3y0CDzCPG2Fdm4s73PnkwvemRk9E2
u9/kcZ8KWVeS+xq+XZ78kGTKQ6Wii3dMK/EHQhnDfidadoN/n+x2ySC8yyDNvy81BocnblQzvbuB
a30CvRuhokNO6Jzh7ZFtjKVMzYas3oo6HXgA+slRszMu4pc+fRPO41FHjeDM76e6P5OnthhnD+NY
x6xokUN65DN1bn2MkeNs0nQpizDqd0QxggJtMIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYD
VQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25h
bFNpZ24gMiBDQSAyMDIwAgw3wUUJsDUiPdpordMwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcN
AQkEMSIEIKjlf0KS89PlqagJ2fba50Nw28KWNVdShRvQniV9zRKLMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MTAwODAzNDIxOVowaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQB1zluFElBl
HkX9HqF5xl6Ird1yrZhqv7P55Z87cwxLcINPXW2IvhRHL9KwwOnx5k+15GRQzHAlvh81xLAdR4MG
9C7dOoGFSEKZ1dK7994Em3TzII9tcW5WgGp8EFN9wBZCrrg/PjkXjIvMxoSt+8GeXjq+nFV6rd9o
JecX9b+Hk5x3UprYl9FPjuTw3aeo4h2f3e2+vk0JWpVyShspOadA9Orm/dlT5zlTrF56zm4fTZeU
KiAkf+k+8LVyNpr6AtpAOr8lo2ZLP79Z3azgWN+9Oeeejt9T0gwG0SMW3GxjJOP1MdLOD1iEB/ja
T4UzPqk3xpNfm3uskER/44dccdLD
--000000000000a544720623eeec4f--

