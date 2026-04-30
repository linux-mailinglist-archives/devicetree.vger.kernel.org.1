Return-Path: <devicetree+bounces-291813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H95J34X82llxAEAu9opvQ
	(envelope-from <devicetree+bounces-291813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 10:49:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EA10F49F693
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 10:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E322A301A1D9
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 08:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A153FE648;
	Thu, 30 Apr 2026 08:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kvl7piqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E83C3FE64D
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 08:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777538636; cv=pass; b=nG79KL5ssFjNc58dLHjsCElmxvBkwKkHeCQoBctP9Jli+ugD+3OV2c8rNjx76TPH+fxCH8BnOCu4okqiPAKSykFd7PFmNnPuNoaueF+BrAFSbSxSXRUIlELu1cwROSTiXUyW3FbHKRUUUhqCziKLVHGC9nzNp4Tj3gVvLjHnRLU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777538636; c=relaxed/simple;
	bh=IkyQhFb0oKiwv3dkPoXWkgkqOYmVtSPnwm/59ke10iA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q5M5ZgNQPGrrwSmTEezygHTMn5O0a+0rglyaVn/rWYcNLNT/YhdR97mmSr1qkStcQRo3qQ0JD+9jwH/HNdectTJ6h6czqFQKwKOQQ+as3FvQRF+ORpTWQNQkhvdLMKq7tcKMzpX61yIR8xerg7FcJ6Pk+I1k9bw4EApsx8U7vik=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kvl7piqk; arc=pass smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7dcd17e19b6so368139a34.1
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 01:43:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777538634; cv=none;
        d=google.com; s=arc-20240605;
        b=DHA9aC7zs+3/03ZzwDKGw1oz2rDtKHvVsbgtsnMz/5rDaZB5ixwf8Eaaau2nUAOzMi
         RlRiaon1F8Q+3VfVKHUcPAfQP5P5RlvZOWXIGQzXQMClNHOxcb3E4c/GcfzCL5qk88tz
         tOl8xyH6lKgmBoSIit1F+1eJfqOrL71X7Ur1mb3Vyo4gBCsKtWftrRxIY8pxZYiKaLks
         YhBGqN5vXrxztTQSNfvPzlywtR1X/bB5UlF2wgixNoMM9mYZgWuW5QRmg3IJ2p1+XpfD
         PX2q0hzFq8p2G2Kq2aQdKKkO5QE5WPTv4bifTsIW5tkSngKT38EAdOrItF0VcWafn1Dm
         twUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=teejJxdHGs87pRJ1scnACJwACTu7quoERKWQueEhPsQ=;
        fh=6F6qykiW0EUnr2ZBW3+ybzdB7wHv98zbsr4mS9dUDkY=;
        b=FHW/B5yfMMujE/4/6hkLiIEqn033Wz6cLnYoqYuLYeD8x+MSMSLqoEdNOaecW4obGI
         xGD+Tz9NUms3Io3mXEBlUXKNmq6GTP7auNqv8qhWy0nMf6bZoNV0KehQSkC/siWtG5YJ
         notELONTpTMdxItawLoDbP2pOiL3jZYVKpSzqC7ufSVAujXVBju/gUljqaPSc6g6ORCA
         DzRhKvbelcJ+jWdmDLV+e6ShVtwJRdFIPlOU47NQ6LT4uBHqRx0MqEFCelJjPVEd3suR
         hrh6rV3aDP/7kwvFfDg0bVggzCTLc8oJd0OCE/lzROJBTYvIqcQzYK3pJwgjjewb+MBN
         abFA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777538634; x=1778143434; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=teejJxdHGs87pRJ1scnACJwACTu7quoERKWQueEhPsQ=;
        b=kvl7piqklHSpMPbrj0jee/lb3BEZFk6oHJusr6LnLyEHAT6pkzl6Mz4GL+Q91rVqd9
         0PkPdZDq8FqjlpFwdgPHxKus1ZsF2CyCJBhE2Ve0DsKUr1Np3AeT20EET/qmF2NV8S4g
         +GXGdeD4PN3lOIsFeNesnY4gcTIM55UzfJc6u61hNBLi9oGAUUmWj9hoqi+K/BT5eHv+
         bclV5Fdup0roh5n/gaIhfFfSEll3S6fky1fJ0qvNi+G79C8cZMeTfIjAd/nSYFLDDsGr
         L/JqmnFG5e1D2Fhm1y48STfGHRrVb2tTfexWypL63+H4wtT1zD939bZDfvIUbtLIaz0h
         jQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777538634; x=1778143434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=teejJxdHGs87pRJ1scnACJwACTu7quoERKWQueEhPsQ=;
        b=P2yh51IylBWOU/GLFt9JZFfuGhHne//0c+rimZAwcjvWjtHKNtGBEH208a18/CF78M
         kZuN573g7vpOmoNbawTbsJ1Lj9y2h6MiI3po8xFu9R6taCuOU+zVwmFJwThreizuc8ng
         CKFf0TqixFilmon9Y3+OSQGEhY0VGZd1DRKChF3HGQ4BXynYwv6boyr2q1Ty+CMTEJ+M
         CnGPnXF8+aKNEdebwKC4a+R4t/hMeel5l9x9HPauiyjOnAbOoAV0liHBIoWja6n0xDzp
         2XaBIrsyzFPboX5XzlSZoRwxGdLG78UWGfrKz29E3KJ42hI9bfmqwq2kjsY9iHy96DGX
         vGhA==
X-Forwarded-Encrypted: i=1; AFNElJ8Jnr+jRNu6rMJdGax65vFiSg42P+y76kQ0mZtmkOI6w9eoa/2x8WSm8mh+6Z5CbpBJw2V+aGovWFW6@vger.kernel.org
X-Gm-Message-State: AOJu0YzmHhux/T2rvRDoiAFtCkgBeDkzOSat8LPqnG0c+Etj7v1djuTX
	FnLBMoX/ZTe3YyUJnsweeRUoR2j0pTM/Vzh1ML6VXnInHcldHVmO9Mw2GRC5tHGbyVZOJTGe7W9
	gXEo8QQtCMwYxflwIbghO+LvXuS2GgQA=
X-Gm-Gg: AeBDievdb1t8G+vCjonJxVBXcOtgHKQMeF2LyWf/rcguSmufRuHMc7v7oT2Bt0ymZ/y
	Ssp7LgS5rG1pEFMv0/MzXcpaBFCz99MifVobPEFc+g7G/5MSbpqfmqTX4Ligcii9qEkLFfUirqm
	D5ouIFhFij5BonuG7NpLUukOrLJ4CgixLCae+6ZnSyV4l5sme9rz6SjUoNv3YyqX1MxkdrSRChW
	0X9/uv/bamNXwOp5EAfthHpeQKdG+FFEqMTvAJyPIYfyOfqrAO+YHAZ65aK18B/NLeH8poVtfJv
	paI9JbNk8+QsFoOSOQ==
X-Received: by 2002:a05:6820:16a3:b0:692:61:b486 with SMTP id
 006d021491bc7-6967a4ad53emr826876eaf.11.1777538634095; Thu, 30 Apr 2026
 01:43:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260429040541.3404116-1-syyang@lontium.com> <20260429040541.3404116-2-syyang@lontium.com>
 <20260430-gainful-hopping-quokka-da7e7b@quoll>
In-Reply-To: <20260430-gainful-hopping-quokka-da7e7b@quoll>
From: =?UTF-8?B?5p2o5a2Z6L+Q?= <yangsunyun1993@gmail.com>
Date: Thu, 30 Apr 2026 16:43:41 +0800
X-Gm-Features: AVHnY4Kxt8XNmGTYKSZA8jkq92TzjHK0M8QbzkPs5wku5fPgONc019FE_ckolQ8
Message-ID: <CAFQXuNZ-+0dKFrViisWG4NK=yk2zJ5tn21RZZ3ze7ctsV6Ruew@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings:bridge: Add Lontiun LT7911EXC eDP to
 MIPI DSI bridge
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: syyang@lontium.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, maarten.lankhorst@linux.intel.com, 
	rfoss@kernel.org, mripard@kernel.org, Laurent.pinchart@ideasonboard.com, 
	tzimmermann@suse.de, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, xmzhu@lontium.corp-partner.google.com, 
	xmzhu@lontium.com, rlyu@lontium.com, xbpeng@lontium.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: EA10F49F693
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-291813-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[lontium.com,kernel.org,intel.com,linaro.org,oss.qualcomm.com,linux.intel.com,ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.41:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangsunyun1993@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=2];
	NEURAL_SPAM(0.00)[0.948];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,lontium.com:email,0.0.0.1:email]

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B44=E6=9C=8830=E6=
=97=A5=E5=91=A8=E5=9B=9B 15:56=E5=86=99=E9=81=93=EF=BC=9A
>
> On Wed, Apr 29, 2026 at 12:05:40PM +0800, syyang@lontium.com wrote:
> > From: Sunyun Yang <syyang@lontium.com>
> >
> > The LT7911EXC is an I2C-controlled bridge that Receiver eDP1.4
> > and output signal/dual port mipi.
> >
> > Signed-off-by: Sunyun Yang <syyang@lontium.com>
>
> Missing space after ':' in subject.
>
it will be fixed in next version.
> ...
>
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Video port for MIPI DSI output.
>
> Wrong description, first is input. Look at your DTS.
>
yes, you are right, I didn't notice this place.

it will be fixed in next version.
thanks Krzysztof Kozlowski

> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Video port for eDP input.
> > +
> > +    required:
> > +      - port@0
> > +      - port@1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reset-gpios
> > +  - vdd-supply
> > +  - vcc-supply
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    i2c {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        mipi-bridge@41 {
> > +            compatible =3D "lontium,lt7911exc";
> > +            reg =3D <0x41>;
> > +            reset-gpios =3D <&gpy8 8 GPIO_ACTIVE_LOW>;
> > +            vdd-supply =3D <&lt7911exc_1v2>;
> > +            vcc-supply =3D <&lt7911exc_3v3>;
> > +
> > +            ports {
> > +                #address-cells =3D <1>;
> > +                #size-cells =3D <0>;
> > +
> > +                port@0 {
> > +                    reg =3D <0>;
> > +                    bridge_in: endpoint {
> > +                        remote-endpoint =3D <&edp_out>;
> > +                    };
> > +                };
>
> Best regards,
> Krzysztof
>

