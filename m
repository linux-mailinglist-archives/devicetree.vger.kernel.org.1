Return-Path: <devicetree+bounces-168313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 897D5A921DC
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70B883BBAAF
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F511253F25;
	Thu, 17 Apr 2025 15:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VEaoxotw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE57253341
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744904598; cv=none; b=JgE9Gmuc4doM3ae7b164UU+7IonJGCkpEZEIdWaWEuFmA7DosoCENzW7xEvdUcecs4pbdL8JOJnMr1cV6eM0qs6hIKRzBS4eBUM290V1aFfMHPlvyjzNShl7xGPUxguceu/YdIkN8XTsc/HQTBFyRpfqEJFvaQeGvRhRa1aXaFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744904598; c=relaxed/simple;
	bh=JunynEHKwcDuDA+6MH8FuW3dXFyO4ffcAIP8h6y2R7I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=j2LJ/X0S61dFCN6gNAmeiWiqpECCkXKXtiHEC3k+orqaM3e8CPPktXDXGgnM1APXkKtG3oHM2HW/nGPi/3mbcoMv+yKL7TX2CNnnj5xQtey9oLHvipeFMjllIau4wytREm5Y5KLsYMrWPdNnebyNt+TBySpDkmIAMfRndc3uT54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VEaoxotw; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3913958ebf2so911584f8f.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744904594; x=1745509394; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kiy6O1+ukmiBCdmursvfIZ1ixOUonC4Bg5yCWPYc6cs=;
        b=VEaoxotwSMEhos2MmPbRtrImMDPjXI6tlNJebUk1aR5YidNAr30HPuTvNV6Ujk4pqE
         L31v2Hyk32J19Dynt7Zp7im8yeOGjO5WeK5i0jdXw06MXRk6VNR+72pvvNvWjXDkgkvk
         xzWn8Dbw0hwQQkbdza9pNDyaOG/XMBy0oc5YuSaB/dzBOBx77LVIEaS1+qZXvXFGiLVF
         Zvwi5hfoBcvxKow108xycpmQ/Z//mq1PEVDrYpC28z5bSXvj+pPqKnBvx8Jx2ls7M2C+
         4UZCa1+Arfqt4GIGIm8rtfauzXN4zVhkmnKMpae2q0/dqcuvD9ZPfFV7IYoy767jj9/w
         E6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744904594; x=1745509394;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kiy6O1+ukmiBCdmursvfIZ1ixOUonC4Bg5yCWPYc6cs=;
        b=hd2U2A6KRnkXlcu9gTc0MtzaqHLAN1XqkUQwO4vRY2ilyCkM63bbKpee5IP8p6jldo
         tGM5aw7GncRJZ++3Q/iP/QResRu7gHlCyMgIyTm0GcDID9xgENR0Aq0JL62AH4BxHpW8
         jTjMJ2bkyB+XrGTJT4eGWJddIz4BLyVA8tCX7pYW9O+i5R6XOs8ZzgZ1zlUSrAI6scU+
         Sbmd0qGC0kC1vvph3kuUt1dF/lNAOMCmkaMippCTp/LjtiQRuBMxVAa1qEbDM8EBLMRh
         nynSAfdedZzEr+n17z7o0ET3ktHdjrcENFymlZauRF9zaOEiKEp4FRlMOHhTQcy70JXn
         lU0g==
X-Forwarded-Encrypted: i=1; AJvYcCVgZVQvdmZTNbdrfMPyMs742mNUXvJE2LbVmU1MdUukKv35z8dVvQKlbGKYQ4shx/0zdsnSZ9mL4bmL@vger.kernel.org
X-Gm-Message-State: AOJu0YxcbOk1+TjrpTcsb4GZ578OL6RMIUZiFU/3qCaV6R2EHsGkeDh9
	+2eQgsE0xjYPeXaYBFG13uTxj2P0xG5EyWx3vFKCNN1sDtGmljtdsfdoabrzTHE=
X-Gm-Gg: ASbGnctVpnDce4VEOGa+37+hMnu8xitT0W76HGF4h1O7siulDchBJBSqv+YwiBE/JZj
	u5liv4yf4NKIXRZOcZRQXhsUgKTR6bOOr7rLstuxWUH2XsSGa3ESVU+89MtUl8NOfSBV7NdlyKd
	ZKkkYbQt3vGvcmA2nEtUj1MtAbXSVieo3tMuYfCUqlvFCVFaRT1pdDvx30rRTDqc9eLQp5P3x3Y
	0uHZvmBg5PW8vJvqOhK8V0nh13EY7z+6AyRKF4oago+ZaDvXkNkuIGO+5he/7Jk8kU84vGyY0Qi
	X1Cf6mJlGHEQ/vHQHS0W3WBbZbhI0ZAleO5z+zL0D5XUHX7vHtywDQX9wk9Hig==
X-Google-Smtp-Source: AGHT+IGul/ExpZp37TdPvsaZIQLJkYja32KQl4f188bFltaB6kMTGBke5KI4F7K8YdebH3KDbIM3SQ==
X-Received: by 2002:a5d:59ae:0:b0:39e:dbee:f644 with SMTP id ffacd0b85a97d-39ee5b8954amr5771154f8f.46.1744904593983;
        Thu, 17 Apr 2025 08:43:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf44577dsm20773640f8f.94.2025.04.17.08.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 08:43:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 "Pu, Hui" <Hui.Pu@gehealthcare.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>, stable@vger.kernel.org
In-Reply-To: <20250411-tianma-p0700wxf1mbaa-v3-0-acbefe9ea669@bootlin.com>
References: <20250411-tianma-p0700wxf1mbaa-v3-0-acbefe9ea669@bootlin.com>
Subject: Re: [PATCH v3 0/3] drm/panel: simple: add Tianma P0700WXF1MBAA and
 improve Tianma TM070JDHG34-00
Message-Id: <174490459305.1152288.16433755651449379930.b4-ty@linaro.org>
Date: Thu, 17 Apr 2025 17:43:13 +0200
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

On Fri, 11 Apr 2025 21:19:43 +0200, Luca Ceresoli wrote:
> This short series adds power on/off timings to the Tianma TM070JDHG34-00
> panel and adds support for the the Tianma P0700WXF1MBAA panel.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: display: simple: Add Tianma P0700WXF1MBAA panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/12ad686ffdf51920000e7353351b163f3851c474
[2/3] drm/panel: simple: Tianma TM070JDHG34-00: add delays
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/716c75afd83c837f14042309126e838de040658b
[3/3] drm/panel: simple: add Tianma P0700WXF1MBAA panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/178ac975357e9563ff09d95a9142a0c451480f67

-- 
Neil


