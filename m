Return-Path: <devicetree+bounces-262807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Gi6EKPAg2k6uAMAu9opvQ
	(envelope-from <devicetree+bounces-262807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:56:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 955C2ECE54
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:56:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D55D93008797
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 21:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544E73939D3;
	Wed,  4 Feb 2026 21:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="PqtGfRxI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f228.google.com (mail-yw1-f228.google.com [209.85.128.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0469136D51B
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 21:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.228
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770242208; cv=pass; b=bM3WVLUn2G+bCS/PX7qCFJmNDLDzqmW7M6kBHcCNlSnlrjoK00Q1s7wNCxtTAhxYbBOIsO882or47Oru3nHGbRjf1JGSZfPP/s40u6WFp53k1Ebb1FAkPRpXmDrERC2b9N2JG+fl7UQ3oZY1mWkjAaK1I1vauepgZImMEO6cTdc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770242208; c=relaxed/simple;
	bh=J1GJtSyFL+Ezl7loisDdRriaNLME9kD5aFclzpN5E1Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LZP+P6KOQpdmHExoA8xCuS/hiu81sKwtVXvdmr/gJXxJRYdNIDrAxX7EYX/XS2Gn+DpIkLw22PvCcli0i9NFm02/SUgQDbWf7EmYiy5nGyd7MtFBEvGI/s6md/HG+POq+/Cq5+JoRqD6PV3Ed67lDYTyOuXTg7KcBEfcBNiSpIc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=PqtGfRxI; arc=pass smtp.client-ip=209.85.128.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f228.google.com with SMTP id 00721157ae682-7945838691aso20171957b3.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 13:56:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770242207; x=1770847007;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wfs0Z5wflIRZWCZNW5r+LRh7uKYfRDGr7tSl3Pl+3b8=;
        b=sJ7v8s/l9uvSWMU9baSs49lh8Yr/9gkBOFi6AlkWkPRDSXXJpS5lDy+7rDZ+ZbXqaA
         KR59BRLNbFgzOe0QgQ9TBW2zfiZ+idU5Gjp/fT5W1gU1yMzOFoUO+MH4ycFOiJ/PHyFT
         uD3KuHxLplRQ1SwIQNcNyq23tF1WnPv6SuCuY0qHxeRFvpPyfSS+f2ehucd760EPmgQQ
         5mVTISyfq54foLf7KY+8fRqJjF1pYPuBBJ534grA90J+Kzn6NmyT/cZODC4yXu2XgmyS
         dkkGhWuTEcydfofmaRPo5cVa3foAfMSYAqd9bu0EvJmc3MZU0/OeEyHU7cuurP4BerNX
         dkOA==
X-Forwarded-Encrypted: i=2; AJvYcCXybkiiBmfytO/e+sMlslnna53YhSBCA0UY8RoQ80lNutWdPKaktL/ZV0A2AsstHnrUsZqWHNkB1But@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj73+9JlSOaNTtOMrqfIF+Bk0sInrV/vb0+AXsmWezNJ+brzei
	GgawEAU7HYT7tsDYdVSzS484BfOsnxDrmi3ZZu1vmoSbtaERCvzQxfFTcMcWNzCx3z4noyWstdD
	1WCYJx+xjIm1CywQjaN0cFGbsF2pzqCbSUuPhf1xLo1spe4gAANAMa3Tffke1XOTp4+QcQqGIfQ
	LZ82mUFB3dNt/yN6/FFRsKFIW9RCwNY98mii7Wu5rxS4JwFktUyPkRT4AAoZ2VkrT9UqVgCBCwS
	LN/OYGXU9Gk5U5C1g==
X-Gm-Gg: AZuq6aKRkkBtQfRwPziPSHLfIxRogFRS5bHLq75kS3G6XYU7RtdyH/kk/HHnsAUQaUu
	q40H/dwt/Zmm51o63yh4oN4GdPw/nfszQSlSe2p2BQ56DxiQucozEQEwGxUqKaZUi9hA0p3ti/e
	ihFN2B6OvaUAyT9Nypx7sKNA9JGc75EwbRvOqhEByz5CfvTjaoqSj2LV4I+Q+SveJrGvK3ZoIkb
	XkA/sSJc4cMtZK1f9YE74CV6c2KJZvEoKzNrkLBupV1TqutKhkk1B1fGYDpnAH0hAxizbteo8OX
	3ys1pG73J418G85NLdm2AWhglJRIUtPodm69sECUTkiXbKIGRqNc4UOnam7jNU+vfa1eK6Ojexv
	oUccjyNqyNbUz13881nwKym0HfTb/9e29QERkGLCCYWRS+EEsIqd6wtEVAsSMR3zjgmzEVAAn2N
	385nPv2/y3BpiyWR7y1nY2V88OY/21VMFHz8iRkrepGkY=
X-Received: by 2002:a05:690e:11cd:b0:649:683b:5278 with SMTP id 956f58d0204a3-649e8801463mr793631d50.48.1770242206682;
        Wed, 04 Feb 2026 13:56:46 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-0.dlp.protect.broadcom.com. [144.49.247.0])
        by smtp-relay.gmail.com with ESMTPS id 956f58d0204a3-649dc49da84sm191511d50.1.2026.02.04.13.56.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Feb 2026 13:56:46 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-7900fc7033bso6706257b3.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 13:56:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770242205; cv=none;
        d=google.com; s=arc-20240605;
        b=M/DgFDdTFnMSfYPR7po44WK/R1PlNFLcgeYZ7zLwUsT2o+paxEmqEfNq+/ZXkLxEmi
         CZub95pr2f8D4fggj3p8X6+y/3SX1VZkogmDSe0VJT8ZtclYp0vJ9he/osfPnwgibTG2
         JG6Tt1Lk4iR3j+BWE+5+PCI6zUY1xSslhdN447VEWRkqDEFJ1qgfRE0v7cDWQdAlQBWi
         j5OXaXZ+hHbDiGjsKPc7gdIZQx4nQ10M5TaCqWgDKvastCCxXwX/CXbOwJva1JeDaGqs
         jQYfYbQ+Eexbmem6mWfNhkM3TMjTUSowNqQ6X5Xk+ZoqGwJ12Q+P36+NUBHdlxgtUTib
         gOMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wfs0Z5wflIRZWCZNW5r+LRh7uKYfRDGr7tSl3Pl+3b8=;
        fh=4KL0BxqD7ltLflwoDNPBJcFeUULFD8ar3rfmcO9qL1c=;
        b=g4h5F0PJaaWsYs2HiroaQdqnDzXhk5OfvA1zG1AoaSjbDdBVwFr7xR30S4TVyEqvXk
         +CaoPRjZtqPv3lh5ol4ziA3DCgR8MpPgLB8gSWSvs2Wfsxgl/DD5wcjlH1KiWlrALgYr
         yXGYXPvCA3rB5W982UvzInGA2PuhP77SFv16y+4IHOrJgLrQVgixZAfeI1wXc58gu/EC
         ShliiWbjXePzHnN7C5sQQE8s3WmwvoNz4srnEBfB6t3cAZzoVa7MT74x9I1PivjmMrUk
         snAlbxLIX3waLLBqKpn3H4wdbeVpuMYYiZj63J71sYp7BF2O7Ka2R96jkzJYq8WAfRyR
         mung==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1770242205; x=1770847005; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wfs0Z5wflIRZWCZNW5r+LRh7uKYfRDGr7tSl3Pl+3b8=;
        b=PqtGfRxIVV5dPXqCQtdOikMi5zq/ATLfDW/kYozdTywribRa6EAFCGR0xEdgxnD1Kc
         8JRgM1ajgTo4Hj0zE/IFZhDXAcTuBZ6JBAwJKZBw7wvqwgpDb0uZuNajBsDkc0E8zAd5
         VL4as5FquGeVoZ21B9vEALxf9zetsh+MMx4ok=
