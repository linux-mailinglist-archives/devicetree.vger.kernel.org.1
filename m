Return-Path: <devicetree+bounces-117192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDDE9B553B
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 22:46:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32762282D43
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 21:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C5D1DE4CB;
	Tue, 29 Oct 2024 21:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aJ1zE+vt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF0519258A
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 21:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730238375; cv=none; b=VgdBbxhoDqFqvx8bMCr6MGlCzDTfwHdfI3Br6hInDqPOWjSnwptQwYPWbkS3dlHZM4zbBjYWwRNHwZfC/2aenMwCTw41O90EEsmD8bAbvJ5hMO5NS2Au8yeW231lVOwvlpHKwuP4B62nPpaeVkoNhN3TOTPZNXzhYVP6gCcPl+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730238375; c=relaxed/simple;
	bh=2JblyV7WTsTnc5tXzfZ94G3EE4PGcp0Te58mEyBSswg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nQ6Sbgi37OLiyCIKho6/wlci8/ErRtxw7aeJMJ6SJnZfIfX0/zp+b3GZvrEk/f44FvFz8TQklt1ogyJpHKytexIoutbReCaaIo6adsBmOhzcbToP7TgeRRZxin1OoFKtOGA08hjw42WAcTqgPo7HdB6G79dLWYXwX9WbOXcAq0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aJ1zE+vt; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb5740a03bso58102871fa.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 14:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730238372; x=1730843172; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2JblyV7WTsTnc5tXzfZ94G3EE4PGcp0Te58mEyBSswg=;
        b=aJ1zE+vtBYjZNYKowefEgxNIlWGS5AZ9a0DuUo39iQjqpb+OsSFBszjB3YNTO4m0YO
         FXNVc1fqdvR4UdTH+evIH/xLnigSN3NkIhfkQI8vqzHNFSWs3K0Kp+InJ4tQPLl5wsOj
         b5U4QqOL8Dv/bYNfX4BIbPx9T/Q7JI/BrMRzPR/rENOD8RuKzafRwr1jH3UyCahSO1Dg
         6qABSnGb8mTuK/i3kOfJqRnnBDuGVqu88sE3Jv+icCS3QpMGY228iaeXuNywC/E1rJMe
         jzG3yRIymhj4oESAK1cORwXch1ZckJwPvbRka60OwgBMbeDnLjUWVC4Vfx3MoUji7q/0
         VEsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730238372; x=1730843172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2JblyV7WTsTnc5tXzfZ94G3EE4PGcp0Te58mEyBSswg=;
        b=SCOwfwqyTD63XyYXLtQ/10VpT1LxiuQJe5OOA0BA9pzRmIksycv33zMgox5g15m5U9
         FSiM+MQd4byO8J0RR/at4aV/3168lomS7J3CcBs2ENtN2a02uUcSNzthyvmxXA+N3VPE
         eFvQ2Fgx5Y0JHrtgX8sdjOocDdKfYtgvKv37LrYWddFLnvK1aDfPLt9MY0hEt+buHgqM
         RxXyJPNxOBNUgM4Y3Imq2lFAs0J7p04BiDx0uqpxFGP5WgznK+qO8G+DIPAGn3Nw86cd
         tntNAhXKrZEvmk51ORJAKbvnt5rSfVavnMEWb5NcHCmPV2mKiHvwUXmUvo2cACbYawz0
         rYIg==
X-Forwarded-Encrypted: i=1; AJvYcCWEb8ogpWzU/JJrbewGfECLmN25y9QV+1ubiS8v+PNFGsUgmpCeDI9rSGtO80GUHiggtQ/TeP1794li@vger.kernel.org
X-Gm-Message-State: AOJu0YyZDTieNDQDynxpYftXf/aPrhSJc7FIW95kfhsNXZuZFRGAXlRn
	k2M0ERa4zPZ8d6yprEC7nSuIWGpszKjISnPoxeZNU7IP1jWdsIp19ZD8bhPHxbi2jVVRsJRxNjF
	uNJRrTwroTSlzkMdoYd49B+vxCmkw5Wkd
X-Google-Smtp-Source: AGHT+IHi88pfTT/7FGL5cee/QnViHlH7hwmFEHz8ie9yk7UIpmVR+ZWO36ke5t/IiJD3HDIGyxxtDXcGFtsxJ7egax8=
X-Received: by 2002:a2e:b8d1:0:b0:2fb:5786:251f with SMTP id
 38308e7fff4ca-2fd059e9c3amr6259081fa.37.1730238371622; Tue, 29 Oct 2024
 14:46:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241029191640.379315-1-festevam@gmail.com> <20241029191640.379315-2-festevam@gmail.com>
 <94745526-055c-486e-aff1-ae178ae0f2a9@denx.de>
In-Reply-To: <94745526-055c-486e-aff1-ae178ae0f2a9@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 29 Oct 2024 18:45:59 -0300
Message-ID: <CAOMZO5AVPCLsoWbtKDzN2j8rUvvZUQQG_RkuLoF4BnKQDD-QhQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: lcdif: Expand the imx6sl/imx6sll fallbacks
To: Marek Vasut <marex@denx.de>
Cc: shawnguo@kernel.org, a.fatoum@pengutronix.de, andreas@kemnade.info, 
	kernel@pengutronix.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

On Tue, Oct 29, 2024 at 5:16=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:

> So you wouldn't have to write three compatible strings for the 6sl/sll ,
> but only two ? I.e. this:
>
> compatible =3D "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
> compatible =3D "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";

i.MX6SL and i.MX6SLL have a more advanced LCDIF version than the one on i.M=
X28.

The LCDIF block on i.MX6SL/i.MX6SLL has both overlay and CRC support,
corresponding to the MXSFB_V6 of the mxsfb_drv driver.

That's why it is better to have the compatibles as:

 compatible =3D "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
 compatible =3D "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This way they can match with a more specific fsl,imx6sx-lcdif entry.

If an OS does not implement the fsl,imx6sx-lcdif match, it can still
match with fsl,imx28-lcdif as a fallback, keeping the DT
compatibility.

I missed updating the binding example. I will wait for more feedback
before sending a v4.

Thanks

