Return-Path: <devicetree+bounces-203144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F05B20192
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 286FA3A60D9
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 08:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D12D2DAFA4;
	Mon, 11 Aug 2025 08:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qj30TMNv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855F626C3B6
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754900381; cv=none; b=ooweX6j0wmWSrmDdOT/rfoujPV1x/8nmWv7Ttrpd9B9ECdMgItMm9jdU3OrCIv/HchgKzlzJtM4vjb1iJWVnf2Gf7LkOKQ231WAd9G/kJ4j4TNAooQCoIDA5Xxo0mKcwRdkl2Nzrt9WEbNjXE14OwePRGVuhcs87GQAPUdJl1Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754900381; c=relaxed/simple;
	bh=XTrg9sh9z/zz/WffhF21Ny6WPfQ0gdSWCd4GZohzIxw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NMjGVuEFXYS+iFElvCARjk6ncQ2KUmRLr9XSjvS84F/g19oES3ddJovD5LWJRGWeOJ/mL959Akk9s/Zpa6yYS79WXL6MBX/fWDml0FKxBsN4A4bXerm5Hg2T3b2IzuDz/fp5CWeBxcH12H4Y1U+XTSXdYEYMBSNd1V3qTIonkYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qj30TMNv; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-af96d097df5so743978966b.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 01:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754900378; x=1755505178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SgbL89+jWcykg4VT77IwFJx/cFqzfg7ANmaGG3REd70=;
        b=Qj30TMNvk7yU7JEPiC1Qbt6E86btX19GNwTEMd+Hh8gm7qZg05Vi3LMyax5g6PTKTH
         mM5cliwcbVxPfAPnGuSOlCTPu7wp34/gvxwD9w15vh0GwjJ5vnbUiAuPH5Mub0lPWGQN
         pm4i/9jK+bmSShdOh24UG+A0qR7wKg7twc18gB8kpFYq7FRV7WBnnWaMj9ZPlURZSkRY
         adwSYIuHu3D7wxAz5nBonA2z20RkiijCDtrdCh/CvRnaIHE5xjHCsyPtP04PACXyJYkK
         Y7vgHEbIb1rYdo0w7BGWb+bH9Qa/30etsuzUwU/PsET14yY3xaXxvg2CbvN62p/bO2C3
         lR5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754900378; x=1755505178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SgbL89+jWcykg4VT77IwFJx/cFqzfg7ANmaGG3REd70=;
        b=bBgUUPTBzCACTRP0T78UmraoFCXKnV8Nhg79h9jX2s6cEJ6/+tAjpaW0/awKan/10s
         brVs8KLSh7O2Ur4Gd16pigMUj5MKb6efAHmsGRDWIgmSotUJaX3hGYRmYnqyiZEdLtDv
         4pAT52ro0QCzzUsSMACICzVlin5t4NivNTnN6SF4b6yBv97XK865dAomvxyn9P+vH1IM
         XSohWSKLzpIAZsJYRIOnzgjfgu/28i+UyWGcXAzvexGgpcrJZDajb828O+IOz9R5aCAI
         FvDeThJRxtxglHNU9/UaTFrmwRRvQTJ195Ay87eFHENgFg2rcNeP+zOq1CAG0CRq+q9P
         k6hQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGtaL/MR2Xf8X2nm5UjlPt4RVKgzXF65QIUcLme2NSoeB/50JLuSHxYrmIAPWeO4N4GhhaJNrDbfIa@vger.kernel.org
X-Gm-Message-State: AOJu0YwcLFKceCkKRaxKUtAK3V3+eEcM59oWfp1TH+sylCU9671Dyhnm
	lTkBYTl5sKATz7x6ZuGS6WM8HhXfs12HyD74//zoSlu5pWqHvKt+7pxKj2wYyurFwPozYbeyQhn
	+n3vxPN5DH/+PZDhHTT6IFlHOYng9uf8=
X-Gm-Gg: ASbGncvqVZewo9wjOMzEcEr/RNnWklLujHmE85Ucp6oJcWsGV7mDO17PJeRBM7GhRs/
	laxw/+9Jnr+R+khhrDTpAJ0Gzn2T0UFd6vRytAZwv+wDsxtIoZW6uwdzl5P2IuuEjccxIiXUxvx
	lkKcqvJ+2ZsIOYDc5W8QxK+4/MUys0D017SU7ZtLeOwQtYiRULSV25I9zVnNqHsJmxqejogl74g
	fwI2fJg
X-Google-Smtp-Source: AGHT+IF8gqpHKUggAz8mRHFtabGXF36B1xtlX4P+D1pU+orCN9564Rlc80C3nmmzBa8cGbzuEi0zdw4YMnyQiNETI6E=
X-Received: by 2002:a17:907:7f02:b0:ae0:ce59:5952 with SMTP id
 a640c23a62f3a-af9c65f16ecmr931142066b.60.1754900377495; Mon, 11 Aug 2025
 01:19:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <a6b216e6726edc00a910ba543ef8f7a9195b94f7.1754890670.git.zhoubinbin@loongson.cn>
 <208c1e34-85b4-47d7-a4d3-8b8b7f2caa84@kernel.org> <CAMpQs4+OcC_jMvQVc+u9ue9HeBEPcbzWORC0rWkXhj3y90fvSQ@mail.gmail.com>
 <20250811-impetuous-civet-of-wind-febe58@kuoka>
In-Reply-To: <20250811-impetuous-civet-of-wind-febe58@kuoka>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 11 Aug 2025 16:19:24 +0800
X-Gm-Features: Ac12FXyFB4EVt99-WdzeI01ERu2yfCN8TNLMEhiVAElN4xIXYzFbGw-dcmhbDQ0
Message-ID: <CAMpQs4J1ThxZqJupm68WmpQpkG2HtkRctk6zDmbszaHUyBm19g@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] dt-bindings: mtd: loongson,ls1b-nand-controller:
 Document the Loongson-2K0500 NAND controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org, "Rob Herring (Arm)" <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof:

On Mon, Aug 11, 2025 at 4:13=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Mon, Aug 11, 2025 at 03:42:09PM +0800, Binbin Zhou wrote:
> > Hi Krzysztof:
> >
> > On Mon, Aug 11, 2025 at 3:32=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> > >
> > > On 11/08/2025 08:03, Binbin Zhou wrote:
> > > > Add new compatible for the Loongson-2K NAND controller used for
> > > > Loongson-2K0500 SoC.
> > > >
> > > > Acked-by: "Rob Herring (Arm)" <robh@kernel.org>
> > >
> > >
> > > Why do you add quotes?
> >
> > Emm...
> > Sorry, I didn't notice that.
> > I reacquired the V1 patchset using =E2=80=9Cb4 am xxx=E2=80=9D to avoid=
 manually
> > adding tags. I believe it may be caused by the `b4` command.
>
> Then aren't you using some old b4?
>
> I just did it and look:
>
>   [PATCH v1 5/8] dt-bindings: mtd: loongson,ls1b-nand-controller: Documen=
t the Loongson-2K0500 NAND controller
>     + Acked-by: Rob Herring (Arm) <robh@kernel.org> (=E2=9C=93 DKIM/kerne=
l.org)
>     + Link: https://lore.kernel.org/r/588639de591ada408bdaeb0d279c5d62a4b=
53d61.1753166096.git.zhoubinbin@loongson.cn
>     + Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks for your reply and testing.

I rechecked my b4 repository, and it does need to be updated. It was my mis=
take.
I will fix it in the next version.

Thanks again!
>
>
> No quotes in commit msg either.
>
> Best regards,
> Krzysztof
>

--=20
Thanks.
Binbin

