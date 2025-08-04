Return-Path: <devicetree+bounces-201720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D4DB1A60F
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 17:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CF4D3A4D98
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 15:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6301721D5BC;
	Mon,  4 Aug 2025 15:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VklAXZ91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8332E36E7
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 15:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754321582; cv=none; b=X9T1GA0Wq9vir1OI5tX2hDln/+0JJTnRDTvTALZNHNrCnXcxexZKL9t8twrbhu/ovPkFtZPVvt+CnWgMrRzpwo/wYdL5xeA9p0YTjU5J4yg+ZwaSChkBzr+MhkwLThHh6IOIzKpfEEJ9mOFd35wKRZFJlYsgi1vPwVsqMRxT1K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754321582; c=relaxed/simple;
	bh=XKl7i22rsyc0KyKTseE8LA8q4SJ+TS6yJtbVGlz4XhU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ePt9ho3LH1twOWrRTj2k1T7otsvgBAjO7EBvRQYkzBXT45M0zU+H/kPCMcjq4NvSB3wu/f7m/x5NUSizLlSIb7hIKPOprNbvfPZo2aDUkztZfJfokAIXBFlCdWJzbakH+jS4agVlbcjamu271GttsgZ1m0fAICOP46uAKLYPhxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VklAXZ91; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4589968e001so29882685e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 08:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754321579; x=1754926379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTa7o52Sju7xMLjz8WbVJTsYb20sJmccUB4UlGJWqxA=;
        b=VklAXZ91IDKf/k1Lewy8F0RmMwi3Lu2xHYoSR9QZjI3De2yt0mby9Q1ZsM++a0KiPb
         WpTS8SVptlvDlrhyfQnDwhlx+6O3O6YfChv3ZKuZNjGaYtwHp2eeg2uKteuuBIb0bU2Z
         c1aOuh42+US4ZS81JQWTmQErjWul7oPnJO1wXQpNEuV10I3M/fu46sm1TxJDNTLDx93z
         iXZKGkdslWGqveifur3xPBdBosT0BspKBXTfxeufWx7OEHS0c2+SOIQ9EA+m7rMQz5oE
         jlOH4s2UmWEINl2aSUa/SWUYFc2L6nNu6Gc1z4VjbIPq1crkOJj6SXEgqSfCpHISBrDV
         Myug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754321579; x=1754926379;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cTa7o52Sju7xMLjz8WbVJTsYb20sJmccUB4UlGJWqxA=;
        b=l4veSFIDV9R2H9wS626h7kn6jrBxQOQLsES1kRyku5RUSNoUF1zZ38rBt3PvQCwS0D
         yLYzgh828iFQp8Y3hckljeCZWOJAHtYUW+p31gZHKM8+aGM049gEugBIswosGKT6DPMe
         fiEsOcxKK3HLnufYSZfANNk+NlfMqhunViWlc0cTH0JYu6bdb78rqTfhteT5kv6dUfH0
         lpvE5aqk19yhCXpRslnLCyTYtDsff37sXok3ZYJ/PuODsBVTsO8m14B3vmlR46CxlcOA
         8EfjB1BP64NyzNLFf4bTyNGW7wNPMDcDnRWa4Cebn61YB0fMVzZKkfnHISFFrIZb5JFW
         hxwA==
X-Forwarded-Encrypted: i=1; AJvYcCXZwApQ1erqTGRd6g/8M9Cyt94Pe4RxP9L+cbubKG+17fHWX5PQOwyy8Q8wzGb6xn0VMC+1oQMhprK1@vger.kernel.org
X-Gm-Message-State: AOJu0YxLeWqRAJTuRKNZGrU/TZl4MjZ4E1phk8GYNOb0/gTzZWv7quJd
	eR4VRxCQnoB8X2zEV8jsl1iM6BSMG8dOtcTGIzVxbIZoFXtZPK1Gmzp4UbFePbALTUc=
X-Gm-Gg: ASbGncvZsPi76xT/oomy+j0q46Uq4YAwTAoJZagbvPY2MArDjqs2Xosv1Ve4l/u3l7m
	QBvVKTZFdAAflivJHt/hmce4l/757s+nYzGuJaCSLZICSyqKzForhRMYSbFPvRVnC94NNw/0zJ9
	IVgGy70hJukH3fXzPkIMQPbGCs1HcKswJZc066Yl2VdTNe59Dnftj0czVzQ5lLm2HHqkLb87p13
	LplodD++6qVBe76xnte7XqQ+szuGr0490BtasobjBHCMVtzYttZAhLzJvF5bWXhHeh7Ail4cDuN
	2mKaAPzt/9LjQkdQ7TxtS/PNkaMVLqUjpbPusyhJocfSnTReIobK7L+IDgvgGTJ2mHc4CQLDWBR
	6rKSPLCIpKyxs+ugNLZoeEBhLU4Ff5ZipAOpCvva2kPY=
X-Google-Smtp-Source: AGHT+IHsFdSh2BGQcoPWO0NP0zi5EFOvsmKW2I5qgsqHsYv6bx+I9/Lnv6/qQFJC3vfzR2NEu/NgtQ==
X-Received: by 2002:a05:6000:24c6:b0:3b7:9214:6d70 with SMTP id ffacd0b85a97d-3b8d94728c4mr7097621f8f.15.1754321578854;
        Mon, 04 Aug 2025 08:32:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c47ca5fsm15664010f8f.63.2025.08.04.08.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 08:32:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250721-panel-samsung-s6e8aa5x01-v5-0-1a315aba530b@disroot.org>
References: <20250721-panel-samsung-s6e8aa5x01-v5-0-1a315aba530b@disroot.org>
Subject: Re: [PATCH v5 0/2] Add driver for Samsung AMS561RA01 panel with
 S6E8AA5X01 controller
Message-Id: <175432157792.3671011.1104200917154441096.b4-ty@linaro.org>
Date: Mon, 04 Aug 2025 17:32:57 +0200
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

On Mon, 21 Jul 2025 20:08:58 +0530, Kaustabh Chakraborty wrote:
> This patch series introduces a driver for Samsung AMS561RA01, which is
> an AMOLED panel using the Samsung S6E8AA5X01 panel controller. This
> panel is found in several (mostly Samsung) phones, it is a ~5.6 inch
> 720x1480 panel.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: document Samsung AMS561RA01 panel with S6E8AA5X01 controller
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/f3e1caef597e7f29dd2326dae7fa5964ae46c91d
[2/2] drm: panel: add support for Samsung AMS561RA01 panel with S6E8AA5X01 controller
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/47d7953d8e1e774265ec2c79e37871af97abadb2

-- 
Neil


