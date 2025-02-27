Return-Path: <devicetree+bounces-151926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8A8A4783D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A3E216E79D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 08:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09E7E227E80;
	Thu, 27 Feb 2025 08:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tsrDmHOq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456A2225403
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740646219; cv=none; b=ndhPcQLHaOdiepQ3AXWMgE+c5JhsOcLY1pke1aMsj0HU+o/6Q1yR+StyXDMVa31LK8Sj/z5i7l2QYmNo90E31Kv8S/CZh6GYIqANCVuz1psY7/JRzD00ssL90ko4S8vG7MHsFiV0SrAXJXG5gHs4OqkeGaovTP7r7XZy7uO0Gus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740646219; c=relaxed/simple;
	bh=uynasPwDdscPLERoEl2jRP9OFCsreNV2gINdXwEpEFk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WAv/mr5kfX2J3xKUs38xOjgZUhF1PKODy3vRn+1QWPmW1d0ZvLjeyUwgojvsWNIKCMS+9xzeMw19TrKuXMbzZX0ckOpAplMr36fVcl439VGK4B9o+MOKzhbiT3QaiO74N8k61uXfoY2HQys5dAsczD7fWySQHb0CNCVEThLXNBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tsrDmHOq; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38f5fc33602so454828f8f.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 00:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740646216; x=1741251016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ks/IBwEcAklNTaxJVZ+LwL3mjgTmoZqvlq/i0v1O5/Q=;
        b=tsrDmHOqesXrqelYX9H5/bSxH05AIppaFPG0KGQJ1kiUCYdoEuPs0zyhcvQNHeN0yT
         AYnMEkSnxC9KdodRXRFaTWQyY56DVCH8fw7tq8qH0uCVWFqYJe20Iw/h0jAlnWek2p0j
         VYkDAsBtMHqCQmSbWDQxTBm59Q8KOdsxfEZsP8wSKwIlz0Q4gbrbWjGeAGIAPm4wYjqw
         3ooDnwS/HQ/agq332TySbCiFSzvLUmNHzj9jrT3T6sF7V3bMUB+UXftP57QtzuqAutI7
         Bncx0kumLx4VB7CcXPogBmMyxAwMplB6AHeiTcKJoiHp247ZWMH0cLYVKaSpsC+/nX2D
         gWoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740646216; x=1741251016;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ks/IBwEcAklNTaxJVZ+LwL3mjgTmoZqvlq/i0v1O5/Q=;
        b=M18r2Uv6rRvN60P8akOOkHodR5BSj7Or4Qa84dpu2TwkPMXX0EgmNSI8h/mQ6EGt96
         tHMiptdyuMkkGffbHh3aoVyif56YsV47AABJR9+CJkfIYhsOf+daRvKj0zAOB6m0FIHL
         wMPEQiiwkM7Y08I72ur2flc5BDAVyX7cdvmyccCc4pBBGntbdJl4BCIWJTLr/f+yA0dM
         aGvvErS+fU+Q9ZTkbCU6Pe1Ci6N0hjMamOTvy57FYMPtbVZU2rehHpMxt7v3drNwJC1U
         GRDEa+JAjk4Ix2HudwXZpKzrfX04UiZz8DOJi3apzgsA1GGyJzgnN9nmNv12DU7IAxUW
         rfMA==
X-Forwarded-Encrypted: i=1; AJvYcCU+Lap03wEzZRDUDu7dnuL5WFl5PgErpLR+HhOiOLDFlmI/EpNW/ct/a7TWrBHO7y5bRh8r4AQC+Oxu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj4Ea6Wv0gpLJCKJj+bZpbAPPyzyelEvfu0MLPU+vuFM7y+sfs
	YA7Toi0ilN+uM9UNrsnaeaES59Qrt0ZFIYlVc4/CLy3XB8UxjS6n57vjC/hhdx8=
X-Gm-Gg: ASbGncvsoAAMVGDPCXorq4/8OlQLf7am/OhlqAteGTCChnzRQS3r9icbb7o6sKh+afd
	sYzdH6/RUxHiC0CtJ/Q92EU2BE1Xt99UfuKCrnhHnPElJcyeRi2/8qRdOgQUnYM1/NtbC8OVOVy
	iCEdyjwYLASysuZXjU8siZiGkPP5w9RfcSqsuTqxg4YSm92A/W9AGZWagOXAs1LbtjSClpDOJkT
	T4VVMu4BwJrpPG2nss3bwXtWF4OKYowso7JNESFQf2kDta6E5cJ3SKaJmdzZ/pHVslN7EZFbmP0
	lhiMyaZWFjGXSbN8oPTOPyPTgYskqPNpkPr8M9fXixQfZXE=
X-Google-Smtp-Source: AGHT+IFoYeXJ4I6jLF2jC03Em3Oo6roBaewn/6DI8FuDdaLJ1uKLliib4X2jgX4JOOl4swbvnoBEew==
X-Received: by 2002:a05:6000:1a86:b0:390:dfe9:1881 with SMTP id ffacd0b85a97d-390e18d23bcmr1917682f8f.27.1740646216574;
        Thu, 27 Feb 2025 00:50:16 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba57145esm46894535e9.30.2025.02.27.00.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 00:50:16 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andersson@kernel.org, konradybcio@kernel.org, robdclark@gmail.com, 
 quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org, sean@poorly.run, 
 marijn.suijten@somainline.org, jonathan@marek.ca, fekz115@gmail.com, 
 Danila Tikhonov <danila@jiaxyga.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 freedreno@lists.freedesktop.org, linux@mainlining.org, 
 ~postmarketos/upstreaming@lists.sr.ht
In-Reply-To: <20250217222431.82522-1-danila@jiaxyga.com>
References: <20250217222431.82522-1-danila@jiaxyga.com>
Subject: Re: (subset) [PATCH v2 0/4] Add and enable the panel
Message-Id: <174064621558.3904283.15224037666170321960.b4-ty@linaro.org>
Date: Thu, 27 Feb 2025 09:50:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Tue, 18 Feb 2025 01:24:27 +0300, Danila Tikhonov wrote:
> This patch series adds support for the Visionox RM692E5 panel, which is
> used on the Nothing Phone (1) and then adds it to the DTS.
> 
> Before integrating the panel into the DTS, we update the DSI code to
> allow bits-per-component (bpc) values of 10 and 12, since the Visionox
> RM692E5 panel operates at 10 bpc.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/4] dt-bindings: display: panel: Add Visionox RM692E5
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/383c772f23869df7a31dea333ec92c9e442431d8
[2/4] drm/panel: Add Visionox RM692E5 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/7cb3274341bfa5977f3c90503b632986a82705fa

-- 
Neil


