Return-Path: <devicetree+bounces-133627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5789FB0EE
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0347918831D8
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0161AF0AF;
	Mon, 23 Dec 2024 15:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IGLxRBlG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DA418787F
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 15:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734969262; cv=none; b=pYlHqGtNJXtmwp2hBSNaOYOFA/urfLCIL+0oyv6qPoVvjeIDOPd15k3xXq6obpbAEbnogrzXzhRl1P3lllzDvS0LtpsSBreoD4+es/8N/WARQrfN8K+ezvCPw4t/wUX9xCtr/vFIdaNJjEroVj9/eyHIrUAFQ8jXIPo8KudfEjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734969262; c=relaxed/simple;
	bh=WqluWNRDE4YKKh+6ZVJkRynFpO3XhtHHTARHI3/wG/M=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=omNSQ6PywNct5psmH1jrtklCEV+2VvREVd7LJU27B8LSMX5OUIrPQ7CzWPu+INaKKwoXMxkFacP1+La0g83m83yb2eG2Iyc3G4l/vnnXjp9I4Lxk9+D+Pm4v9Mf6LH1vdIZRwXqHi11hoaeDtUGMFcaRd6FE8w0Ig6mRuNy8Fo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IGLxRBlG; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso32041905e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 07:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734969259; x=1735574059; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WqluWNRDE4YKKh+6ZVJkRynFpO3XhtHHTARHI3/wG/M=;
        b=IGLxRBlGRMF+NYrBH28z6XC03x+mJGyz0ZfsCMd4eH+sCt32PluGLWUrAZOVwOPy8G
         9mJgboRFI9ruwuDceZQDBKIYm9ZQtpSHEUs2o2ZY9AMs1KWWfNX6EyB5SWRxVQrGpJwa
         5O478qBQmNxyEt26pCXeWxV6IvCDEfQMirBYp8Depx9cOXKUGGDWpn3bTc7q/VmjWkaO
         7noGoDr0TDjjC1MItL1i8HrVs+bCmlf6hxWeQ/fA3JRzmt54TOPN0P2S3JAaxBpir8gb
         iX+TU7+6Kh46aS2PT37I5uXu/CGfD07S55+fVC1E646DKkDu8oLTNFtAoSRi1HP8OQhT
         tK3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734969259; x=1735574059;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WqluWNRDE4YKKh+6ZVJkRynFpO3XhtHHTARHI3/wG/M=;
        b=CXG5LjjewIzdagRC/PbLKmf/mgBwYbqd3hsoTLRtThC0a2Xha9SXSJ+8YPhul6ujeu
         ZSXfGrbdgYIs6f4etdODj2z3SAo2EIXc3XurerXFirwG5SlgOo+cjEZFMYOkI7zV5lid
         SDJiioGyqXRLM2oyV0Em6UT6WpdyvJT+mh+Q4KztlU7pAHt0rLTPPiJAHnTBRCLwDgid
         ondGqs4eQkW7hayrRrQcV2m5BfoRXDh8RTH9Q+Jo3Ht64YNgxF6x8x4q3r4ytiO21bVA
         3Ut7hMOCrxzUJSETPXc3PSurood1hQGwnUwENKKpALYyc5lDv/3w1wfCnfSIZn9VVpYW
         3XqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNhMrpQy4t3uAuyhfPdulvuffOR0YUBtcZqcOigiOhCmuPKrQ9JzOg0D7zqv6C3PF/4S96AksysyxQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4Z3kDDm8UXrjtUypB879VH9GdIc8iAaHleQKzV5o/WiW17p8U
	CTY3paB5YIKVXlsl6Kg2B+vZesHo84vHfEkgIZ1xy8mTJCBaoVpWMuPQ0SnDo8s=
X-Gm-Gg: ASbGnct/Lm4k3pfW8k2m4oJ0Y9LGhZQiSxugD7/QKS31dSVpe3i4GvnJMxb7aaUAZFh
	ePDY4LjjZ0+QpVcIleZ8lcs8CJ7UEE/7VsTMk8L0hDsUhpHn8FrquFpJ5WECdUwP2a/6JlkhNng
	j1bDGvNfoihcFBmBEXrlPVJf2N4mN92IkMXnBsN2ciVqb7MsmABti7a5KTT/+JiWXYXQN1imHJ6
	4Bb5R64V2cQm7ZH3BNkOMkz77S6v2lorb7cMrZKPvIrijujxCGhMd/iLWbG/w==
X-Google-Smtp-Source: AGHT+IGXa0TrQOSZFAUYuStWX/JYX94Y0VcFf0tq0paQl66u9Om48mfMnJ2qgjLAvuQBzCBhXSshNg==
X-Received: by 2002:a05:6000:490e:b0:385:fc97:9c63 with SMTP id ffacd0b85a97d-38a221f16d6mr12153008f8f.9.1734969258675;
        Mon, 23 Dec 2024 07:54:18 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b00cf6sm176394475e9.10.2024.12.23.07.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 07:54:18 -0800 (PST)
Message-ID: <34f62a976e4dd2d56eb34e4efa987ddc3e2f31ca.camel@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: google: add gs101-raven and
 generic gs101-pixel
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Griffin
	 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Date: Mon, 23 Dec 2024 15:54:17 +0000
In-Reply-To: <c2efb6c7-4a0b-4078-b0df-6e646eb88906@kernel.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
	 <20241220-gs101-simplefb-v2-1-c10a8f9e490b@linaro.org>
	 <d0c1511f-b052-4690-aefb-3fb41e1e5875@kernel.org>
	 <cfdc5b1b03140e3d2ce3fb58e8b342dc2ac06d04.camel@linaro.org>
	 <d960e22e-01ad-406d-9616-d45edbef0232@kernel.org>
	 <9507951f9ce4ee9d8c553d8964f00ef217f8ed1d.camel@linaro.org>
	 <c2efb6c7-4a0b-4078-b0df-6e646eb88906@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-12-23 at 16:39 +0100, Krzysztof Kozlowski wrote:
> On 23/12/2024 16:31, Andr=C3=A9 Draszik wrote:
> > On Mon, 2024-12-23 at 15:14 +0100, Krzysztof Kozlowski wrote:
> >=20
> > >=20
> > > You now say that these are valid boards:
> > >=20
> > > compatible =3D "google,gs101", "google,gs101";
> >=20
> > Sorry, I don't see how (apart from the fact that dtbs_check flags
> > non-unique elements anyway). The result of the patch is:
> >=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 minItems: 2
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 3
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - go=
ogle,gs101-oriole
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - go=
ogle,gs101-raven
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - go=
ogle,gs101-pixel
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - go=
ogle,gs101
>=20
> The problem is this line. Although entire concept of flexible list is
> neither need nor ever recommended.

All of this was inspired by Documentation/devicetree/bindings/soc/xilinx/xi=
linx.yaml
I guess not a good example in this case...

>=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 allOf:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - contains:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 const: google,gs101-pixel
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - contains:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 const: google,gs101
> >=20
> > So one can not have 'google,gs101' twice. And if I only add
>=20
> Still can be, but indeed not with my example but:
>=20
> "google,gs101", "google,gs101", "google,gs101-pixel";

This example doesn't pass irrespective of binding, because
dtbs_check will complain about non-unique elements.

Anyway, will use separate entries.


Thanks Krzysztof,
Cheers,
Andre'

>=20

