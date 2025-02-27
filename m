Return-Path: <devicetree+bounces-151847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B777A474BB
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 724A716FC34
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E39225417;
	Thu, 27 Feb 2025 04:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UHeNWJAT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FE82222B0
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740631070; cv=none; b=AxBOvo8c90NAEBN7P5Pdj7IJDhwmdtS7+/MMgLi3agEFmfaFxqFHOHXf+hh4VY6W8D6b/+/hJ8w1piSP7a72gQKKMFusitA5ZJBiMkQgnEcTfl498bhel7kb/p+Bz1oXR9n9Jk21UM5YU91hliOm2NFJtMEqiy3d6FCf5ayc9cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740631070; c=relaxed/simple;
	bh=vpCutPqoDxQnJQCPEd51KBxUZ5j1zIGXF3PAmD3Zp3g=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uIS7Ro/5zXnV+FONfYc/HUbaXvIE5cBltYX5WiBiGXNEB5QWmnXuKBIaEIk0jlogkPbDsgVKuXhf18NEZHhtzxWEVnojzTVm7ZXmayS100JY+rJbE6Kl0OhFUdaqzxNnlhBhFi7oZbhsGI9kFu5fPjFbN1M12WMKW3EitA+Wavc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UHeNWJAT; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30b83290b7bso6377311fa.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740631066; x=1741235866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pb4hUKvEHYfmi+I4u7PNH6BBXGvHJ7207dDOff1Xgt4=;
        b=UHeNWJATzpJq11M/5kKGiYpV6MsrvqFG/hjtQXX8KqPjQBTiAIk+oNCk+SG8H31BcK
         p7S6Yth7r+ddb+eaQnQcUUOd/twxEyxfRR60VMxl00gziFDEgcL/3aJHR9MRNwEvrl7I
         s94S9gm+Gkv0m8I3GDh8rBuvP7wxqzTn57pfflcaBYtG4cueU5EMstqGe7xGfTOJulPJ
         q7gzWbJWq71bX+qEHlUAjJ5SzUe8CC/4a00olJStu9QsSmbfFRU4yJLUm8QtiGZYcoA8
         kF6V+zGhhHuM3TzDHMh4TFj2hwT1XLmaGpttDxcXgpnskW31QNkWhG8AYZ8RCXK0Boq1
         We8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740631066; x=1741235866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pb4hUKvEHYfmi+I4u7PNH6BBXGvHJ7207dDOff1Xgt4=;
        b=Bc54ZTQCTc+KDDyxds60ulMV9BeZs982LGjM2Ig0Vz8p5KULelZ59t0PlPUO/x9jEI
         0INcFmqI51RO/c2YDQOhYR/F/MqwdGllCVBNCZMQn9STfgkwzxQSFF0lMwbDaA3O7paQ
         oJRzM8j9I6oPXLpAZLXCvNYx+2fCHPLbb4np/8JRJG6IF2xDVnGbj8NHnHjoY1qgM8Dp
         /5uFxZNya5Z2++kL5uHdiFHPC9u2BgghK+LaOh/rkTAtqp+fznc61LSB4UuJtSqcTFUW
         uAYhaZ/Tc0MQ4zYHbj6X9iKZBjcpQE/N5NY4X/JYSRgbjYYRNM1//ZwaljDEn7rikgvJ
         wZvA==
X-Forwarded-Encrypted: i=1; AJvYcCWo6ibCxAjL2dSu/tU+G6qo4STTobtphGEpnJetduJlUOt5gXHr20I/3OLRtOayboKAONvT9qclB+J7@vger.kernel.org
X-Gm-Message-State: AOJu0YxOQhG+vRnVbEAA8lVBTSEau1j0MhxzJmb3cHnfb3hvR5mcACyw
	s8CgFwbQmOsY6/SfhBPJ0DGFZ5sMThYX0qQ7t/kMp+4PYw9XPguDDnKADbpRLCA=
X-Gm-Gg: ASbGncvMN4P7j2HVj0jTdC4EXQaa9D2ce4jCCtqUi+JbaxeCc6idtZuWUiRzC7GeVmm
	Lg/RUXWoDBl+Rl/mvGCPl6VZ1oFzTHw8LwuMccj317evto16sdkJVyQdbiPrCrmBOKdAIdPBZzv
	QO9e9hSALdT2etDCIH/5anQfkmPyT9i4FBZjv/st+Bg1ZUNTv1fkowK+4N8AZjj+G7WftjNaTbQ
	yMI3S0YnAYPrtPGQ8b/xvELGYghD+Ad/+WO+bip25/OMw/tQdgcsCbePTBHSRuvOPaAXJYDmFo8
	WNDvQojcq91mOeNvCUVYtEdLFt/uXFi9bH0urxONmw==
X-Google-Smtp-Source: AGHT+IGd2rBcbdDnOO9mUn66I/dFLYCzyc1GlDdtB8pQVwoJ0TBIn1SVa4Lymy/rEO+PlXQ6q8GIig==
X-Received: by 2002:a05:6512:3d0b:b0:545:aaf:13fd with SMTP id 2adb3069b0e04-548392717d1mr11821826e87.51.1740631066310;
        Wed, 26 Feb 2025 20:37:46 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443ccf45sm63485e87.229.2025.02.26.20.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:37:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: display/msm/dsi-phy: Add header with exposed clock IDs
Date: Thu, 27 Feb 2025 06:37:25 +0200
Message-Id: <174063096233.3733075.8120055678466952428.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250127132105.107138-1-krzysztof.kozlowski@linaro.org>
References: <20250127132105.107138-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 27 Jan 2025 14:21:04 +0100, Krzysztof Kozlowski wrote:
> DSI phys, from earliest (28 nm) up to newest (3 nm) generation, provide
> two clocks.  The respective clock ID is used by drivers and DTS, so it
> should be documented as explicit ABI.
> 
> 

Applied, thanks!

[1/2] dt-bindings: display/msm/dsi-phy: Add header with exposed clock IDs
      https://gitlab.freedesktop.org/lumag/msm/-/commit/d1f28e30a525
[2/2] drm/msm/dsi/phy: Use the header with clock IDs
      https://gitlab.freedesktop.org/lumag/msm/-/commit/5100ae76b5ab

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