X-Forwarded-Encrypted: i=1; AJvYcCXBVzP0I4DIkklw5a00jKS+/d+GQV7M+4KEcn87CKr7NhxyvVWz/3Wf5R1g2s35bPN0ZmsMcJTMmBSm@vger.kernel.org
X-Received: by 2002:a05:690c:39c:b0:794:d207:1ce1 with SMTP id 00721157ae682-795153f417cmr7620017b3.14.1770242205163;
        Wed, 04 Feb 2026 13:56:45 -0800 (PST)
X-Received: by 2002:a05:690c:39c:b0:794:d207:1ce1 with SMTP id
 00721157ae682-795153f417cmr7619857b3.14.1770242204816; Wed, 04 Feb 2026
 13:56:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260204091530.624230-1-miquel.raynal@bootlin.com>
 <CAHi4H7EVLsgVL5KCERTX5XBNTMvZDNxePzo48Zp5dsfDdoCV1Q@mail.gmail.com> <87ldh8fdqm.fsf@bootlin.com>
In-Reply-To: <87ldh8fdqm.fsf@bootlin.com>
From: William Zhang <william.zhang@broadcom.com>
Date: Wed, 4 Feb 2026 13:56:32 -0800
X-Gm-Features: AZwV_QjAWfB4et1jYEkpmzxJPCQ4V_oa030EZg2Rq7Wp0AKI93l_wxyNlVsvMv0
Message-ID: <CAHi4H7GFbd29QnHp=5rw7EfvOVvBFN_Q-6j2yAtiFwswHN-TKw@mail.gmail.com>
Subject: Re: [PATCH -next] ARM: dts: BCM5301X: Drop extra NAND controller compatible
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, zajec5@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000d33541064a06a10e"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,bootlin.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-262807-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[william.zhang@broadcom.com,devicetree@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	DBL_PROHIBIT(0.00)[1.19.21.224:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2c0:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,broadcom.com:email,broadcom.com:dkim]
X-Rspamd-Queue-Id: 955C2ECE54
X-Rspamd-Action: no action

