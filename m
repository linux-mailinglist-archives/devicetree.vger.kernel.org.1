Return-Path: <devicetree+bounces-271765-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCdrDAgaqmkqLQEAu9opvQ
	(envelope-from <devicetree+bounces-271765-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:04:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D67B219A99
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 614A330166F5
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 00:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F6B9190473;
	Fri,  6 Mar 2026 00:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WMnWybuk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f225.google.com (mail-pl1-f225.google.com [209.85.214.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD85912FF69
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 00:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.225
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772755459; cv=pass; b=NLELq+XY6Utc1p6s9RX47WzcyFQCroNhMuU/5Va1m4GOYv/nz4XqssU0vvehRIVYENjzMysIc4oq5mN5oHxsGvfuoiRR7Z1c1QtPUYZlrZBrfAnnWPWCdnPr4ul6cm0ZuONYkrV2zvhdB9ZKGEgXGJio11unv9aB50vA2rHjR7U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772755459; c=relaxed/simple;
	bh=R0koLUdr3MrRB1nvSIEj1adlRyE0VCHVjGwydTSqt5I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YUyxDSMV8Tod+MAbBMCTCtBMNo+1N1Ls5W+UETKawO7Wv4iPA4Tr1O2pxJTGvUQua0Am2EokSPos28iSjCinIc81i13kJixfozPeitohY8AAxPeQqpRS1iX1AhNT4yrHuZ6JxhHoiPQmvQ6gn90S3cL31F1JuBOlDSK1ZhKjCMQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WMnWybuk; arc=pass smtp.client-ip=209.85.214.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f225.google.com with SMTP id d9443c01a7336-2ae41544dcfso62858915ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 16:04:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772755458; x=1773360258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CaOKRXJQE3mXOK0InUv/B0gPjXvc3S75lcNQcuRdoc8=;
        b=mUDL8QLCxVwjH5vit0j75MSziQT0qP5jRl5iEHgyH8wZj02lW9WbT2ZMJrYc+kLhPo
         w8moQo5/XJmO5xLRSVp8ukhWp3LR4r5WNkCegk+fzYDdUtr+BiAn4IdxE3v5ZPP0doNN
         tLx4dPYTpEb2tQq4dVZOSzBeyDPRoN/6kk2Oe6/pibljLspYMiCMmCKBeDFDgbMza+LS
         qzKu1RtjMxhiHtBFu/STDiNYA17SglmFXpdDKLYf591jH/RMXKtLFTHZJs4lNhgW5XND
         6J4oLiP07B1HOA/TkH+yH86OWQVZiWOce2oCbSKU7z+WxAIIMNmw7GWm2eJw1rdKiPCr
         4xqQ==
X-Forwarded-Encrypted: i=2; AJvYcCV8Yf0yO8PfOd59Ep42o8xEma0ZBhyjjfpbxelAYB6mJTEBajUUvjvBRKDdMMvNaAurUihtG/W8rjvH@vger.kernel.org
X-Gm-Message-State: AOJu0YyvitMD6Vxj2se4OwW+76fv/jNeOIv0KeNAvTcxL4ideO384YJ+
	pDHmQ46uCmcK7Jd0iUH1YempcFcOcKGSeIaVZkyCOsHBtPO5QYii9KrBdV05PgvFNr8w3DymYrS
	5J80iCwk5o/DwT0u66TsQN4xA4IsKpXUybIocV8FhRwwgdbQhxKJyq0Xn8OPk/36yC++U1dySNf
	DqNFSeVVwbYwFoeMyPnCQEMg+eYRXfKhIyw/l9ZUhic7cZxaAMxDO6r/ukzHVz9aahNCAhr/HYe
	PszwsCNi5Qj
X-Gm-Gg: ATEYQzwmH4iQzjsxqjBiouWlRMBb7Xrj4Vdo65vVUsKoiPl63/SJ0HSHlK5IOOSYTSx
	PxmqQtL/ufn6UyvklcJTLLQ69qBWxyZWpIu2WhVqGUNLTBx9n7TK3iWch06A1v6FqUr4KYO+NaN
	PT2qcmtV916zfNNfEZxC3Fl83dxJgP39oOdKKcVT57m9fPumQ+oTyaIzKsrOtFT4ldtCsIFeXET
	RoRIy8BthgSljHbLmFBG03z6c0cVYLiP9WZYd8L5CKvQbYi4Zfsf/e45dq9eCazCYszuyIChchh
	RnIOWAGvJ1pGWKZLPUR1+ZsReaatvr1YXJBbmyuoYEZ9NPPDFS9EDg6EzNcG8C+i2Gp6zFORI/t
	MjU3tgcVlZVFJna6/NEdYRQ86AUdKN8APrk4iwmscnnoUI6kjlMjT5y/MSwIeqISLcoXOkQo+Np
	HRvM5fqFIA/EXQWbH/fbLuoPNcEq/bsZpverJKz8MRO5Jmha8RvEQm
X-Received: by 2002:a17:902:e807:b0:2ae:62c8:7726 with SMTP id d9443c01a7336-2ae823673ebmr4111955ad.4.1772755457837;
        Thu, 05 Mar 2026 16:04:17 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-102.dlp.protect.broadcom.com. [144.49.247.102])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2ae51bb9fd3sm16606695ad.28.2026.03.05.16.04.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2026 16:04:17 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899ea295601so88702566d6.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 16:04:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772755456; cv=none;
        d=google.com; s=arc-20240605;
        b=QRSAlYYrMWc9rLO8EiMH6AIq0uod+NGMQR3vRXrRYOuQNl/GqChoZ7aiKj4RCS+g9q
         x6VYQR712wpX6R32NQn6s1Ya77Lw77MND4LKYeRRenWbfE9X1u8uBMlsiC9guxdl3Svc
         PHTd+kz3kKPsyfXKd9kieiSE92x7AInMV/QqGXmgDjGy+FtKbZQ4i91US4u3MnckzlgU
         YA/X3gGffML3BcjCttBKto3dketSz7WsKFRyuSftizGJ5ggh3J4rrDyDeJ/py3HuKX+F
         9cWd0vACgx8BAJ1yD6LdDKAgm3t7H+ay+h0PUtOeSkYuO+2nzKSEzC45PCqUu0jfTSm+
         gh/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CaOKRXJQE3mXOK0InUv/B0gPjXvc3S75lcNQcuRdoc8=;
        fh=cBwHGtG9z/Xo29epYlPAlGTu+gbJsNrco6Tae1FrsHs=;
        b=gPyE4YjvJjvaOj/ZIuB8zILN4Z+vim6dxrCbDku/+cT4pxfUqH9KOE/YuhMhb7cUUL
         JT4UCIIOLAFgoRQlfnlTnC7HaBXlRGGvXPiTJ1KzdDhJn0BlFGDaZI3Fy9UvjhLby2PK
         tjWJIq7IlmPw8L7sid1UnSmxGbNZQ/+NUNLh4YE+wQZg/ubMKhPj6i99L09AmMHTsyM0
         Awc04XNQVq/I2Gr/hGpVa41z+lRSzbK18GL5oUCDPjK82arBIgIkKtzCKxiLQHbmDm4w
         R8XxEpNdLTjJJo5OfwnOAN2dGPDgDUKkZEtf1NAWJMB6VmR3sc7SYLzFCgsk/WZDT19g
         Zq7A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1772755456; x=1773360256; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CaOKRXJQE3mXOK0InUv/B0gPjXvc3S75lcNQcuRdoc8=;
        b=WMnWybukOtOJximYuwJwCup/HU4vgOJFgadpkuEw9nT1aKMvH4wbr6FvR59KltG3qD
         eSpVTwo3y7qrtJr+suV2G++fJfWfP5Z+oSiXG17n465CHHSeJJpZq6jmf4lQdfbEDxcQ
         ymc67vorRL4UCb3vL+lXUpQJZhu9hycvV5fNo=
X-Forwarded-Encrypted: i=1; AJvYcCUkjt5W8lOXtTGm0xAI+IeSIs1NCY9pg+1SNWadSLtOtjuaJTBCCxHhDblBDttv3DdGcPKyNrFSoWO1@vger.kernel.org
X-Received: by 2002:ad4:5c63:0:b0:89a:b94:3cb6 with SMTP id 6a1803df08f44-89a30a185cfmr1581606d6.1.1772755456434;
        Thu, 05 Mar 2026 16:04:16 -0800 (PST)
X-Received: by 2002:ad4:5c63:0:b0:89a:b94:3cb6 with SMTP id
 6a1803df08f44-89a30a185cfmr1581156d6.1.1772755455930; Thu, 05 Mar 2026
 16:04:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305234703.38490-1-jun85566@gmail.com>
In-Reply-To: <20260305234703.38490-1-jun85566@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Date: Thu, 5 Mar 2026 16:03:48 -0800
X-Gm-Features: AaiRm52ajbNA-KOCPAQu8ZtWB6nH_liyBi5cNhmnBuWYo6YeJEH4v-Lsfkk0GrE
Message-ID: <CAJ8Y1dTJ5yNPP8BN46BfDdLAvuWxW+OrZ+P538Bp9+3_6XankA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: allow dma-coherent property
To: Lee Yongjun <jun85566@gmail.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rjui@broadcom.com, sbranden@broadcom.com, 
	bcm-kernel-feedback-list@broadcom.com, nsaenz@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000048a7ed064c4fcbb9"
X-Rspamd-Queue-Id: 6D67B219A99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,multipart/alternative,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271765-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ray.jui@broadcom.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[broadcom.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,3.245.125.32:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,3.245.164.48:email]
X-Rspamd-Action: no action

--00000000000048a7ed064c4fcbb9
Content-Type: multipart/alternative; boundary="0000000000003991d0064c4fcbef"

--0000000000003991d0064c4fcbef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 5, 2026 at 3:47=E2=80=AFPM Lee Yongjun <jun85566@gmail.com> wro=
te:

> The Broadcom iProc SDHCI controller supports DMA, but its binding
> schema does not allow the 'dma-coherent' property.
>
> As a result, dtbs_check reports the following validation errors
> on the Northstar2 SoC:
>
>   mmc@66420000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
>   are not allowed ('dma-coherent' was unexpected)
>   mmc@66430000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
>   are not allowed ('dma-coherent' was unexpected)
>
> Allow the 'dma-coherent' property in the schema to fix the validation
> errors and accurately reflect the hardware capability.
>
> Signed-off-by: Lee Yongjun <jun85566@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> index 2f63f2cdeb71..579e44843404 100644
> --- a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml
> @@ -38,6 +38,8 @@ properties:
>      type: boolean
>      description: Specifies that controller should use auto CMD12
>
> +  dma-coherent: true
> +
>

Yeah for Broadcom iProc SDHCI on ARM64 platforms (including NS2), cache
coherent DMA is supported (as opposed to other 32-bit based ARM platforms).

Change looks good to me. Thanks!


>  required:
>    - compatible
>    - reg
> --
> 2.34.1
>
>

--0000000000003991d0064c4fcbef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 5, =
2026 at 3:47=E2=80=AFPM Lee Yongjun &lt;<a href=3D"mailto:jun85566@gmail.co=
m">jun85566@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">The Broadcom iProc SDHCI controller supports DMA, but =
its binding<br>
schema does not allow the &#39;dma-coherent&#39; property.<br>
<br>
As a result, dtbs_check reports the following validation errors<br>
on the Northstar2 SoC:<br>
<br>
=C2=A0 mmc@66420000 (brcm,sdhci-iproc-cygnus): Unevaluated properties<br>
=C2=A0 are not allowed (&#39;dma-coherent&#39; was unexpected)<br>
=C2=A0 mmc@66430000 (brcm,sdhci-iproc-cygnus): Unevaluated properties<br>
=C2=A0 are not allowed (&#39;dma-coherent&#39; was unexpected)<br>
<br>
Allow the &#39;dma-coherent&#39; property in the schema to fix the validati=
on<br>
errors and accurately reflect the hardware capability.<br>
<br>
Signed-off-by: Lee Yongjun &lt;<a href=3D"mailto:jun85566@gmail.com" target=
=3D"_blank">jun85566@gmail.com</a>&gt;<br>
---<br>
=C2=A0Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml | 2 ++<br=
>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml b/=
Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml<br>
index 2f63f2cdeb71..579e44843404 100644<br>
--- a/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml<br>
+++ b/Documentation/devicetree/bindings/mmc/brcm,iproc-sdhci.yaml<br>
@@ -38,6 +38,8 @@ properties:<br>
=C2=A0 =C2=A0 =C2=A0type: boolean<br>
=C2=A0 =C2=A0 =C2=A0description: Specifies that controller should use auto =
CMD12<br>
<br>
+=C2=A0 dma-coherent: true<br>
+<br></blockquote><div><br></div><div>Yeah for Broadcom iProc SDHCI on ARM6=
4 platforms (including NS2), cache coherent DMA is supported (as opposed to=
 other 32-bit based ARM platforms).</div><div><br></div><div>Change looks g=
ood to me. Thanks!</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
=C2=A0required:<br>
=C2=A0 =C2=A0- compatible<br>
=C2=A0 =C2=A0- reg<br>
-- <br>
2.34.1<br>
<br>
</blockquote></div></div>

--0000000000003991d0064c4fcbef--

--00000000000048a7ed064c4fcbb9
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
BglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQg83t8nghsDRXm6WNXY8jT+IAj9FVoyhiP
yORclypNC20wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjYwMzA2
MDAwNDE2WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCwYJYIZI
AWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEwDQYJKoZIhvcNAQEB
BQAEggEAQ+lHJAp0oiBXnKkmYLql8ffF1P0/T9A6hIhzYO8659KTHJnt7xcanBp2/GmxxNr3V3aL
mOB+tLZfac1rEqxe5h4OoVMZC/AijefztsaZhBiB8MlqXT+NSg4al5Pd6fTuMV+XGHEZeuNPfy/6
ESFZQhF2JiCYSBJN43sFt/nJEl6mdYVNBDcb2NKp4VtK8zq92kcFuZ5BNd0KzntSOAhyWRCUfeNI
iGYqvPT/ScyiQLtZ/76uVq9kFMia4TjdvXsoFwgV+BGpKxnJFxhNYcUM3gvX62LYijpOP2bwe4fE
fZ225iFmEhmNigVmXT9pC21mAy1sPU6FPVhfFBy+1l5h6w==
--00000000000048a7ed064c4fcbb9--

