Return-Path: <devicetree+bounces-261267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPk/GZbefGmpPAIAu9opvQ
	(envelope-from <devicetree+bounces-261267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:38:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F18BC915
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1584F300F9C1
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057DC342C93;
	Fri, 30 Jan 2026 16:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="hMdO+X1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f99.google.com (mail-yx1-f99.google.com [74.125.224.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8584E322557
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.99
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769791122; cv=pass; b=sQiEDl1SrOPIGsFLIwZBqtQ1Y1ctSB8eEYViWKhrf0DqBHCqTR1OdWHwnklIGV5AbplhjVdZSeGtwiUxYKvIBK4vZfrpFkAw1iMdX5UTB1/cAqpxolhdzLqDBWjutpghL/rH2NThY5SFQ30e3RH4/baxXOx+5LHO/dc0l9NwbmU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769791122; c=relaxed/simple;
	bh=T6iiOeK1En+3IY7BtWbLpEpj8AjX5XmIwsgO/n0gm0s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O0q0SLQZuiBozqWxYY62WjVjF6UewLDoeFGbPlJZOziFzFtRcBDX98UaXIPGvbFAqKSVnIbGtzoGDklcmDKi2Pr+eycA2wCBU+wim//d8lLxBLGkKw8SuJ82277s75KQY5IxBsCZ19sudNRm30rBMmdEcMSGTlSvP9mocq+hbeA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=hMdO+X1U; arc=pass smtp.client-ip=74.125.224.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yx1-f99.google.com with SMTP id 956f58d0204a3-649523df010so2319642d50.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:38:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769791120; x=1770395920;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x2YdwCkUfjufLgKjigNts6kcf1OAPNZLgNQh7UChj1I=;
        b=XxKXv7KKSdf6z6qBe5bAp8DM9heo96E3G9wFVbcYZLwt0rkT/ZBG4q1eF553L0CImR
         xoZfwegToPHd1Ywlnz6/8XFpJsdNxuLDvibPikyzP5SDy44v9Dr7iPjcUhsYXXn/xe3e
         8qdVIVJaoU92zQZp09IfbhASo0kv1jEyg7lQ7W3hhY3n4UFUdGMm2sSVmPKGI6ey6iQg
         30ise0idFvqMl2ESiZjaOMRPEh4YtuFj5JQ39rQXX9vLwPWuqVmKlPTWWoqoJx3TN/PO
         skKIHV2qJ7qyDSCxhKKIcjdJ8gu7aBp15JFb3PQAZNr5n2zEX0u630WVkS5LqTRXuV4s
         HTeA==
X-Forwarded-Encrypted: i=2; AJvYcCUz2m/oYx6Tnof+j/H31LYY8S4eEG3WXPXmujdfGTbS43+F7VC9EqcHo3zgeUAksOV7oK5aZTwYDFFu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8FqSBl2UfhIIzqM/yTzHQAMm0TF5rUYo475zAISNCbWYgd64n
	9sr0F90NueoFcyyEGPGq/B12p7EtPK5zZoetl325WDaStz0mg3ChgWZvSJWg8Kj7za2pO9Ywp8l
	sQ5StCOVGpjmBYFP5yFazUm/AZWjUJMNoGJNUKZ9qvSDn2JxdTboqCHqQTvgXF9ey9yw5oCwPgZ
	ZZcY9OQGzPRKAuKa17OZnLyFJI4b6fEjdqW/R0FpOuYj19HN3WHJBUmW7UHNGyU/8RBtaHO/bH3
	EbxkmYZVVuC
X-Gm-Gg: AZuq6aJ+yYRJ+Fm6aSGYeKDyl+do5yKj5aSLdunXK/SkaMK9vFoUCbDORLgVuLQJkrJ
	FNEUMj+D/tZJa7Yt1sQMT5CshiwWNhAB9kkvHJ1T8o8C6nEqReP5b9sleceXwyngBTb1yzrAZg5
	QlT8e7JzDwaPDXCUUgRCFOFtHzWiH0xtJcCVhZfB6etB6kB+D7DQT7D7mT403GKwWSk3ry/TudY
	iBpO9FZGB/28tXakXtPAnFgKuKuZ2TAEify/KKT6vr/EKkgXW7lEZBj3qA0Cobgiam51qsYEV6e
	nHioM4743PBgoVEWeLakHjAOPrrXUzijV0rQxQ2DTWAw51zy00cRxB2ewj+qpg4eQSnILJEO6ho
	7zIUVb0oNqiHBTOAvFgkYCQTLTvICLEm8/zp6p/C6VxtK8gCrYpoCVp3lMERZaaNQcVCuMTm6EM
	iXfmOr1NidCbNBWxoRzgiVYSFB9q+SaBBGfK1uHw==
X-Received: by 2002:a05:690c:c50d:b0:794:192a:9b85 with SMTP id 00721157ae682-7949e026a2amr33978717b3.59.1769791120414;
        Fri, 30 Jan 2026 08:38:40 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-17.dlp.protect.broadcom.com. [144.49.247.17])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-794828b6e74sm4656437b3.22.2026.01.30.08.38.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jan 2026 08:38:40 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-894a861fd7cso75667696d6.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:38:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769791120; cv=none;
        d=google.com; s=arc-20240605;
        b=KcaUSeA4oW+PsA+Zx1QKnqezR1/luE+Aso+DvCczd70q7Ynt8o7+G9g10mn1GbiEQl
         CurKRqgn0zegfnzWAsw/kgavvady1D0OJjiAwsRsb9bnjQobZNecjfyyPjBRTfPZsEtK
         5RVVyYrqU3R6U8Sx/bdqlIeFiALvbTuMK9fy/BMXlQggUKsRgcUHem1MCkIuJYbZjuCb
         TAyPzO1OBZkEjSuv6/9AYdF50+UN1piteCjP08ZQ2ztn/YfoRdjcUCFNjIOSbrFUreu4
         Ta60Yx7duzewErRISUG9V8i072OBZnAUpL8y8xTA0FDWQuVJJ8JcsWYPN6MpSpXlJdj+
         eRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x2YdwCkUfjufLgKjigNts6kcf1OAPNZLgNQh7UChj1I=;
        fh=gvKdX1mThBNJ75+cGJ4O3WCI7bDlE1dv3lKr50qKAEA=;
        b=fRAM4ISDt7a9q23YbSQVCXRoC/2NQj0a/49GbvPzZH5HgcisqnSwLUsbXx1psDenuO
         77jzOpGF9zEtAh/xKvGj9aygqduO2xSiU0lVprbeZTRPeYOFJtdrdm2HOjoP7CSev3QL
         NTjdd+C+aH60JhdabCvkl3ui1XEPkLdIiOlV8d7TKOT1+inoj3NpGRQ1OG6gdFNgXn+x
         9Sl5BeLQ1a8U2cKT+7MqMWaAiOppdx0Wm3Q88V19QeNHNOCitagY+7gf5bSTHcBqb/tW
         C1m5pOkJ36PJYyRTVyYv8ld0ssxjFlV600YjFKiNegzBY7JzwCyYXpaGv2P/XnaW004X
         kytQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1769791120; x=1770395920; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x2YdwCkUfjufLgKjigNts6kcf1OAPNZLgNQh7UChj1I=;
        b=hMdO+X1UkfQfpxCdwu3W46GWK4sUWufMLNbrpCSog2ZS6XpU9gF/Jynn9TfEUrBVzs
         kH1X2W3gX5JPLApL79YEuM/IZL7VV6L3Y/PwrByUMxAGSBba3vfXMJkMSZJqgK8/Ig6R
         BSttSEMwa1BHEO+VSnUIasUoHnz0jegSn3RjY=
