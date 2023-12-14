Return-Path: <devicetree+bounces-25341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 883AC812F8C
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3345F1F2203F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A904120F;
	Thu, 14 Dec 2023 11:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bx1tFYMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC3A124
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:58:25 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-28b0d412bbaso97094a91.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702555104; x=1703159904; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8BsgdHnpAr3IYWhOG4zdAkihAfm1z1GoMI09uXzY72s=;
        b=bx1tFYMC70lPOceSNeahQB6WXb7CGghqy6swmfUZfh95OvygDE1IKSk22+/4gZ1Rv2
         PZec04j+Jj04TJlvs/dfvgAa6RH84N6/jeKUK9SE6dmBzlzyPBAoX8ho2TWsFZnVxDbQ
         2+nLdYmg2zfQIsDS40pqB3mK5+bXN/5kBTDeM/36vlWDzWnXd2NiyA+mAOhQWLjOmY0e
         RgvvWbMe6pPHTZC6rpF5ceyirjipP6GqCK6gSrhWBOrJvnjuPh7rIPNFFy5VsJsp8DvO
         zRp3HaO7beid19/j/rY+DcbR/x7HAUCKRSk9eUdO5klsAumYHGdE4SnQGZHHZzC9NaRN
         Yndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702555104; x=1703159904;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8BsgdHnpAr3IYWhOG4zdAkihAfm1z1GoMI09uXzY72s=;
        b=kR2m0kCkQpK2cI8dnUnBJHdbPUKRfVlMk1wEao1cSz6i7zd3Z3iDxVARz5ZOB7iTfW
         7nIM76ZM6Nz/CZ3R/Bkd/dqPbG+TA2wD0cn647J3cDLdMcoz3/pJqDz8BAhYhzyet/vQ
         tUhu5GHx9uhf7audyI2V40uAIgWin4K+3f2Mg92JB9vAL/8JrI9aY1ESI0DaWYk6088C
         +gjHKVGOloNkO5Nih7+fQVAgDrTA23vTf9YCMAGpZBGU7pCIBVExjvurgB97At63IZUS
         aA17wgNGMK57E+FHt+ULcocyZtlFkddgX6Wg7UkCmLhdTHrfCasOJYh14fLDVU6XCPPi
         1hNw==
X-Gm-Message-State: AOJu0YwvCuLq9dLCtp7Z8/A+Tye2dlgYhjbmdE9rreFvxhcY9nOvtVrX
	vM5QE/wEIRD3Tq5G/q51xOYWqsgxOEJ03Xo5YOQ=
X-Google-Smtp-Source: AGHT+IHSTjctjdsTTuuyZF29dbboIarhzdKaos7vZ4W7wMTbAf1XYRuXMMcZsj2ddhAA9xEwZ4YA8vjn43zVexzPvbg=
X-Received: by 2002:a17:90b:1a8a:b0:28a:f56e:8559 with SMTP id
 ng10-20020a17090b1a8a00b0028af56e8559mr3259019pjb.1.1702555104638; Thu, 14
 Dec 2023 03:58:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231214112442.2412079-1-xu.yang_2@nxp.com> <20231214112442.2412079-2-xu.yang_2@nxp.com>
In-Reply-To: <20231214112442.2412079-2-xu.yang_2@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 14 Dec 2023 08:58:12 -0300
Message-ID: <CAOMZO5DxcLoBYMXQi=EW=-fAqz12ghPm+7PHn=LdhicETKg2pQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
To: Xu Yang <xu.yang_2@nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	linux-imx@nxp.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 8:19=E2=80=AFAM Xu Yang <xu.yang_2@nxp.com> wrote:
>
> Enable 2 USB nodes on i.MX8ULP evk board.

imx8ulp-evk schematics show two PTN5150 and two USB Type-C connectors.

Why are they not represented in the devicetree?

