Return-Path: <devicetree+bounces-57131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F2689BE83
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 13:58:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E21F1C2165B
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 11:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9619B6A029;
	Mon,  8 Apr 2024 11:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZStLXAEW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F5F69D3C
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 11:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712577528; cv=none; b=RwMRMcPLvDBao+CsHtyxFQqzj53vVB9mcstc6aulzv0dZ95t/kmB7dVNWc1Q4bQ2kGbOKVxhj2USxKH/TPvyP+d3voZSE9WQDquF7vVJlOo+ewxZgxSRHUygXDiJ42f5jF+XGBXhdrW7PjC4RkmPm2iudTFkrCYU1KpNYu5qYYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712577528; c=relaxed/simple;
	bh=xzHQGTd32FoflvRM34VbpEwFIBLa4xul4cb+b8q/RCQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eMyvVAVqAsJXpR7DiRK52eGfj5K8BjTrM2Pzm/HwJX9WSYtCtuK/N2aPvQsYUti3QVrKT7hOBHyZ8Lu0PcKt6E7fd4augxdaFXEwmJtYYUBdTCAniRLRl8Hz9hJdyF7JN0a24XCNxPJnpnmm3qa8bLt8eGaRRPwvDjO+ra+yGm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZStLXAEW; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-58962bf3f89so846467a12.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 04:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712577526; x=1713182326; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xzHQGTd32FoflvRM34VbpEwFIBLa4xul4cb+b8q/RCQ=;
        b=ZStLXAEWnC8N08+3ryB78L9v2bzE6xlOUK8E9NRCoC2AoulSAEIjy3YFW3l9qV+XNI
         LiGmsyJziwU52hpHQPfuLl60SrDxXYdff+SNqnS/32IPw1I72Nf91S8MCr/2Dtc+vHQo
         apGphB9X9M9MYBfjQj6JTeGUJW+sXUzzECNr+T324W2uOH5klXCKd/8dJKqLXhNK10Hj
         316D+e0GP5W8GLo/RG1LgEXdBxablB9jqiFTvAuU+OQsmf7m0487mo6iz+/kHMtm42tL
         qzRWyG9g8UFz7BaSO6u2CgKUNl09dt/CK1gzm3XIPY1o0jrEMqYzTLlwJ5c0J+mqdhIQ
         gItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712577526; x=1713182326;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xzHQGTd32FoflvRM34VbpEwFIBLa4xul4cb+b8q/RCQ=;
        b=jGoGW04wJazTVKEj21RcppeVG0YmFmvaYKha9ajE6TKkhxu+ELFyj+zyqeJtxWrX1y
         /ieIVrRUf9DnMG0r3NQEcyrNF+jheKXMp+T6Pc2gfgWfi39UKapfJbDVw+P/DWv3J/UG
         3dUEYFIX+psoWeKPwe09wMhZC38r28c6seorDdGztfI554bQ98kbvKpjqikc+iHEAcPd
         rQ5l19SnEIJ2HNUD9A4eSzSNbCS35sJcLZwNKovrwd90KF/H1FVh7cDVmTIiiRMVVAXh
         UPYAuit8oNb9E1Eo9IyB1GO4uCmnm0WRutBnqaGSbmBvRV1nXYeL7TzPjE1Yz6Xj7uED
         OoCw==
X-Forwarded-Encrypted: i=1; AJvYcCUR0mj61xw/o2L3475upL9A74mJi7hlOpmXqWHUzp0CKfarAwgw8ND7J/4ESeH9rn9HeTiPLYehhrSRnqn9QDe+Ccuqu3sCp2UxwQ==
X-Gm-Message-State: AOJu0YzSqSZx4TS9ZeJO3r+YQCbKqY88WQEuzab7TDf8+9TJncWoIKxm
	SmNaqwd7XyihxgPAAHpMtPcYb6LcNq3G2WC/aOwyBEs4UMtY/UWTxgOR3BuLbBg0vpvkIQ7vlJ3
	tyBuPN6lx0Bzp+MaLJGlAz9ife04=
X-Google-Smtp-Source: AGHT+IFLiwBkC5PCufW5wtR9LpBxDKh9hoEGuEMhlrNQ6Ixb2FgiAjG9LGFBz4A6OH4QxCDrQJtXCIt8//A6m6J4A8g=
X-Received: by 2002:a05:6a21:3393:b0:1a7:9245:71f2 with SMTP id
 yy19-20020a056a21339300b001a7924571f2mr582308pzb.0.1712577526525; Mon, 08 Apr
 2024 04:58:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404022943.528293-1-festevam@gmail.com> <714fa88b-2abd-4485-bacf-b8dada683d08@kernel.org>
 <CAOMZO5A7yiYdeOjv6BabDSNKk4Gp=n1qwJP0seFvmjYYgjvhOA@mail.gmail.com> <c6edf937-dd58-44f7-b620-09dd452f6921@kernel.org>
In-Reply-To: <c6edf937-dd58-44f7-b620-09dd452f6921@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 8 Apr 2024 08:58:34 -0300
Message-ID: <CAOMZO5BxdE=Ry9v__inP8+WsKU1g5c2pjqQc3EDW1FUy+3ff+w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: extcon: ptn5150: Document the 'port' node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, robh@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, marex@denx.de, 
	Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 6, 2024 at 8:26=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:

> > Would it be OK if I send a v2 without the USB C connector description
> > and address your other comments?
>
> No, because I think this should be the connector. Look at datasheet of
> ptn5150 and ptn5110. Aren't both describing similar hardware?
>
> Instead adding some sort of hacked-hardware-representation, please
> investigate why your previous commit broke things.

Yes, you are right.

I don't have access to any board with a PTN5150, so I can't debug it myself=
.

