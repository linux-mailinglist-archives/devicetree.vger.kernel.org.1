Return-Path: <devicetree+bounces-136911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F77AA06D1B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 05:36:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08F361672BF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4222144AE;
	Thu,  9 Jan 2025 04:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tQFIJH4R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB88214234
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 04:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736397361; cv=none; b=dJrlrcLAD0OIfKiBBSFaFulzZ7Pp013atBhoQo6spj/7kt4vbhJdK9s/6P/pvsQyTs0X9Pa32VO6T8avAgBvCE5+p1qz/rWRZX6XUemPpoKpjgm23mCkPL96n3G98Sew3/Jfxo//45eEsmCYhjNENJfwRqLNWGPQEilZIDeR9xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736397361; c=relaxed/simple;
	bh=KYi944Ng8PZyQOwpW6lInP7e9H63rwgPuemV1qM3aN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ydsf1x3Uo9hdJPXQ2ptqH5i2CKaNnLg6oEWJYY1hOKp2eVeCnFdG2VRW17l8nCy9/5WQqUMnciH5JqwWaWOepcbn1lKtbnU6UK1tkG68ad0aWC1vOFMcXs/rylRejcsCvm0Tw+jOrF4kE9cvmWp0X/8I4H4zCcbJ68T8U9lVAdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tQFIJH4R; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5401c52000fso483894e87.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 20:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736397358; x=1737002158; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jpXKuQIMgaAXMlwh5+Z08XtwvgtpNR7jrbvfEWHNUTA=;
        b=tQFIJH4RX5Dc+XQMqP3emA+DZzTKbRh0VysW8qMsLkPvFpiv1rbiBu/4YIbQ0yp06T
         LwZcD4YpqjAzFLaWjMMifj9GmwpfoshiDoABmmZSb231jRGFOUc4BOvE4np0f6YcGAYF
         HcvNgduPMC5DeA8aSNAuN8SI469KcQ4D9TLE+OZr2Haricn92adsmjoNvrkU/B4JiuI3
         G/0dUNL8BkA+ckZppr8alUHcuNkfai4nlhfhgNMI70A9Q4guI/21rwA2Y9hrAqYZx2wE
         Z8vlcScLPJJMw/uWE7dvSnguvAEr/i4Xwt+sA4CiRxhj0qMcWN4X0AROPVUmo2xbeioj
         aU+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736397358; x=1737002158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jpXKuQIMgaAXMlwh5+Z08XtwvgtpNR7jrbvfEWHNUTA=;
        b=sJ6Xfq1aMdu+ZvmadwJm2ty1ef80k8viISJLN3h+fZDjZ2P4CTJ2OCvb54USdRD8p1
         EYxO2X6iqY4hTTEvUOiYHUWqeH5RU/f73hL8YNzYdSdZpcV6PQaJyVdyhri/rN669qQn
         A/3DyVPdCxXNemI55rfIDzEVUmKS2TCFW5+eFzy9i4Q9rnvxUm5icHqPRknVRlIdgPq8
         DazXnE8To74OqAyBpWNF8a4Hz1rOMzAGqiKadcYu5p/h/AkfDpd9oGRu3Wv5vEstFZdI
         Kj+b2/IR7tlnBBE9BemO5ZI11C0sM2q4j3NtjrNwDsuU0rom00ndUr1CD38NNZuOC6Ac
         Wnwg==
X-Forwarded-Encrypted: i=1; AJvYcCVm/WrwmTo5TbryBGfzpZl0520Gi2kNOvPJWlr+OZiWx2oe1ATyX6kCLWmtP7OUa3Kd019jGohE09hP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/c+SYySn6QJbRMxFlgTvh8wLTLPZ75kIyeExkYfOELmPOca1L
	X9m6KsYiTuidu1lAMSrpaQaQosxEpe5tkMMtiGoG/4dtkbMCfh8Eg0pbprwzjicx1/gM8HUL6CC
	2
X-Gm-Gg: ASbGncufnx5KyRwADpGvecwZj8iugajLJNpJEBYmPvmPAwlofp5vbkAS1GixydFP1fZ
	hTdxM5pFV2QORxA7kHFo6IC3+joLHQr896H67Ff+TIGOQJQscytCKt/PALVZx3DsJbGSt5Oq0zP
	V2nHwP40ntwVFXSVt1DpeI0lt1j2CvLCHkXFRJ4z8dHSdL4WsvM+1sC4YNpe6/CsFM1auEDYY0L
	nnPe4SBPOb0VWYeNNAhdowYR0NoDpOKnmnfK9tu0qN9/L8yDx4z2KaglpTo/UdHG1atAG5MRprN
	uVLz0sLWIFdEzvnHeUMxyXUV