X-Forwarded-Encrypted: i=1; AJvYcCWReO8yhIwy6WQXkCsEHPgA8mJlfvjq1yiJ8C8hVLPnwBlrrklcUh/Q3u1yvkdVAlyeWnE4flON3ILy@vger.kernel.org
X-Received: by 2002:a05:6214:3013:b0:894:717c:93db with SMTP id 6a1803df08f44-894e9fb7c7bmr49163506d6.14.1769791119633;
        Fri, 30 Jan 2026 08:38:39 -0800 (PST)
X-Received: by 2002:a05:6214:3013:b0:894:717c:93db with SMTP id
 6a1803df08f44-894e9fb7c7bmr49163156d6.14.1769791119003; Fri, 30 Jan 2026
 08:38:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129002810.10261-1-jun85566@gmail.com>
In-Reply-To: <20260129002810.10261-1-jun85566@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Date: Fri, 30 Jan 2026 08:38:26 -0800
X-Gm-Features: AZwV_QiViFMy94a-CtAEmEi_uPcey5Hky_U7msGKUe4UT3ExOPuAZoWFRNRf7y4
Message-ID: <CAJ8Y1dSoin-53s4odwp6ZFZfactLD-HD1h8DpysTZdk-JEDuPA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: broadcom: ns2-svk: Rename at25 node to eeprom
To: Lee Yongjun <jun85566@gmail.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000000952ec06499d9bac"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MIME_GOOD(-0.20)[multipart/signed,multipart/alternative,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261267-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ray.jui@broadcom.com,devicetree@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,broadcom.com:email,broadcom.com:dkim]
X-Rspamd-Queue-Id: B5F18BC915
X-Rspamd-Action: no action

