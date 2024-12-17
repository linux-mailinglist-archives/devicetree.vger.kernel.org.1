Return-Path: <devicetree+bounces-131912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F257E9F4E79
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 15:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FC6D16DF85
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7531F8929;
	Tue, 17 Dec 2024 14:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xEhZB9r1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CDE1F868F
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 14:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734447091; cv=none; b=R4r2OeVNwLf7oYJtLWIVhoPvOQLKtRpP+FHo09q0p7CyYkNdwMbZCFurcV9igWBrBVj4zy3+E2uI+AdP+xTAnZijQOOG6oq2LnuljwU/WSHJu7q8r+s6m42Mc5Zn5G87ZdaSCl7e2ET1HQGVMEQk77PcWk4tmFZf/LHyvHtnitU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734447091; c=relaxed/simple;
	bh=HwDocDUkhgOfD1IlB5zGqmjPJaEeewUJn9MRE88hfiw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g8XwK0Np1459dwPJro/jQgvKkL116/vZe8lIoChEdxCfFWWzH3/g48JRbT5miti2zV6Oftjrl7Gfz+zcNhNCklMhoz7SVb5klKFAZL716QL8qoP9bjGrxPlciWWC6En0LBQvveLz0YN04wOBENyV2B7ep+k3Jc1OoaDCunBNROI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xEhZB9r1; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43618283d48so39249015e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 06:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734447088; x=1735051888; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=froNOEJ5fP4HPjSwjJSIEMf48laX07a0dnLFUTX+430=;
        b=xEhZB9r1wdpCeTnpomPpirHg1ZqQl4rxvYz0fEyTKN83Bntgi/90LdqPyEmiktf/T3
         MHBPHYGE+p76j67SlYXw3rrdR1HiKH9X57OVLmVNBBAY1QIXwagjY540RyCDyK6xD10k
         07SCT0ws2hlHOK/LseF6zShwmjRwucHc+8xcpv4j7xe0dHZkzSL/1ckNh+6ZfpLi4od9
         2y1kUQeZydSEDjtabtYpD9xwmUoJaMjs0xe6SDt+guxWTILfAuFYHMYh8N84g0/KRdUg
         86lNAebmNWXO6Zrb5bRJ7cYHdS9nRPZw6wE4NkxDBP7qR/W/nFMRAqU69YHEJ8hhbq6Q
         5wFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734447088; x=1735051888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=froNOEJ5fP4HPjSwjJSIEMf48laX07a0dnLFUTX+430=;
        b=V3YottzdapqeDPCS1VrWeXOpb3HvLa0OxxtfBurUhqhsNvXphXYvC8VLtXkQG/GyBr
         Tr2P5tQbY2rJdBU1CHDf8GZVJW3DNE6KnkWkaS8pU+EiPZIxNoNG9YQO0HOIoQpCAdy9
         j7rRFRL5LTqv5sRXUuFhWbw4kxlorkqd4N/gmJ9uHlsDdNlNPtY7aIJkgcck/PSrX0Af
         R2k2+Vmi0Z1XzbyqLbMCabsOqNrG+VkcGnk0LA3ItnEyeFeujPE02fqIdDMG1jbBYzgf
         8zkFqhYxKYMVrPYFypNdUSyHyWtqMbKDomJLsz/jRHg3+0eewcp3HE+lC4MNs4D6wEu+
         nX5g==
X-Forwarded-Encrypted: i=1; AJvYcCWgwQXgVLGFwSezWAvWwONYJqJHyPoRTe/XfWAdRSp+55bsbCDUG8pBZiiJM+WRcwL7UasCikY3DfKB@vger.kernel.org
X-Gm-Message-State: AOJu0YwfH3+dwLP1wK536j/SGHsgpNILVkiHaELytZbV8o7zy65R6DVY
	3Hv+G1m/zzpQ+5EJ6Nmpl4Lly1Eylm2kJjv5OoRK7MSgeUcK12uQK5ZgjlC5apA=
X-Gm-Gg: ASbGncukLQ7eYXva4jxuskWr/e4+vJ04rcgUApvnoXuDKyOs3yIj8waUkhMDSDzYtT5
	SZiXTFUSZftuNVzqRum2KWPgWHTZVJODpaBJzTUWV2jqvWbAB2n+Gm1/82eY2NDUMyaUybTbGhx
	Sz8U2ABCTH8OKqhWeufEO2AbECwSsmdhyC2489JlJSQ66FHQ6NcCWJtT7W+8RpcAAWyHARlkrKr
	QGZ49ojqg4vq0Tsqx/lBW/XRke/n4XIOFw9labRSPy0Jf9zSiHnczQMv4i4WD7NsP0DZ78QMc9Q
	Zg==
