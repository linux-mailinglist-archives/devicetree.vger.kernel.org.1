Return-Path: <devicetree+bounces-144571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E2DA2E7CE
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:33:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE1A43A50F2
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38AC01C700E;
	Mon, 10 Feb 2025 09:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oqngtpzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633D11C5D6F
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739179976; cv=none; b=P+RzUg7OPxNK6vlSDOsVOAkb/44PUAseDIQRGWJgc4ajQoK6eaU+pRnG9AV1oJzNY7vTGiUm7mOxofs5EeVjFYUAHXlT/kbqdONZM/EhKVPaSVBVVxSBkLRwaGe8EsIt0j6LG6jsN1Gnn4zcv0jhXKkb9yGBefk15Efey7NTmPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739179976; c=relaxed/simple;
	bh=98TJ0BDq/B4YwYQuRbdQZDol3K9UssuD5yxrzrrb764=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aa4wzCpPRvLtgVj9RP6pMuUN+cFL42NGlcvMRCw10WHwjWwFJhSnST1YCiw8lWN9ppigtWCwyaGSeeKMNB1WbuSiVz1wP4/8b+R1mbx/GAJzw8/X8vamedTzUUwtcYyULusshTKVJQQcJE9oNVJ2JtwM1VjbQeQ6Zx1Bi5v420E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oqngtpzW; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso26763525e9.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739179972; x=1739784772; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XcabXVD/YPnR5KMwd4hd44jlah3xNkdzGjeWtc1T2sw=;
        b=oqngtpzW/reIWI5qWeybXCwWhTUcOde6DkNV9+eobuJ/sBopwuaKc/R3LzV+l8bzkI
         ultE8mMyiWqDTR0lScK1IwnQNsAsRkYjdbnBKUEu7xooZtoKbMfULA5jOCEcYOf9XsFv
         WxTyMUqxeErfOAArtcB8uLGku+qyApEkjOyExz+V11yR+acSrO9hDTxkls1bpf6Lzzs1
         RpoMcYSX1SO/NZvARGqbTtLTr00pUphLZSxH8fzn3199sq6EaVxuDYMGVaY3U5B7qv8D
         +dVzwJ+b6phH+OUQSe57ljvHD5QA70WbmcBe9y9CPPvbJ7Y25Xt1fx+Q//JBuhM9aJ9n
         lqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739179972; x=1739784772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XcabXVD/YPnR5KMwd4hd44jlah3xNkdzGjeWtc1T2sw=;
        b=BxzcDB01F3hL3XbhThUonQ4N/zB0wrXT+A09A5XRNK26F0fpNTYqnHMliHcGioD9lb
         qOmaqlzT+DkW49nblZAU0fM4w4X3FCwNCkptxi/e+x74LPkovgwU48vN446fehLxDgtm
         RI9gOSdHu5Widfm2695sMHzM84MrhMJmJ8VvtIxE2iiGiRRiglFrxcbQgsinIcEnphF3
         0OuZrtakDzvWJgzhdI/YsJG0zWmvsZ0lNyJUU0AnR/b+Ey4PUmFA/k0/HPdeTXwV+x/1
         0+1csSaNXC6pF9WkxshixPft6IlyseqMDoThg9bwFB4CPkNpdhvHiG3HFitND+HEi9iI
         gk3A==
X-Forwarded-Encrypted: i=1; AJvYcCXb9pqmZ1kp6HtW83/C114hsWm2dDfPkxkeIMbcKAFVPYFJ3890BkypPBdCIZuk8dlxO5sf7N/z5EVU@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc1TB2XmGBqT0JG77BYPKZVyKM4/bWop/k/0vTgDluEyhWV73c
	7kNOeqqnqITWde7gV7JXDgsylwcu30SLm3OlI5M0WDXn62pJHQzG+0vu01HMI+9cQ+NGwmsDzVW
	7
