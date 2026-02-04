Return-Path: <devicetree+bounces-262748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHWrC2iEg2llowMAu9opvQ
	(envelope-from <devicetree+bounces-262748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:39:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA18EB0C8
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:39:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A4B2304E335
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC7032D7F7;
	Wed,  4 Feb 2026 17:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="JBMTt4iK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f227.google.com (mail-pl1-f227.google.com [209.85.214.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0942FFF9D
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.227
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770226626; cv=pass; b=uTaoDjVHaBau21K9+pEF+c1CxkaTqXKLUdKocgTB7WMs6T1KRzPQFYN/FUT6xUQBS3FLmuvrzbkoQrzykscFEKgzJ61KNFJLlYNR3e6aRlrxWbxS9KJlbymn57/WQwUpRNNfnxi02/TkdiqABdRjwNsh8a7J70j0rlEl5mDvGh8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770226626; c=relaxed/simple;
	bh=P+UHKFhl4UfUUouL6NE3ENuT15CcPQ26Q37Kjg37V+g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e9TLLJMFrvnfX5TF7iqdx/IkXQ8k5wp2ve2HDPmLXsTGWTZGuD4KU/HXXavMRV49MlAFAsGnAtOFi/l1d+fGB4F0n2DEXLSg3AqD942zFe8AolDyfmvgXbFhqP0PfFH11y47BB3WFKcUeTfOjfS6jOvXG/HXJyxnLqPjstVNIFQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=JBMTt4iK; arc=pass smtp.client-ip=209.85.214.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f227.google.com with SMTP id d9443c01a7336-2a7786d7895so547055ad.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:37:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770226625; x=1770831425;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EXdmEBf/T0r0RsK7BNUQzAHRYyMWEajJxUf2K76FyDs=;
        b=G85yikgjkFpySzpfQFSOSlbDEZOnTHQcBaPxz8NTrkZl5w8lGP7+K0qeTbpyKppMdx
         iCjkyaMInEsRMu3/dxXfLKzQ8lqt/f/pRE0PgmjevwPISQ2AzBVZI8eiY3sK7umG1L7l
         eBNYUR6Wya6BWRAskkxHxVjeAR9yGyZMZhrpmMZ2KhdRcp7s23DMiWoAtHpt9DJc6zIW
         9q4hl/ofeaGeWm8RkB9Z50aUKJyKy2dakyIpTOOFJDtMyn+Ku/6wdrsKczPhLHNgitRo
         Zn3TuY8nhM+HAy0pEsWsyTyBKtMFsOEKF59HzJDBbLkyoH4OOmzershcil2NZtDAZ5s0
         p0ZQ==
X-Forwarded-Encrypted: i=2; AJvYcCVif+1ZoXgXxsS5ybAkvj/yEQd9/rUDvKFlXZRVSCtiWpVkZhcIh+GLTago8K8n+od4Ga7vFiGj382j@vger.kernel.org
X-Gm-Message-State: AOJu0YyShcJW3nLMH0bkGgrKD5a5h1l0qnTXw7z8co7BZN3R2C1ftnR4
	A6/mis9gKhQZvmQ1CK91lvwKQbQwQDLa7X12E8hKk/sY90JVHGlpGJBwlhyJC9QaTizn5XhOQsu
	OhF7Ib7zk90PKKuKuJq1y0gVTbMIXA9sG7B7+3PJ709sjB28uGmqw0gPqEivlA+f7qBzx0+JEmW
	WepGqd2NuMe3KTm1jWTjMHo9KFF9b8iM9kIvmjBXx2QuRwuQYMHrlVCFOjgz6xDmDcQDV9fpKoK
	ooB/RNOhrDYj3Rwdw==
X-Gm-Gg: AZuq6aJuQ6oou1afQka0OYA7l+/wxDAIfUpwvtJFZ8/Ldf29ZfuD2/tSaG4ewi7bnuk
	qX1ByLTAka7lAQubKNcu7MWqmbW+PW9iy4j1FciiYDaQ9gdqRzwAW2Xnby2SzIliFBvkkcb9iK9
	22FA7GMEgzOXUJTNJ+OiwgTFg6qM2O/fQjDj1hMsscvnHH82Ys9wY5+67/b86OZfbrh4egewakm
	4jMlj4eOUUXWZbscS6rQIEua28PwpaCep8pq/Ef50GcleZOeTT1IAs0GdaiCqWGSCZXu63/igRL
	162wc9Jb/7TkvwHgABtFz6st9HEzhqDZ1rFEvkMYIm996I+0GHOJ5ErkwexZ4ptFz0iYrKF8JAm
	2fX9TVsJSz0v33Pe7Cw7Xwy+ezhfsX/ILdhtqe8xgHueIXrpZ4gHfDJLe7BeFeiV3a0TrYbqPo2
	XPi/oOupF5o6hI/9fSx7U2RCbi9Wz7qMy5rAVP3sp7KII=
X-Received: by 2002:a17:903:15cf:b0:2a7:8bf3:4656 with SMTP id d9443c01a7336-2a933ce9235mr34593225ad.8.1770226625071;
        Wed, 04 Feb 2026 09:37:05 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-0.dlp.protect.broadcom.com. [144.49.247.0])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2a933907922sm4298155ad.36.2026.02.04.09.37.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:37:05 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-79402e48414so111925347b3.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:37:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770226624; cv=none;
        d=google.com; s=arc-20240605;
        b=O+yespYn2uP1RAmanYIPNGh1C7zrWybZWMwph6Qu6S21XE1qgDTBwOiOz0PWXgk+xH
         dvGEA2X9+V4VQX3BUxs2Zm1Qw6ZS7EFzRTVwX6W6RW2Slu0s+WCkY+utB4fIs+Kahaax
         RMr0e7fz9oJVo56mclHph3wo6kX5Dkco7EwikiuLh6NuOCibw142vF6Vze4HCwNh6Ftf
         Vx7Eg5pE2lyA8K/XxKPB1z1pN2fidnjOFY+Ws5LNk9UY38Hrdv8J1l0+bKCmiBlrlhnr
         OIuF7YLWcU71UpzFoZ8JzwvEjZ52w24xdkSTr1IaVkNFxoUSyy0AqavyErK1TZGXYS1Y
         DUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EXdmEBf/T0r0RsK7BNUQzAHRYyMWEajJxUf2K76FyDs=;
        fh=C1sD1BmH19RAzPB6XWmK75T6xVdGE8e9pgRzagXIgFg=;
        b=YkEgbdqPHrw+rrM0Id7q5kqI//K4zSrWvFG0SrDcMXQ/gDjcA2w/6XyQs6eSwvIyfc
         QTtiSCQ2lG4DZ6JKl1iGm0fHlXp6+GrobrsbeG37pW37UwcmFHbp86sM7/+dwkDmZRkR
         vU1P4y4sh6TPhhQhtvYuIrTSdvBoNs7JOE/9/Ag2FYGzMvxZDqrLjDurGrZBkMTcx9XC
         5ve+dcaFBv5eRTMyVl341lXrN4Qf3P3yyxqD/kBlbRFCi7IktMqnAsbUzov30dEcL/VU
         qCyoPj0DNDchdVcij96AvPyAVo6SFu4H9vWdZ/Yz2w4sz9HioUcfiW+hGQKYylYo1Ysv
         6s6w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1770226624; x=1770831424; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EXdmEBf/T0r0RsK7BNUQzAHRYyMWEajJxUf2K76FyDs=;
        b=JBMTt4iKCGl7vilwsNPJ0t7qaUaS2/X/unumb00Tw3JEPgZIJL9r0VxVWLxtJShA04
         MMN2aKffGyuhozTc/LD6j2xMMp/IOIoSEDq3nrfdRP6pDrcoTocVXkZgBvm0cz7KY8r3
         OMs/+Ydh2/ACXsAxHRbwqxHpR2trje55lTxgY=