--0000000000000952ec06499d9bac
Content-Type: multipart/alternative; boundary="000000000000f9aee706499d9a1d"

--000000000000f9aee706499d9a1d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 28, 2026 at 4:28=E2=80=AFPM Lee Yongjun <jun85566@gmail.com> wr=
ote:

> The AT25 EEPROM node on the Northstar 2 SVK board uses a non-standard
> node name, which triggers dtbs_check warnings.
>
> Update the node to follow the dt-schema by renaming the node from
> at25@0 to eeprom@0.
>
> Note that other legacy property updates (byte-len, page-size, addr-mode)
> are handled by a separate patch.
>
> Signed-off-by: Lee Yongjun <jun85566@gmail.com>
> ---
> Changes in v2:
>  - Dropped property updates (size, pagesize, etc) as they are handled by
> another patch.
>  - Renamed the node as requested by the maintainer.
>
>  arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
> b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
> index 5939d342aec7..ce1b099a8804 100644
> --- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
> +++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
> @@ -127,7 +127,7 @@ slic@0 {
>  &ssp1 {
>         status =3D "okay";
>
> -       at25@0 {
> +       eeprom@0 {
>                 compatible =3D "atmel,at25";
>                 reg =3D <0>;
>                 spi-max-frequency =3D <5000000>;
> --
> 2.34.1
>
> Looks fine to me. Thanks.

 Acked-by: Ray Jui <ray.jui@broadcom.com>

--000000000000f9aee706499d9a1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 28,=
 2026 at 4:28=E2=80=AFPM Lee Yongjun &lt;<a href=3D"mailto:jun85566@gmail.c=
om">jun85566@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">The AT25 EEPROM node on the Northstar 2 SVK board use=
s a non-standard<br>
node name, which triggers dtbs_check warnings.<br>
<br>
Update the node to follow the dt-schema by renaming the node from<br>
at25@0 to eeprom@0.<br>
<br>
Note that other legacy property updates (byte-len, page-size, addr-mode)<br=
>
are handled by a separate patch.<br>
<br>
Signed-off-by: Lee Yongjun &lt;<a href=3D"mailto:jun85566@gmail.com" target=
=3D"_blank">jun85566@gmail.com</a>&gt;<br>
---<br>
Changes in v2:<br>
=C2=A0- Dropped property updates (size, pagesize, etc) as they are handled =
by another patch.<br>
=C2=A0- Renamed the node as requested by the maintainer.<br>
<br>
=C2=A0arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts b/arch/arm=
64/boot/dts/broadcom/northstar2/ns2-svk.dts<br>
index 5939d342aec7..ce1b099a8804 100644<br>
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts<br>
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts<br>
@@ -127,7 +127,7 @@ slic@0 {<br>
=C2=A0&amp;ssp1 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 status =3D &quot;okay&quot;;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0at25@0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0eeprom@0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quo=
t;atmel,at25&quot;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 reg =3D &lt;0&gt;;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spi-max-frequency =
=3D &lt;5000000&gt;;<br>
-- <br>
2.34.1<br>
<br></blockquote><div>Looks fine to me. Thanks.<br><br>=C2=A0Acked-by: Ray =
Jui &lt;<a href=3D"mailto:ray.jui@broadcom.com">ray.jui@broadcom.com</a>&gt=
;</div></div></div>

--000000000000f9aee706499d9a1d--

--0000000000000952ec06499d9bac
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
Kea1UXiDNimY9XcISXAUrVauS3TPqfSofCP4tOVkOfR2zFsciCJ7DPbmanfMXAR2cY6kCgkZCqxY
9Szy6beT2XZUSE9/jFymRSjXZNnLqAe30YCaVeVQUqW9X3NqlPdzO9Ce8AqKdgBlVt4isO6s3zJ5
djaWSUM3zrweXgaVpSRF3iBUxK45Nb0qOkvz0hrBYM2r+iLWR2YbF+Z7W7lw2QMvkbeT1gXn+4pC
K8f1aWKsB9e6Id7uBOkCAwEAAaOCAdgwggHUMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAA
MIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDovL3NlY3VyZS5nbG9iYWxzaWdu
LmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5BggrBgEFBQcwAYYtaHR0cDovL29j
c3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUGA1UdIAReMFwwCQYHZ4EMAQUD
AzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5n
bG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDagNKAyhjBodHRwOi8vY3JsLmds
b2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwHwYDVR0RBBgwFoEUcmF5Lmp1aUBi
cm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQwHwYDVR0jBBgwFoAUACk2nlx6ug+vLVAt
26AjhRiwoJIwHQYDVR0OBBYEFLfOZFpVhKW7s+LOyKdJX5PQH0f8MA0GCSqGSIb3DQEBCwUAA4IC
AQB5Y3tHNG503cqE6g1lZJG3Z1SbuQD8ZXUbYqDNZCnUAd/+zUCraK7TYIOI83X+oof/CscTxVhf
5mazzhESPjHYlC3TLkkxDHQZi06GwKbI00651REpC78vd9dOdZnKnGjpFeDiwJKNxdarSaYiZi/t
6cZD3FIvDaJwYIQ+8HvZOm7FBicC41sMoaxGWZ/tdC6yRoLFckWRvhq0e7wyaBOH2ae8l30V6NXB
RtJd4XemoNk74ybCcGMro0zyBCzQhREo2slK5r/uflroC607XCCIGjLuB6TptSxV97L/9/QSrE2U
4JteFGVwRBJw1s7k8ICf4s22debUZ+OlB0mXjI+8EUDt6vdMeregn5ilQQSsDmBMnz2GzHfV30tb
X92uoE5xui1g4Q3BWkUVwd9wVHaganr3rzc+lQDnQq5cddu1supu3SWp5FqKq36rtf3RX/3zHZ0C
P2pCAlilDHYH2NRF8CYb+gqFySS/PUxwPmFWuD897Hewokex+ux0oZscsuRe0IttCbYfjl/+tSA0
a6Rd+AmkiyASFgEHsLGl6q2OTPYU1PikjUe5RXTp0UC7bdPQXzxaORlh/KWilnz/kV2XblDdybuc
Qz3eVIGvTANnIqPpz94oImrgHX48hMGiH5gGNznLwDBoQl4ZSfvlSi01TcUsYlHJD3LRZWbsh4VG
PDGCAlcwggJTAgEBMGIwUjELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2Ex
KDAmBgNVBAMTH0dsb2JhbFNpZ24gR0NDIFI2IFNNSU1FIENBIDIwMjMCDCsjlIbQJoxUU3h/cTAN
BglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQg8yaaEQsgJLE2Vad4yJr9VNiHEkAMobr/
PrOvJj0fEoUwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjYwMTMw
MTYzODQwWjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCwYJYIZI
AWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEwDQYJKoZIhvcNAQEB
BQAEggEAeHS+KQ6wITLL2Oau2TwjFT4VfPcX1OYT4xc2FedjaXsHf4s3KsV+sBmKAMqFvtFbO1qe
W6nmQFmgLTIUf82x5hgjPhgHCcOvYXF/B4Pe8HzZt41IPGozD4jr+ealoRbe8bHfNirSosYeGZ+7
Qdm+WEXzHaEAX1QGDbwwl2uvqAnllICu5wLGPFM9GdCaP3HQyZOeEQg7RwledwrrbW1fTmnxrxn6
BpS8sFLjsn5BZff5oauBBeOrMjTQGfdq91gekgS/w0ZTlvpx4wjhI0QaRxLusq4EZANo0T/92FJ4
VFj66z0C/rw7x954vC6xVfTdb8SnzMvDJxBAagcCjlxt1g==
--0000000000000952ec06499d9bac--