--000000000000d33541064a06a10e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Miquel,

On Wed, Feb 4, 2026 at 12:36=E2=80=AFPM Miquel Raynal <miquel.raynal@bootli=
n.com> wrote:
>
> Hello William,
>
> >> diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dt=
s/broadcom/bcm-ns.dtsi
> >> index d0d5f7e52a91..46b650abdb90 100644
> >> --- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
> >> +++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
> >> @@ -479,7 +479,7 @@ thermal: thermal@2c0 {
> >>         };
> >>
> >>         nand_controller: nand-controller@18028000 {
> >> -               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1"=
, "brcm,brcmnand";
> >> +               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1"=
;
> >>                 reg =3D <0x18028000 0x600>, <0x1811a408 0x600>, <0x180=
28f00 0x20>;
> >>                 reg-names =3D "nand", "iproc-idm", "iproc-ext";
> >>                 interrupts =3D <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> >
> > Acked-by: William Zhang <william.zhang@broadcom.com>
>
> Do you mind if I take it on top of the commit it fixes?
>
That's fine with me.

> Thanks,
> Miqu=C3=A8l
>

--000000000000d33541064a06a10e
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
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
Iy7SGFYuFjkIgWfx44fOZ9IPwfwek9ttV+Xou/1iQVMwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjYwMjA0MjE1NjQ1WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFl
AwQBKjALBglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzAL
BglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAqr/xZ330JNbm9N0adEBsoD/XTvZFPDH9tdhj
hq2ReAmNJhZAfs+2t5u7P1q71XapP8rAR86NYH0GFdqY5UBG/kFbq9mvUJDsiXUOIb70/0JRiLAg
tIul7yggtai3G7D6URBgLpdlX7Hk1jsMPQxXPQO8uFQg7E+eC652y2EiugynEQNREx5K42Uk4y8S
Ri5N41elmaZ8EQDF8BnDVnbMAYUdOvyDGg8UVDkFDO4X2dvQ6jJ4K0K0CJhfU24ZJ4kikkBnMRTX
W2vwqgaQ8JP53OfMTvOfcVh7LVgziS59k4JmZGefcJxmjDbu+e7h3MeMg4EAkYCPpFdK2EKEhRPX
GQ==
--000000000000d33541064a06a10e--

