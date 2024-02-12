Return-Path: <devicetree+bounces-40630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF547851121
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 11:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F664282D3B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 10:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E8138DDD;
	Mon, 12 Feb 2024 10:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U36GQPYD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB431864C
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707734261; cv=none; b=rlcNyYTS7ww7JGFe9rPeJiPdihe2HysgpL74Y49pjEnZbJdzQre3/IiSEP4KjTo9FssnRjWrwg6krdX1yWJC4iTCaRbppwx5rHx5bjTYJT7bUDo1o9lNYnaVoyRPD9HFAdkfDBym8zvoIkUnIUoAIdgE9GRdJZ9M0KrdFp4eBC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707734261; c=relaxed/simple;
	bh=FwMqAyDAq3YcXix/6fFCYmJYb0SJdgOCR00xM3jvDsc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sKrT74Y/ZXjMbtrv8jaSc5T3dHkvfXGjcvVeN3Rc78UpVmFfQf9/ovm15tPnPeorso+pPgS9OhTW2zbAzps3RP/8KgMiG3RbjOI//sMUJLr13Z4Q0YVINXrKxXflx+IMxk++0yW2XhocyTdeXJIcyvH+ZVCUbf+yK5G4VllJmQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U36GQPYD; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33b8806c22aso139692f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 02:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707734256; x=1708339056; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P7lnJbOuvPncg4Drmi9E/eb7alLntKkvP9P/k+jc8V0=;
        b=U36GQPYDkP5DeLjoL6EqQxL3+IG3SaQXZe6vBBMGfjD8sJaqrJfeLjiDoKqYY7skTn
         lKsdtJamCakj9+fTeDgk0B6wTMxaW3pzNJp85OGFMKDax6b/L6Ud7onHq+TspWiZ2dND
         t8UjUfUViALLiUDpx1lh/shnWKifR+f6LiMGCfH5PVLRvpvm3At11h5RP/7zZlcmJYLP
         JGdv5J7/Qg2KL+lRGNKI02L8gbJEoMnIqo2iU2IsiUDu+gDhz3RpMKUw0NFjSz+meVv9
         cYGbD5lbJvYfuvQKnCaNiYifb6u2PCw/kHPXO0m40mpO5nNKmbIcSkAseUdDT+Y1IOe/
         IwqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707734256; x=1708339056;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P7lnJbOuvPncg4Drmi9E/eb7alLntKkvP9P/k+jc8V0=;
        b=PEXurclWs+lanUOA3pPPJEjUo45fZKx1+mamJpwa1O9lv2Q40q49wrjYGmzdfmNA0K
         UyN8Z8jFfU5+U49lnswwUL8OIrW7AUbFjrPORBJtHq9Yk+f5i00iCL/WryRbNBvn3t0o
         CHLcPODGrm+dK7teuyUC2YgjvBuwbGv0dUPl3TtUnoZM5IoBjKZ5gnpK/ZySeuxte3O5
         BMo+3Xbr82GD8vmckhYdnj+XbmWKRMi6AqsB47jCzS5VfFBMfCAS/TqJut9dpWxzhQS1
         9wqH0Wxikul9nAYPqggHhX7hMws49TpnGollyWBMPbkQP9dOpu4AmtZw+lJuZRHan4hL
         4l6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVM3cGC7e47mqiBqL1U1kogRY19lDXzILysdQUO2BO7TJ02Jlf/XYWa5P1IUzS0jgjqFpSJuE7cBkU/EfNDb2Vc0n0NKaqMTsUMcg==
X-Gm-Message-State: AOJu0YyTarT77Ne0ZKUWXfSmj7cEx1tFALt2EB7MuJ/kMcBfozHhBXJ4
	/MrHm5wdi+8OEUT8I4yEursH20Pzoy8BtyqYB4dVPa/rABLPRUVDRtQeiA/sCJ0=
