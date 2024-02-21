Return-Path: <devicetree+bounces-44445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 765B485E453
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 18:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31F6B28620E
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 17:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CC4283CD8;
	Wed, 21 Feb 2024 17:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SSA5UyZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AA783CAC
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 17:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708535837; cv=none; b=ImuFT5X3PVFtjFCaSdarn+ssarI5YRFJjREjx6qFV0rydSXnqJ/uOmW4yNUp+7RfTrdaOkdsEf+wFS2aRS+cSGRcNdVqM7ybU6GN3eWG2SUEBaL+FTsbwbSrzO4KVyyFCUiXE/zGJ0EWSnTLVEf7ucvELwDjViPHBwe9cr6VwJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708535837; c=relaxed/simple;
	bh=Ny1Q+qcIJqhIaEIXilQERO5D5aNNLnzGNmEDSPnS6Hg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nOQsq2m7zV1k38WjEyF5NjEk1z48O/2FuyKjucGWrvhBPa+XUgayxrok4DHoXGqgqEfTWRcJN0sxwzl6TjpFpOHaABbJggpW97/u5ZZJEAPYXhfp8gRsstr2iSTiIGdCzOHxNcoRtOk099nQGDjuDd/1BQtyeiYOH8mFSRWsHJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SSA5UyZm; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6e47dee2a1eso91944b3a.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 09:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708535827; x=1709140627; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ny1Q+qcIJqhIaEIXilQERO5D5aNNLnzGNmEDSPnS6Hg=;
        b=SSA5UyZmvy1lbyqIUdvLVgmDsrutYnbP4HjnOpVi5drhJ9FXFftgph+WHBjCqF3t/2
         sMPQtRLbD3cJxTrej+miQGi2UyWeI3rU3KCGn0Hos/7UW0tQ5NnjBfQABSFkGPHRqfa4
         WKlVU4HcTRYm+USOD80Pydj5mfzDVXaM7OeEo+FYoOYFlZ4xAVU57yO3UqN8aWH6XMPD
         NNngiozg2v+o6LlC5ogYkj9B1o2+xHq1g/Vbs20GWrsnWFjoFV1Sfv0Wlbg7UkSeAfxw
         12f2Yi/yc+gwqpUCig/APduYcz8P1opOCLjqBn5j1ebQ7tIMfQVezZjSWqmIoqFF2idB
         /MLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708535827; x=1709140627;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ny1Q+qcIJqhIaEIXilQERO5D5aNNLnzGNmEDSPnS6Hg=;
        b=RjddLObpoZpqh+0ka3Z+VyIUZbgClA91ZEOj2xoaK1YMZEu2tJ01ejhCUGW1pbYcHz
         SczbDlvfhuQ3RKP98cczJXAKxRhu5VdSTNA6bs7uKATg79HEde6BVc733SODZsRinqOn
         /Ytj9CcxnNbOyWaxPHEFms221srM8gcyR/l980tj0omZjNRV6WGAOGvcE4nboQfzaU+H
         bzzEV2JuQiYBfzgy5WL0S14XoUK/szk3wroAPqfUroiBsqN4kXNyIV5p24lbH8EIUDIy
         SG9S2WAU1YeP/OR4dl22KMPrzMf58t4ClsKYUUzLLtNNNK0fNatn8UggZm4X2SpjvaTU
         BrlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoU3CInOguXMFG1tP90I+Y8vo7R+bDNdgMxYsruTPaUwrCxyt8nmbVwh1lgNW869ikZB3JkHxlUsu6Bwh/gE8Tqbk/HWJDL217TA==
X-Gm-Message-State: AOJu0Yy3obEaH8nDH6ICNNmYIZxGuqCW9faeg2ZnKgccsdwwLXndvo6x
	lsajM17U9L8YbhrCM8B5XMTWzkb12JVCeqjx1z3TwioLM5/HPxUh8kXomrASz3oIMksHj9vihXZ
	+Y4pHlkoqSn1YHyqE2Ajroern2Qs=
X-Google-Smtp-Source: AGHT+IGhDpJFg34pVf/+0m/tLTKUZl/DYCCzXK5McDR/DdC2r8nfzErDho/XiY/EM0qUkB/DpYoOSXyQUDyRrV+JZXA=
X-Received: by 2002:a05:6a20:1441:b0:1a0:b0d7:f909 with SMTP id
 a1-20020a056a20144100b001a0b0d7f909mr7329054pzi.1.1708535827468; Wed, 21 Feb
 2024 09:17:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206-imx53-qsb-hdmi-v2-1-a025fe0c4362@linaro.org>
In-Reply-To: <20240206-imx53-qsb-hdmi-v2-1-a025fe0c4362@linaro.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 21 Feb 2024 14:16:57 -0300
Message-ID: <CAOMZO5Ad7yZWwaBi5Ec9ufF4b_vWov5KX=k+c-FvVgbLUCf8NQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: imx53-qsb: add support for the HDMI expander
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 6, 2024 at 12:26=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Add support for the MCIMXHDMICARD expansion card attached to the iMX53
> QSB / QSRB platforms. This enables HDMI output on those devices.
>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Tested-by: Fabio Estevam <festevam@gmail.com>

