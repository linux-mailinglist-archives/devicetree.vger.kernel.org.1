Return-Path: <devicetree+bounces-113224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 160CF9A4EED
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B4CA1C222CD
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 14:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BF6189902;
	Sat, 19 Oct 2024 14:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FhuEICra"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B505717E00B
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 14:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729349840; cv=none; b=RoWBXMNxZip9rccMUci7C7Xt+kpE1ru/vFswiJbX2g7beaRP1vHgmejLpB0O2YB7az028QM52K6VVf0rAATnYZOsz9YgTxTHvhPLVprOPwFPqei6sN+vkgfNIJW8cRO5pIFIsiyElIbVS6yQwRIjZV8g3T1baGsgoWK0OIESQjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729349840; c=relaxed/simple;
	bh=2cydqb91QLDOvV4lZqUIXcD8rsM3uJwPE0KkXTFjsZA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cgJz9BemW2Oe+eD0527p77yku//c8qcfQweiOVy76v8gt0dnC12/+Yr9Nw0JiLNw2DHZxsEY8qbSDj6WIFJE9NyQAOeJOPUkbZGSHl26OzBtbUXIMHqOXfaqJPjkQ2os5lRi3y5ao/64J/QYQ6Sb543yXTTXE/u0faRWVfKuekE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FhuEICra; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539e13375d3so3418142e87.3
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 07:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729349837; x=1729954637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rJ2iC8uZMY1HDwTJfNJvqqDE19WyrllRJxma9ymbAuk=;
        b=FhuEICraxrrL0mfl9bQcDhqpMFJtQAvPi2RwjA0SP0QBS050VaTin2hctYX9HirlcL
         tFe8tWULne068Y2xZ7kkRY6ssLKmKvWzClN+orPihGyaD4/mt6xOSxnHAHkh9CTltUFW
         0YDroRuSnkfrcCal/2mZ05GUzGI6Mc4TgDK/zFz+0SL1WisFDJGQyEmC+DB3pAxUer4M
         T0oMaibZd+4mSaA581SRciynBnJBCNgU8tlD/cycTGIVESNDaqUbF//ObvHHe9klnMSX
         0dKXvi51USxnmbLXBaksmCM9xm7OyfBRpuXFfWD9US2jI/09uniflx2pChyanvWgZ+Tn
         eV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729349837; x=1729954637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rJ2iC8uZMY1HDwTJfNJvqqDE19WyrllRJxma9ymbAuk=;
        b=mdRAhYtaaQ34VefolelJV+KCRsT+kvRBOEtpkGWt1PkRxHMdce9BqIj+HCyhPDYaYg
         XnQvVzkUqOv4WR7Q4si1mXJBEBf/C3RNDP+8+im8Zy8niV4LiKD819RqgbbeI/5ShyGd
         W5GtaRt3SPe1rxEwFsiJ+lSqb+sVBSrcKlPEoY9/2aGpM9zxice6d9W2ZrXo/Xeey/ud
         0ZC8IBFGiMU9y4E97k1djJrvHY60EdtzBrqEd2NfMzI47DgN1L/3Sm/9hNTKcImnze5g
         pVLM7tVw11WG8/MAQxx2oK38uHnhBKiRtHJkTmqbfccT6cn21M5kCGgvtCLvqe+zYYQZ
         i+dA==
X-Forwarded-Encrypted: i=1; AJvYcCXktMQ3hW2loQx+PZR2MgYLleyPNS438vhJjDemRU9gM42+WDMIAwGoh+bIuCVzgpT5B2Hw4NjbYuiJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9HYW5iq/8J/MBbwdHKkJL1o24YN6QKzvB88T4bJCELRN4qSVg
	K5elYnEZWx/9yeBJ0lXbUV2LUPyUkt1/1Zt891z+e0XCFpOpYzbcSvmhGAj9hLY=
X-Google-Smtp-Source: AGHT+IF6ehd6MLp512Lxr54GRgB7UYFGZIxVNuSpnrJfaKq2A1UKU3UCX71O7OvXFYc4vFiSmROqfw==
X-Received: by 2002:a05:6512:3095:b0:53a:3a:f4f4 with SMTP id 2adb3069b0e04-53a154adea6mr2769371e87.31.1729349836657;
        Sat, 19 Oct 2024 07:57:16 -0700 (PDT)
Received: from eriador.lan (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15214f1dsm551788e87.288.2024.10.19.07.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 07:57:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Manikandan Muralidharan <manikandan.m@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel-simple: Document support for Microchip AC69T88A
Date: Sat, 19 Oct 2024 17:57:08 +0300
Message-ID: <172934981949.2755496.5766136954108736976.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240919091548.430285-1-manikandan.m@microchip.com>
References: <20240919091548.430285-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 19 Sep 2024 14:45:47 +0530, Manikandan Muralidharan wrote:
> Add Microchip AC69T88A 5" LVDS interface (800x480) TFT LCD panel
> compatible string
> 
> 

Applied to drm-misc-next, thanks!

[1/2] dt-bindings: display: panel-simple: Document support for Microchip AC69T88A
      commit: c3f0b90f6ffc178bf158aeccae268276363d6945
[2/2] drm/panel: simple: Add Microchip AC69T88A LVDS Display panel
      commit: 40da1463cd6879f542238b36c1148f517927c595

Best regards,
-- 
With best wishes
Dmitry


