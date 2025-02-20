Return-Path: <devicetree+bounces-148902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E76EDA3DB10
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C759F17208F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9C61F7910;
	Thu, 20 Feb 2025 13:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KJGK8/oO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081CD1EEA27
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 13:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740057416; cv=none; b=O7GnBltxcNAUkKcd198tiFR2sOfwTXCNt4wl8S4KFByNXVXIWwmNeUmFD+R0GGTgJLsvcjkjvv6fVQU7pRSZmFMhQUFBEbWQi1ET0nqpHojQwmLAb6d/8Os3R+Kz0jQNYnv0DlTAkDHydzyxd82Tk2CZsaJx/EAWqa2bPZNgVY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740057416; c=relaxed/simple;
	bh=oaVNXNjq1ElMFLlTTOfZIVj51BctnvhUtgIniMypH0c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b3wyOZkl46GFD5X3b7Awb7KG3SupD58x9SHBjtO6h605zmidu323ukwasZUjMfcuFveoBf9be0YyfdYRa9arHLkueVJfEe5eSdFj0R26og7aZVqXDEMIluA3Iou4r+XI9a8OFlqWuU0BB/GDZ1RUcUUoMedDn1TEKvY5i+WU0Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KJGK8/oO; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5439a6179a7so1055578e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 05:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740057413; x=1740662213; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oaVNXNjq1ElMFLlTTOfZIVj51BctnvhUtgIniMypH0c=;
        b=KJGK8/oOIMNWGe/CfDuJ6DKSoLKwXH4g0AtThYwucdqcuqNydH/2rk6My5hgzzdzsR
         phq8JI2Z5EsTmxXENGZPz5uPHSZRd/q9OW2CrYdBTryloiBgbHN0P/NZ5axYpK2Txgqz
         KbuLS0lsEGSSW9+68JhaJXJfv3fYhV39FCMIo5fmdZMJV4raTbPiiEJ5qmg2+9XyV9e5
         OVw5Itnxf4yeymkZA/V4P9jL8hGKL0EgaleIH8EhoJn26s3A813wg3dFJNAE0p+Ektw+
         vT07DyMcEoJCzEgF/GeMZFFHYoA3lk1xONN7zaBRKfJ4ciLppuQoFVvKE/yGleo1UrfJ
         oJEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740057413; x=1740662213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oaVNXNjq1ElMFLlTTOfZIVj51BctnvhUtgIniMypH0c=;
        b=ZjRLf3PpyK9/+o/zBuFVZc7wGClxJFR4KHDRthHuHtOwu+4cCehilA+LGJzarEkUhO
         g0DiK3xIr59FM/K/mT3SbThilOsuQ6KjL/WT4V7yr3GNal0JJsjHO6pgF5QoxYqbLOEF
         Xgu1DCRyvpQb2YC1K4M+BtJv/883kmFaTDg5/8HiNf7/+SIjZTt06XceGtbcNQRDuYop
         sC8dg2hwoc2zUIlmjkarLWSQfDE1XhC9bimuNDV6oT+zw2IyUlP3yA/EDvupBRcOieKc
         IFy6jCT62PDw0L9tDHJ6U3TxxeCsjsaU2lVgMXX/U8jdXLyjFfBFQDCdx2Zthn3/GEt6
         Bqwg==
X-Forwarded-Encrypted: i=1; AJvYcCUBHe1fJFAcgnefmjkFiVOE855X0lZLy3wyuY0kgBG8yImCeAOnUfhyh+0DaH0OgoBRCgHkiGyLmaUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzjuFH4W4pMkR5g6Gpcy7NV5nrUtK++cNwbs0iCLxpIHzZseVgy
	8Ub5yWOFFBTSzv7/N4nZvIvtGqB4gI+J+QtIrCDUiB++JEhdJNDUi2BilkjiYI4fDRHEQ73430K
	dPDpz3qQLL/Fne21J75RBj5PgORU=
X-Gm-Gg: ASbGncvMdZ9JukHbLDRBCyiUKrc6i1KSHyqJgtjYhg2OrK9j6ePI6vsYTWJBzXymIMT
	xYvznyUAAU7XmW09l/GyhdRjX6MD89SFIc5Xsh2EtwsnDJElOKiN7Hn3a9ISxCbAB+KxRWmhffw
	qNHcnId1Vv/tlZbskR7KDs3bd9y4aP
X-Google-Smtp-Source: AGHT+IEqrcUDruUQVQw9PIP2nnmcnaqL8mazMw0/UGT3eK0B4REIyCdcsoXrs0tonKtkAZNfU63+ca9wZ9XZ4Tsitrs=
X-Received: by 2002:a05:6512:308a:b0:545:c75:9c6 with SMTP id
 2adb3069b0e04-546e418b55bmr1164686e87.8.1740057412747; Thu, 20 Feb 2025
 05:16:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250203120511.996058-1-festevam@gmail.com>
In-Reply-To: <20250203120511.996058-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 20 Feb 2025 10:16:41 -0300
X-Gm-Features: AWEUYZk1uCXrk08JxvlmJsfKPSn-ht4DFhoROrzsctBN9z8H8OYfXWt2Uh7qgi8
Message-ID: <CAOMZO5AT6BfwWQRXo16dhgpT7bJ07xjPCOFdY5M7DTiU7ui8+w@mail.gmail.com>
Subject: Re: [PATCH RESEND] ARM: dts: vf610-bk4: Use the more specific "lwn,bk4-spi"
To: shawnguo@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	lukma@denx.de, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Shawn,

On Mon, Feb 3, 2025 at 9:05=E2=80=AFAM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> Currently, the compatible string used for the spidev device is "lwn,bk4",
> which is the same as the board compatible string documented at fsl.yaml.
>
> This causes several dt-schema warnings:
>
> make dtbs_check DT_SCHEMA_FILES=3Dfsl.yaml
> ...
>
> ['lwn,bk4'] is too short
> 'lwn,bk4' is not one of ['tq,imx8dxp-tqma8xdp-mba8xx']
> 'lwn,bk4' is not one of ['tq,imx8qxp-tqma8xqp-mba8xx']
> 'lwn,bk4' is not one of ['armadeus,imx1-apf9328', 'fsl,imx1ads']
>
> Use a more specific "lwn,bk4-spi" compatible string to fix the problem.
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> ...
> Changes since v1:
> - Only resend this patch. The lwn,bk4-spi compatible has already
> been accepted.

A gentle ping.