X-Google-Smtp-Source: AGHT+IHXvspid5uO57Ne/VYe04P/EGSy1AstqW/FydRu5FaZnAbabC9adB3YHkCwunnYN9qNMQViJw==
X-Received: by 2002:a05:6512:10cd:b0:540:1c16:f2f7 with SMTP id 2adb3069b0e04-542845bdd1amr1369272e87.14.1736397357757;
        Wed, 08 Jan 2025 20:35:57 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec06e1sm73866e87.191.2025.01.08.20.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 20:35:56 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 09 Jan 2025 06:35:47 +0200
Subject: [PATCH v4 3/5] nvmem: core: update raw_len if the bit reading is
 required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-sar2130p-nvmem-v4-3-633739fe5f11@linaro.org>
References: <20250109-sar2130p-nvmem-v4-0-633739fe5f11@linaro.org>
In-Reply-To: <20250109-sar2130p-nvmem-v4-0-633739fe5f11@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=988;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=KYi944Ng8PZyQOwpW6lInP7e9H63rwgPuemV1qM3aN0=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnf1IkutU4e8r41NLfSbrBUzZ8YhmPvzTOQ2v+k
 Ebwskduq6eJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ39SJAAKCRAU23LtvoBl
 uEmUEACY4IBr5uLswWnHYFyhg1g9Jv/h+36nARGMzYvaAdq06riHGrGkSeNY15J6smUaQ8ho8i0
 3ZBzap2sIOcnn3cHWhwki1KnoCzFY7R0T+xGkSY1fINkuWkpQ4CobR+61qdCU20r9DdtMbXyqIT
 BvofAxA5dr2/BtFd8nxf4C4SP3d7HqnxbLRu6zeVS0HDwBnVwkumtZqrKCBFcXiSjtq0OXrMO47
 97LHuw9Ie9WlxyXW6tu51MIZZtS3+raU7spdjuhNBaVfxDUIpbH70Drv0oOyN3LxwQ1h07bM16a
 tGrSLdv4XM/U7d8uZf+/HqolAg3NeTIwtdp8rX3Ux8jiuYPWTnIiaTUR1rUaYlJj9NgIPGRx3Kl
 gIy/0Kf+guZjuGbEmcM9Dvwy4JE4Olbq805+R9ccpqm8GsjvCTprCV7Z2tcxUq0rK5aI3ShDCJf
 VIaVQKYqn85zZs+40w+/6VbZ3L7QLurh/fy+XXCKNArGfU2fRC/nK5Ziil1NglBR9DzWgRVe/jd
 q5GNyBuCwq3x4hsM/cp1gucxopI++vtoCboRHvqa6B3uL1XmFO4F3gTdnUD9B7Ob5HXFwefYsMo
 7KxUlwOilzZLiOnxdcc0XwXgKE+xDnElwmv7oKOL6l7OIVKLMWTUlQ3iO49eTG5xfZ7CzmlUgbS
 2QHgdnLPs1j8DPg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

If NVMEM cell uses bit offset or specifies bit truncation, update
raw_len manually (following the cell->bytes update), ensuring that the
NVMEM access is still word-aligned.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/nvmem/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 59885d8b6a19d01f50759f09d453b092d1ec44bb..d3c2e6917ed32ace30844faaab27c41779b5bbf6 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -591,9 +591,11 @@ static int nvmem_cell_info_to_nvmem_cell_entry_nodup(struct nvmem_device *nvmem,
 	cell->nbits = info->nbits;
 	cell->np = info->np;
 
-	if (cell->nbits)
+	if (cell->nbits) {
 		cell->bytes = DIV_ROUND_UP(cell->nbits + cell->bit_offset,
 					   BITS_PER_BYTE);
+		cell->raw_len = ALIGN(cell->bytes, nvmem->word_size);
+	}
 
 	if (!IS_ALIGNED(cell->offset, nvmem->stride)) {
 		dev_err(&nvmem->dev,

-- 
2.39.5


