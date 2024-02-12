Return-Path: <devicetree+bounces-40654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A438511D2
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F67E1C21803
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 11:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40A328370;
	Mon, 12 Feb 2024 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BkCrxh5F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1408B28387
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 11:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707736113; cv=none; b=VG/kBVorCh9Qgm9x9WTT3ChSH2B0d9hOd5O0A7BjeO0fJTQetvpv58CS3KZr823LTq2oDcWrrPj/eD5pyzNo/wvjG+db8LC2P46DxfZnDoomPpx/fEhbqBgCqiZv/lYmsFdu5edtABhvQ4IZZtG23e8bMXwsv5fyO7RHMkfOEcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707736113; c=relaxed/simple;
	bh=Z4fXPYF+u4xQMADIv1caxo1oAU+Gf9t6WriHQ4dbuR4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TSeztVX3WX6bX7gN3AJv4zn5Tff8IOsz2HXr04ij+8YF+sJkTWs6B3XZn2xCDB/ZRCmgnw1+f/VZk4Ll82lqn1AeEwp6Sbh4CiVepa7XYxL02m5+WhppXAG90ZQ4Dn2PrMr2nlZdjJg0Vb4eHVLV7v0FzUnucYzeHd0LN/1U3eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BkCrxh5F; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d0a96bad85so45099901fa.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 03:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707736110; x=1708340910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QfTLuqaQQYd2f5mdVnL2DmE1HEJ+HNnrT7PmO4Teuv8=;
        b=BkCrxh5F9SAgnuhSLq3LmWlWvRdeuOrzewcDCobqVJiV5zf8Pix62bp4MnGbJ+LkCN
         xlbNty81OSeq/v1uFDSzmH2CfDpiOzQh5N8YBV/PuKqUY8B6VcMMcLxChZjIfiFHiFuG
         pB2bgzvG8fKleoWKllJHOa7+1/ZgQflS0+dQHH5dUs4LVx2GVDnXopKSZ1nCpf5ZgK39
         aOX929gCfvYA59wT9AEkgJ1jzRxlLaZg7TFdhSB55N4QdTp8lrjnIzg0dwPxWYCtFt4y
         2X2h8zjtFfW5yMi6eFnt2ogAAvMAAMPgNYTKNka6v5xUmK0AXqRVh9kGu0yVVOK/PEzg
         HwBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707736110; x=1708340910;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QfTLuqaQQYd2f5mdVnL2DmE1HEJ+HNnrT7PmO4Teuv8=;
        b=fph+1rDqOkn89lZCyM2U/AtlQS88/YWvMjx7kLOQO8aLn5fY2QEWSQ4tR0Rh++hRWt
         2XAJAUuqP/d+bUyLXfATVLzaloKBPocwd+waeDRjRYJr2J34hH6UehPSkjQVsXtxf3fh
         uDF4JpVSEknX6Kgl3GsTov6dCATT6TgrSEkLdLNjTr4kL++YrlLmgbqCI9RVtdi4ZOVJ
         5DSVS1SNYvA3xScKFaagEZVa96fygLwpgWSexqlJYJa3u/QQZrVHL+g+zu0TLFsPe1IV
         A6ZMAzOpMO14TLruItiMu+xL8GkKAJy0Ks0hypVHawt5ipUg1pCX+R1mnC9+1fvlvWKH
         cWUg==
X-Forwarded-Encrypted: i=1; AJvYcCU+lEQO30uUcqlLwaVl4ySbde3kI0Q2wz/qetUtVCyUwnxlzPKm//++x5Y+HQT2iHvFVrv3X4TAkYNdOwKBqfWJWSw7CDbgFan1qw==
X-Gm-Message-State: AOJu0YyDuiq6O3RZqtAw0Yw3ib4+fzzXf4nC7ew8mSCPoEGrBRJ5xHbL
	/yH/WwV8vaz1ZDFIFjbWf2aYHVPhkquwDc4EqnJ4zsI/k2/IHcf8kNQljypfxQc=
X-Google-Smtp-Source: AGHT+IFrYp7jVbLMON3sX343Qlc4Oqd39mOVmCwr8JosE6dUGQTfF5mDShcbYFnMdBS7etdJs8gtlg==
X-Received: by 2002:a2e:a549:0:b0:2d0:de9d:49a6 with SMTP id e9-20020a2ea549000000b002d0de9d49a6mr4737467ljn.13.1707736110044;
        Mon, 12 Feb 2024 03:08:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXduac7nelVsj7lCvoOZ0nIQQUNLh9eeIR3+KumAxP9wf2KVzJtNPZDC9yknywycJTH+IwTYXaf1AeDEVWHtrfFM/CsiRhjUnWiiSunxxzmSWdbKgYna3JNRUxsKGsP99NxUf6T+Xps3NiGPDfuPjof4ggeCKRUot1y3x+CxiodlyEnkjm1rehIP0AMhdsJgSFL9ZIdD6qtuKf2sbYPaoUTgmfWEsQE0S5zbkUmDdp237+p9Y6vExH9AI0ro/ueey94yByj7nSMgURoVCHJ03klsqcgG1PK5AQGf5oiQXLzMxnmC2NcyHB0mpxvvsHARrTih5C318Dx
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id az17-20020adfe191000000b0033b87c2725csm846175wrb.104.2024.02.12.03.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 03:08:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Amol Maheshwari <amahesh@qti.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: misc: qcom,fastrpc: Compute callbacks can be DMA coherent
Date: Mon, 12 Feb 2024 12:08:27 +0100
Message-Id: <20240212110827.59302-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Apparently on Qualcomm SM8550 and SM8650 the FastRPC compute callbacks
are DMA coherent:

  sm8650-qrd.dtb: fastrpc: compute-cb@2: 'dma-coherent' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add missing subject prefix.
---
 Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
index 2dc3e245fa5d..c27a8f33d8d7 100644
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
@@ -77,6 +77,8 @@ patternProperties:
       reg:
         maxItems: 1
 
+      dma-coherent: true
+
       iommus:
         minItems: 1
         maxItems: 3
-- 
2.34.1