X-Google-Smtp-Source: AGHT+IE8LrZKOL1gEnItXhiIYmNoGrgCbCa1tyDjAbBtBWO0QpB2pSJHJbxkKgN4VqsWxMQltjgyBg==
X-Received: by 2002:adf:e6cf:0:b0:33b:871e:e19a with SMTP id y15-20020adfe6cf000000b0033b871ee19amr774229wrm.40.1707734255845;
        Mon, 12 Feb 2024 02:37:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXUm81D8+86/YtXHUU5sPbxTWdDbHw6dSfxLG3VgV8DXlJx/v2wAywxucOi5jYbxwfr4olMUW7mo0GEPwyW4DwiIr4FKdYrJlw6L7w1utYy4qe2DHhWPfnZFOSSCTVDf42SAVjvVDKUauPicTN5iKVkiqyF0jLnCdzBQRJbaZM+z3Nwh2oxHQtdEcyIDyAiGqmbgyFcLYKAquVSbCbAy8gVs3n2mB1CBIW6mM4+TPDEdOgGHPeDoOU9PawWYiyujbTbPYeAE5+vuRoIeFddM4OFOWWevfc/Wjp03ab+qUFKeqe9Gp3mwL0X2P6MPQa5qmtMlhycJuEPkeuTXK0+IA4fWxewisXIQEkYvykVpQ5elbBUtZ/skwDyhfPUL0fudHVkk6KMRhxd/AV+6erVL1orOx/dKYmnnjBDHvYsVGQoJtDbTQUMeroR17+m7Z4wkpbyofV9WZ2wlDG1oNO2iGPNA9dhx6lcf7jN5Xt1rxle74RIMGZGLm0X6qeAczuTCNahOTX1X7lQiXy8qWWTfzyC/OYpKVxUeQz4sUSYvLut+9Vq+82Y/oM9Epa9xArL4LCo8cbWusY8rvj/Y9T3sS+5B0ynwaEr9OpUKBTUXspCiNUVsUTfxzoSVTAyS8Gzu2rQFOweVkHfEb5OkEvUR11S+wSpYGyq0oUFhcUYTSIPHzhhAtyIFLxriiOBqlZi1+wvGlfouBox9/eIq8EAGEDptetOW/1cq5tc5y+ENcWlfpGT3kjjLsq7Wb+FnpOzPIa/AeWDMz5lTGS4Fm9kmUYUU6CJOFf7UwQjNRvH3xLNlr342Aqmy7ijsstz/jdz4+wFIsOE+kV0YWAmoPEACpDw/hT+UBODv4PDT1U=
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id f14-20020a056000128e00b0033b50e0d493sm6404188wrx.59.2024.02.12.02.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 02:37:35 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 12 Feb 2024 11:37:30 +0100
Subject: [PATCH 1/5] dt-bindings: display/msm/gmu: Document Adreno 750 GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240212-topic-sm8650-gpu-v1-1-708a40b747b5@linaro.org>
References: <20240212-topic-sm8650-gpu-v1-0-708a40b747b5@linaro.org>
In-Reply-To: <20240212-topic-sm8650-gpu-v1-0-708a40b747b5@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=744;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FwMqAyDAq3YcXix/6fFCYmJYb0SJdgOCR00xM3jvDsc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlyfTrTXGmf3HwuMGzIm+Mm1tqPdnV5l3IFqVvPZ9e
 wmETjgqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZcn06wAKCRB33NvayMhJ0eu0EA
 CX7qWcam36CvfogCtEERjT8ajhoqfXUf9hOPUAhARt7k4Q29826znXQ63uEDXn9cGy6RrMlht8Xevl
 UiTeJ1+L5aUfB2mE1hpLiSkVwPAF4rCJYA4OHEjoTbXa9ji7z7cMkFlDkBqy5lCu6nJdvsCiNYzu/J
 O52MmpzVna4jSNoFTZ+X+K710+sqz/+Ng8/1Z46tCGMmUVMKu5Nxh7A3ENyMzf/Q/Y/FmgCUzId1JA
 fTU704/7+bgoivpOGobgXpj/P87OLgIz//Ty40crECbwu6WrB3T4V2dA5EfLyE5vdt+YLY/rr7Ex27
 gSxv8w7sO+/BhQrTR4+icuhRHxtXXhZjWOScBCLk/H3DCI/U1NUAcRzfKlsIzA9EqotFQnQHEPbYgn
 UVwXqq58Njpxp0nlw46+rYnwJgfai6NdvkLnzy0cwLlC+e63XLCYgW9jkH4t0leHzEx21M9gx1+OZj
 Ja1fayHqF7MJvyi+84sshdrTfsyCggYfkMdfQRoi++9ZFwzEmgIYbHOQx7ZbNsUGqdfsey+Be40K5A
 beGX1nx/cAFipmueayXMcS7PpumWczP/6hta0WiHJlkg5rZgU7O6JeHK3IpsdI/sspEF0NLfOHJv9/
 Hs1Y3Kb+sSCQflgoJ82wyit6O2Nd5BTA+GGNgU45OiDNWOcUDkcUZ/Gq6K8w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Adreno 750 GMU found on the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index 4e1c25b42908..b3837368a260 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -224,6 +224,7 @@ allOf:
             enum:
               - qcom,adreno-gmu-730.1
               - qcom,adreno-gmu-740.1
+              - qcom,adreno-gmu-750.1
     then:
       properties:
         reg:

-- 
2.34.1


