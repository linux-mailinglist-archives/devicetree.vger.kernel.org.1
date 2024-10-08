Return-Path: <devicetree+bounces-108864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED1C994253
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:42:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 464E92897AC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AEBA1DEFD5;
	Tue,  8 Oct 2024 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MPv80auk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A091791ED
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 08:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728375293; cv=none; b=hvax6b/dEKZTSoXdlPFp59fzzfGPk6qryk3yXiz495XzVlKPWhVtH8OHcOHFvOL/HjyAqxkBoEkixsZNnjRmE4Ue8Nnm5jjGTioFIisocm+AN/WSJBJdzZ5pNg0BtMGxhv67pbofgG3E9yS9+Lwm7Pdmbx8XitQV2RFr16RbCAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728375293; c=relaxed/simple;
	bh=dImWPU/BxlMZAX9hdjUlvNkdPt4Nc+OtlHFhtA1ztow=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hOziXGCJFFX5e1sYpt+khzUnjVAG1xdiFwJuk95XZBIlPchDqvH3nLNGnBvXB7fnFEoPteyySfHvJg8nN8zgpMWgKMHARTl6sE+60mwUg+LVqanuJllnvA4wh490ip9KTz9tqhtd7v2DEx/i9JOjxKYM6oEs/ykEMDBpAXoNVYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MPv80auk; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20b0b2528d8so60519245ad.2
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 01:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728375290; x=1728980090; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0h80cpJbTKY9snEXjb48T6TTGldHGobiLvAdg9ndyJE=;
        b=MPv80aukav5lTFewxc27TqQQ4KpWMLgnPzkAmm635BtFHvl/Des2bSex34kEUXyIF1
         0Hr0Kjkn97ffqsC5+7jEYPk/fROCBm7IKlZTr6bWQHKHqEVOxrm2Zw9ROYPM1FyyDMBu
         WoN9bKDFpKv/7bTYtxnvoBWE9akRM5ahHlqpk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728375290; x=1728980090;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0h80cpJbTKY9snEXjb48T6TTGldHGobiLvAdg9ndyJE=;
        b=xPhVvmyLTnJGqzlxpdsUo2v1WDHK/pRfiOVwutjiujMahiGmXkICyrRYQ3Ktgvj3uq
         qC5+BdQ8sAMoQWSMt1GC9z2k5ejQ45aWY2TRzclQMuV23BSOWv6o+vk4Bh012+8tlVzI
         6SqGpXPktHEc6L0aB0b95r3vna67/PcGy7+Pl3pMlIxBEhGuI4oKz9V2ieywgn4bbNnt
         2yNqz0A3KGukrDEMgTQ3jGRp8v1mMm346EZSgmTPCx+gu8+C6rRxgaL89AuVhtOEfCAp
         FVV/CTOnNGQsXqX5HQLICIJNM++lTABOUQYJ61O9rWDJge/EkmD/weGAYPi/1dI8hnmm
         AJeA==
X-Forwarded-Encrypted: i=1; AJvYcCVVAj+ch7Z+nlcgCOJkO2zARgJXFc0nqAg2yYmckDQreFtBxVKoOKZMoa3yz8Hbf9x/zezMKuzMLgPI@vger.kernel.org
X-Gm-Message-State: AOJu0YyzHKH4mGR70vgDgyOOLAw6I+Cp1nD73LeLr9BRYJFe82jkn2Ll
	RdC0kSHtxMmMp6PAME2YdIuaoykjy/QjjDa8NkBdcJFsbHAeLXpnqtoqVZybo1i8igcNpAvn8z8
	=
X-Google-Smtp-Source: AGHT+IGtu1645imzPCSgJdgHdyAJGDlUUwPsS55faURj/n0zsXWGqvLNNPizXP2mkdPY9fimKxH55A==
X-Received: by 2002:a17:902:e550:b0:201:f83e:c25c with SMTP id d9443c01a7336-20bfdf6ae9cmr25646925ad.9.1728375290013;
        Tue, 08 Oct 2024 01:14:50 -0700 (PDT)
Received: from google.com ([2401:fa00:1:10:10df:d27e:8d4b:6740])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c138b137fsm51168505ad.12.2024.10.08.01.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 01:14:49 -0700 (PDT)
Date: Tue, 8 Oct 2024 16:14:45 +0800
From: Chen-Yu Tsai <wenst@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Enric Balletbo i Serra <eballetbo@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
Subject: Re: [PATCH 0/4] arm64: dts: mt8183: Add i2c-scl-internal-delay-ns
Message-ID: <20241008081445.GA3999626@google.com>
References: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
 <01020191d6992288-f834e61d-ad1d-4de7-90b4-77525530532c-000000@eu-west-1.amazonses.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01020191d6992288-f834e61d-ad1d-4de7-90b4-77525530532c-000000@eu-west-1.amazonses.com>

On Mon, Sep 09, 2024 at 11:44:05AM +0000, AngeloGioacchino Del Regno wrote:
> Il 09/09/24 09:29, Hsin-Te Yuan ha scritto:
> > Add i2c-scl-internal-delay-ns for each device.
> > 
> > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> > ---
> > Daolong Zhu (4):
> >        arm64: dts: mt8183: fennel: add i2c2's i2c-scl-internal-delay-ns
> >        arm64: dts: mt8183: burnet: add i2c2's i2c-scl-internal-delay-ns
> >        arm64: dts: mt8183: cozmo: add i2c2's i2c-scl-internal-delay-ns
> >        arm64: dts: mt8183: Damu: add i2c2's i2c-scl-internal-delay-ns
> > 
> >   arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts  | 3 +++
> >   arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts   | 2 ++
> >   arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts    | 3 +++
> >   arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 3 +++
> >   4 files changed, 11 insertions(+)
> > ---
> > base-commit: ee9a43b7cfe2d8a3520335fea7d8ce71b8cabd9d
> > change-id: 20240909-i2c-delay-6d202918ee0f
> > 
> > Best regards,
> 
> 
> For the entire series:
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 

I guess this can be applied now?

ChenYu

