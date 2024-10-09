Return-Path: <devicetree+bounces-109353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 610D3996194
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:56:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92AB31C21E00
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 693FB1885B2;
	Wed,  9 Oct 2024 07:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iyB95oni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F54187FEA
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460563; cv=none; b=ajYcsC0TFnJfh6QdT45dcDcgc3O/C3IqiCT9tHXEZn5eUHWWWrEaBl6OSt1HhL/J+s/O8Tkc0X2bI+4IncilgE78jvd6r/ft+jilkgvP++XCegHIYl+vT7g1GEOM4nr/dtFsBX8mcm5Abnx4OaVqh4qb2gMGLwtFSk67o+oS1Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460563; c=relaxed/simple;
	bh=FynCmmkMy4bJexAcmIx6Rl+KJGoVBNFA6/H45/UbVJ8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eM++mGmMAtWLhv4pZSSq+1l3zaNq2PcIdT6KgNmMndKA61BcORSWYpi7b6yZCQ3P5LeL3O5Da4yDeB8Pj4z0UaOAIuC9X/pVcRBAt7yi510zRyvK0EumfB6FqB01kqAKoKtCX1IS4jKXTsw+44GdJGW5mEIwGPqXzaLphDZWIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iyB95oni; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37cc846fbc4so4973779f8f.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 00:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728460560; x=1729065360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kSaBQTwpbtH+HEoeG6aWs5SQkV2mkK2VyYp6aMnW+RU=;
        b=iyB95onii2zkxm1c/VVqj5xsy8FQbCJ5aRSGZI+0wU39bvP7DGEqqmYoqOfdMuonKN
         y/BkqNLeB0jR7IoKS+vh+lQcEIbRMn35YAyonkJml5Z5sWf/k1DgC1oDROgjQeSyDTgq
         FsYQe0d3TundVPCBHV9j/D+OnEUUIUwvR81p1i9FYVhDf295am0HT68eHv50vqwHJF90
         vRNsWZPP6d3jXcbRwNonpX8sihl7/cXdJ6QesyDa0rl0Hd7n8OrWq79XYXkuaM20C+XB
         fMOSzITx+vnfihBRnRUgysWA9EVj9zHcEMSG685bu/3UQNip5Cn/KtQ0JueEnTo7Jswe
         Lu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728460560; x=1729065360;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kSaBQTwpbtH+HEoeG6aWs5SQkV2mkK2VyYp6aMnW+RU=;
        b=eYvrkfAv0hCb8HTv+UplDUrm4uqg1NjzziYi2eVMiqBB10l77c62BZbs81izshoKlO
         9i9uLJva4ON05pBMaBXurGnHAjY2ioLIO2HWL5LFwsALMw6R1dYDCLSwoC7g4+ImMwja
         w3f3QgxpNda92B9bSggtEXPkK29g+LAs61p0OQtdm2+FrOF3LTEql6mA9qzlNThQdq62
         lPt1R09Ib1UmhMKz79iD3Lq/SixjakalHDg9f71aImEiKQC37mDZFJP0GSSQelD5jyG1
         2mXUK2vqoMW+xugqm2FjOy+2pSAB0teAHcjIuz7e34F1EnDpZneay5We+a60vn5zj44X
         mndA==
X-Forwarded-Encrypted: i=1; AJvYcCXU6+oA9ixHUUXwDbte0nTEdbdVGfzoi4KiYNbbTHG3XEaJs9pBHVi5Zy8nNqDssxeTSfaFe1KwrWXh@vger.kernel.org
X-Gm-Message-State: AOJu0YxQRb07D+rjjflWsTfNr6kmVB0TmXZRwPhCdHIIwAKCrRiSvqLR
	/Mnm139IaaR/txQ9BQfwk2i1bIXqVIz1CbBBkuxqfyG4fdsmbPquaKeaChF3dQo=
X-Google-Smtp-Source: AGHT+IGSigrWTTSN1cAc9Xn4YgEo4/oML0zlBirtbYoucTX71ox0dbj6ACRlaaqX4L1F0DLeTvJfNA==
X-Received: by 2002:a5d:591b:0:b0:37d:4e5:bac7 with SMTP id ffacd0b85a97d-37d3a9b837cmr929787f8f.11.1728460559968;
        Wed, 09 Oct 2024 00:55:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d16972fd9sm9660342f8f.104.2024.10.09.00.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 00:55:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dzmitry Sankouski <dsankouski@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20241006-starqltechn_integration_upstream-v6-0-8336b9cd6c34@gmail.com>
References: <20241006-starqltechn_integration_upstream-v6-0-8336b9cd6c34@gmail.com>
Subject: Re: [PATCH v6 0/3] Add Samsung S6E3HA8 panel driver
Message-Id: <172846055878.3028267.15021754681839590280.b4-ty@linaro.org>
Date: Wed, 09 Oct 2024 09:55:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Hi,

On Sun, 06 Oct 2024 21:18:18 +0300, Dzmitry Sankouski wrote:
> The s6e3ha8 is a 1440x2960 DPI AMOLED display panel from Samsung Mobile
>   Displays (SMD)
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] drm/mipi-dsi: add mipi_dsi_compression_mode_multi
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/975bdea8c470cf10637c58129edaae731fec9e93
[2/3] dt-bindings: panel: add Samsung s6e3ha8
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d891e79861cd2b424e3bd19d3301f35be13bf118
[3/3] drm/panel: Add support for S6E3HA8 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/779679d3c1640d8f45c75b1e15831180ab2712e2

-- 
Neil


