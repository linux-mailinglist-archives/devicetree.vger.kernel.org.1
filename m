Return-Path: <devicetree+bounces-10960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 609DD7D39B4
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 921071C209EA
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9CF615E8A;
	Mon, 23 Oct 2023 14:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0AlLjbnu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B90710A22
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:41:14 +0000 (UTC)
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7431C10E7
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:41:01 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6ce532451c7so543683a34.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072060; x=1698676860; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qudfebjcrf3NxTvPd9cnhg6s1+eggmH9h9XstTC+9Nc=;
        b=0AlLjbnu/eYv+YprnTPblgV6/AisEUDQnGeo1+NwFRU2wF7AdKyRW8Akx0Icxzy6R4
         mNblaL/e+/2QFTroCnzAuw+n3dBayiZz9D3+RPxere/L1Hxn4MXnv/nAugmCpbDCmZXa
         PvirWvLYc2Eiji/UA/QTMLkv6Xw/e8W9mNz+jh86unyAB48N2jzk8b0DvddPvrMiGJAG
         Zxu5u8zJO44Ux0q35E80wutvqCWHgvFriNiO1CLZ1SbEnmb4vp2xsdb+lfS3SZAQCetU
         hxNeKbY9mh1v6xxpR8EiVGxJcWfWg4b/0OwZXiSGULyk3OHTiu+d8ktQLQFT50y/PQYt
         KSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072060; x=1698676860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qudfebjcrf3NxTvPd9cnhg6s1+eggmH9h9XstTC+9Nc=;
        b=CSTp0eLLiYITa8DKL/EKNL6Az45yoWGCC2t7tiZyugIuK7nn/LgyHWbfIxkm8iluPo
         VHDc1eQZ8JB2ne18/2rm0Ah+ERzTuhJutnldNKfedFyItFfdnlHhHpKtT6UGLrsVTj6t
         lyIFRDgPz/mxdGs1ai1WhhKqbtUe7CR750EgTHRDjD9i91oyqKNq8pA2LGJuyE9MKndu
         VzvHhOefodPC8Zoll9pCXDOT/RIFWc11bcTdDak0CHTKU3kz+AABxh0xCviq43QAh8Kg
         9hTrbD6mr6i0c4edGyu1cMZVbCN/lw77IC0jk9JpyU7VDaim/KxYRM4GZf4RnVlEh3y8
         Gpyw==
X-Gm-Message-State: AOJu0Yx8iySFSo6uOWOeXmwih0ltyfTyz9AMx+AVReOPXIrBxfPqy0q7
	doUfdzD6AxeGL6Cikg5MRwyXZQ==
X-Google-Smtp-Source: AGHT+IEm9PyIg3Jn6Sranv/OuVsKx3BtStd2/S2hWeKlYnsrLCZVCoCeMweFPm/ILO9p7wr+RzI5HQ==
X-Received: by 2002:a05:6830:12d8:b0:6b9:c41f:ede9 with SMTP id a24-20020a05683012d800b006b9c41fede9mr8427446otq.16.1698072060546;
        Mon, 23 Oct 2023 07:41:00 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:41:00 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:12 +0200
Subject: [PATCH 12/18] dt-bindings: pwm: add binding for mt8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-12-5c860ed5c33b@baylibre.com>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
In-Reply-To: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=860; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=ffAXKXJ9cZhbqlXUqaqX2HWdbChLJu80R5DE84NCORA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXPMQfrIcZqNQJQO0Ys25obPGYM1stc5OlxnvAk
 nFfDrjyJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURdavD/
 0ZHAZ0Cjk4mWoa9zs6Fp9jRc9KI2yB7gYjoYxe/765Z3sfJIriT6yE7EbmApJeAFwZXuxMtXTxp1ap
 LVnEtyhFnLZn9KfHA+ALiIERlyx6i1MPCmiGtdhBSH2kgn5rVrELtf/LrFTJ9LUEuy5MMzV6vnxU3R
 E+uKJAxMTzdrTUBbvpmehqvKKL05WgmgdrInZWPK+kJHrJ1AYdlXFrFnBPb/WOnmIKBe5agU5m46tc
 fwUSK/zMXFAjySNrRw+spBLwPUIo5T8iCdLo1VnjYRvJtzkMeyc1hzZGTDWkmKoHGmPx3p0Ee5RUFA
 7OMDbifvVvc5t1VQ5KlsyuJcr2nNZWaVFtNotj2PjUSFaiqVubPTbRdk3hcZAKtGSnA9reIBsmViaJ
 z0e9t0zUGEHa6oTIHkBpFQStDh8lgpeoM+tKKh9RL/OtyNDRvIocFqYTOU8/JVcsUSWlJ0xi3w0EDA
 Uy1/BPSzCu3Xi4oAs2iNbnzwElhIXn7l4/2+s6fXHQL49j8l9+wkpBITfsWZM0++zwWxgIE89bW0q9
 kTB2XBw2jQMfD6NtU9QnfS7D4PztrSV36Dqn0v20qW51tyHLvq4sxPAq2b6GBE9LKE8LKQYx77NnT2
 3/+4xLlLo34+v7R651isf4We2qMe+NsPxHGpuHQMIF03yxjM02olxLhcaoaQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Display PWM for MT8365 is compatible with MT8183. Then, add MT8365 binding
along with MT8183 SoC.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
index efe0cacf55b7..e4069bcbf8d5 100644
--- a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
+++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
@@ -32,6 +32,7 @@ properties:
               - mediatek,mt8188-disp-pwm
               - mediatek,mt8192-disp-pwm
               - mediatek,mt8195-disp-pwm
+              - mediatek,mt8365-disp-pwm
           - const: mediatek,mt8183-disp-pwm
 
   reg:

-- 
2.25.1


