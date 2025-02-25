Return-Path: <devicetree+bounces-150865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A98EFA43BA4
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDA723ABFF0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58342676F7;
	Tue, 25 Feb 2025 10:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TgQsTvv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FE0265CAB
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740479142; cv=none; b=jzPRsIvLEhTJdCTvlf4ik8nL3quQ1ktbpBIbrk1UPe7gHJ61TpGYakjjgwSu6ASEGhrrEKY5xK69paXovk2C99a67ofLP+jv/Dbj9kd/2lbl+uFNxtBuoL2jOEb9KAZHzpM3aepHoBqxJv6lFOOxX/botgz3RYc5WnvKO7Q9GWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740479142; c=relaxed/simple;
	bh=JXUEw/mTrCXp4uW0hpKJGSmWwnmo1L+q5KtrwP5O3eg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DAJob8B5EkfG1jep9xiUMA5vJ+fycvJIl8rwvwPVG4vBVbjrOdVey51QLVBa9t+zH3Ea3WB54vSY0+4MZ80DIXVbMEv99Od8VHjM8kBNDPCmRI/Jpqo6YzRE631lFjrjkPYu350r1gTCsdsdoAtvDE10mHlzuQ/H4wEChWgHvvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TgQsTvv3; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43998deed24so51115735e9.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 02:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740479139; x=1741083939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GO+8glDRZ70FolfJHUuyOyuSWWMeXZ0930x4j7bHw1E=;
        b=TgQsTvv3cRqBC82p71ZQ91uUgLlbelNFKPdr1tURFhGoEGqGVn0qHgaaSm4/AS0G5R
         +ClpAg3vpj55o2Je0Zhu+RjS7UHLoWsTYRz+nUkOMrQn7C0XY7BV0T025OihuqmuTNLk
         vjyWrXNxVtiB6OmLlR+9K72KX03IjRbjRmYQSkVomo1dbEV1buisH5AlPf9LaiQwJb2T
         TNoYLatkL4C+ea7LFpDVBXRwKQXvAIpaWsBAxekJJG6mISWdPncl3pKgauJ/TKsSKfIG
         CV/X1o5ra/b2lX7BhPbYXu6ko+859OQRV7y3Lvgr55oc1eyI20m2JpktU21qan8ssgFU
         E4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740479139; x=1741083939;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GO+8glDRZ70FolfJHUuyOyuSWWMeXZ0930x4j7bHw1E=;
        b=r5Ee9NTKAH23sTIDTzeLtES8y/siz1YVbYC6VAcQpCFwygAnJGLlUFDrRr42Dz1NGs
         4I233vYPqL4TyyBfVrUz40G/RP1wI7vJatn4ddWP66Skj9U89EuNkP+jr840Qm42C5LX
         7EWiHoXenpHqXo0rvlYOo6ApjKvCxfFrTR9q77pgvMI+rlUhWhnxwnh/dfkQbRqgq5OE
         Y4/gFGYe8s7TQUHqL/F08tOJplsek+7f5mXY6vMjAUaQ63I8QRKVvQn/oMIeAPiFJ+mU
         DMMYc1DJQp2J7h7QKqWkqruxHbDTKfXpHyQr9F7SuD5H5y+VnnwFdA54rF5aqpNlHXkX
         zPHA==
X-Forwarded-Encrypted: i=1; AJvYcCXg3VIXe18oD/UMi8nMmearrRieHEz8EzJ29ED/8N3QAb0c/XNaeVj4PIiHGwQmFmHLuosUE4QFY7WS@vger.kernel.org
X-Gm-Message-State: AOJu0YwzBS53rDV+mxV2JsWjRN+tHfEYnYtBWk1VgRD5cAUGRnFDhlEP
	vEPr1Zz7CPA0J7rB8XJKlE4bHnVQJTXh0TxoyccdpTzI6x0fCjxAdwLndc4eJEY=
X-Gm-Gg: ASbGnctVQ4eetKPgqcQ+lwUlXB8vFGtGIPqUdMLA/ONtFuXW6Vg4EAR7Alsm/JrOwWY
	hS65nCIQz7BYFyiu42WL1QaxLZPBerKfHPA2Sm6zQMWchJ4HSSOD33KZKjlTjBnfRQe2W8PDEOw
	qr03hDbblhmBoIv0WFfa+QK0huSG7t48Fa8E9j/pSF48OKGV1IarXIXsQOJuetnanILJRVRK2VB
	C3gRHzVBhYqyDVHLhWZciZofCV/IK3+TJZmik7tJCZU/ZghPlpdbH8urzAbZNJ9bn+yqr2w/c5y
	0wDnkGA8YCGcn3LbKIWs01jAwnPmk+GQDP/g6T2RNG4XYGU=
X-Google-Smtp-Source: AGHT+IGCJja0+bBP6yFXu5tgG751wKC5th2J7f0lmxV62+z2DFSuW2JXXrH5OxE79sHt4myCc7POkw==
X-Received: by 2002:a05:6000:1a86:b0:38a:8906:6b66 with SMTP id ffacd0b85a97d-38f708267ffmr17605833f8f.38.1740479139095;
        Tue, 25 Feb 2025 02:25:39 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd86707asm1764378f8f.5.2025.02.25.02.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:25:38 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
 Janne Grunau <j@jannau.net>, Sasha Finkelstein <fnkl.kernel@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alyssa Ross <hi@alyssa.is>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neal Gompa <neal@gompa.dev>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Nick Chan <towinchenmi@gmail.com>
In-Reply-To: <20250217-adpdrm-v7-0-ca2e44b3c7d8@gmail.com>
References: <20250217-adpdrm-v7-0-ca2e44b3c7d8@gmail.com>
Subject: Re: (subset) [PATCH v7 0/5] Driver for pre-DCP apple display
 controller.
Message-Id: <174047913824.2131221.6545389561298332217.b4-ty@linaro.org>
Date: Tue, 25 Feb 2025 11:25:38 +0100
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

On Mon, 17 Feb 2025 12:39:30 +0100, Sasha Finkelstein wrote:
> This patch series adds support for a secondary display controller
> present on Apple M1/M2 chips and used to drive the display of the
> "touchbar" touch panel present on those.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[3/5] drm: panel: Add a panel driver for the Summit display
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/40115947b59f2ca361a47615304dff0a2b69a2b4

-- 
Neil


