Return-Path: <devicetree+bounces-226516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BECEFBD9665
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 337AB500350
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52523148BF;
	Tue, 14 Oct 2025 12:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FNJ80/LI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29413148A4
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760445595; cv=none; b=H4I5TWMoW6NEt/wC3iWqpbIqhsiWg0S01ZB9j0pZFmYiXGkhv/Z5/zBrStxRtftFElTvpYh0BOIl+flSGjAvsZxO5VXslWPa03bPQH/juBtia/HL+NjemS+nZ4SFudoAd5+Wbdb+PrEkRlX8+y1QdkG6g6HZ6Li0jm/+a4q827M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760445595; c=relaxed/simple;
	bh=MdFy/rEtddPgNfs1nNoPDNK3EzZtOK6/402QnuCksD4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cSbYlxo5e8J80wyK/9luKyUeit/RXWNfLHouO/ZBucd2ibO+5EhRHxuXTeLQJZBUUeWQE3YNETSDBHu2gv2D3+d6I44qiUWbDVNO9C6/12pmFQkRJGnAH9Tp5jNK1//K70qlef7xFQaLQdq/F0nqka+hmXh6E929h914lzY6wd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FNJ80/LI; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e3cdc1a6aso39889675e9.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760445592; x=1761050392; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qz/PnsLNKphGj4wu5t6w0DkX4PTYLFQZn42Nmg+SPjs=;
        b=FNJ80/LI5wdNSIel17Na7akokWn9IxQb9gxeEllyT7aSu+TLb5guXs9POJoODrt57N
         8SdKwUptxP2HcZEIGGKhrea03YStv9M9Hi4trXAtNItAqx/yB5cCjPcoLCG6yNO9gcOD
         ilDCY6wJU0VHG5IF79iKIuZXIztCQHoqDy6v3/FYevqn4IJnqbkW5JUrFchMv7SR+bip
         Omm+x1bHlyL9w6MeCMJxCXlGlgdnQpQH8XcKxzVFUVBB/1Ea6fanpIWIUoXcd04RYYFC
         Wyty6ndKmzHxBl2+mr9EQoOPlS6O+hoH1B5dGKQNgA3vnU4Q2IeF/Z4iNvhMnXBFBYlE
         tc8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760445592; x=1761050392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qz/PnsLNKphGj4wu5t6w0DkX4PTYLFQZn42Nmg+SPjs=;
        b=W0y9Cnp4GMcYR1lvLBNQC4a0MJDd7IzMPGV/39vw7mRaEqgmcgLakQCVKArNgF1B+K
         Bix3KChk5FuTEoDWH8raqR8FPJ8iOI5+7z+dYMpi1vKostphR7YwzDFfmx/6nZSStYMW
         4gYoJDKq5zq/q6vGbzBwVYrBJLILvP+gQV9fheczSNgET8bwTuLwWDaK9rbpIvZrgwky
         UxGnXiBqcZmwknYAKJodBsqSYaOLX+uRaM2zIPFWqhNsv50z5xHUp27jZMET2tbHxDJa
         qP3iQsfMa+SHGLAQiS1bvXVeCoShr4l1msWvywPBjIpU7VpVk+rrX1Z2QG17U+M4HxhS
         +ixg==
X-Forwarded-Encrypted: i=1; AJvYcCXKKwLmeupGLjO/VR0Zz1QKEFREfkvSo63S57i2RKMkRvONm0gcJ60YePE9CvpHbj6QDnY2FhnMV/4u@vger.kernel.org
X-Gm-Message-State: AOJu0YztQpyJ4uoMA36Vcx6OtY2t7IUcC5+RsfesXACTVeFEoK7Q+Y90
	lW3NU3FzuY/TZXH4ZujIbg/3u93MQHEiA7F8QjqO/2JhhI/JV7c8k/n3h2rOmRlD9DE=
