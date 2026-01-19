Return-Path: <devicetree+bounces-256622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6631DD39CEF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23398300BD9C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF2E288515;
	Mon, 19 Jan 2026 03:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N0ivzO53"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D75A28466D
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793449; cv=none; b=IbrGXD9KVhM/f14pgZQBJFAwzeWMu/nNpGt1jkyk/6nOz75068HnGiLYoYzJDO5CbBSUQ2VXiw/GxLl0FIU9uX+dnWOzD5GIAsE4gQn7J3Z7U50LbWourIRb/ZUswvEPx+bFxyT9/dwq3EZc33sPu3xHhaR5Xeo1TvDsIGVXgMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793449; c=relaxed/simple;
	bh=QtehmTlxVE2ImMqTMUlN+wssHL5rLi9pMI7VHV6x+J0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cZMvpWy0Pv1ePqDmA4s97WgNTX244BCGFqxJSexxeDq/jOnVOZWQeB6rlpCFdEg/RtcnTvrkq+bqvWRbkfBl6exqUil6hiitRjlkowggZH2GDUAcNzHOrzhYUY4Ybr8YzZUGwzDs/k8/to8QiCn8JcNpETqHhfLlhWzRcLJzZjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N0ivzO53; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-8907fb0188fso41558386d6.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768793447; x=1769398247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=N0ivzO53nkFxHh3yaSkbLQjkCtKfFOof09VTSNOigXmKAr6xgRNE2linhP6dP/rIaS
         e1A1S2wwPCmkRpj78eoI5Awt47QjbDK74xig07J6iGnGAGrhV1MN3b21qTv2e6WfOaFB
         F6TODsoql6wPQFTmlt76QpS8Iky19GWZiJ+8n8RjPrFqJAjdwW5mn3kJBf3mefFENAC5
         +Edsbc/BhFeiqS3XimIs48iy8m/p/DzEyPnRDdUy2lREVnu0vXI0qE4bkoS2ZjyvV2hk
         buulq28P6VcJtn6Lj3oUk5O64dEskSuz7BH4rHpYFWqw5fxiaT4Z3+abwPrS3u/BDM2v
         Dpzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768793447; x=1769398247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=uFLwLTnXfPPnk0vlcOQjRLUWm3okMW2s3xLekcgExcqb388/NKZPMiDUg6anhyMkMU
         +u5FdbFVFXuyDjrz5INsN12/zIeUXLfzktqT1q0aXKmUZKQQSrneD6qIVZLMRFmvZ4YZ
         NYkqrfqs01MafMSfy3+1FdD7kCfTyc210BmB3nnoT555euTt5C3fFJvRKogzlqwIAZCf
         yKca5Gzyv1TDZsSfbUshcsgFxwCaTjgx7EAXhix7+6XVR8mkLoBVmm+FfN8NpaJD7K8H
         w898HXDtd0R1g7sR5ZUn7BYs7TKTRXb+1QlWvFU9sO6HtpBWPSZwQn+j9bmmtNpSDoa4
         zReQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMR763cziZt2UzD0eENjQ9oa9VMtscZk6Oqew1Vw/Rgc9eKl6Qj+pvQijBMN5SQzcRGp3euHoVADt/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9wC4Q3G+v+KME2Q7p9V+xupbXSsMc6fGPnaq1VBwvBRLRL5TF
	6ONDpbTTORzaUrjLJjE8/nZs5MzMc7qUVL3AnZXtZd0tDVd+YTIzn3sa
X-Gm-Gg: AY/fxX6Rov4z7go7kwq+C7bUfAD66rxfd0AUt9e4/78In9nYBwBSGQzbnqS7LPZe8aY
	AcAb7CZMA46LdcCb4MkLbZ0rkc19HETkjWLv4APD1uQUeOcVV25f3o4MvlsJHuhA9tC0JRU2P+5
	0qa7bgHXIXDYdy9EC3tghytmJodxAmnPDl6PmdhtrUmy7bG2do62WYDZYvlnACFl8o8z/KGxfer
	LsbAMDurmsOOSPCSkNKrk4O6Cw+LJ+alG6g/OM2jUORX4Jsq6a55O838kWo5EilIdSFPHsk/cXO
	qG5UbhyHu/sAlqqkxIJoyWuXwx5JdBEeI0G3psRrdhVFU6ucThsFYtXJ84mU6o9PzR2NAR0LnXg
	/R+BAE5mVcmubR8cGD3nuc/74/PvgbUd4JO84i3I8feqf8MVdC8gRAZDCnu/n6hBGdCwVoWfzpi
	e5qKJyIkfFivUWEmtLD1bGlbwPGL06LdTJu8BdVZdf5sEIF85MupaLnQAYVCFxEkgMf2Q=
X-Received: by 2002:a0c:e008:0:b0:894:565c:98bf with SMTP id 6a1803df08f44-894565c9997mr6435226d6.13.1768793446858;
        Sun, 18 Jan 2026 19:30:46 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:46 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	andreas@kemnade.info,
	khilman@baylibre.com,
	rogerq@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	quic_jesszhan@quicinc.com,
	bavishimithil@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	thierry.reding@gmail.com
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-hardening@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 03/10] dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
Date: Sun, 18 Jan 2026 22:30:28 -0500
Message-ID: <20260119033035.57538-5-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119033035.57538-1-bavishimithil@gmail.com>
References: <20260119033035.57538-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible strings for the Doestek DTC34LM85AM Flat Panel Display
Transmitter

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 4f7d3e9cf..3ad01645c 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -33,6 +33,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - doestek,dtc34lm85am # For the Doestek DTC34LM85AM Flat Panel Display (FPD) Transmitter
               - ti,ds90c185   # For the TI DS90C185 FPD-Link Serializer
               - ti,ds90c187   # For the TI DS90C187 FPD-Link Serializer
               - ti,sn75lvds83 # For the TI SN75LVDS83 FlatLink transmitter
-- 
2.43.0


