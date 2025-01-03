Return-Path: <devicetree+bounces-135384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FC2A00C8D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7038F3A3B84
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B44461FA8F3;
	Fri,  3 Jan 2025 17:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fwDXgFnK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427D11D61AC
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 17:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735924277; cv=none; b=ZI4U8nVChAAFI6UIbptK3DmKYJnjuemiDr84MU/Ua7uXJO2W0fHItN3CwHQz+DvzlmLHcziFaOJd5IUanZALnYYl++vm3OlVrVePrG5upBgaPksBMU481k5Iq/fqbSRipoeiXcEM7bjv/h0H1uinj1cg762tsOaPEo431ON6ohI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735924277; c=relaxed/simple;
	bh=/MPl4niRw7ofd/tqJxlpedOrQ/4KqHEYPaQ8nncBpjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JsFr3/Z7yzvy35Y2EqK+NEPcMQEq17UvptLRSd/ojU29L4sMjDANlul5bgyyKIx2DDOokOFzd/hg/oZYH+bLOj2qE1EkxFi4QENnSTGAglZd0jo0fmOL5kpsjmw3vMTU5QYLktbPdAcaokiGKgGG/vR3TOx/URS1v21CjTktSSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fwDXgFnK; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-21634417587so18993755ad.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 09:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735924275; x=1736529075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3sGG96edDYBm065eZeyOamcNy6jLfsRwq/zrFHXSQ0=;
        b=fwDXgFnK1j+1UbkZ8leeKXIqTKLs+Tnp+yV+S4sh3aRxhQHOxHrckhtBf2ZjH19IKM
         NFHpeVsFIDHs3lYfslYx27PBD/DXzYJt8wMTm4rJJOY0VoAd0YmRCxCAe7p17nITfdhq
         eo7ZIut3o5yC11H2wXM80RY0WoncM/5pCj24WPCnC6Z23YXrmNBk5rdGiT7av8UFtkzp
         fOxjgbJY+tY8wbuUOjCR2GWeKwezNwZrOoLhrU6Y8kNOCqI9Vw+eMZpssF0UIDxB1IhX
         a8OYmDuko5nhSyiSM2XlLMAQByd4E6m0BW3ZOhhIS/uFgUw6y8K/7fOX9uO44luSbZ+i
         3jHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735924275; x=1736529075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3sGG96edDYBm065eZeyOamcNy6jLfsRwq/zrFHXSQ0=;
        b=A9KWSQffFeSkmCPM79SUfYAZpk0aYaOt0pVT9wFaZITRKDGMg4Lwjbe3piGUQ4QXIX
         NOmE5g/4Ux8m5uZncA+Pr54ie7f26dhSnlmxE+7fPqXuNU+z1qPxtC+2WoFGkUcgMLO0
         hicQwUd/3aPqMLPC+Hp7S12yWLp3m8E/HoraXhSLEFN53QPbPbPpbqDVWu11PNUOeKFs
         yudilpsqTnBAwLvnqWFY1AVWlSUwKpoHvUR0h1X2Egx0zt8cNEmoygbYgpTCgnTMVhFf
         vec3Jrh81TsqamHqn6Ll1zWeuB28S+Opww2jPZLTvY1n3zxidJT4Qjxgd9BjjM68FbxD
         Cw4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWnrEi5lN40CtEnHJJBepEsJcf2r6gsqAmp/yB+kTyLi9+YD4cWW32LKGgnYDLHyjoEglNVTDmsk+gL@vger.kernel.org
X-Gm-Message-State: AOJu0YwT37/IrDpq3FHxTU/rHUwNnRY7Xk+vdd0z+ZXVVeT7HowrOKAL
	RCduTSD6+srrCF9snBCESPzNdLB8vFGCaITiFkHoMM84adEmchev
X-Gm-Gg: ASbGncuuBpdpnLhbDQH8AN35/B3FGoLBFvYvryMBr/UImAAgyQ7VsQlnvrlBfBk627i
	phtcgCq9mSd3CUIQRLAVZ/DiPD767dVR7ecPYADd3/I1YtWSS9e+yBoVU/QwlDTbmFXi2hkbRTW
	spegbP3OMROc3wK3UQsyAUIrdBAcalKxyScwUWP6xxq5C1X0N4Ntf6vyfGd3Xk/NYpy7oC7t/mF
	YCwKFB/LnhvNouohCmVmXKH9CNtwATVcue8oRbfFvoTo+q4Hppic1suDtBxag==
X-Google-Smtp-Source: AGHT+IHaGe/LjiNSdE/jVrq+uumD7Y1EPcnlnPCnn5kWuhTZJ0mjsAtVuPrcS+bRilEu9IblZCkZog==
X-Received: by 2002:a17:902:d4c9:b0:215:8d29:af0b with SMTP id d9443c01a7336-219e6f2706fmr263642905ad.14.1735924275469;
        Fri, 03 Jan 2025 09:11:15 -0800 (PST)
Received: from rock-5b.. ([221.220.131.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9cde50sm245783305ad.154.2025.01.03.09.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 09:11:14 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: amadeus@jmu.edu.cn
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	vkoul@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Sat,  4 Jan 2025 01:11:09 +0800
Message-ID: <20250103171109.2726312-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250103033016.79544-1-amadeus@jmu.edu.cn>
References: <20250103033016.79544-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

On Fri,  3 Jan 2025 11:30:16 +0800, Chukun Pan wrote:
>Maybe the merge window is different. Can you test the following patch?
>
>```
>--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>@@ -325,6 +325,10 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
> 	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
> 
> 	priv->phy_rst = devm_reset_control_get(dev, "phy");
>+	/* fallback to old behaviour */
>+	if (IS_ERR_OR_NULL(priv->phy_rst))
>+		priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
>+
> 	if (IS_ERR(priv->phy_rst))
> 		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");
> 
>```

Tested with rock-3a. This patch will fix dtb without reset-names property.

Best regards,
Jianfeng