X-Gm-Gg: ASbGncvxnTGhnPCp8DFfu5mL6e2O9zuH754QJWIXzgjO/TxYY+VBLok0gFKxCfPyhNN
	Av0YjwibQiOSLmeWPfSNbweUAjlvcGQGpni9VCOyT3UXQOr+zuNSqktAgOEPW8Tfcq5ISMWuSze
	1CZUcyBy5Y9nb65M/hn6lUwWbkv02LY1Fr986JmM1550VM5gQDLG2p5qZdHZ+UhKXCOeClvbY7Z
	NirmsrLqbUcsoRbLeCaqrabmGsF3WMByWtzwMlRvs6eobdu++SNPXlE6lYEuDlH9Q0iqxIcCBMh
	R6yDrjv61hTEaryu/SCxoxdmCarnuF0cKrTulrRJNQjfk0ImVzHAcTo+2CRhECYQ6Aa3zJvWsEv
	FG4uLI/uoauQKzQp4NNPdXrZ1tXHgO0ZjoX7Pz6ZRXkQtk0l/pP23XA==
X-Google-Smtp-Source: AGHT+IHzYJeuQSSdvaVBjpsWcRolFjsrBPl+V+3N9Q0foLP2Jk9xC8lRLIlq37tnavPAFSq2mfhuYA==
X-Received: by 2002:a05:600c:8288:b0:45b:910c:adf with SMTP id 5b1f17b1804b1-46fa29e1c33mr195599705e9.12.1760445592221;
        Tue, 14 Oct 2025 05:39:52 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b9easm245813815e9.1.2025.10.14.05.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 05:39:51 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 15:38:28 +0300
Subject: [PATCH v2 3/7] dt-bindings: display: msm: Document the Glymur
 DiplayPort controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-glymur-display-v2-3-ff935e2f88c5@linaro.org>
References: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
In-Reply-To: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1535; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=MdFy/rEtddPgNfs1nNoPDNK3EzZtOK6/402QnuCksD4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7kR/MpIlema7vtLO10UuZNhTbFIUHH3e8z84D
 RD9ZYXA9NmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO5EfwAKCRAbX0TJAJUV
 VotJD/4pqgqFjwMjWLdSHRE8WR5WgFHxPv7BKsET1/cjItFQcfJdEmvTVQM2JhaeXBC3ID8e4r8
 ZUFwza4CdlWeAu2e9AOADQaj75EC+ESZYnO5xKA66sPTWOgqqVqLBtiIYLChP+amJNT4h4asBnc
 /TbZAn3sKR9AIV/DnPYO4jd8G5ixRVlIXMdiEmO8BGtsIkZ8IfsyLR6ETj2k/qZ9MRPW6fCE+o+
 efAXMnFFUZmq5DtPsJhH3lY00BWyKSjU/yO+xdSLBqQWD3uuRJgawppPogzmvuCS9leP/+vnROX
 lEl2LQrx72CvkyZcCYnjlNHr9L1CCa0k94m6FTZZ4nDBa1DSNaX6LK6AzZBbdfoMo4UlAYzx6nw
 cGviSA5kYeFFXTVB/E2WfCGsTovozMhbZ9fbbHw4XAFgyPm1mrFlWd/7zA/1TQ4Q+Fk1xGYvVjH
 hP0ozzif5id5Yy+cs55bW+tGQ+9gJTne0IYwFEbf+7FMtxp6kOfG1v25f2QijXVxASNLFmm6Xir
 o6APPe5LfGH9KGadmGs5vjsr5UEiZNqAKMHYvwzW1QbDSeuNwdCrpXaAjAaCHGUeZR3ghxrVa7B
 zjX/ZZj2ES5hGZZ6HJD5+vA7t1o6te/0HIpJbR9n8XxjWa2xWpEpYBXedbvALc//XypGakqKz/E
 tfk3cRnRS/t4WUw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the DisplayPort controller found in the Qualcomm Glymur SoC.
There are 4 controllers and their new core revision is different when
compared to all previous platforms, therefore being incompatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aeb4e4f36044a0ff1e78ad47b867e232b21df509..26f5043748c166aa44be4e62445a63106edf9578 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp
           - qcom,sa8775p-dp
           - qcom,sc7180-dp
           - qcom,sc7280-dp
@@ -195,6 +196,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,glymur-dp
                 - qcom,sa8775p-dp
                 - qcom,x1e80100-dp
       then:
@@ -239,6 +241,7 @@ allOf:
             enum:
               # these platforms support 2 streams MST on some interfaces,
               # others are SST only
+              - qcom,glymur-dp
               - qcom,sc8280xp-dp
               - qcom,x1e80100-dp
     then:

-- 
2.48.1


