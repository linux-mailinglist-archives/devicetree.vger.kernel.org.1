Return-Path: <devicetree+bounces-23742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9960580C3B8
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55E8D280C8B
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5544A20DFF;
	Mon, 11 Dec 2023 08:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MUR6rhpA"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D06F9A0
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702285025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5LTIUKaVC1eazTIk2UXuAlOz9lK8/aeDlO+nHP2T/TQ=;
	b=MUR6rhpAjRggdqy5w8t7/cJeAQiry/8ODTVRXM4+b4exeY5Ds6lgkSWZ/D7Xa+GCAGWC9J
	mthXopepeYlwF8xLaQMWqp/o2s23BGPWpS9Mq6l5oez/B9lxtjWYXWhfFkqCxTOgSDTkWN
	1C3Z53K6wFV3YLoQBzY7Wn7rGnw6fPw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-257-lIFWKQydPdSHiiNzdIZk1g-1; Mon, 11 Dec 2023 03:57:03 -0500
X-MC-Unique: lIFWKQydPdSHiiNzdIZk1g-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-33343bb5dc2so3573698f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:57:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702285022; x=1702889822;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5LTIUKaVC1eazTIk2UXuAlOz9lK8/aeDlO+nHP2T/TQ=;
        b=R5mB2rD7Z5HMCcMU+/1sGCtlOsZSyQzQz5m+yYcRmhXTPwNd5DssflBvlY1HFx9IcQ
         gQMmOpsWBwhuoJMFzOaQco87LO0lnbtHkiBdo/Vh6CuA+7qevTkVVihU8zecnPgc25SO
         VUKd9JllEuMdVojekCaBDC3Cx8nQxpHCZsj7SjJiKGRr4Cb91Vj1tmB2X1Yb8SpxQacv
         ew0ZOU5LyARYw7ehAwMqK3YLuxJgiy9FXNTqtUvCQNlaHm4v17osoAhxo6PYJ5LtVO1N
         v6EAwqLIOh/Lbl/lq9U6y83lQL/rXG8cfMgF+GW0FLZ8Yiw+P2+ed9Q50pCkLHtAoHlv
         mMmg==
X-Gm-Message-State: AOJu0YyrGefGuhOqngePTtM+dneaOdJvd477GAHKDRkXTiKZzbR0lB4S
	xo7elk8ShsWcv0Lov6K0YJiepTRqiFWzgfDEDtSfFPrdU0X3pal6GNGGruGaAqlxrJ0gW25/SMG
	vqGyIxCf3rvkFXLQkr5TZTg==
X-Received: by 2002:a5d:4e04:0:b0:333:5448:a524 with SMTP id p4-20020a5d4e04000000b003335448a524mr1817804wrt.70.1702285022063;
        Mon, 11 Dec 2023 00:57:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFsh9Yv6nd25XsjfPOninxctIiTaXU4lHFkIdNF81q3d42Ndazl+E7oJqr0sqZiOlOLBOy/Qw==
X-Received: by 2002:a5d:4e04:0:b0:333:5448:a524 with SMTP id p4-20020a5d4e04000000b003335448a524mr1817786wrt.70.1702285021772;
        Mon, 11 Dec 2023 00:57:01 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id k15-20020adfb34f000000b003334a1e92dasm8142312wrd.70.2023.12.11.00.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 00:57:01 -0800 (PST)
Date: Mon, 11 Dec 2023 09:57:01 +0100
From: Maxime Ripard <mripard@redhat.com>
To: lpieralisi@kernel.org, robh@kernel.org, kw@linux.com, 
	bhelgaas@google.com
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, vigneshr@ti.com, tjoseph@cadence.com, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, r-gunasekaran@ti.com, danishanwar@ti.com, srk@ti.com, nm@ti.com
Subject: Re: [PATCH v13 0/5] PCI: add 4x lane support for pci-j721e
 controllers
Message-ID: <isttx4vp7warwowlz46oo7y2zex7xuizfvovfse3yb4ww72e6u@nuev2jbkhnhw>
References: <20231128054402.2155183-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hiyobel5xvyda7mp"
Content-Disposition: inline
In-Reply-To: <20231128054402.2155183-1-s-vadapalli@ti.com>


--hiyobel5xvyda7mp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Bjorn, Krzysztof, Lorenzo, Rob,

On Tue, Nov 28, 2023 at 11:13:57AM +0530, Siddharth Vadapalli wrote:
> This series adds support to the pci-j721e PCIe controller for up to 4x La=
ne
> configuration supported by TI's J784S4 SoC. Bindings are also added for
> the num-lanes property which shall be used by the driver. The compatible
> for J784S4 SoC is added.
>=20
> This series is based on linux-next tagged next-20231128.

These patches have been floating around for a long time (v12 was almost
identical and was submitted back in April, without any review back then
already [1]), and it looks like reviewers are happy with it.

Could you merge them to get them in 6.8?

Thanks!
Maxime

1: https://lore.kernel.org/lkml/20230401112633.2406604-1-a-verma1@ti.com/

--hiyobel5xvyda7mp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXbO0AAKCRDj7w1vZxhR
xSCJAQCMVu4ns7BPOUOOt9ZXTqgjvASN082LC9xcB5COxIfLsQEArbDg/9j4+RST
/VDJ4u2ctcM4T8k/v3JMo23lk/ShmAA=
=8qsX
-----END PGP SIGNATURE-----

--hiyobel5xvyda7mp--


