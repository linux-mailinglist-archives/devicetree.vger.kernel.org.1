Return-Path: <devicetree+bounces-24197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3CB80E57F
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F81F1F2140A
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21B8818B0B;
	Tue, 12 Dec 2023 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cjQ0rCFn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 964D2123
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 00:08:28 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3333a3a599fso3376680f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 00:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702368507; x=1702973307; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZhyn0SzD0LcNzzKrk+BOSL06IGkQV09rjNYI+C4fE8=;
        b=cjQ0rCFnJc0NqcPXJgwVOctlVsrUCNurASfPbfGhfyGmqZIUDOWScYn8HrYWNSiDAo
         oTMuDPfqxMwzbZ/PiW3hzWsOeuELlBr6JiGoNTvgIP9d87JZlzZ3UpFpF1QIuctlS1RO
         C/L2AdNM3beVbq01fRB1Hti3PNECQ8mMyAOHTwYPs6t5v4w5PiM65LH/PUqQPgCAMXPy
         EcpaoFqSq/CMZvhXy9rN+Q4rGc8VbQNngKjjAubCNUQEqDS5IIdTMpo070kRNu4zczEB
         fjTQYyDGePWKoZGapRjiMUCLUD6SGpESQa8p7jQovGe/sFc3lCsWVX8x9y3ZDc2j6xOk
         6BFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702368507; x=1702973307;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cZhyn0SzD0LcNzzKrk+BOSL06IGkQV09rjNYI+C4fE8=;
        b=INzyKcjwm9zEWMYZhlMnQPAUFBb52Y7cYWw88O8/tRmjNrru3rOa4MdOblOqmC07Sj
         F3nIOTDviRCrq+/jdtshQn0fsG3TCNfkv+KS8rwFSib9MFEUgwteD2Glr9IKPMic8wLg
         ei9MktAlKVmd1tvrJCX0AoHvv0wNKpVciONlItJFTlTslFVZVasZBDrvPKkYTb0t6dQZ
         hjyf3RkzrZw3dUWPxQ3m82wDSbJLD5GVpjMCgJKRHSUm2FpPjCGbO0oCNDZ8KwyVLm08
         iLTk5+w+QmrER3elZCHLLezTWCCiHAGh7c3p+/4jL3l4KbY5nVr0AEZRyZY5Zem7jm09
         kesQ==
X-Gm-Message-State: AOJu0YziGsepczWb/peg0z/XAC6yhvFb+ag/eltSr6ToHl9My7hX7ij/
	gX0pUuxvz6wzCKbg5jChHzcqEQ==
X-Google-Smtp-Source: AGHT+IGz12J2/2+iCyl2jRF/v/VIA+qJML+76a5pagXs43wcMh0WbIU9hT456iIyx3bddFwB0UyUxQ==
X-Received: by 2002:a05:600c:22ce:b0:40b:5e4a:235e with SMTP id 14-20020a05600c22ce00b0040b5e4a235emr2833546wmg.96.1702368506789;
        Tue, 12 Dec 2023 00:08:26 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c500a00b004094e565e71sm15609355wmr.23.2023.12.12.00.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 00:08:26 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 12 Dec 2023 09:08:20 +0100
Subject: [PATCH 2/2] ASoC: qcom: sc8280xp: Add support for SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231212-topic-sm8650-upstream-snd-card-v1-2-fbfc38471204@linaro.org>
References: <20231212-topic-sm8650-upstream-snd-card-v1-0-fbfc38471204@linaro.org>
In-Reply-To: <20231212-topic-sm8650-upstream-snd-card-v1-0-fbfc38471204@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=692;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=l7XyXt1fVLon65HN4wKj5YMCqYBmKvyCyW+bCEtblb0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBleBT3ET/ZnxriBIRSuvP6q36fZX+QOaiXY0dLH3wf
 U9meb3iJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZXgU9wAKCRB33NvayMhJ0Z78D/
 9ox3qcrRO0/cavRBNM1SPlK1ldKE6CflPnmNaO7iYNBtjmYea+3SmSA8oAzgL+jeWa55DvPM3Xknhx
 wcDT6XaGPv6FPHk68s4uibKINVsNbw3vejyudOlG2PRWgRRXRgtirEIiUCjmG5KEFwLHnGDG2ogzOj
 b4wsgIe+U+GfMyieOn9cWVHgQocuRmAaW171eJO6prYbJk4FkwNdS94ZFCxQ+OhjobkxIZMYVOynmZ
 +8Pc2hgtIZsfJdUHO2EWmxXpwoegsf0sc5x5MeGo06jF45LUIm8LWVaLWjUwhxqwA2T8A/NOlVhIWv
 W8W5bVW/f+0s1mjh1K4wnvbP80LoTbrwPZmM6CkEbPeD7Tb+YdSXRL8bVFXNCO9/umB1MIRBYGCpUV
 ISPSdrparuPJw3cLVrErFuwx4BwTA5zxkypBAnmQpKyrOv+Yp1vb1ZiOwT1bltmAuTtiCrFpJjL/RW
 FCX2bd9EdQ7Ca66gy5ys5MYmbqj3eogNutZnKJXkn+gg6bxi8PGy8o6aOcQr9a2vLPEe53jQ04KKTp
 Jog5Z0XIAL+mC+A4s4dpD96IM8F/kDJDHYojbP9CuLSLLEdEyEl9WNfseM+2uP6+FlCA6r6THzxix7
 yd0zI1a0yci7dheMpsgEZojCFOz/+HgI5fZmxqHKC7XhwWX7TJZ2XdnQ4Aew==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add compatibles for sound card on Qualcomm SM8650 boards.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 sound/soc/qcom/sc8280xp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
index 1e8f9452cd28..494f284875d2 100644
--- a/sound/soc/qcom/sc8280xp.c
+++ b/sound/soc/qcom/sc8280xp.c
@@ -170,6 +170,7 @@ static const struct of_device_id snd_sc8280xp_dt_match[] = {
 	{.compatible = "qcom,sc8280xp-sndcard", "sc8280xp"},
 	{.compatible = "qcom,sm8450-sndcard", "sm8450"},
 	{.compatible = "qcom,sm8550-sndcard", "sm8550"},
+	{.compatible = "qcom,sm8650-sndcard", "sm8650"},
 	{}
 };
 

-- 
2.34.1