X-Gm-Gg: ASbGncv+ZwNQXNy9vUcxgB2fzYTDCV+pbUByfCd778MEsKhnaoyVihlqGfePvdRzUG9
	fEg7htORfK3EVJzKoKz2w//xxWsuVo6mnYi+q0tzPAotbiRmrw8qYKUmV8D0qWCwcBSrMeYF2hF
	PmqxSct74S0QZsWeb4WcdgqzJUD6qiusDFMfzTWLOGnTPBv/I/TJDe1HrBPlRX+rfvffUJGFxh4
	U2QndkjBFQS1PhM8xJmlz4YpXls6ulJWTAZiv9F4wstlbFUs3OpL9u8Sc9ONwqkNehk7MtvzFgd
	yX6UeEBYT9VajsK1MmrgoBcNvCzvcneONjA5
X-Google-Smtp-Source: AGHT+IGPRsAVtjDP7HsM+NAqH7eUh/kQaI2NDFRRj2xr8IRtRWGH/wInuxqz+Xygr498MK4srrSfQQ==
X-Received: by 2002:a05:600c:4650:b0:439:403a:6b77 with SMTP id 5b1f17b1804b1-439403a6d76mr40653435e9.10.1739179972563;
        Mon, 10 Feb 2025 01:32:52 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391da964e2sm141340895e9.4.2025.02.10.01.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 01:32:52 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 10 Feb 2025 10:32:42 +0100
Subject: [PATCH v3 4/4] arm64: dts: qcom: sm8650: add missing cpu-cfg
 interconnect path in the mdss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-4-54c96a9d2b7f@linaro.org>
References: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-0-54c96a9d2b7f@linaro.org>
In-Reply-To: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-0-54c96a9d2b7f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1210;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=98TJ0BDq/B4YwYQuRbdQZDol3K9UssuD5yxrzrrb764=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnqce9m/jhlaXw4GK2ZFw2r5HIIYWGI8wOs/vFs1bM
 4LUMLfCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6nHvQAKCRB33NvayMhJ0f1EEA
 CVf2PbRt814BXrKgCeDeA2obxDBQY4vpAFMPuW9T9FH8C0VmlsdRjFqkwhVNLcHre4+GEdx94UbecB
 2cwG0tLoWmlqT585vcpdMXvE26mJLSIHdmJpBfwYStCD1Jds3TrPyv2Rk8GYCi12jON2yAF5prLkPf
 g7hsylbkRM64QR7aeeC2QewzmRD+6i+6Dc01SN7cGfVWrxKpyGpJPsnzJlbQ+b6zasx2AeBM7H3W6P
 yYRQb9Xvi3Xb6wnTleV8hcmfKaqQ2MYYWfn3ccIZ2FM4fnqWQ9+VccI8tjFSq/yqLi1j9cixhH21bx
 gVJ2O/GDHRRha1ljW6ys2TG9FwQEHoNKUyPrCk6FQEggzmL+q5o9R8d5v8/KVqLVP1lWOiGa7r21LP
 F1Xb92S0KrefOBnAkP+5q8UE365lcAQoE4Y+4GGvr9GwHVnbHHwgi5bpsRJ+QEkmEetq1DWOnxW7kv
 5olTbozq86vjVFhls6KXGIQpMerdjlw4i72rvk2yA6YI1n64pqk3eYVP7L/ZJPt+XXsRJR5XPenQ4q
 j4yl1WnqjfjoUGJgidJ+R4GEbdwr7yoH/wWicOu6FqHHW1ARu878vtyh/Gs1I3gh4VemvZCSuWRlrA
 MvlSNpXVJIYcReMfFExJsSX+6+rah1WR9y1I47D/a8pcibKIDoQQJ6CmNxWw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
add the missing cpu-cfg path to fix the dtbs check error.

Fixes: 9fa33cbca3d2 ("arm64: dts: qcom: sm8650: correct MDSS interconnects")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..e89a2051648a97ea8a5870eb6f0a6e0fa7e880a1 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3656,8 +3656,11 @@ mdss: display-subsystem@ae00000 {
 			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
 
 			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
-					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
-			interconnect-names = "mdp0-mem";
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
 
 			power-domains = <&dispcc MDSS_GDSC>;
 

-- 
2.34.1


