Return-Path: <devicetree+bounces-194565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BA6AFE7CC
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D593016F82C
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BE9A2D9489;
	Wed,  9 Jul 2025 11:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d4zvvMFw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68122D948A
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752060692; cv=none; b=BC2422Hyr2XpmEa+FqNni6olkO6hEwoKik+VrYVdAtkjuQ7h9sDz4GxUSA80hktDWfURvP+7smanhpXO8pJtWC+wY6+ZXLQ6IJOR8sPeW45PdvGe4YovEzPmB+XcTUok6I2r0ABml6Igtx7Gqah4kqXyxCqkHcgER9fP3Yk5dws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752060692; c=relaxed/simple;
	bh=KC3Z6R9qM6d7cSIbmQ52PjX+ds9juhkme3cOPH/FE0Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GZ/I4e7kB5UXbXwvNh0Z4Az7RYws83b72hgMzlQVFNT/9URndmytyjrMLpxVXReUB14hCbdLDO6HEaPfl8Ak64Q0D1COedWOCEZNnO1s1Ld3U+3fed/v+0wFCPlW6vAYydNvfCr1EyWRP9fUkdOnY2jnHRztMVoNfCovZIly49o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d4zvvMFw; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e8b67d2acfbso1430104276.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752060690; x=1752665490; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H4qDIkCxD7aqIeJI126uepcAwUwJhAjQhx18iyCLj3I=;
        b=d4zvvMFwQWq5AtwhSFVZlEp2VsvEL4yY6W4uvGlxWtC4VC5WEd916YWS+qtBYC4505
         nJbWun+f95puMGOb8sVtFFdXWhQ+BzYzbxg16VSS8+ZaEfmNWCEwa9GGtOagKTz24KKC
         HsraMdu6Mh4VNXMALvfa0I3NuThWMsEQjdK35pKEmf89rfWM6OphJFs6HVc8zyP7CS04
         FNqUgHOQ6QJ0WG23eVrr6jvL6bYgiTea4NCdQtq6DfUng4s4AjKrhHtDWpjDz7pHZXSr
         P5RiYoAYwNGHLyhWmNOaaNXTNBLu3pYnTovmikJVUehgGPUx8ld4nY8KZfYEnuKEaPgN
         rBSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752060690; x=1752665490;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H4qDIkCxD7aqIeJI126uepcAwUwJhAjQhx18iyCLj3I=;
        b=uwqLhUEM4ksH5bbNk+liDD5XxiF9+5maYCO4wEMJIUqIOmInHPqpmmuAlMdEGYzD4U
         cJPcUgKDlBce/TwXxhf0rgCyQyydMhckDOH4wQxNbORbBLsAueqGOvsOfMDgUIwqjA4O
         m6ihhIFNx4lt9VE06VpkFVsnwZnVf9hN7fKsRwN5FfrQV6glTLcHrgDcwtGGZRJj8S7Z
         YwLk/EzUrsC16VJKiSJcWt1waQJIZ/GqK/lnDOeYrVoDxZGuVeQqY3ogDWvYjB44jBu+
         EFIhrugO2QppftFq18Jye41tAdqKbKC+PLV3+Sm4jFeCN++tJWtQlQ43h3cpdF5js8uW
         uG6A==
X-Forwarded-Encrypted: i=1; AJvYcCVm5nYi5YNCCap0c434OEynLb4BH+mkfchztfYHxrQHGLYH1m46gfZrtwNyRbQ5ZplnDzC26qaYHV1k@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvr5GbQ4B+Y7dlcMZHIz8OeloAnlEKzmYbAlbZgxsPr8CVSQck
	hkk63NGur/9Pd1R3Z+/bfJ/DtExA/xTnAAWHCh7P23uMDymilBWzWKcaAAJFeN2WGg0FrXCbS1h
	vMyU2KMNWYZ8/ppKnSMYWg8ZzOuyEzwM3oDZqed1eoQ==
X-Gm-Gg: ASbGncvYgCgJITLHK/OXTSsajMojlUxzUO7MyCfPcIWkpLI82zQvcnb44By/2a49mJi
	jkhBeqLSXZCsau+Ubl0G6PKHk6VpzObnuBy8Dyo7Mge/APeyxDv59wdwv7XuYnsdmqOnyIAdfld
	11XwSowCTgz4611adZ7t/YtjwxZPTBWRlgts6ZGUltm6I9
X-Google-Smtp-Source: AGHT+IGEJ4mmuKS7rt1MFlUz2bfdy5YmSqNFhku/Q0Up5ig+Hhd1s6mTWPeVIQL/2Z6ktbTHNLkVtt8rYKM0Ty9sofo=
X-Received: by 2002:a05:690c:34c1:b0:70f:83ef:ddf7 with SMTP id
 00721157ae682-717b1ba3c3emr33058457b3.13.1752060689721; Wed, 09 Jul 2025
 04:31:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
In-Reply-To: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Jul 2025 13:30:52 +0200
X-Gm-Features: Ac12FXxRo-xD5eCPtXLrowuQGz-kjsQVt_Zu_iyEtrGYNOPit2r7unOQDND3zzc
Message-ID: <CAPDyKFonLENQbafjo621hHPkoWjMNoQ5GRNeNndpezMNnM1=sA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add Milos RPMHPD power domains
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 7 Jul 2025 at 12:18, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> Add support for the rpmhpd power domains in the Milos SoC.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

The series applied for next (with a minor update to the commit message
for patch1, according to suggestions from Krzysztof), thanks!

Kind regards
Uffe



> ---
> Changes in v2:
> - Rebrand SM7635 to Milos as requested: https://lore.kernel.org/linux-arm-msm/aGMI1Zv6D+K+vWZL@hu-bjorande-lv.qualcomm.com/
> - Link to v1: https://lore.kernel.org/r/20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com
>
> ---
> Luca Weiss (2):
>       dt-bindings: power: qcom,rpmpd: document the Milos RPMh Power Domains
>       pmdomain: qcom: rpmhpd: Add Milos power domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml         |  1 +
>  drivers/pmdomain/qcom/rpmhpd.c                        | 19 +++++++++++++++++++
>  2 files changed, 20 insertions(+)
> ---
> base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> change-id: 20250620-sm7635-rpmhpd-dcb5dc066ce2
>
> Best regards,
> --
> Luca Weiss <luca.weiss@fairphone.com>
>

