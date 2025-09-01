Return-Path: <devicetree+bounces-211073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1F3B3D7F1
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 05:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70EB6189C167
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 03:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F23961D432D;
	Mon,  1 Sep 2025 03:49:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D192A52F99;
	Mon,  1 Sep 2025 03:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756698566; cv=none; b=JbksgMge2dSM7aOj25fCXvPalNXsfLsGJPriChPVK911ZUt/2w080Xkn29TlbX2EDoNNd7tF13ZCleoqucTDq39OQybU6F22x0WJ3l4TFTPxL2ChH8iIK2M4nusXKslxu65hRaBph0txN6dl3A0dLF1o50YgdnVFdEBxICRUSPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756698566; c=relaxed/simple;
	bh=+kaoYUDfcfpVd/hCBsUjlZJ3K2PKkSf0WuTS3eLthu0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HLbNbhW8SsBedlUp9gJ4t+X3tTJFOdWNwA+DJBbY6oei0JfbHufLA5dkkQG9eTNHemvWXU1a1GWkIOa6dOJovwACavmto4PCcExxeG9ENp92KAhJvY/BhbEAWwxzdPOWIqvm01ewlWmUjSSZAGWR0jljZwhMlV4zJIquE8AOMHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18CA8C4CEF0;
	Mon,  1 Sep 2025 03:49:26 +0000 (UTC)
Date: Mon, 1 Sep 2025 05:49:24 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 3/9] dt-bindings: display/msm: dp-controller: document
 DP on SM7150
Message-ID: <20250901-wild-urban-angelfish-e2cc84@kuoka>
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
 <20250829-dp_mst_bindings-v7-3-2b268a43917b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250829-dp_mst_bindings-v7-3-2b268a43917b@oss.qualcomm.com>

On Fri, Aug 29, 2025 at 01:48:16AM +0300, Dmitry Baryshkov wrote:
> The qcom,sm7150-dp compatible is documented in schema. Mark DisplayPort
> controller as compatible with SM8350.
> 
> Fixes: 726eded12dd7 ("dt-bindings: display/msm: Add SM7150 MDSS")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


