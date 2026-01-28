Return-Path: <devicetree+bounces-260560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKwLKo5Hemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:29:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4997BA6EBD
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75E2530182B2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086A833EAE7;
	Wed, 28 Jan 2026 17:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nifj2gvW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631DF330D29
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769621265; cv=pass; b=YL/g5LCLHsa3zEOFV9Xs6NzQAWMl0A6UvLS5WxCeqvM/aWklrBJ4g/DMPCJH72mhm+MuFziAhzB7gj6DE5VQ6NZGzFTI+p/fzfLY5LJTtY9NFPR6QrJChBcvKrleNyIzC1xV+Ou1q8rmoxh//q1nQapw7LAykAb5n/X27Ta3GVI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769621265; c=relaxed/simple;
	bh=5RnEkCjzYpz4k2iW4MASQPKjHVwhosBVIbiwaiUkDW8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OnBdhzOP/Kh95UaFH4DbNiz6lEFqNTy5W9p/Rkwr1R42zltKd+fHPME1YtWrXFF8yHNUF4+bpOwmBS3TqZiM1eanZDVU82tXEm2pbwRzeMLflHUts8VB0qfeoHoIJcUdLpU/FSqyk/QJWNK665hhH494QUo7vNimd6FQfbWPoaE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nifj2gvW; arc=pass smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59de8860b94so48065e87.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:27:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769621263; cv=none;
        d=google.com; s=arc-20240605;
        b=OxaBRvhVt/slenS64MitsH2JTLBQgJ9s6FpYVGKjKdshHHekLaNa6kC64n/vvMMGUe
         cpeCtxzhnmjJCeiq2/T5KlC9MIwgs0zg+y3BvPMLPf1Ci9f54aTW+PY4ZyFGrapkUlZ+
         SIlUs809ZDAixDQtFqoSp/uKnhxbtt5ic7fB2gjIm9sp8rCIrbKqcjlVJqo/1Mqt1/74
         3zwXbbY31FLmXtryaKMFlyH4M/RXxfVxagXmWEzVcoX7ujLG5VyljdFzg8pvOYHBXchI
         PqeOhXI4t1+518bOMyQCnqXdH9LdF6MPHIewWTYqe8lXr8rkMHZZLbVyXqhrO08gAMY4
         /PBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PUaTn5YCYH1aGyPr+judBHKrOAYlextt2AGAL94fdA4=;
        fh=aGc3838T3Ajp0i28RPzdwbjvtpc2kSRLplZgxnw3SkE=;
        b=jDaWv1fbjFlSpCCjIkQnbHV42S8d5HXq03ZrG76+2YvX34LDcilsy8O+Xl6nZIgV4i
         MNH6Ym/en18JDfwYhl5q6+Jb0qGRgv7zmLFSpWaNaB9VjdyqAb3KC0mhkutBYYmNt+SZ
         3jojjviuLLMfefAYAyenUdI9eU7YFvBy7qvorPvTkSlhc8DpP0iDq48L3Szjcd3yqYJu
         6qBrbSqVM6rq27vn+TwMC4ufYfZK/EzdTYIphapmiXOG51sK1HbvhnmYSoLGsvEo5iZj
         KpyYP3Ixl1JYrLwxTAemKcg8wDOEtOLnfK9QUPWo5AB7IdihrSqWQLRjmLbGO0LazNaI
         ASCA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769621263; x=1770226063; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PUaTn5YCYH1aGyPr+judBHKrOAYlextt2AGAL94fdA4=;
        b=Nifj2gvWIkKiqCsJzWv81dnjhHNg2ERJXpZjAo4Fs3AUytevtXCzIBJ+dkyp7Btw+o
         ZSZQF67+1MbzpS41nwn8/O6K5+RxgoSM+wx4kFXdrheszHLUliZomjBzecWQkFanl5/9
         IVFd7cfmUFeWQjJKZnh9RjZ7dFhrL0/JRg6CodP2i7in+0HpHX9tDDIm+kLLArzxk5OJ
         V06KC/wswB1I0hWUVNkevLpM5Z+j6KiIPeMtKfn2lyyA0Zz3BFtKBfVbDG/fFRDV2KLN
         7wDPRkCqFNQw7NPtbkqW39EZ5cLhYi5QVW2tKhs6zSJkSKS14grJYy5wHmYqYcI7DFLk
         YkiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769621263; x=1770226063;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PUaTn5YCYH1aGyPr+judBHKrOAYlextt2AGAL94fdA4=;
        b=H4cyxZ8VveImDsCSwLdnYyF9UVe85hH75ULqIRjIfjanhS8bwP9hPzGRG1bjgmIjGC
         u//Zpm6GD2gOxSi2GxX6R4Tdxr9rgszeUbMSgWGICkCzQTDsqbI5jX9bKq/G4v5bFJ8a
         P8RRAnupyJLeDI+Vw36CyIjo0uQ+BRkc8bdFTsjw5pdOsqp32nxzjXCq7SsBVyftMmy/
         y4VSyytVz2FRnczTY6UslHEi+bh/3X7rpYsa39Ok0RrmOpcBko747Cqp53AFCg/Gli15
         fUf/ITBce/H2YuIM/S5pZBfHE/e3fSM0PbaP61rMIqjiN4LOG5H/q2f1yoACm/S3aN19
         Gd/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUW2Hhocs0fjRpCPGCN4M4oZVy3HtPguViAALh7lfispTFuoyEQ3DB4uqkpHGfyqjaNjDdfmmaLjbr7@vger.kernel.org
