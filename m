Return-Path: <devicetree+bounces-79442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E12229154A3
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:46:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E7911C21411
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 495DA19E824;
	Mon, 24 Jun 2024 16:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="1zaXE/2O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C768B2F24
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719247577; cv=none; b=eajudGTSGntoTrfNPbaBxLZQhEFNg/d/at9nTQtE8qgd0bM2qACxgjXje66B7FIY1hFqtd0EC7T2HzXuv7ErEVkvvf4FmiBP/xmEDnkZJi7flLhtoVU/MfttAMwnuMSGezlIcnFEdHEx8Beh/6dhdXspGSNh4yb4Zva339A+1Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719247577; c=relaxed/simple;
	bh=j3mtCDro6szPMoGWAAjyIwhY8Z8hnROYefTX4WK/Chc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F9PdN4vB+TCKRNh/HbGKRNHMevZiOviNQvyzs+cQ0SwKAut9y4WrgKgRX7k5bl5oQnbDj30c3Rthz1nqJqKDQzkgvMunrSp7+T7PQJ+Gw0ZonOQiDpeWSX3GkPl3szC/wC2Or2+atTxYma+q8daE0FkKtEDLiilnBz4Gm9enVoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=1zaXE/2O; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-443586c2091so1121cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719247575; x=1719852375; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMSaelTgm9+gZJLzvg/KOZGEZUTdUOqVskLSww0Rudo=;
        b=1zaXE/2OmbLVH3YFlvHlhrCUNdqVIEoEgQbgiPzkP7DCI5I4nTGOH50t/YuZSEK9qi
         HpcuI0bwf2BrNnccQ6Wc1aM+E+IELLJpNWRQcVLw4p72m1WlDz0cuZxqhBv0D+1b3rZl
         vF/qOHLKcfCTSYSeUm7825gwkfw73ef5h+fItFYtr117Km0c1M4PF19F4GGcwvu19ko2
         /TWa5T59en6SS4doQGbtMd77MEkjYgMm/Ufu2F9i/gyEiAtUmPZUqdkxBRisHFR2sYtX
         DSyFsx8MNNngg9oyskxOsFXEH3QXHnkhb9MZETW5pZIiV8uorpsG24CRAE4GFqX9bh5T
         +T9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719247575; x=1719852375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMSaelTgm9+gZJLzvg/KOZGEZUTdUOqVskLSww0Rudo=;
        b=KxXiGSon2FVpy0Qk0bHwaqvEp/hjuUhpv3iNNJmTy4GgbKiB3pNi4hNorbd0MNDQkq
         Y5Xwk98qVhUr2dIVmcoghP+hSn6vfmD94uq0LeU2cTnEvBNMLjYK46vMWW6HHO0qTwPK
         0Maum71AAJjbcoe+ZK9T5J9AR0ISDhokWr6cvnXGdBXEI/54dinF+VU5pu1JcTXo37Q0
         5G1XjVCYa7y0tlC6jlavDlXgxhqaLKpDciRmZ+peruiDXYwI+V1ALY2kMErQquF1NPjg
         KBq0MTl7c3Y05nhL0JJDzwRMrujOy0JWT30odn4Rrx7kgFj8C7X1TAyeBmSMk8zG3MD0
         prUw==
X-Forwarded-Encrypted: i=1; AJvYcCWT09+d61ywaRWhSe6FSQsvb8dFpctCn1rZH/5/xJyN5xeVa+R1TLpMHwLIF0I2oBvbmIpFtRPG2jaPygCijd7mYefwM6aPLRmZLQ==
X-Gm-Message-State: AOJu0Yyi1HqYbiAvJq538WuvJar61YbYT0um43KSz478L9msg1U0RYmz
	cZziWYmKuQLB/AqyTLF7ZJ4iTtZ8mEq5kQJYpEBcWQYZ+hW/4bsUxQJ2dYQNYrs7vqCd8oHSvbU
	+wysz/jLhxHn8zHHBw4yC2rPyuvYJ1o+iUxPw
X-Google-Smtp-Source: AGHT+IFjApab6MaKv6PsrlmopTYXcXjrUWTT++GwSbVbvFdm1I8gzP3WA9e+zP+3yfQBYNCgLHo0PSNfLdJekbpatUs=
X-Received: by 2002:a05:622a:83:b0:441:54bb:50eb with SMTP id
 d75a77b69052e-444ce39fd5dmr5217641cf.28.1719247574572; Mon, 24 Jun 2024
 09:46:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com> <20240624141926.5250-6-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240624141926.5250-6-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 24 Jun 2024 09:46:03 -0700
Message-ID: <CAD=FV=XsRrB_Y=_rTTDhvzQPwxr+_LuY-YUjfm5H7mY8YgxG0w@mail.gmail.com>
Subject: Re: [PATCH v5 5/5] drm/panel: jd9365da: Add the function of adjusting orientation
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, jagan@edgeble.ai, 
	neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 24, 2024 at 7:21=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> This driver does not have the function to adjust the orientation,
> so this function is added.
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Changes between V5 and V4:
> - 1. Change dev_err() to dev_err_probe().
>
> V4:https://lore.kernel.org/all/20240620080509.18504-5-lvzhaoxiong@huaqin.=
corp-partner.google.com/
>
> Changes between V4 and V3:
> - No changes.
>
> ---
>  drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

