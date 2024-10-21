Return-Path: <devicetree+bounces-113641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB009A67F5
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53741B24F12
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67CFA1F8928;
	Mon, 21 Oct 2024 12:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SzWqTv/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4414A1F8185
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729513076; cv=none; b=ElZ3LXoCks2rODRTC1RHms4fv1tyJF3urgeT5YUgoQULcfvgT8cVSZhXq4P9I7Dvdz7OrCDFE4ZiC4VZyd9fvWhnG9uUIm9fxDAg+Wxe3MNzpVWpLldZWd6z5yiOO60owbrpzB0VmLj4UFJE0rFuRDHL3b6ks0sOmqA/xytWkGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729513076; c=relaxed/simple;
	bh=sjMvdFgTlY4RAU0wxseZJBfhIxEWpkhyIyccRvnoatU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l4DtGwl4VEfzFfPXWlOCJcx1KDZa7E+dLCTTAqypqBWMo8VOYMCxT85HM96W4dp83DxXfQUvPS7mt9qAZktOFD3GJMByeVdOguH35kgyAbmCdtEKpa2AKWSFUqbCojddgmrS7Pm7Xi+qot+z/LkOekkn/sMzqUeCo+/cr+IAZrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SzWqTv/p; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539e13375d3so4787346e87.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729513072; x=1730117872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jTNe+XnRvU9RR5VCLLOhfvM31yZ0+TUCEsnqZ6GIS1w=;
        b=SzWqTv/pHAafkKOaAojza8UMl5ms5RdxA3jnjjzrxHQnFh6O9IivnM6u1Q944pT7lo
         7UFsZZv6GVsVbWcVjHSlhHyPYPyyW+TubZGJ1XAAd51AGpxBSWrZ9tfoaclYsXYm5GxK
         7q8Eaepa3pizxIqt2Aa5DONvNzzZLd1BfycNEW2Q+jhjDee0pYNY6kk/4Qh35Hkh7htb
         82Z+wq2q0AVVSOxbEqoOzVHUwKIRN4QJuA3Qc0ZuJmaVlEMuamjSdq70BYjAbOV7HFCf
         wfDlJCsQpmF8LgdjyrGwfvIQC0DhHNXmZeiwhEkfoFxVGZuuuDnUp7Af1xdirgxkLQaa
         qdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729513072; x=1730117872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jTNe+XnRvU9RR5VCLLOhfvM31yZ0+TUCEsnqZ6GIS1w=;
        b=W5ccfDLUwP4+UvB/LFp/QZJHUjdCQyBZlMUe7426498kOxn4WF7wB305m78/Vw0jLH
         3Xxueb/A9Wp3v1mVYTiUW8+uKxlRLlI1B6Kai1EtE8set17ScFfc4JJFphOC/vcKCJDq
         ZGFF6SwXynTMOTdlkJJO1PmQEC0373/qYW/eUSHZhuzpnPZXdBmtkLDbmSYqdHJPcYdC
         Nexdp40UsX4GxUWGKCkj5d7PwMHR8GHBAVfq+ACTbAieNpYcvN2z+WWMzn6mCVJTAgyB
         bko9lxJLyARmx+FDqH8O1aJwcibXyhfyIDwyuhSQOjISWpuPUHHM+j2MQIAq5ouyxcaK
         hwQg==
X-Forwarded-Encrypted: i=1; AJvYcCWxHwknLieOhzLNr//5tHoN9tlpBvK07nHEV+Fypl7SZ0Jac9Ibugu8CKxqpMakpIX6J1UL5UKNymgm@vger.kernel.org
X-Gm-Message-State: AOJu0YzQBPPBzmL71EnRJ0vWTpwXHBmhMGxOanTN31efP5wNZ/bD7VRZ
	8juJ8sAcFLSOrpGBXgxndQQu5YardmCGCy5wiZcLkZzm3A5Hbu24tJjBMu6CPMY=
X-Google-Smtp-Source: AGHT+IGHZwUBrGOlbOuGK6qQAG7Djezp3PB2cObNy0RjKNlSnT2HrV0co8D0CLg5sUkYjuoFUJOwNg==
X-Received: by 2002:a05:6512:3096:b0:539:f7de:df84 with SMTP id 2adb3069b0e04-53a154412e2mr5181215e87.10.1729513072223;
        Mon, 21 Oct 2024 05:17:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22431454sm464210e87.212.2024.10.21.05.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:17:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Mahadevan <quic_mahap@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kalyan Thota <quic_kalyant@quicinc.com>,
	Jayaprakash Madisetty <quic_jmadiset@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 0/5] Display enablement changes for Qualcomm SA8775P platform
Date: Mon, 21 Oct 2024 15:17:41 +0300
Message-Id: <172950935859.2053501.16314780424128815600.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241019-patchv3_1-v5-0-d2fb72c9a845@quicinc.com>
References: <20241019-patchv3_1-v5-0-d2fb72c9a845@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 19 Oct 2024 21:14:52 +0530, Mahadevan wrote:
> This series introduces support to enable the Mobile Display Subsystem (MDSS)
> and Display Processing Unit (DPU) for the Qualcomm SA8775P target. It
> includes the addition of the hardware catalog, compatible string,
> relevant device tree changes, and their YAML bindings.
> 

Applied, thanks!

[1/5] dt-bindings: display/msm: Document MDSS on SA8775P
      https://gitlab.freedesktop.org/lumag/msm/-/commit/409685915f00
[2/5] dt-bindings: display/msm: Document the DPU for SA8775P
      https://gitlab.freedesktop.org/lumag/msm/-/commit/546f8d6c3ed1
[3/5] drm/msm: mdss: Add SA8775P support
      https://gitlab.freedesktop.org/lumag/msm/-/commit/4d1cd4c3faec
[4/5] drm/msm/dpu: Add SA8775P support
      https://gitlab.freedesktop.org/lumag/msm/-/commit/b139c80d181c

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

