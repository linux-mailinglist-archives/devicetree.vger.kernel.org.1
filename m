Return-Path: <devicetree+bounces-185422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB66AD79F9
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 20:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 812123A3AED
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 18:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5DB2D321B;
	Thu, 12 Jun 2025 18:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xBvyZXaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6DD2D3207
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 18:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749754258; cv=none; b=EbotYGwTKGX6hXnVrS9vspxDFxrdesucrDLaejjzZjVmFqe6KD+kSb1P3sGzqzKFbX1GxuUwkRn5OG5tX8xeTPNaDtcNc7Ysr0pooDfWjt4NJNHwkZCiSwvCwJGBNUOpxH4cKGhTx9Qg6bDBaIiOxBthlxtUneVGJKwV+VtQ2+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749754258; c=relaxed/simple;
	bh=KzTTs/ugVGZL81EZM6r1DC5THbX9ekJQpMdwtR6aQYo=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MSHB7GeRsq6GXZMC6jdb3MwnHIgCdX7Q30T/liKtGoEz7kcGB1Fi1rn7OalrAI5d16fqyX9Xya9yTpGwq55gAa+2NVbDscdT+ExkUMmlQ/07HmP079b4ce8cnNFAOoUayzHJllIuQaBR+27f0Cg7m12vzCAF2f/qOij8XN4yxvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xBvyZXaQ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-451ebd3d149so9092335e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 11:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749754255; x=1750359055; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S/WDJPrQPxRbp8NBRHRZm/xuQ8N47zspth9KJHjwxXA=;
        b=xBvyZXaQ2Bz5cnyFeSnoX6Z/yRzq0YGnlNUieoHehNcwKdWDRKMzyfKhfekGv0+fg3
         rFRf5JoN4zwcimmYxD3wUCawZ5Rd9MhcGpJ6j4wBU/75EXB1G0UO7NeWOcDn1ikjUsQy
         4cqCkYJF2iGr6QjngOmNaaD8Sp0DGhsl2/1VnI5oMp1vBVHPHJw5g2y1+CW/GnxHvZtn
         o79T3xFuCGbhIum8urJSfQKKj1cZTImKh1/fFOUYtkmpVgY1/hdTBhllw+b2myWDGc7F
         inVSV0BeNdtZ8A9upXsEdauQB8iA1TNMQ4H+BhNBzzvY+IB+QwUY4CeEPdW3CdDPYBFd
         YXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749754255; x=1750359055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S/WDJPrQPxRbp8NBRHRZm/xuQ8N47zspth9KJHjwxXA=;
        b=Lnqxd8z7srdzHAZ0WMn1iM5QHZEd7Vfej4DJM23paUxYMb5I2P5khxHAohqG69f1wc
         deYfllqPlhqXggYWZcsDHUhlrsqdCX1tUe15ygyg6fhngKjBkC+YFE39mqJpX2fpDr4o
         sZCh3cfNgO4jWh6sa4WCqtyeYXGph2Ez6rvLOnD/KeGUPN2ViJQOnOpcxfXVc0bOCno0
         ZfNlvS54zGuBcpiqdzBv1Xt6HG72/oIp/pn12Sh2eJrYu1NdaOxbZ9gIztpvwRnhyhij
         tXWwecTxJ51T6FW8iSSRJoCiyXasJfF2yqdbjReLR2L8qD0feIG8ttWSNdWmfqICWAZg
         9ZAw==
X-Forwarded-Encrypted: i=1; AJvYcCVMoOz/I/OycDl+BdQppabG9lv8Mgcf6xhkP4LN5Wi8oFj1zKKsBIJxTOt3mhpngxGLLakP7ajHLd6B@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn8fcAl01ci4sdUBImr0gof9hjVvn5qyuvNeR2CzvEDsTyOeXp
	ttAK8+YQOeCgwMKiiErkzTenbp/j9/j2LJngbgDhlDEHFWOc9C/PHt9PhOQQwYvamp8=
X-Gm-Gg: ASbGncvlkOFxh+vUPFDx1PEd8AVXCsLuo8paDqryTn9Pw/O2yn7yATi3aPRLr9n89HW
	li1ut3JvbsQU9kShPQtyPXVwd9wmbxWHvfMfNChz7gpKYK8zL6iiEfobWilpDao+v1Vfrv/jEK/
	bBB+sJtb9UQQkALdo3jXxYdBYJC6j4VNmEvXjpZ4BGrEesNxsdpdkno8OGHdrkuDAP3dgQWtweQ
	qneMgxcqdujDM2xPczhO1gbAC/+LYs2Q+hI6Sxy1Ou14WLDyJ2b8QjDalbf703sLYEKMHX8frky
	bwFwIkL9d7hEb4EqeQ2ScnDlP1uZC+7i4CpX/kwIUGip9LNVYAb/5BSn4CkSGSf+kJI7H/gKvTq
	eMEe0YA==
X-Google-Smtp-Source: AGHT+IGzQ7CInmhyLVNO9NWc9ioy6OsDMOMV4BghZVu8RO7M8cKhgzv5GG0sczaNKS+6ukRU1kkY5g==
X-Received: by 2002:a05:600c:1c86:b0:442:f4a3:8c5c with SMTP id 5b1f17b1804b1-45334a83221mr2953015e9.10.1749754254976;
        Thu, 12 Jun 2025 11:50:54 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-453305a0d9dsm22086435e9.21.2025.06.12.11.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 11:50:54 -0700 (PDT)
From: Ghennadi Procopciuc <dan.carpenter@linaro.org>
X-Google-Original-From: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Date: Thu, 12 Jun 2025 21:50:51 +0300
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Xu Yang <xu.yang_2@nxp.com>,
	Peng Fan <peng.fan@nxp.com>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, s32@nxp.com, linaro-s32@linaro.org,
	Larisa Grigore <larisa.grigore@nxp.com>,
	Ionut Vicovan <Ionut.Vicovan@nxp.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Subject: [PATCH 1/3 v2] dt-bindings: usb: Add compatible strings for
 s32g2/s32g3
Message-ID: <cb3970d93f2df0d350f3f3de27d9f0cdb41d0d3b.1749747898.git.dan.carpenter@linaro.org>
References: <cover.1749747898.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1749747898.git.dan.carpenter@linaro.org>

From: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>

Add the compatible strings for the NXP s32g2 and s32g3.  These chips
are mostly compatible.  The one difference is that the s32g2-usbmisc
device has an errata ERR050474 which requires a special flag to be set
for handling packages that aren't 4 byte aligned.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
Changes since v1:
1: Alphabetize
2: Update the commit message a bit.

 Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 2 ++
 Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml  | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
index cc5787a8cfa3..f6372b76ed5a 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
@@ -23,6 +23,8 @@ properties:
           - nvidia,tegra30-udc
           - nvidia,tegra114-udc
           - nvidia,tegra124-udc
+          - nxp,s32g2-usb
+          - nxp,s32g3-usb
           - qcom,ci-hdrc
       - items:
           - enum:
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