X-Forwarded-Encrypted: i=1; AJvYcCXVqPAPjDIe7uL7Z7KS55TFFCa0ATpJT07OPldXBg8hWFE+MPQGh/PTNKlWEZeG161o4i/qPqibGHLl@vger.kernel.org
X-Received: by 2002:a05:690c:f83:b0:795:616:434e with SMTP id 00721157ae682-79506165481mr21364607b3.16.1770226624044;
        Wed, 04 Feb 2026 09:37:04 -0800 (PST)
X-Received: by 2002:a05:690c:f83:b0:795:616:434e with SMTP id
 00721157ae682-79506165481mr21364367b3.16.1770226623690; Wed, 04 Feb 2026
 09:37:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260204091530.624230-1-miquel.raynal@bootlin.com>
In-Reply-To: <20260204091530.624230-1-miquel.raynal@bootlin.com>
From: William Zhang <william.zhang@broadcom.com>
Date: Wed, 4 Feb 2026 09:36:51 -0800
X-Gm-Features: AZwV_QiU3tpcZ48uU6A_orwOiMfRqg8-zqTOfE1LPWcodOns4JrZyntSGsmujYQ
Message-ID: <CAHi4H7EVLsgVL5KCERTX5XBNTMvZDNxePzo48Zp5dsfDdoCV1Q@mail.gmail.com>
Subject: Re: [PATCH -next] ARM: dts: BCM5301X: Drop extra NAND controller compatible
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, zajec5@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000001d4028064a03012a"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,bootlin.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-262748-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[william.zhang@broadcom.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[broadcom.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,1.19.21.224:email,2c0:email]
X-Rspamd-Queue-Id: 6DA18EB0C8
X-Rspamd-Action: no action