X-Google-Smtp-Source: AGHT+IE3dVFrS2lPHOBld+jhbNLM/KaCd2kFSGdOZmmMuYrxfdTmB2x698gYQPGsOdKqkO0ViNS+qw==
X-Received: by 2002:a05:600c:138d:b0:435:136:75f6 with SMTP id 5b1f17b1804b1-436475969ccmr39766125e9.0.1734447087774;
        Tue, 17 Dec 2024 06:51:27 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43636066f51sm118417375e9.22.2024.12.17.06.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 06:51:27 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 17 Dec 2024 15:51:18 +0100
Subject: [PATCH v6 5/7] drm/msm: adreno: enable GMU bandwidth for A740 and
 A750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241217-topic-sm8x50-gpu-bw-vote-v6-5-1adaf97e7310@linaro.org>
References: <20241217-topic-sm8x50-gpu-bw-vote-v6-0-1adaf97e7310@linaro.org>
In-Reply-To: <20241217-topic-sm8x50-gpu-bw-vote-v6-0-1adaf97e7310@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1853;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=HwDocDUkhgOfD1IlB5zGqmjPJaEeewUJn9MRE88hfiw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnYY/nYInfr5ilSEBZTNT2vb5iKlNQMAiVwhU2rxM+
 pVcYLluJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ2GP5wAKCRB33NvayMhJ0fhMD/
 4hgyzTGhrI/agedqwYfWa42TDdBvFrGXLuo6tlAup8DPYh3Jd6os2SnBAfx5l4gz3qJdpc4U/V9hD+
 pNCEtpun+rPukeP8L9zNvgQxEvCWLxnSKdDGgvY3YiLeQOWXT9t5BuGGPlOuo+FwYj1l8gL7dsE0rW
 qtTCql0QRQ2xb7K9sDBuifto/hQxmwTHZBCwTQzPUPgYu/cMpE5DIM0veZkxoSFEMAuIkXm1raz6OE
 RZq+bXu3LmtzKONFBCHKJhK/jwKyV7KzaMwCbrpjd1vFsuvXX0leQnNBXaTA01pGYj7i6wRNArJBJQ
 ydv9+BAOp3HwXOnNmB5caK/KWtlzCFJXhTWMvYIvTrZM1xBsVJ/ajiMCqaWRYDUWnY/YgzBpRJZfeE
 4txlhXv1PcC9wxSqrRYPhmqYXKu6YHrmnz+l/Lr7CXRjwU/0l1sUdNIomWmXsT59XuSnbVEL+2wSdn
 5FE0myD+ktpxN4WRYzxLbVeHxt4/uqImrB3V+CYIYfVPDmUZK+5V7PVGt+yDdmlHd0+wi+PybSRZ/S
 v3Mp5x2Na6S//QyJSM8+sf6FHeDcFrT9gqc4DMFu+Po8uAtB4ukrsgVebJFdObPQK9Gx+BL8iaJ3eY
 lf0yddo8DanZoSxCqvVALoM27n9yvY+PIbmbLLiZDIfYA0r4GBYhYy03u/bg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Now all the DDR bandwidth voting via the GPU Management Unit (GMU)
is in place, declare the Bus Control Modules (BCMs) and the
corresponding parameters in the GPU info struct.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 0c560e84ad5a53bb4e8a49ba4e153ce9cf33f7ae..edffb7737a97b268bb2986d557969e651988a344 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1388,6 +1388,17 @@ static const struct adreno_info a7xx_gpus[] = {
 			.pwrup_reglist = &a7xx_pwrup_reglist,
 			.gmu_chipid = 0x7020100,
 			.gmu_cgc_mode = 0x00020202,
+			.bcms = (const struct a6xx_bcm[]) {
+				{ .name = "SH0", .buswidth = 16 },
+				{ .name = "MC0", .buswidth = 4 },
+				{
+					.name = "ACV",
+					.fixed = true,
+					.perfmode = BIT(3),
+					.perfmode_bw = 16500000,
+				},
+				{ /* sentinel */ },
+			},
 		},
 		.address_space_size = SZ_16G,
 		.preempt_record_size = 4192 * SZ_1K,
@@ -1432,6 +1443,17 @@ static const struct adreno_info a7xx_gpus[] = {
 			.pwrup_reglist = &a7xx_pwrup_reglist,
 			.gmu_chipid = 0x7090100,
 			.gmu_cgc_mode = 0x00020202,
+			.bcms = (const struct a6xx_bcm[]) {
+				{ .name = "SH0", .buswidth = 16 },
+				{ .name = "MC0", .buswidth = 4 },
+				{
+					.name = "ACV",
+					.fixed = true,
+					.perfmode = BIT(2),
+					.perfmode_bw = 10687500,
+				},
+				{ /* sentinel */ },
+			},
 		},
 		.address_space_size = SZ_16G,
 		.preempt_record_size = 3572 * SZ_1K,

-- 
2.34.1


