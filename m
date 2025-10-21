Return-Path: <devicetree+bounces-229389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BB39ABF6E5D
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8AAE85062F4
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D52339B53;
	Tue, 21 Oct 2025 13:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mHxZknXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E6A338937
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761054666; cv=none; b=dvq1mFoncLojSpAmVR534WEGytLS1SPwkYKCvudlOGHijzEbuS1lnwIOLS27zG8J3jLz1gIxKJsEbEg4WnB52OxOzEcegPopnqbhm6z+moix3W87vokPiXkWnVVRWeuWmQW20bLIVG4VJ8a2GKrUZ9IfOiOC4cSsehR1oDETH6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761054666; c=relaxed/simple;
	bh=4qWmFWV6usDb2WlbnIA9nnwCzxgqGMt4OeZOHW/cja0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S2bvpzsGSAwCkyqkEQjYVdt2hg3MmHwmtKtXP21na8X0KmLiE1bImNUl2RGQDBH/Zs44kc0AhIH8ru5+iJHXAxCyYjjV8JzflmY7efAmz/HIzKixjz54/mX77q2XOuMt7D5vem2qFQhLY4rHEP9kmtQAUhUnmzDKoqEZGiLbkpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mHxZknXh; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so4169324f8f.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761054662; x=1761659462; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qIKAmk/sr3iPYuDq3IopdvjJm8cBIcm5+Vkp1UdclNE=;
        b=mHxZknXhD+VXL+qgE1NmR+FeUJHsGytOqC7oblPGXddMq95YJD6BG8YlH8QBYnWc++
         sUXxo2gJPLjKKJkJFFPbTUTjHAS6ZtVP+3SarVNnTtV6OFuN9dViTyYGvs/lWbNE1yXw
         CgmQ+m8JMpovU2CCggxcNuN3Ojo1pCafxnpZs6fTdA0JZB/8O4lIMIKi6j5V3PUlhPEV
         PhE+gsJfTrlU1gNX/ZV+tI/D0PVLKidk0IXBoo7ApRuFliGin7aeAmjpRCXGMnYw23fI
         w6QtTJJ8YrnGf5D03VossnzJ0+aqh0DXuhY/3QJZmmRPQUK2oADFQKXEG9MPblD1k/Bu
         hQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761054662; x=1761659462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qIKAmk/sr3iPYuDq3IopdvjJm8cBIcm5+Vkp1UdclNE=;
        b=i9RL+luXC2Qc+Y7W9462QtATWRkiBI8rWpKylftbSZoE06facWXZXO2GwpD1yWxwIT
         ct1OaHhfPG2tjwCJowI4BNuFjWoZ/Po6xo4J+ApOqHMY+l7GMPCLe0x7QNvQ2sCTIPfO
         xWC4Ky6DqNDn0/JXhi3TlIsgWzbq/hcP4m9EXHedl5KJvjd8jgbrvR/7HG/B08KCFukQ
         71iAws87LukZ+mydGElRpNuwzWsMDdXl62/bqoTpjv9fA0fRd86x46AgoVB0RhaNv0RC
         KiLIERfxMNbZXKj1prWtrQ+iNBgRDmFu002nN1qT5lJLJtvlnvnYjbNbmrvOq+SDzwH8
         u6aw==
X-Forwarded-Encrypted: i=1; AJvYcCUR0CaoWuJJ/Hq4jXtcCW9x/zBjfHMxeZBLpz9WuD19dsIsv9Av1abdrcFT0wWR/P8L8UY/9aT4C4ZR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8UMUCMMYUd5PUW3kiiOGnELs/eu9XL1pHpRtOueZwy8jkjDcZ
	00a3FzX4RauUbQqXtC3jQ3F0atBO0QDuq6CrrYlIZunQ1PDdvPgyU20j/L7qjgeAxYs=