--0000000000001d4028064a03012a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 4, 2026 at 1:15=E2=80=AFAM Miquel Raynal <miquel.raynal@bootlin=
.com> wrote:
>
> Fix the dtbs_check warning introduced when the brcm,brcmnand fallback
> compatible got removed for iProc machines.
>
> Fixes: 4db35366d6dc ("dt-bindings: mtd: brcm,brcmnand: Drop "brcm,brcmnan=
d" compatible for iProc")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>
> The above commit is in mtd/next and will be part of the opening merge win=
dow.
>
> ---
>  arch/arm/boot/dts/broadcom/bcm-ns.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/b=
roadcom/bcm-ns.dtsi
> index d0d5f7e52a91..46b650abdb90 100644
> --- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
> @@ -479,7 +479,7 @@ thermal: thermal@2c0 {
>         };
>
>         nand_controller: nand-controller@18028000 {
> -               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1", "=
brcm,brcmnand";
> +               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1";
>                 reg =3D <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f=
00 0x20>;
>                 reg-names =3D "nand", "iproc-idm", "iproc-ext";
>                 interrupts =3D <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;

Acked-by: William Zhang <william.zhang@broadcom.com>
> --
> 2.51.1
>

--0000000000001d4028064a03012a
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIVXQYJKoZIhvcNAQcCoIIVTjCCFUoCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ghLKMIIGqDCCBJCgAwIBAgIQfofDCS7XZu8vIeKo0KeY9DANBgkqhkiG9w0BAQwFADBMMSAwHgYD
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
rSQ3y0VaTqBESMjYsJnFFYQJ9tZJScBluOYacW6gqPGC6EU+bNYC1wpngwVayaQQMIIGkzCCBHug
AwIBAgIMPaigUjJ79aI7cqBlMA0GCSqGSIb3DQEBCwUAMFIxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
ExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBSNiBTTUlNRSBDQSAy
MDIzMB4XDTI1MDYxOTEzNTIwOVoXDTI3MDYyMDEzNTIwOVowgdoxCzAJBgNVBAYTAlVTMRMwEQYD
VQQIEwpDYWxpZm9ybmlhMREwDwYDVQQHEwhTYW4gSm9zZTEZMBcGA1UEYRMQTlRSVVMrREUtNjYx
MDExNzEOMAwGA1UEBBMFWmhhbmcxEDAOBgNVBCoTB1dpbGxpYW0xFjAUBgNVBAoTDUJST0FEQ09N
IElOQy4xIzAhBgNVBAMMGndpbGxpYW0uemhhbmdAYnJvYWRjb20uY29tMSkwJwYJKoZIhvcNAQkB
Fhp3aWxsaWFtLnpoYW5nQGJyb2FkY29tLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
ggEBALBa4WsRxbnpowbqT9/K1B0+Fmm/xDtPPHKbcdL+yvZ2PemlfcBwapeHvbu53TO6TTBCtmSi
PRi27wH/XHTDMdyL0Org+kxniXue6MSNJvcQwaLO/UQrmgTygBlVGa+Qg9ZFfS00xvuqeYH7tImO
48WiXeu9rgn5KTH0IWP1+R74KIgxJQ+65la+caZvxwC9V3ik5p/LOGA2qS4GEjGuaYF8QKhRTR4h
/QBSktqZLbzVxpjJXrqFTA2BLlYRp9hPhqNxbn46WuLufpMWhFtjUoQi/8fRRWRsMAY0o1J0f+kB
6EI8FoxPTOpvuLRonqHIWMHk5YRnDdqJ3G5Oc8zmV+UCAwEAAaOCAd4wggHaMA4GA1UdDwEB/wQE
AwIFoDAMBgNVHRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDov
L3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5Bggr
BgEFBQcwAYYtaHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUG
A1UdIAReMFwwCQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUF
BwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDag
NKAyhjBodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwJQYD
VR0RBB4wHIEad2lsbGlhbS56aGFuZ0Bicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQw
HwYDVR0jBBgwFoAUACk2nlx6ug+vLVAt26AjhRiwoJIwHQYDVR0OBBYEFHjI7pbQZurVKsSRE/a9
7gUEyVCkMA0GCSqGSIb3DQEBCwUAA4ICAQCFA4fU1GnG8sY7kyUXp5tle+VeWveoWb272jPauU5R
w+udkhVXmnR0Kg7RgkCD00PLTKHNRyegXXDMArs3N9NhO3s9eSp9KjDh+h3WuQWCJH3QBHLGW0qE
fyV87wUtBIy/QsHwO4S8OlOZiXECR7V1EGIF6t3s0W+3UzgYeHL+Ttuhda+2wIVY0EbS0eNH9Vob
4YG17VTBBe7hyobXFpd9d1JGENFzIWncPUshOE0Wv7KlkrRc6aBOpL4p5xO1pHi9h9w8utyHkMoV
nefXixkn5YVHnuV/jbSF/IM4Mlqt0E+n/TRp2c0eR+1AauZKENV2syNBo4aMa0BkmikBjLSnDjt/
TYQdwHNWdV495n71idvueWwTFUhUsnudYcnh42eZENopBOYjVu2WhsffyrNz0hsuR85LriqSuBbf
drd9DMo3DgtfJ7hh4sEAhSw/x/Br86rfLBftZMU02htlnkOI9Tp1QuDsr9+MsqY6AjKeXAy67m7H
TVAZ9uyO9N20yU0p7igESOWKR1ccL1TPA1jrSHK18Y75ot5199FNWeE/UKoDKSML39iPZho9XPh/
/RlsfRFiVOPrI5Gwi4YfIfi0jjEWf310/CYEmA5jrp5gUQSdo/+FgfXLKDFiEHCf5b3B1l70r6bR
WkDCNNacYJWZtSp87i6jmw+l5xx7OkEJ9DGCAlcwggJTAgEBMGIwUjELMAkGA1UEBhMCQkUxGTAX
BgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExKDAmBgNVBAMTH0dsb2JhbFNpZ24gR0NDIFI2IFNNSU1F
IENBIDIwMjMCDD2ooFIye/WiO3KgZTANBglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQg
LAfEIO6TitoCgvq9eGfWzrHGIe3NRaAZeo1i9+CVLrEwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjYwMjA0MTczNzA0WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFl
AwQBKjALBglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzAL
BglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAHpLeJX1oOmxmUuPSNT1VEN8ebED7UcN+EUOX
MFknZHLvXs69NX/D01bPZlWNznINq/8yeJYFHShVIEYmOEdeZl/bmC0crhX6TGslpuDo8DQL5nAY
XSk4soAj5A+1PWS6csPwt/aZZJ4kbENhGEmXeElE9KBqN5ekRc9VPYIKpNUSpkaKGSOCdUfUvdHZ
04bYb73I5gtgTmtzPTpbUZp/yHJQxJpupbq7zUreX6EZ5cLWPriKWS/OtZqOkVPlmQeQ0Xx6EIht
oiKYTmC6fiAIM7W2eZ1SQR72zXnCgiqMbDGPhhguEUZWs/2oF3Y+5lj0JiFvqg7GKl67hcw105eX
2A==
--0000000000001d4028064a03012a--

