Return-Path: <devicetree+bounces-23506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D423E80B76E
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1124F1C20990
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C2B1EA7D;
	Sat,  9 Dec 2023 23:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NnZ96PZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4222A13A
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:21:36 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c9f62447c2so33017601fa.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164094; x=1702768894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bSK6mZ8dw5NPtYdF0SRIR2pFCQDMWgaic2V9yiXRbes=;
        b=NnZ96PZcCggQ1/v6m65PMMJfGzokmtQBIzdjslJHifO+bW2t51Epuouma/6T7VL892
         /YTsdSCgm8cRILzUPJan4QarnBQ2wBNfFOfgOsXuVMNWqTHk+WbPkvhuPmIqhZnjMrNT
         4zjWw9/KZb+oiHU9x3eFXHPkpjqjmAePezN3/uoEw+p+R3YduUovlagdLn0r1En441hT
         E8wf8jzmS5EVeIHchlyq3EkgS8Dty2/PvZ6u/gxAYTJHNF2oOffKe6qlobcAYd+ufPvf
         bIX5wNoCI2QDx2RtWlM+XczRQ6rCjXxh/wuFyGiGQbZJ2ErgkOJuEuLUBFQAOpqrSgbc
         ayWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164094; x=1702768894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bSK6mZ8dw5NPtYdF0SRIR2pFCQDMWgaic2V9yiXRbes=;
        b=i8KToRAoSNR8UeQEGagtUt/CsNsctCRGREvXsOWFz7K8Laa3gD/PuVS97n0k49V7MJ
         GfJSyeTjYZ+nJwhWDA8V874BB1QUF5MVFvV+IwpSspEIMHab5qtZ3BBhyxpfFdp0LtJi
         6MiNoA87lroHut1QvyZedb5YuTsOpgD/IUR+aeWiIq9+rrYVVU+02qBKH2P/6Wuk3lu6
         +RlCFnwzxWKnOLDLIKosHYetCnFtUHBHXDiAQUqQDStyzV9rJ3pqDwxhGsX4nx5iv5yL
         KZUkY/nf/lGzmq/n4BAi7bPMxjpThpFHSgFHlO8JmDCpZjTfbCGDwFukBfTkhPW/ibXT
         OUiQ==
X-Gm-Message-State: AOJu0YyuKt8aqvo9iw+Jx8M9pBzATmkARwEsV58VgXq5q8kZ8uC/tatw
	s3CkpS0FZZnlk3GOlJf3ZI40+g==
X-Google-Smtp-Source: AGHT+IHK9i9sHU8g1FvPL/utpZnsqHoTDu8AChT8E7u7PcV5QQR/EZHTCnQCJ8UunO4csc4HctZMWA==
X-Received: by 2002:a2e:9ec5:0:b0:2ca:2116:469a with SMTP id h5-20020a2e9ec5000000b002ca2116469amr1440559ljk.10.1702164094510;
        Sat, 09 Dec 2023 15:21:34 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z18-20020a2ebe12000000b002c9f59f1748sm685258ljq.7.2023.12.09.15.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:21:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 1/9] dt-bindings: display: msm: dp: declare compatible string for sm8150
Date: Sun, 10 Dec 2023 02:21:24 +0300
Message-Id: <20231209232132.3580045-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
References: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for the DisplayPort controller found on the
Qualcomm SM8150 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index dbe398f84ffb..f850bd9b8263 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -28,6 +28,7 @@ properties:
           - qcom,sm8350-dp
       - items:
           - enum:
+              - qcom,sm8150-dp
               - qcom,sm8250-dp
               - qcom,sm8450-dp
               - qcom,sm8550-dp
-- 
2.39.2


