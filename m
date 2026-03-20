Return-Path: <devicetree+bounces-278044-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6lFLHv+UvGmE0wIAu9opvQ
	(envelope-from <devicetree+bounces-278044-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 01:29:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDC12D4726
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 01:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC4FD306A904
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 00:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A56209F43;
	Fri, 20 Mar 2026 00:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hwcjX90M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E566D1DF755
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773966585; cv=pass; b=f/hvSLvgzwkwkNhMFpFz2O86PI4/Qn3tHnNyF0K6EbG6LSyDrP4YMTA4ldUFXe8NrJyogqbsqrYVQD/1BPU8SfkxOqWPKRRoNDNqEm3Bmga9Pcqd0RZDSC818c/ifinxI+vH8uI0FjoiYJECFHCbH59f0NOLiVh05l9oRhFJS6o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773966585; c=relaxed/simple;
	bh=Yw0PSu7NDBMBpbMAehFID8hSnxvawctkK1tiDKZfVYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RWYMGM/cLqhVdek0VXQ6JQmAdAHGx4w1N4ee7Ykg+92rTUjKtwo+Fx5x46/6xzcrhFbuYV5kTbyvJYCq5KSULlKq3nZt2VjrUsmvugjHN9BgqZt1gxAU/QdcwxBzbesh0i2Dk7TX/jN3Ikaymi6JFTSds0MGXqs67PK5fLRGNfA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hwcjX90M; arc=pass smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6686d06c411so2112869a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 17:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773966581; cv=none;
        d=google.com; s=arc-20240605;
        b=QGMNC31qHQVUcKog/vOIxwpO912rTaOUqeM1yM1OihdGqkw09M5X3T0rwsoDln6Odc
         LuEKW+BUMkBgqWaLZxPm/w7836mB376lq7GYRO/h2xfYX479j3n4MS2c4OYfTlbEmJT+
         5aV/KxSbPZ7EkMFCYTJ5FnKBaNc9+euIzF185Dc1L1qyBMhutbe3Vtc8vzSyhEyEF4Oq
         s4XMLxGHoZLVfSmlZZo2+/SE0iMQfZbTvoehOcHHQtuMDsM28jBnAMu9uhOEcJc+11r5
         tTCN/K1wlO3u9P4rlQgyxEDiz55eKMZjO7xNdrAMz6RHwQ+G7oNE0719qYQzrqIjaE6K
         4C3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mmO+t93uysIUQnRasphSpij7YbHaR8RBQm7HKwGHz58=;
        fh=bYFH2dGPXEwjf+qXKabmqTmUeL4R+K8DnEie0KRmv7E=;
        b=GETxMfN1a5ClD6epqPeQjHYP249LDYuLILL3ehxHqutzzPxcA7aOfLWveNEMsg9DPH
         zxcx8MS3E9hXjVkcYIyXxvn2QWAve5quqhEW37NsDFf/gUftEsR/VlMKNGaNHdATanfg
         riz3UYALdW64QWuwnfFQx+j5zgPqcYr0CBNKw7KnECbN1pVtUPL2E2i1+FcEUgfA+8ZP
         qAC15eHL+89pz/9Ot4DW/0Av4UOWxmJqY/YCTUZOZCfuAR0Pf8L1LsNQYNKjbRGJBIww
         rssJlHbCHQW+FoYNFFMouTmasSMU9pz1E40267Jec+As3O/Grc14YZuL3OZ58PpBYKdS
         zstQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773966581; x=1774571381; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mmO+t93uysIUQnRasphSpij7YbHaR8RBQm7HKwGHz58=;
        b=hwcjX90MV09IC0JjIP9uExH/s73iGh56W019jXhXVGuUZFvDYjXEC+0qbTmi45P2hR
         +QCTJIp3/wJkN2dG919S/FAVJ2CQmkEx0AgDfruZ+3oV9w+8XIOZFe82zr2lreTXk+gU
         0m1Bn90TAJdKFcshN+UdqVOmYF6Dj5McdddJj+e2+SDK92/xtymMwQQ+tqZ0IXh6uP0e
         WMJoq49EE1AtyegsTTMsKLzt+pvmB9uwD8by9wd0Ke8J9MbXMEuw8nsOWCmLPb0nvM1k
         ugtuJjDhgB+qxZD3rpvzjRDmehRATWhFBU+cQT1OVds0YDRJjPNtv3ZeXAvHMtZzbOJA
         o5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773966581; x=1774571381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mmO+t93uysIUQnRasphSpij7YbHaR8RBQm7HKwGHz58=;
        b=Lk2wwYk55A1kBMvZ7sF/jDZbuHEQd/3rZePB3QfQeaI9SDtdDvK9TCH3VY2KIY42uU
         XUhH7pAxDZJC5fG/o1J6XfYSWaW3jFKjlQm1Nqd5xA7bxiaxBMaA4785erM6nqO07tQh
         N+whKgdtARpU0niDe3Z8VbncFek0xlJYZtpVs49EyBUpKzrWfVepo60JeSpUN3+U3omM
         poApuHPZd3TvgJVHt1dgtNIvRZcgewjoG1yznJoVZETR+cI9mADMnRRtT54VANhagCoa
         hQ1D4kzGxpiXJMlt++yjFxHUZSOFHNzfUJIfpI6kFc3Coss2wNOKOp5bkgsSeHtZPT9s
         R3YQ==
X-Gm-Message-State: AOJu0YwWMez9cNQLiSM/jj8Q/3e2wTlke3xBhQ1YGnzPTiGU0GoqlgGj
	3j6rNEUm4IHHH3os1tgT8zcYBKSxIqZaUgZW4awaDPN5aZd1mUBTucptFBIu3dfsd3EoHJO8L0d
	G6BugbB8k2A3LfA8BFiu6OYlpe2JGtp9YZjoM
X-Gm-Gg: ATEYQzzer1UPhDCKRvMt2F+OQ/jA/dxPj3nDHioM1Z1G9icT99xs3iwB0WoJ/+GEah2
	9AlUEoCJpHJdTHljG2s/RexLTGexu3X/Tu1OtIJEOjfkrlWiqIgK2/R9ppbYDPI6xbL/J6q3CMR
	BlU+rAA/blnjGO5wQDUvGOOlKMTp4wkZcltQd2saSniQXNt3cVMhsrhfs0VKulfhqtAGm9OQ8Vp
	mdgTD0rzhu+mAByRRsz+wG+S26/owE7iUhGLsGy9cNZg4mEFa8Y3FDtVQjnx6/e+KUtTbFyw4Rv
	ENGsphgsyAdnxUZbmfCyl1HFPyjgW5fJe2a0ZM09f/FrTbfQS9t7ldBE2GGDipUge6tBUHR38+Z
	I2tm+rg==
X-Received: by 2002:a17:907:158a:b0:b98:2c44:6631 with SMTP id
 a640c23a62f3a-b982f21dc70mr52496266b.14.1773966580568; Thu, 19 Mar 2026
 17:29:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260319035324.269905-1-rosenp@gmail.com> <20260319035324.269905-5-rosenp@gmail.com>
In-Reply-To: <20260319035324.269905-5-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 19 Mar 2026 17:29:29 -0700
X-Gm-Features: AaiRm52y_H768PUYbKYHVrWJJ0cq-GGpc2lSjEGUNMPhbPJYWHIKZIGgwgV5x3g
Message-ID: <CAKxU2N8Vb3D0oEGPzOqvwsXSVLhJtxh=5xrd6qq-Yj2X8Rt5Rw@mail.gmail.com>
Subject: Re: [PATCH 4/6] ARM: dts: BCM5301X: EA9200: add wifi definitions
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-278044-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.2:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.642];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,0.0.0.1:email]
X-Rspamd-Queue-Id: BEDC12D4726
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 8:53=E2=80=AFPM Rosen Penev <rosenp@gmail.com> wrot=
e:
>
> brcm,ccode-map and ieee80211-freq-limit are needed to be specified on
> some of them for proper operation.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  .../dts/broadcom/bcm4709-linksys-ea9200.dts   | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch=
/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
> index 617fb55bc52f..7b1363aa1144 100644
> --- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
> @@ -93,6 +93,56 @@ led-3 {
>         };
>  };
>
> +&pcie_bridge0 {
> +       pcie@0,0 {
> +               device_type =3D "pci';
> +               reg =3D <0x0000 0 0 0 0>;
> +               bus-range =3D <0x01 0xff>;
> +
> +               #address-cells =3D <3>;
> +               #size-cells =3D <2>;
> +               ranges;
> +
> +               pcie@1,0 {
> +                       device_type =3D "pci';
There are typos here. "pci' vs "pci". Should I resend?
> +                       reg =3D <0x800 0 0 0 0>;
> +
> +                       #address-cells =3D <3>;
> +                       #size-cells =3D <2>;
> +
> +                       wifi@0,0 {
> +                               compatible =3D "brcm,bcm4366-fmac", "brcm=
,bcm4329-fmac";
> +                               reg =3D <0x0000 0 0 0 0>;
> +                               ieee80211-freq-limit =3D <5170000 5250000=
>;
> +                               brcm,ccode-map =3D "JP-JP-78", "US-Q2-86"=
;
> +                       };
> +               };
> +
> +               pcie@2,0 {
> +                       device_type =3D "pci';
> +                       reg =3D <0x1000 0 0 0 0>;
> +
> +                       #address-cells =3D <3>;
> +                       #size-cells =3D <2>;
> +
> +                       wifi@0,0 {
> +                               compatible =3D "brcm,bcm4366-fmac", "brcm=
,bcm4329-fmac";
> +                               reg =3D <0x0000 0 0 0 0>;
> +                               brcm,ccode-map =3D "JP-JP-78", "US-Q2-86"=
;
> +                       };
> +               };
> +       };
> +};
> +
> +&pcie_bridge1 {
> +       wifi@0,0 {
> +               compatible =3D "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
> +               reg =3D <0x0000 0 0 0 0>;
> +               ieee80211-freq-limit =3D <5735000 5835000>;
> +               brcm,ccode-map =3D "JP-JP-78", "US-Q2-86";
> +       };
> +};
> +
>  &usb3_phy {
>         status =3D "okay";
>  };
> --
> 2.53.0
>