X-Gm-Gg: ASbGncuA/50bGxyE7xNVBx09miBYlrfeTLhbtFM5oQBmnjMgchoMMn+KdegbR4u8FjH
	ePYOwEW30mM7D66gehrdoIgP22hsBoOUZfLQarhbdUj/x/5bJGB7uWwKhyC/kFLYPn44Y2nxYAV
	8VrOes+M9e7+isQzsYvRxkB4i/7DNlZQaRImunlz9/WXK4SeT7ErnFxRCGCjnz33RaIbM64ulni
	Qnb0omx4lHfwJT7BgwmiKtshW491e9stpoYAq83KP9qQWGQLWAqNZVAte0fW97VYDQa6MzI92qo
	lqGEYazl0EEalRuC81c7C2sHiIz3v3w4PTC2JNQRbMXL1L0IVF/Y4EJAws/E73w5wpswn7at4U/
	q0lOz2craFnXWCSHh9ZNqAnCMxueXY7yCOKpzMoXlTGykx9X9WXu364FriBjEW+sR48yJIFxHzQ
	==
X-Google-Smtp-Source: AGHT+IHNP+f8E91/1pOZh8cHUEUpGtLiB8NKRXERNLSH594KfBNTZxiqvP7VkzGge4eOg5d1BGU9/w==
X-Received: by 2002:a5d:5d0a:0:b0:3e7:6104:35a8 with SMTP id ffacd0b85a97d-42704d98e81mr11781943f8f.35.1761054661868;
        Tue, 21 Oct 2025 06:51:01 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00b97f8sm20124378f8f.36.2025.10.21.06.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 06:51:01 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 21 Oct 2025 16:50:44 +0300
Subject: [PATCH RFC 1/3] ASoC: dt-bindings: qcom,sm8250: Add Dell XPS13
 9345 sound card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-dell-xps13-9345-enable-audio-v1-1-6f3f6bbd977b@linaro.org>
References: <20251021-dell-xps13-9345-enable-audio-v1-0-6f3f6bbd977b@linaro.org>
In-Reply-To: <20251021-dell-xps13-9345-enable-audio-v1-0-6f3f6bbd977b@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1017; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=4qWmFWV6usDb2WlbnIA9nnwCzxgqGMt4OeZOHW/cja0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo94++xan16D0H5OsxYqfa71JS3sbzr6bLQ2e+v
 api1hS//j+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaPePvgAKCRAbX0TJAJUV
 VgQ9D/0aM9A9YNTlPu4PveLAsEJG2wE5g3OTHxFvLCruh4g0O8emfw976SwMNA5xbFWxJl+2271
 Rpmese605PkKOkEkUhlmjU5QR4Flp/jV51vE3O4sZAqqzO05uUtZgDTfNADiVWGhsYwfLAmBgYx
 J1tIf5bimXnX/OnyvA+7V9oP/fRBlb/JtK0aBv2Ons2C9fSXY9lTL65KKPrJsCfKnl4NrKO0S7T
 vAZs+0LsQzC7UxqDU6E2y4Lczmmt9Jc89PlAK0By7kK0QEPcQ2rWkKypn5Y5zIMoS9yCwz4Ei1o
 gTUSj6rBmnl4gL+ieubpCz/k5IWPrH5lhOgLuVe5+uVtqtz5Ls2UjHlzUNmkJl6bSSSNUTK5YBa
 c1PbdfvUAezF92c80t1BTN948AOlHRsmtCmLBzh6Y7ZevmyO3y6YjB8z1+OUzBaDDtVep8RAaZt
 T17FQNkASovjBqbzR29N1aO0ofV2APkbiDbrKpNEmmEGl1bSbMcf+21Ru8UhIDUbn9llqQFCwDq
 QCKRypfhTKbX+MJnCw0XdGtlrpTIYnNigf4hwnTwu34pUIHisio/o+g/GAi3LnvaDvDttJRW3K/
 Fa26D6cjcuv+xWW6BTa+Da5ly1R7s8P9P8rcXBH0+e4yo7Fzoa6XTCBKDqDlOZ2K4N0C9TZ5Xy/
 m1xfF7sg+a24oBg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Dell XPS13 9345 maps the speakers and tweeters starting from
the right side instead of left, which means we need to handle it
differently then the rest of the X Elite platforms.

So document its new compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 868acc077046596120ea7f427e802282ed03c853..20566224d2e42574ab96f93c11924bbeae22f0bc 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -29,6 +29,7 @@ properties:
               - qcom,sm8750-sndcard
           - const: qcom,sm8450-sndcard
       - enum:
+          - dell,xps13-9345-sndcard
           - fairphone,fp4-sndcard
           - fairphone,fp5-sndcard
           - qcom,apq8096-sndcard

-- 
2.48.1


