Return-Path: <devicetree+bounces-170552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEA2A9B4C2
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 18:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59C8E7B6779
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 16:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6374D28B518;
	Thu, 24 Apr 2025 16:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BELN2Xlj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6559127FD53
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 16:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745513861; cv=none; b=mKoBQZKhGjnb+sEcLykkpUAZHmljks/rBNkvtgmbKUCPcjLbDU5HQAmQs/n8I9P/501R74E8u6XOEPF8kcwpwl5w4/E/tCdwTibWV66Hf9HVUmQDS5i1Bd0aS1kU2W+ZcC+6is02nrMTdqo0rnTQdnnbx80qYcIhsu3x/n8Olrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745513861; c=relaxed/simple;
	bh=hS6YdVyjaOxJfdDNyVfmlBPQQSzKuRq4dxje6DjD3Jg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lcCMQZqNwSqORnlyJistnWXDxjHx67o3cY3cp+H8ACDB7JtuALOLyEfcb+TUov2htFA8JGP+Z83MrI4XezWjcwY2mjNVZFPbrxeZ7y4BUJS3h+ODvEUOUM6CWOp/h1APoBPoM7jzoh8aCFEseqUnitI9B4q9R+NnrtfESbgu8Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BELN2Xlj; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e694601f624so1008627276.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745513857; x=1746118657; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XMDqtfSsgswAHK2zMki+icWH9z9g6NMe+d35IYgU6n4=;
        b=BELN2XljavDZtosWC9tWlOifhW73t+TMCc+khWL/dze/lq2mIlef3Wiw2V2VOKfJln
         6h/Uu/nyyGHXWyiFh0VfBCJDQdGY6KzQ/WBgrIKcYKQ2KZiVGJjdHCKVAXk4qhQEf3wT
         vXkCn4QTHXa++N/Y8s7u7+VMNdbIM6uW69rlloBxeWcu8FJKO+x9nLPfPVWoGhyvbwzI
         hhv/hVyQZRud32Hl7CyB1kHaW1wzBedoVi7BOcOaKmiLxFujQ6qwetcqtHu9PZ/PiZae
         UFZYfQnPCx+qSQykZbRYD+R0dgS/HvVg+b73btWWpUd22S80299TICTu+t70VmI5tTFT
         fJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745513857; x=1746118657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XMDqtfSsgswAHK2zMki+icWH9z9g6NMe+d35IYgU6n4=;
        b=imVI5ptxG8f1AwzsbZ1uyteRHQajThrfj5TYeg+gyBbBX+v7T3ytrtpt6+9h7LX3pz
         BSXQrBM8DSSjlwds4x13k8Of2u3HI9tkVyzA029UIqR5u4JY8Bw+8Tw4lMX/L8U+nDg/
         x4S3MKKIagN9SsT+KnRfqXIa0KFrGTvkyoWyvux+Yw8Yp46W/RcrYKWI+V5XQrNEAWzs
         qxiUh1JwaieI1tp91xLiSb4w1tXX23fHDSTEl2AGrFoOTfDMJCskXYbCdFGXzlAC9Zl2
         SPd4l/iK5fpT1IGcllAM8PXzy2b43GYUhQ+kcM41E9SeeRrv191FAY5vI9tPJZAJ6S6A
         Vuaw==
X-Forwarded-Encrypted: i=1; AJvYcCWZ4MfnntuGTlQluFoY3nVH0CsV+b4dgVJKA468UNPpXd8JNyo3spMGdrj0Iyi50Ww/VILFrujDFnQ/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4ccB4gjdkj5HNjUqZv9+rLRma3FmKBQW8cmNWTH4G9r+z/FS8
	ClmE3i36tKLObTjhUM5kNsAL8zcy+a2mlP45nqxGjx4ezC2cv2x6sgQE55n8lOm9g6n66IDhaEY
	7HKFq2z5+7QykEcKSqcv2kIrh/JBSJIq2isEdxg==
X-Gm-Gg: ASbGncvA/7ry3cs3BZMEVoRfZvVjJHTYZm+C0XfS8O5q3XWAMa//yKWr9D/Ep5BjVV1
	o5P+72BrL4YhF+fdD2MBe8ab8yCVKf+cR1gGOwVZ9cmmyY/hCmXIF36HlIJDlOTp8n32QGdRji7
	u4ZxVG9uKAecqs75VmYzqmvcA=
X-Google-Smtp-Source: AGHT+IHIsM0JcIVkaYurwu7Xm76aeWCRBd2kXA94L1zA7HY4+kXgxndqZ0iWhzKWJZRbPN5Psmgt3hk6PaDxQyb1LIo=
X-Received: by 2002:a05:6902:13ce:b0:e6d:ecfc:2328 with SMTP id
 3f1490d57ef6-e73034f04f0mr5006786276.3.1745513857331; Thu, 24 Apr 2025
 09:57:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250410143944.475773-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250410143944.475773-1-angelogioacchino.delregno@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Apr 2025 18:57:01 +0200
X-Gm-Features: ATxdqUG-Jb1AZR77fk7uAdSggUmnOFrjqf9oHFUx6Q2HN7mjbQy7Up3T4KB7Soo
Message-ID: <CAPDyKFob2wB=stDXLPG0VG7mBso4Hid32pXpMvaP6WPbL0SyEA@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] MediaTek Dimensity 1200 - Add Power Domains support
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, fshao@chromium.org, y.oudjana@protonmail.com, 
	wenst@chromium.org, lihongbo22@huawei.com, mandyjh.liu@mediatek.com, 
	mbrugger@suse.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 10 Apr 2025 at 16:39, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> In preparation for adding basic support for the OnePlus Nord 2 5G
> DN2103 smartphone, this series adds support for the power domains
> (MTCMOS) of the MediaTek Dimensity 1200 (MT6893) SoC.
>
> AngeloGioacchino Del Regno (3):
>   dt-bindings: power: mediatek: Support Dimensity 1200 MT6893 MTCMOS
>   pmdomain: mediatek: Bump maximum bus protect data array elements
>   pmdomain: mediatek: Add support for Dimensity 1200 MT6893
>
>  .../power/mediatek,power-controller.yaml      |   2 +
>  drivers/pmdomain/mediatek/mt6893-pm-domains.h | 585 ++++++++++++++++++
>  drivers/pmdomain/mediatek/mtk-pm-domains.c    |   5 +
>  drivers/pmdomain/mediatek/mtk-pm-domains.h    |   2 +-
>  .../dt-bindings/power/mediatek,mt6893-power.h |  35 ++
>  5 files changed, 628 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/pmdomain/mediatek/mt6893-pm-domains.h
>  create mode 100644 include/dt-bindings/power/mediatek,mt6893-power.h
>
> --
> 2.49.0
>

Applied for next, thanks!

Kind regards
Uffe

