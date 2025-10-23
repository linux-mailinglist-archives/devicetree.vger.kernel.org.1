Return-Path: <devicetree+bounces-230543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D57C03825
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6307F3567F2
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 21:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A271DB375;
	Thu, 23 Oct 2025 21:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LZbKdB97"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D846D35B138
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761254329; cv=none; b=WS9mM/pIw/Lq2z5GZOf8SwJChqJPVnNwGMPAvz151cqgbJvKNjqMdWL0JSIudoNmXkAeUQUjGXLu3NBE/9jF1zFbB27Dc6IsYIWnX2y7tnUMxnfQUXiSmUaYy7+Jg7kZfjXuWniTe9JVqIMTNJcVdxERT1jH9RhZcX6aYOGrLfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761254329; c=relaxed/simple;
	bh=zqdMx4BWZftJP4zcBY1Z5+B4QE2/WdMi8WQpGousUlE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=nT0qiPwiJ+vItT5/q+C2QvEXSrCSTZqfEbz7Tbmm+GimhcPXSz9YvitQH1sf1WyCTd9FR1IsagBUWNiqrv9rK5TbkmClKAUFlLLAgpTM12gZIC+BSfbkWT4D1w6ZgZeyVBbOkT+W+fnhOaHjRW9JKnmfDJn/qE94K0QeRieqdnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LZbKdB97; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b6d2f5c0e8eso278388766b.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761254325; x=1761859125; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zqdMx4BWZftJP4zcBY1Z5+B4QE2/WdMi8WQpGousUlE=;
        b=LZbKdB9782hnt5yuzxvL/FP5J+lrBGenS+LYB67OCB+nbkrzAnRVPaxwcmNzTescW+
         GBsN18jvvXO1lvL39X83B4T3wDVKP29wKXkPpnuMpw1BOBf2az47MLQe0Bi+Wyj0vQfN
         sDYq/XsbyLo9IM0Jo4eSf0N1qdZc0uyWMLEt5eeQFdU10n+mtb0BMi71TFiSpQrpVowC
         6QuZWhLB+/xWf7nIf8fwedNtSMhc5fF4tSh1N+NillFo+BBPFPOjZeX19niDp1KdrBxc
         qOeL21sqHDYJAOzF1H7AnaQzRdHzsvapJgU1voOoyKU3uLKf2E7yaeyGWvMXM45offQg
         iZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761254325; x=1761859125;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zqdMx4BWZftJP4zcBY1Z5+B4QE2/WdMi8WQpGousUlE=;
        b=aHyRmzh+SOjJlWjZIyx101npYKg+ouUaaMpKoRLkvqKB14n5nQypSFyi9e3oHieTIj
         OX1ELhkVL1pGtUN7dezAl7kertgHZNgGTz+JbtyLwAiRI/3xn2IuXUlth8QoKi1lIgtb
         YuUsE3xQxj2cQgWBA7QM3OLf77O4sO0SoxRO1QC+mVvT00KG9QJ7Npu+tC/ip1lP2be2
         Q50JTluDYf7J2jXKFRr824tK3Irqdw/ADYoheZJ7dCuhu/bLIdgqX1OGCx8TxXb3Tn7q
         /DwHSchYVBPdJWhN1PKz/tXqOzXo1dQPqPH5ClzvD6g1AHnvKDC9hFaSWxHYEYjZiFQ5
         ESNA==
X-Gm-Message-State: AOJu0YyOHv97EnEOOmgwUyyHO9tBKh5oklNfTtC25Yms+kTkLoWPWOXl
	mZFYSDlOrlpqIgYLAE7/D6Ksz95KDDpNmDGn1mDWCmRMpYTUdTGgLX4O
X-Gm-Gg: ASbGncuarRIOrVYYxNIuMh5WRexCa+mg3262APgVCCte7pWKICL9s0V3sTUyoG9Mp4h
	xH5cp1Y/IiBc/3sBxU06QfQ73tKlHtnI0c//52uJLn4eDyLirqcfsF83pOU5bmjQxbenbEDgScb
	p1vdgv0z2COVD9G+iqk0Sq8y8IDwxiuDBQxlU5+ib7f1Kc+EzyjlQoJgOSNq8K5UQIu1gKZCjKa
	5b8V2BrtWiPiXS28FAr0pYFg9IyXxXPFhNIagnwLoYAFEspb7mpLlfM0I3+cl1HLREMoX3J/92F
	XufhYeYqk0RUuUT87QdtVJzkPsA1BQYDHq3G8L3WaPqJIJ8wSigu1dhICuGt6gnOvR7b7lzeCqs
	5TutAVOCOdr631pK/ehQ/OjPxrZcJHU2zRupe3C8r5orDAAJ50ke0tx3j5J5zUQXA+ZMqYnvjE+
	aFjRFpe9Mg2rvYZ3DqRFHtTvdPkSWLgeJM+SB58/Z6oJ8KQF8g8kiwodHBQ6nKG2Y5i4PjbQSdh
	B2qcw==
X-Google-Smtp-Source: AGHT+IHwxspN3hm1IKB4H9V+c3IpDHqztSqky8Q11VvJkuMeM6pHmJx5hJJAnadnKwijqWeRSs5KTw==
X-Received: by 2002:a17:907:9415:b0:b6d:2d0b:1ec2 with SMTP id a640c23a62f3a-b6d51c3132amr473461566b.54.1761254324927;
        Thu, 23 Oct 2025 14:18:44 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5144ece8sm310786266b.68.2025.10.23.14.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 14:18:44 -0700 (PDT)
Message-ID: <cd436879784d6843a32c12abff9f9a60d4c6da93.camel@gmail.com>
Subject: Re: [PATCH v2 2/3] riscv: dts: sophgo: Add syscon node for cv18xx
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Longbin Li <looong.bin@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen Wang	 <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@gmail.com>, Paul Walmsley	 <pjw@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou	 <aou@eecs.berkeley.edu>, Alexandre Ghiti
 <alex@ghiti.fr>, Thomas Bonnefille	 <thomas.bonnefille@bootlin.com>, Ze
 Huang <huangze@whut.edu.cn>
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Date: Thu, 23 Oct 2025 23:18:43 +0200
In-Reply-To: <20251020083838.67522-3-looong.bin@gmail.com>
References: <20251020083838.67522-1-looong.bin@gmail.com>
	 <20251020083838.67522-3-looong.bin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Longbin,

On Mon, 2025-10-20 at 16:38 +0800, Longbin Li wrote:
> Add top syscon node and all subdevice nodes for cv18xx series SoC.
>=20
> Co-authored-by: Inochi Amaoto <inochiama@gmail.com>
> Signed-off-by: Longbin Li <looong.bin@gmail.com>

Successfully tested in host mode on Milk-V Duo Module 01 EVB:

Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
(please don't forget to take this tag into your v4 if it still will apply)

> ---
> =C2=A0arch/riscv/boot/dts/sophgo/cv180x.dtsi | 26 +++++++++++++++++++++++=
+++
> =C2=A01 file changed, 26 insertions(+)

--=20
Alexander Sverdlin.

