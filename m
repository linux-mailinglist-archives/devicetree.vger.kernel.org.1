Return-Path: <devicetree+bounces-48886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B01A68740C7
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 20:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6576C1F23255
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 19:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81EBB140E30;
	Wed,  6 Mar 2024 19:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z4bYcwU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFA613F430
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709754637; cv=none; b=qebrIcC65zFEVCGtYvcemdPiFxQ2MS0sHgTKUsxRUCbBlmEVnHVKWhrIUYb28E41batLDwTHKkRHUPEY/AUtfF4UlBhkeaEleB7CRIB7eWa6hV3d2fQlXD04rQZdX8t7ioR2vWFsZAXg2LajfaE1dJzz8vPbCNt+L+bns6WoI9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709754637; c=relaxed/simple;
	bh=J/J/WYR0a/jfL/L8CmcqoJd0/LkmdHVXKLnGZM35uAM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KPq+k2w/ClygkhwQosFUbCKDYVq8pnUBEdgN/pyyJ2zNsfFKlhioAwaJcW1GsX98c+0OuHOw7ysGmXKf6OJAsP0j012uoxniAZkrpPXc6p4Ot3Za9WCC6ck2hFYUvw73fZ2EpyCN8rA6thzmz4zdDC3zZTZKBahmL1VjxcjO5CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z4bYcwU8; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dc238cb1b17so63439276.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 11:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709754634; x=1710359434; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XYqVqYpwYt6rNIG76DtvSNsSsOOOlu66e5YGMr8JNM4=;
        b=Z4bYcwU86sOwtH6K6/+Sbkt+PgwbvwKMzcHZsWI7M6tYKURQr3oQ22WCNfWdb9j5B3
         4D+nwNP87Xs9lOHg1NXBCMf3sSj7PEXQxp31pPjS1IA5gHBSepO7qsYfJMSUUIxcNYQe
         TSltAQp6FD0E5zGO7MadSNwCCbqeDmuWUtLml8VN6agw89Oy7Lyi6sEfvwZ2NMF6BiZ6
         q9wh1YLySyhb1vYiUFXGmuyxFE98GxmOlAHXXHXoP/FVGKLedUsne+UHRP0qk0GQJy1y
         xxrXDCnpmK2wTWng74G9AidBXpwqpKti4O29edVXxDh4WdTveghboA4ugaMz21Tk6U+B
         dwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709754634; x=1710359434;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XYqVqYpwYt6rNIG76DtvSNsSsOOOlu66e5YGMr8JNM4=;
        b=kIYTv8WiAKCvDuTSxNqOlSmTJin+t0j5/kz/89IfCxBSAGosglI/xCiQXbbNoNaRuP
         bH7sb7p14oTmlsu3VspEN8nI/Rqn1is03aYjsO0N5iU3mpZ3hT/zAfEAut0PRosmb+xG
         wL1m7jcMoh5hPzmbfEPnkLtEijk1/IJ9909aUdTpBC2UoE5uMcGAVdsEhN7BO90v0Slb
         yyc2KWTL9/U5lOzTH0tshzJp67YOhZS8wtjDCooEjvjfRQGkpbZtqGlE/UgBsbXEYqRX
         QFgVOdn/5gbX8pudzMcQ8XSTJE+Nh364DijDfkLvfxQCdilwPtGyo6XeIp+HHAWWcCqC
         8i3g==
X-Forwarded-Encrypted: i=1; AJvYcCXqWvmeg9sV7by4S8tVUlQjBR6fxjr10/SJx0sE20hxxbh+hlPY+Pd4ZP10Jkmsz4lKDzkBkU7vtPbV94dDmhx6aGxXoa9EUg10+w==
X-Gm-Message-State: AOJu0Yw9Pf4aF9K6e/Z9/IzSzuUz0w0d5g/+ZtQirlATNLBQDgiQVtZJ
	nLvpqZvFgOCdDjENt0RqULtt9kvrDLoHDh0Z+vlVtHTKE463Cg5f42evvsEQ1SR1PKcG5IACdHo
	kH4U71CSf2A3lshlnlAa0S84zugWT0pOK0ddxyg==
X-Google-Smtp-Source: AGHT+IFCY6UXVEeXo4Ge0RRKwR7IuVdrQnxEw4oe3yP+Y7OxURs32fyQY0uegRM9q9PXK/Gxa7fam/d+oeVVOvQQAJs=
X-Received: by 2002:a25:aea7:0:b0:dcf:477e:c82e with SMTP id
 b39-20020a25aea7000000b00dcf477ec82emr14974521ybj.50.1709754634018; Wed, 06
 Mar 2024 11:50:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306172710.59780-1-danila@jiaxyga.com> <20240306172710.59780-3-danila@jiaxyga.com>
In-Reply-To: <20240306172710.59780-3-danila@jiaxyga.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 21:50:23 +0200
Message-ID: <CAA8EJpo22Pk-6zPWEhVjD+HbYWbmsYNm-ZuurOQ2KVw4=0dC3Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: pm6150l: add Light Pulse Generator
 device node
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: pavel@ucw.cz, lee@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 19:49, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> Add device node defining LPG/PWM block on PM6150L PMIC chip.
>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  arch/arm64/boot/dts/qcom/pm6150l.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

