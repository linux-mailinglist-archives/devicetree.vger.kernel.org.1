Return-Path: <devicetree+bounces-39153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9123A84B8BE
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 16:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 359321F205A8
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 15:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0696131757;
	Tue,  6 Feb 2024 15:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bL3NYNHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860641E49B
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 15:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707231817; cv=none; b=enU76dXwuGdauBPrx6KKgXLa/kL+8gfaMoAALHleMhy3Fh5Uo38byoG5u6+oo/pN2atSZ6rYhUE0yHiON0PPJlodeMK4Xi5EqnxmJ51mwGnqRRjTko+U8MNpE71GWyknYmpqDqLhsaDkQGKaf0xCy10YHENDsA/GTUhHv+NkDn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707231817; c=relaxed/simple;
	bh=vLrwFhwCNhG2ZEcBghSuuMRxyXsW3BstwVuZwyERgsU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jQYUy4Lcxje+KJo2fkDOA300Y28qHNso5zKA8hCf6MYdNIKuPHA3EpMm5/QZc2kPZAu//jvmXVELm7daO7Mt1u1pq0FGMfNXgDz8IhAHiJwGKZAo5physltrBmW+avquOlCueME0ECeqzv/ITbJyTfPkpe0hyOCnr9/h2QGf+w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bL3NYNHC; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-295f339df52so1054439a91.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 07:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707231816; x=1707836616; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vLrwFhwCNhG2ZEcBghSuuMRxyXsW3BstwVuZwyERgsU=;
        b=bL3NYNHCBYsFPBJOaq7BfqOb2YHu0H7osyFuI3jkoS2qx/7KbOUnSQaXiXyFNdtc3j
         tzkaEe+1PDu48zjGYGmT+/5m5vTxBa5bLhBeM+gkyMagzkHR0wTgj9AQK1rF/tIRaulS
         IJQvtvZcBBDe+k8cqp5kDbJcssTYNSBX6JednKjSt1aTfOtLm9S1FV9FOTuZ/XNXFCrh
         DV0pH59/yPxlOuGVnvZX1dU9EgU7Qs3X2HG2j8eVwEHhSUatq8fCzfNqLcDaV7DtD1FG
         w/EVLhmrcAahxOXtp5U2acmR6y2HWf3ghNwcISo3rhRSIUtnGWHtMwHD1xDutlE936zo
         XFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707231816; x=1707836616;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLrwFhwCNhG2ZEcBghSuuMRxyXsW3BstwVuZwyERgsU=;
        b=GTmNMlh07L5nyAzRn+1nwh3NThcKi427q9POt/fjwn1NaYkWKOHy6W/5Do6zRjyo6c
         VMgsC5YpCVg1fu6Q5OUdrBmp2CL15Zc/Bho4YZ+jIrfSvL/gP+FYLd1TEOAPYv3NacqB
         NGkJ5AusVwvP2a0+mOZcKzb2A6tezLuOLd8eMFcae96WS+yU6Zg/hUHrVTmRSzRLTcQS
         izP0XzLVzjh/Ca5htjyJFtRZJPWT0F00zxAZkDY7rCHPGOwPCNBvW0vm/rOB5YYcijrY
         FCmWV+6C2aahdijr6xpFYi6mGVsZ3Uyq+EjEA8tNnHZn1NhPRG0Lu9yV/uGzac7h//TH
         N+bA==
X-Gm-Message-State: AOJu0Yzxa++RryPJWK1yvLEuDzzffcL6H7GPWhZ4w0GTZkrFM8qq2ez4
	yJkuWXFJ+HXxJi3drZ8VK4W34GBTv8NKqOOYDzvkgWal+xjyvY8/coFBkHY0iCvLj5q6YHuvutC
	lFX3wZrau30Ajw7Yxhhw40Bt5RxA=
X-Google-Smtp-Source: AGHT+IGX/rc/VLE8q+tGG9KAAZnTnw4D42wxrSo+A+pg2MUxhg0KWP7PsSFQmvY+fbrAgU+i+wfCLljfsuG1G529Ndw=
X-Received: by 2002:a17:90b:3b86:b0:296:9811:46e1 with SMTP id
 pc6-20020a17090b3b8600b00296981146e1mr2794083pjb.4.1707231815635; Tue, 06 Feb
 2024 07:03:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206-imx53-qsb-hdmi-v1-1-e798eb1181c5@linaro.org>
In-Reply-To: <20240206-imx53-qsb-hdmi-v1-1-e798eb1181c5@linaro.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 6 Feb 2024 12:03:23 -0300
Message-ID: <CAOMZO5DLYV8Eo=9-W1=tiAE6fva_vgheErFVcBJpmF=FHvSOfg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx53: add support for the HDMI expander
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

On the Subject line: s/imx53/imx53-qsb

On Tue, Feb 6, 2024 at 10:04=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Add support for the MCIMXHDMICARD epansion card attached to the iMX53

s/epansion/expansion

> QSB / QSRB platforms. This enables HDMI output on those devices.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

