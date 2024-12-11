Return-Path: <devicetree+bounces-129922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 347EE9ED1BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 17:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFF0816486C
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 16:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 959571DD886;
	Wed, 11 Dec 2024 16:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iuNTGBsB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DF31DE2D2
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733934594; cv=none; b=eNWyUrGHZfXeQG0rLCHXePiIGgRTCZJ4mIv6ObJLbsWliL6iyRKzyEr8wKIlxzt9FVlDVrRI2QZpgRMRSt/9z/4iTWqBCAoB2CDDgyguwxChby0TgTOxM6E36esinlb//RQ7woC+/Lxth1bajzaJFHQkfJmMyUedVZSW0muFFas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733934594; c=relaxed/simple;
	bh=XTd+qBJkcHHitLmewhPLFKmUwIQw9mojqeAum8hGMNU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ewhepo+tHSS2OLY1udknkg/LQf8XOX3C56shMYKFXJYEtnegKb9i/xSoh/z5+Inns2VtFLyoSx78vdlvlHgmpnGYMN0Td24x7EOnrdNTjVnuho65ojXIcJ+ddm5jc5XsJ2ayjN3dUtUyamS/HXHpcmYWXwQrnc7ESX9jX/CGeUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iuNTGBsB; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3022484d4e4so34062531fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733934591; x=1734539391; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=osyXKRqUv4PvfNbOFslNjYYNVIaS0mD+W2/0VCKnb7I=;
        b=iuNTGBsB+2vvXJVVAhYBzh4fsO4fyqSlnhfPLCp46032nP7lu060MNQGOnILQnJv3N
         lJx/Hdlz1XwYbwhrhP2p28LzC19TreSmpF5EINuf0BbLKNn8zvlQBuC8HV5c3k5C0voM
         G49YL5ToGz4IGTig+ORKIUmmc4jHen073kkFeMI4L5VeTWAtEy3igMS/gUQ7AMxFCz6c
         avvbpUzs/InjXRUg1lFQmYiCbOCXFEQUidjqtYuJEKopRks/Cy5i7dRdBNFCSKgx5cq/
         txFp2108eJ0rIwQpJ8LHf4u+a//wBGuCGWXx+k/xE9RiBhWd7+mvWqNTcXBM1NkicZk5
         JhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733934591; x=1734539391;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=osyXKRqUv4PvfNbOFslNjYYNVIaS0mD+W2/0VCKnb7I=;
        b=wAa1fRUGt9uO2y1oglm5nAcK8kbObKeeJQzRxbuOP3hECLzqaBl1OP1GGzab7skvDi
         rj0U5PpxIyZRVpQsZW7XuiyoRvjnpLeZzcLTnbTzFiKpaegVtdMiI2qIn1QwyyjwNZ6h
         is1qRrza5ckmhYrimUk4tz7/VRdBtsCNh/YDgJaw/S0NsLnfR90tZKoX/LJ1zkF4YPus
         mrj7VE1wE166T9a7c1VLehSpK4pXoIL5uoX4WlNI4rz5jNXvRb7jviJFBJ16RlIEhSQe
         CPSV4A1GA/ooa+CQrjYE721wglFe2abetVYL9pO4kT63H1/bu05dUZTDjCduq516fF8F
         yIWw==
X-Forwarded-Encrypted: i=1; AJvYcCVgISav4wj/RlEo81sxvpr/MmjMa5yY7r3ZWVkBipve99EjwnxigC4FlVZhTDZpSB0wZG3GrUBPewlU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+jGEU356S6ndjaSo1kEwf85CjvpH8dRd+VrtlAIrI+35/xMXR
	SEoDqpFg+ksDwjyoI4MrylsV3306/OnNVlEYFUHEa6H7ipYFFIV39ksXcb88D0LvMB96F+2q2WS
	dpHjndPx0xpgvfN82i0VXUIVCXLo=
X-Gm-Gg: ASbGncvau48ccb2eCkcYku/7bOXnAD4DgvM4ep3QT/FtKJnzNBQvAyhHacIDmjqFXEP
	qpX6AOZPeYepQO/jZBhtnlVM+EAsNlavsxuRgRFwKODs9KSA1Nf7urlt4gE8te8uYzaw=
X-Google-Smtp-Source: AGHT+IGYVMJ6W3ctYMQ7NC8ivi8cFDMpjmorS0+eO9pMHQYMNw+7Ad3Tj/sNuMyEstWHwoEfJ1/yML70vfdfCV99C5I=
X-Received: by 2002:a05:651c:221a:b0:300:2c9f:ac51 with SMTP id
 38308e7fff4ca-30249e0465cmr677441fa.2.1733934590663; Wed, 11 Dec 2024
 08:29:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210105705.116116-1-festevam@gmail.com> <yujvdu3s6v7z7th2lrdscqfxocx2zy2u4owakisvnjppz2udqv@5ok2rcf4exd4>
In-Reply-To: <yujvdu3s6v7z7th2lrdscqfxocx2zy2u4owakisvnjppz2udqv@5ok2rcf4exd4>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 11 Dec 2024 13:29:39 -0300
Message-ID: <CAOMZO5B3810+4RJsPUtL3ASxqpDd+UmC=GcY6t8-ad7NZXZLjQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel-lvds: Add compatible
 for AUO G084SN05 V9
To: neil.armstrong@linaro.org, shawnguo@kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Neil,

On Wed, Dec 11, 2024 at 6:31=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Dec 10, 2024 at 07:57:04AM -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >
> > The AUO G084SN05 V9 is an 8.4" 800x600 LVDS display.
> >
> > Add a compatible entry for this LVDS display model.
> >
> > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > ---
> > Changes since v1:
> > - Added devicetree@vger.kernel.org on Cc.
> >
> >  Documentation/devicetree/bindings/display/panel/panel-lvds.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Would it be OK for you if Shawn applies both patches via his i.MX ARM tree?

