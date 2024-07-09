Return-Path: <devicetree+bounces-84257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B2092B9ED
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 14:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1371E1C21B8F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9A815A853;
	Tue,  9 Jul 2024 12:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mZRh5Mwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC551581FC
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 12:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720529388; cv=none; b=fAMCHUR1P8RjnBjCdME6ZAG/zmUfmapJ5U6JDs98XMsAne6nrYyTeChNiPMoEEVEtM+YTlIkE+KevYZpEtvQbJ0Af95gZeD4aGgrDeKtSXVuMY8kvK2TEpBdSMxwjCTVGIQeqsh4Z8G/zNiBT37ga7Cl8uxx9xw8QeuhrJNXSt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720529388; c=relaxed/simple;
	bh=iAKlK3P8H1O/7wS9TC1ZzdVwKM3jWOpW2nwPZJKLG6E=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tgPinnHfddpO/gz5VEziRzBPdDCeDWz+t5Sk2x/68dCNQX/WzSZqLpy2UmSfiCAAMr/Fa5YGpJhJKwuucwJUyEEYsQPd9ointanjBofNIzvOANG8DVvi19O8YWhrqerSt4h6LOxWqM6IaZZbfZTZTUGrh9OfbseAzmPmlabauNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mZRh5Mwe; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4266edee10cso8879955e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 05:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720529385; x=1721134185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iYPXuYNWuUC0ybpVuOxAnF8IJKAQUMORqNNA7E3t+Ys=;
        b=mZRh5Mwe9/RyZPeKzVOba1Q0bDmhBA2fvLxoBcyxe6H5otLrl8+fksXTvcBF/bDvb8
         iWx7GOVv/AKbfyKrMzsxWfRcLWkAx6DfddoMTWbUm3Xy8aavxL4XT0WI0bmxp33gR2s9
         CoSlwAt1AvarkPfgKdRPWeG17TYug8RdtQ1x80U1R+B5NNA7TR0nWayfQvIC9Yvem/v4
         WOZkhBd4MyiMnCD3eNc6r1hQKjJYu1klIf45MG5b1Ayb+gAoETkyzvYGAtXlb/NpB3Ve
         lh+Qf8ORrySKWtiSAWL73gFK3gCkYKXsRJL5Tzqhu/vj4n9ENWu7BwGczp+WqjuXNUba
         Yu+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720529385; x=1721134185;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYPXuYNWuUC0ybpVuOxAnF8IJKAQUMORqNNA7E3t+Ys=;
        b=PZl3noK/iym0CxOPwvCZJSKSfDpRrbk+GXypD4wdU254uxqeZGDjY2iO8q1UshHjr8
         bABUaAdPD/TVL327PP57y6XB6eMsScq4S8/XlL3Ikob9w8zAk+qd4RP88Zr+PCEHgYrG
         SiFSM9DAZapt4gGEpVPRPGgJKlJwWEueGo573NevZFzhf2oLBHHnkDJ7aWIQnWc8l77T
         JF4r2zvGgQbjU7wLv+ndJ6VuUQCRb8L0yIjctJy7pJfihyLWxzBEZK8qeZDXzFJ5gavn
         w9E6zQyDfWaJKOdOoWzq1yaQh33C8vEE9g4nKoMRSyLa1wbhUqzz6URxBdmfOz5aNqLD
         P8AQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkAaz9Ai308UQCzx/8KxPyAKl5lqKu1qMdNXEtHf8goNtvbcYfqjfhmSXE/9KDypZdHBtOZy+OZYJBMrAPhXPQqB62rNQSMYQvhA==
X-Gm-Message-State: AOJu0YxPqvEPigEakMK1Us4m8bvRn5eJ90ViC2Tw0+6f7HtU4DDUIlLW
	uBUzOzEG74iADUQdAXurf9uZZDx2b1DdeGqPDuuFHyut10PFyD6CJro4T9vX18A/QipEsfIN+M3
	nTjU=
X-Google-Smtp-Source: AGHT+IFcDYqdCyBzlJ2hUBfUEgeqmdLsG6jtJ7rQwZ01MQc6/OtCfICug2ElL+2i54FmsrLOnVfnXQ==
X-Received: by 2002:a05:600c:428a:b0:426:6153:5318 with SMTP id 5b1f17b1804b1-426707e209emr16226835e9.19.1720529384508;
        Tue, 09 Jul 2024 05:49:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6e9666sm39540095e9.9.2024.07.09.05.49.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 05:49:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: megi@xff.cz, javierm@redhat.com, quic_jesszhan@quicinc.com, 
 sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manikandan Muralidharan <manikandan.m@microchip.com>
In-Reply-To: <20240701085837.50855-1-manikandan.m@microchip.com>
References: <20240701085837.50855-1-manikandan.m@microchip.com>
Subject: Re: [PATCH v2 0/3] Panel HIMAX support for Microchip's AC40T08A
 MIPI display
Message-Id: <172052938350.987180.18063209253133555309.b4-ty@linaro.org>
Date: Tue, 09 Jul 2024 14:49:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Mon, 01 Jul 2024 14:28:34 +0530, Manikandan Muralidharan wrote:
> This patch series adds panel himax display controller support for the
> Microchip's AC40T08A MIPI display.
> 
> yaml file is validated using the following commands
> 
> make dt_binding_check DT_SCHEMA_FILES=<converted_yaml_file>
> make CHECK_DTBS=y DT_SCHEMA_FILES=<converted_yaml_file>
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: display: himax-hx8394: Add Microchip AC40T08A MIPI Display panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/223c12dd492d67d90d3712ef3d9e042116a47522
[2/3] drm/panel: himax-hx8394: switch to devm_gpiod_get_optional() for reset_gpio
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1dcfca093be9e013a53e3c9b74b3f60ea9c5160e
[3/3] drm/panel: himax-hx8394: Add Support for Microchip AC40T08A MIPI Display Panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/014e597d35816b56c7aac1348b77c73657c4066e

-- 
Neil


