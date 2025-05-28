Return-Path: <devicetree+bounces-181356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E4CAC71C8
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 21:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A13B1C03FB5
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 19:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75011220F3E;
	Wed, 28 May 2025 19:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JCfi0B6U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8071B21FF57
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 19:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748462241; cv=none; b=HNP87kBxkGMCHJZBj1aeHtb4FyBHGHlJ1+RJtJLLF3hKmYOFrD930ewvrOtJdluF+hDFQSIu67odEl9cl9xlzCsUL1B9+BhUFJJviNAOH1R8jFWj2GWt7lWwfQFUWQRCuMJhW9spq7SHATAzryjt0IDlTFplFZZqoEtIbIhp+No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748462241; c=relaxed/simple;
	bh=pVQoY2tMvY1bG+KKCYoQBM+7JiHkA5uoBLgsR0UXjf4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q4sOa5ICLlGSU1wgopNIHwFZdz3Uof7aj/b5vCHBKqiHlA50/HzJ4+bHDDQx5xIWEs6DSfW/NLAI2bprpFA6zj1MWYM8dmuTvpmxOdaS5cNSgZbKcHGJmAE703s4yVbckmRwWHtoI2dS5W8cfFDWlq92Q6Tf7hjHPNljVpa+euY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JCfi0B6U; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a374f727dbso177899f8f.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748462236; x=1749067036; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uZkzIt+VTNDuOeuHZJXYBs4wfX/HzzJDRDfTN1kT4V4=;
        b=JCfi0B6UVftMUrPg88K/tbg7gcIb/TByL6ZVTPSwsnAQXuTUJPd9if8Fy79+nVD9c5
         wZ2BSUPHbi44tu3zFFZu4MWm6PwIQwARKGKbiO9FbTqKXKaH7yc+kN344C24BZyEcLyK
         l8GIRZJbTcpVp/hCzSALzzS43M0WDTSZu+87KCLHrOs0G0bvSQOY6rpuTLE8ndD2WkeI
         od8Bl8wDwHfGJmT4EJQ1Lc//UNvYMR3slCvzOr+y0wkIrJRsTLrqEOwFmDWtoP8luZpy
         ILCTxNK13Qfv0F7VCbYDfzo33jzQPkpxJVw3QXDjhDqgQulBp7s+tP7Lnk1iY0C6GutU
         NYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748462236; x=1749067036;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZkzIt+VTNDuOeuHZJXYBs4wfX/HzzJDRDfTN1kT4V4=;
        b=wAiZxWOi2joNmrkpnfwp40MlZcyjWfzbVS/eXLzq9YXv319tWF5VVN0wygnO9Y5/SV
         yqx5YcxkQgEk1noYlvQwoitDhlSi8s5FU+TvPyArWR9LnQSgcaBEuZ3Y74bsTlJb/Ydf
         0FyNVL25zyqQYLgOsLbm9ggMUQhm8RFsc/9abx4vDp8c6RrCyIG3+xlJUU7ATaF59FK2
         FkggF5vU9+1ZF+msZJBGFt70HhXfc4kNMCc50dyKS2dHo+YMec0GRDiQ+A7V+SOK4dWJ
         8MYctklGD2HpScxWp+GiPu8xgJo3NNTa23XAVS4oytG/i9cPL+5sCLZcS/f7h6TcN2Lo
         R+6g==
X-Forwarded-Encrypted: i=1; AJvYcCUbWnhZEzpnyEdtApWphZ1scxnuz0P4PfRiqMQ2DWy/xH17QUiMq+B3NBEeVhAmG1uK4q6gx+4IxlKD@vger.kernel.org
X-Gm-Message-State: AOJu0YxvqKhLdWHvRpM+AxWGMCT1k6LSCE1Aapdf27+Lh3Wvja4gvQBF
	hr4M+T6frJL+Udy0zX0v3behQcP9QSbn4qR9LN1LSmhVgRsjleYVZnotWnuAQLr3f3E=
X-Gm-Gg: ASbGnctudti2hbnii15VN/CEmfUfarSwBIca/YF9kY2L1cfcIJu6rC0Sf5r9Ozjn6Vo
	fDnBU2OkK1CfHxH2L9jiwJTxGW3ryqMa9AKvmXbo368PKYBTpKqpdpSlIg3gMdskei5ePDb9D8n
	iuVz4reCoC6rvGasyWZxrRWG8MdvoXe2JXAlOyeYf5XFmeu5OOhbV367e/9HE9hUoyu6LKdSlx3
	lSdTGjmOC/mX8hTfOUmOsEZIzMi1xbyIwY8//9CMBW9GOB+8jo86uM+3CZ2ZjYnSy8f5UO3wUlk
	ez7Y0zgftJAPaWbefOEVln59qX6Lyx6f9N/LRgQRE8Ind/gIo2gE3i+YIGfNYzyHwA==
X-Google-Smtp-Source: AGHT+IHIxmmykQrqu735nSLQ1ET0rx6h2/v3wuHEtKjqqdqG51esqr6GYjEdXnpcisfuQFGupRBg5w==
X-Received: by 2002:a05:6000:178d:b0:3a0:a0d1:1131 with SMTP id ffacd0b85a97d-3a4cb43dae1mr15437245f8f.7.1748462235728;
        Wed, 28 May 2025 12:57:15 -0700 (PDT)
Received: from localhost ([41.210.143.146])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a4eace3bc1sm2360397f8f.99.2025.05.28.12.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 12:57:15 -0700 (PDT)
Date: Wed, 28 May 2025 22:57:10 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Xu Yang <xu.yang_2@nxp.com>,
	Peng Fan <peng.fan@nxp.com>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, s32@nxp.com,
	linaro-s32@linaro.org, Larisa Grigore <larisa.grigore@nxp.com>,
	Ionut Vicovan <Ionut.Vicovan@nxp.com>
Subject: [PATCH 1/4] dt-bindings: usb: Add compatible strings for s32g2/s32g3
Message-ID: <2a4317353557e4fac2a7bfa4261a75886eebe41b.1748453565.git.dan.carpenter@linaro.org>
References: <cover.1748453565.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1748453565.git.dan.carpenter@linaro.org>

From: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>

Add the compatible strings for the NXP s32g2 and s32g3.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 2 ++
 Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml  | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
index cc5787a8cfa3..400d885fea96 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
@@ -24,6 +24,8 @@ properties:
           - nvidia,tegra114-udc
           - nvidia,tegra124-udc
           - qcom,ci-hdrc
+          - nxp,s32g2-usb
+          - nxp,s32g3-usb
       - items:
           - enum:
               - nvidia,tegra114-ehci
diff --git a/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml b/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml
index 019435540df0..ca677d1a8274 100644
--- a/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml
+++ b/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml
@@ -21,6 +21,8 @@ properties:
           - fsl,imx53-usbmisc
           - fsl,imx6q-usbmisc
           - fsl,vf610-usbmisc
+          - nxp,s32g2-usbmisc
+          - nxp,s32g3-usbmisc
       - items:
           - enum:
               - fsl,imx6ul-usbmisc
-- 
2.47.2


