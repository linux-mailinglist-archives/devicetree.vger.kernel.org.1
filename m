Return-Path: <devicetree+bounces-222627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0C2BAB740
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 005144E1EC8
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9258266581;
	Tue, 30 Sep 2025 05:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TWyICfZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0492224BBF0
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759208612; cv=none; b=K5rln1UOV1maladlmy2kZmAj9cXeid7u+DAIoArg9ZxPo+6SZTF18gQzi/64HwbK1UuueUeTPyCUtpJKdHUXMTfNlHV7qdrj+DPH0pYRHrixaPZtG/lFd8yzKYZtARDBUsTDvZD6sCgcp6fK3jrhvS59CeTLlBC7zuXqSdaLakM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759208612; c=relaxed/simple;
	bh=/rtni81NLg6R/7V1kv9Fo73Xzse+sErQ2+dI6TO4UQc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lDFsrszscz0M3E2Bvbit5QPkAHowBC2BID7C9pYAx+ATNrDdps/DxPuq6/21O2o0VtFp0bFGTzIcfqI5DCZMWV1UbZYsc/5iMyjgWKudJuRGSck6bVK4h2aWMkiljgs3rBSXPu/0N+ukHWme23c0qEqUnlDdfay0pt4En390pw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TWyICfZ4; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42421b1514fso247149f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 22:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759208609; x=1759813409; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tDHiBgvlZKMDqbJ9iVvhp12FH415WcyIkEC0U6JcOUY=;
        b=TWyICfZ4z2cYhY47NZ+ruiXEneICknDA2HYceTdzCyhL0cl6gZixTfImrVL3GyW+v1
         DZBGunXX+axoxxDtqhB5jq89U2eyVvfe1OBLk+yOSB3VGp3MrRk5yz3AjShVeEX1Ah2U
         QsvMI4fbI8tBDAvlpqPzVv9IttMgVXmgyC4t72It3Wsb1H8y8sAqB20s3EasBS6zgQ+s
         2enDoOuPJd+wAUvZCxvTdi3H74vKfH0qc3puZCaTZA6iYGZ4kN6Iaen+E1YJ1FlwWq2e
         CIFMoe3z7vltCTN5Ir78j5sgxLt3H9GATmZVVe81jRMl5LvbvwYT7gSKHeZwIxTIrOXA
         cWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759208609; x=1759813409;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tDHiBgvlZKMDqbJ9iVvhp12FH415WcyIkEC0U6JcOUY=;
        b=XeEHKzMvvjyob4pOBcS2NGoVKv3j3N6bqxqtlCLOB2NEXZTLRrNOGA1ukcMniN0gYq
         Zr3axuR27Wiurc1/cYkoGp/s7FrkpAMeU03D9IJW3RBuwup69WvRxTy+5nAQvYafMdac
         iGavZVGmrK42uTwnVmkfMHBDkMD3MFDlGHX/62HV0Ii/EMkIpDB088NpHD5k7U+zPNUM
         TcPu0L/penxQkk0Zj6qlsKPLEkoA0kA6i6iaZaa12xhpr+4EVjMZxJfUEj5IEf/yuLNp
         QGacznkXaK1VgmR4B9PVLQ46efaOqcIC4PZybpCZ9g5sS4gaskiiDLWDKgudT2GkK0Mc
         csLg==
X-Gm-Message-State: AOJu0YyJoRaYVxmSFX42ZHWIZLlgrU7YsF1hQAjOBhEDfFPt3+9f2hyx
	73V+CwgLWn2TlJL9drHUNGbOxoDWpoeZ2m7aQlcpLxJjRDieufwc219L
X-Gm-Gg: ASbGnctmwDGlsEfImBy3N2E0du9jn67uK1uU//s4zw80L6/2zxT0/bAVfuSqLp9+US4
	Ba1J35U2oglHFC/ymNNkIuUjVUfbQ19NYCiuZG0rToaVKQ5dC/ts9uOsev+G89kvEi6IxQGMoPj
	lFLk5m0bqClk0+g7hbDjrbM1O+FGdJffaW069mzJtUKQIOciPxKBx5o5lZkhsjLCpD+YfKyV06E
	QBSEfwTkZK/v4jMF5xheVahRh1LwFP/eUUciR32oYLesUHM4amXV0YsLeQ+waxxKuNsT3ZizPI0
	Wwd5coPkN2/T448CmPDkwcjtZ/Cl4ChtYCA5uIZdUCnJl5ql1Mbou/kBy7c3b523CGRRIc3+J/A
	8CMUZ9uU9HKZ4KEIOw/uZevxfR3joR7+GiPvsZfdjsJCpwiNlKM01LIIDBSiW5p/H4rGJqBJSMh
	lBcg==
X-Google-Smtp-Source: AGHT+IEqNXnG5AV0ehUmkE/8d34Mg5uF9Su14lUDdR+mcFSm+TA7IIv1Oj266kEd4QYdX03XSq9P0w==
X-Received: by 2002:adf:a3c9:0:b0:410:3a4f:12c8 with SMTP id ffacd0b85a97d-4103a4f171dmr12364968f8f.20.1759208609024;
        Mon, 29 Sep 2025 22:03:29 -0700 (PDT)
Received: from giga-mm-2.home ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb711sm20710267f8f.11.2025.09.29.22.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 22:03:28 -0700 (PDT)
Message-ID: <ad86009bff38ddae0b291d3edbf958ce6363ece2.camel@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, Joshua Milas
 <josh.milas@gmail.com>, 	robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, unicorn_wang@outlook.com, 	rabenda.cn@gmail.com,
 thomas.bonnefille@bootlin.com, chao.wei@sophgo.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev
Date: Tue, 30 Sep 2025 07:03:24 +0200
In-Reply-To: <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
References: <20250927173619.89768-1-josh.milas@gmail.com>
	 <20250927173619.89768-3-josh.milas@gmail.com>
	 <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Inochi, Joshua,

On Tue, 2025-09-30 at 07:54 +0800, Inochi Amaoto wrote:
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> > @@ -0,0 +1,88 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> > +#include "sg2000.dtsi"
> > +
> > +/ {
> > +	model =3D "Milk-V DuoS";
> > +	compatible =3D "milkv,duo-s", "sophgo,sg2000";
> > +
> > +	aliases {
> > +		serial0 =3D &uart0;
> > +		mmc0 =3D &sdhci0;
> > +	};
>=20
> It is better for adding gpio and other serial there?

I believe, gpio is long time discouraged here.

Link: https://lore.kernel.org/all/CACRpkdYErJH5RUjL+jPC5vnaqGiOqBwHsr0E42wO=
WrpBGrpS3w@mail.gmail.com/

--=20
Alexander Sverdlin.

