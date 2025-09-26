Return-Path: <devicetree+bounces-221698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C90DABA21EC
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 03:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 139D62A7C69
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 01:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6F917A318;
	Fri, 26 Sep 2025 01:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jL9cqrrJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75D6158535
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758848687; cv=none; b=f9IlP4O7US3PPYksiSUw5mi6mrxYNrqHHJyJ3/09WLb1fcLBt9X5xOFffCG7mQqoZuQnOKIsiULANMg2XPsg7ZjEnUeX+W8Xyzvl4NMfL+AgBPShs63j86h3uV9J41dGt+TEU5jzgwooORWkcLd5jf4qQGW8HCMAq4ku76fGxpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758848687; c=relaxed/simple;
	bh=f+H/QQJgKpGK4WSE+pqHlhBqTQJ5PHiZmCPRBD6StTI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KFhfKQwy/oT/tEnhpOMteFyYrD0qU/l8lI79cbirUTBx9SdhBEuVjC100+1A6DpQSAJht81/b2oK+1WMlobYfPaUOoGfUtYtRnHiHg60rNXEyMAaVLkoikN8hzYd8Fteo1aONT+kT9MazwXHpgOuHjOOm/15tjuwZqT1WbIBQvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jL9cqrrJ; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-36a6a3974fdso15910491fa.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 18:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758848684; x=1759453484; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c1PTcenWwYJQDqIWAGafXJtH7Gx1jBmVYXi2cXCmKlM=;
        b=jL9cqrrJGrSo2ku1ShXclnuHd0PGq27zuWZz7yggPU5JmDghsVM7UkqHmJIXwcj7ZF
         aEQml1/Zy9f2rZc+knDDKfRgUZUI0q/p5imwEOiyZEQoJWgvGwDT18k6Ve3LKZREPH+b
         4KzrUdnYYtDN5JlhyYrLe6Q8MveZ4tbj1zBtNnQdm8xaikyDMTcf5t3UxZFP2jGp/4RZ
         1EaWKiAMt3t3O2N4+kVtU9/YZHaRuztITYSM9BwaX13Ue+rnRf1Hxmn97sdgAwN3S3Wd
         SxQIhjOoiIyu1oqKCHX770An8fIaD7VxTbiqPbBzS2YRu6bSKX5v/8pe/o+X1sgikBzD
         jANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758848684; x=1759453484;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c1PTcenWwYJQDqIWAGafXJtH7Gx1jBmVYXi2cXCmKlM=;
        b=EITZr0SjK4x4gJhUDu7FKxMeOiGcuOpaMTNa87j2acXRI7XTADggX28XXQ86qXC7CV
         738ICFJ+c1a/Gu7WUZ/IXl504Px2+LH3xSax2CRIbQo5lPhqBedpdIJsWSDHvjX5oBy1
         RDotFtFA+lhurixE+iYcSGIXWkSxi6PdeDlxEEt4yxqAcXPe6PZwqg2obGMumXrPYZbh
         1QnndsNiv4ebMGjYSM1B2IgTzQogpo4mKPFS5fb2A2U+jt8I/enVYyFj5Z9OgoNZoOPu
         4/22Fvzir3SH5r8dLa7aaUyTODpF+Mb+tqGspC9V/GAerbqV9W4AnOOB2XX8VMyucXD+
         jVlA==
X-Forwarded-Encrypted: i=1; AJvYcCWv5+sQYcFRmLsLU1dt2KmHWCPZMsSFC7ZM3DhE9UZW/vOVnx01cLbMUV/YlFVnI6sU34CnQlgtmn+m@vger.kernel.org
X-Gm-Message-State: AOJu0YxwvlJtMnsAjR69/hsvEL5WYxx9Yypo9r5fJYIrltlcn8NCzYNi
	qtqw6z5KLnzU6wrWMCe5IlR5UCRJGyFxi8YNvTHTpWC+L4L7jAv3C5xu1WDrRLLDMgeSQBD7FPw
	hSHNYSlPen//vP0MW8dC+LWxuJo8n+2Y=
X-Gm-Gg: ASbGncvNjyLJVP1vD/F85jwKkccy1psf8w0TWYyx5cO4Wyk+YaCl51ddakHEYD2HnHi
	rgj1D3eryMrpVd+hwIvqFXIDPHwAlD9Kc0/qqYg0p8yw+4vljK/TyQtstSrMNC7UJbsBOvBGsAG
	AYgN1Rxo3I+JdACEnB5lkbbUQD695/BkiVco20blIAljFuzJtlLtAB0VDl41CmjoikqiNJU5Xx+
	Q7pWe60+bF7VFW5mPcYHcOfuuJ3B7JjEI0C7BI51O6GWcW2Mg==
X-Google-Smtp-Source: AGHT+IF60TM5C+nAEavr2hjyLt4InfjHbymmnuKiT3q3qe2EKbyjz8AweucVXMC9Vaf26fmcfOScUPJF+Jt3PPMgBJU=
X-Received: by 2002:a2e:a54f:0:b0:354:8a7:2f7a with SMTP id
 38308e7fff4ca-36f7f2489cbmr16533621fa.20.1758848683520; Thu, 25 Sep 2025
 18:04:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-imx6_dts_cleanup-v1-0-748380dd0d22@nxp.com> <20250925-imx6_dts_cleanup-v1-8-748380dd0d22@nxp.com>
In-Reply-To: <20250925-imx6_dts_cleanup-v1-8-748380dd0d22@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 25 Sep 2025 22:04:32 -0300
X-Gm-Features: AS18NWBj6BcwvJ3vSrAqizOdTksjhpkILyWLhm4qyX1--PNMSLiRuSdyQPA3LCc
Message-ID: <CAOMZO5BVbm+Vh=XOiR9peP0oW77GiqaSNCbawK_j2+_-vFj7mA@mail.gmail.com>
Subject: Re: [PATCH 08/11] ARM: dts: imx6-tbs2910: rename ir_recv to ir
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 25, 2025 at 6:14=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> -       ir_recv {
> +       ir {

ir-receiver would be more informative.

This is what gpio-ir-receiver.yaml uses in the example.