X-Gm-Message-State: AOJu0YxwE+iiYTFJoyHfXx8N+pMheY/4aKcJZt2jEKjPhwNPhdMGwaH4
	iOMZzXHmNgZyUfwaCvBc1pXqYQWpGz0pATF2D3XFocP+zguY2vcPUp5pJwlkj7RyCzO2Bn/qXJ9
	fZnC8ZaLwv+t0ESKkDFo/9a2T4VuAoRE=
X-Gm-Gg: AZuq6aIVNSfO7hYZvAtYpIaFFFXTpS2H0Hb0xSuDHims/OGLu24VQnMqg9KGs/QKpiC
	C/DzE05SSypbMd93Sx5kronbaYEUrWPCBJzG7p3NPaSwVFV+ER9QXRO+E6Sv8SxP5C7yqkmXQCA
	Z56KNhF3VtIFEjLg0tSiN6pu6VA9PxmdCfqtkN99eeyPGw7F6cSqYe548stHFq+JpqcJ0d2wfI1
	z+IYtjjYVYbQTF3D9gd1yV+o9GcCBRU2dJF41fQSZHjlTDDVdrjl5yg+kcaAl73CZJ30RmtHsZ7
	KvmYOZKxmDEY/VJyr6ianxk9V4izCZexaLxA4w==
X-Received: by 2002:a05:6512:3b9f:b0:59d:d32b:1d1e with SMTP id
 2adb3069b0e04-59e04035516mr2970279e87.51.1769621262284; Wed, 28 Jan 2026
 09:27:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260127025740.2601841-1-onlywig@gmail.com> <20260128155529.3699599-1-onlywig@gmail.com>
 <20260128155529.3699599-2-onlywig@gmail.com>
In-Reply-To: <20260128155529.3699599-2-onlywig@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 28 Jan 2026 14:27:31 -0300
X-Gm-Features: AZwV_QiCWCfgEVaf466qIPBgCbhNFFu_DgTZRC-k1mWUAV0vRzvFYLXs8kt0N7M
Message-ID: <CAOMZO5BdH3X_efJGFyAjCk-1amLTDA303Lfr9NHLJMpbPxEJcA@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: freescale: add pixpaper display
 overlay for i.MX93 FRDM
To: Wig Cheng <onlywig@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260560-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4997BA6EBD
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:55=E2=80=AFPM Wig Cheng <onlywig@gmail.com> wrot=
e:

> +&lpspi3 {
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_lpspi3>, <&pinctrl_epd_ctrl>;
> +       cs-gpios =3D <&gpio2 8 GPIO_ACTIVE_LOW>;
> +       fsl,spi-num-chipselects =3D <1>;

Drop fsl,spi-num-chipselects. It's not a valid property.

