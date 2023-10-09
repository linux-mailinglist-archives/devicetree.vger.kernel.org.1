Return-Path: <devicetree+bounces-7052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9307BEF26
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02DDA281A98
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57B5D47360;
	Mon,  9 Oct 2023 23:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EkP7NmTs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB0B374FC
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 23:34:04 +0000 (UTC)
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3044ECC;
	Mon,  9 Oct 2023 16:34:02 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-77433e7a876so335398985a.3;
        Mon, 09 Oct 2023 16:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696894441; x=1697499241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/FjPGL9FZLD3HPQhfLZqhNvGFa7zL77tDFLRHXNnA8=;
        b=EkP7NmTsQPg1Ocm8yGieB2MYqY15MCHnUg0qv7scnlzQAYgAQFScB+sCKjMoOGo7uV
         t0HMIXvmQiolJaYkIC1efe+aoKMK3BW99gqKVaGZvLNkvBeHsBRDhOpdTgGsOcEmLjJ7
         M5giNc2FngAues6Rd3n+DA79jhujTXVDe+sFr491qzGUwDiPHptt7TARDunqsiYG8otM
         WluGq1Q6CgxXtSw/Kq60WGZjTpqozWusMWcqFfc9tFDd4EDFUqYNvFSwmMfc6xpdIvQG
         p81B6mFUU56amQSHA+mFWME2B/QLDQy5l2z2UuEc0UD0AuimuWL1ZGFmhsZwGnSKMX6M
         X/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696894441; x=1697499241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3/FjPGL9FZLD3HPQhfLZqhNvGFa7zL77tDFLRHXNnA8=;
        b=e844r8nkX+J46yrePMbjkxn3u0aGEpXAE4rqfoItrev1X/09Ft2oWmcKPveZXVoGkm
         r9H+h1GjfCNmDtAkmNKRdshMYxvKKAJy+LS2ocEb/3Nk92QbklbhWt0r77liu1q8gHet
         NbqIF0TBJzSHMHtpylI5PvLXhvDAYDC4TRNHHsOiUonoB+q99bqYYM7KZgW0XKapvkPP
         +PBMkB7IH7c3/aE92rSp0bENdD4x7murx78APlfO12DWo7KYSPndgPoNAb9Hu1wxq4y6
         OzXONRzFqYvXBi9H8rDnNOhwekN75dT1ZXFMyXp/CYwSdsuvyTVNeAPYcmJ3iczAJGoW
         3ZAw==
X-Gm-Message-State: AOJu0YxAhr9NAxQCuBSw5QdcFuwAGvlW+gyA6ccI5KcrZiodkFdT3y/E
	MXERbMVnuwXUWUiH6S0jTd8=
X-Google-Smtp-Source: AGHT+IG6BjRJbCm0Sewo/jxXjinU+q5QQp1XciLBTnEAbkm31qvhNlKnd6xUDDPQGtJ35BU9VjPT4w==
X-Received: by 2002:a05:620a:4312:b0:775:a534:c010 with SMTP id u18-20020a05620a431200b00775a534c010mr18904176qko.57.1696894441162;
        Mon, 09 Oct 2023 16:34:01 -0700 (PDT)
Received: from localhost ([2607:fea8:529e:7800::1d3d])
        by smtp.gmail.com with ESMTPSA id ow10-20020a05620a820a00b0076f35d17d06sm3878553qkn.69.2023.10.09.16.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 16:34:00 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Vinod Polimera <quic_vpolimer@quicinc.com>,
	Ryan McCann <quic_rmccann@quicinc.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Liu Shixin <liushixin2@huawei.com>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 1/6] dt-bindings: display/msm: dsi-controller-main: add SDM670 compatible
Date: Mon,  9 Oct 2023 19:33:39 -0400
Message-ID: <20231009233337.485054-9-mailingradian@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009233337.485054-8-mailingradian@gmail.com>
References: <20231009233337.485054-8-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The SDM670 has DSI ports. Add the compatible for the controller.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index c6dbab65d5f7..887c7dcaf438 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -25,6 +25,7 @@ properties:
               - qcom,sc7180-dsi-ctrl
               - qcom,sc7280-dsi-ctrl
               - qcom,sdm660-dsi-ctrl
+              - qcom,sdm670-dsi-ctrl
               - qcom,sdm845-dsi-ctrl
               - qcom,sm6115-dsi-ctrl
               - qcom,sm6125-dsi-ctrl
-- 
2.42.0


