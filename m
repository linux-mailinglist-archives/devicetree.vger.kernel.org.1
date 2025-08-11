Return-Path: <devicetree+bounces-203286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0628AB20AD9
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7566E176026
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61EE321019C;
	Mon, 11 Aug 2025 13:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LAq/Dd1q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911D61F583D
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 13:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754920456; cv=none; b=imgi2lBjJt2ybIoEHuWjV8tjGkJW/fMmz6cfhiFLhTMY2wzNNOcwIj134GDejL0b0XK0h3CVRPLBsnPrwjt33bwVRErCdJKUN/ViazhlBHqlEC0XPzChCfL7zKO90/gh66MWXQFPnqBb9OQb+I8ob/qVKCgnW18/4rVUgT+HQRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754920456; c=relaxed/simple;
	bh=D32owlGLOdlHqubNLaI9nkgZDRqlRnVWNbolwyy8jW4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AJPjzs5RJtFOvkNrqtLab+k+TpyWr2LbAzEeIeHpf6yp31i+BwzbRIfR6+Jczh/VjrXEDC883tFNpVlwU+N6Mx3y/5rj1p8dq7EHo6i7pIOPer+QPgeKMz/BOhdTM4wif/zzJ1dx9VqU7Y33gna//0ahA4BXx6Nkbvy9mrfpKHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LAq/Dd1q; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-af940717331so58855466b.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754920453; x=1755525253; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X4E1w+hIQ4kce+iEv51gMOFHtMhwy1x6OT83N+mRbe4=;
        b=LAq/Dd1qi2xQtn7ftL9p/dtNdmzDr2IxZheU5tlQswqWtwk/SU/AI15qW7jtmr5K+A
         6gvDnjCXnFmk8yqxVDX9v5bcIV9r+YEwViwWjimD/DO7QrYERMtImFULyGIkrmW2jiXG
         l7gvYZloCED6lMY3uptAMmIH6Z6ATVZZ4pbsUQDSdRvr91azAx7Ns5xTcRXmaACz12qF
         pp1h4OhFV80s8/RZrsWrwqUzMnFWo3GFguXs8GKXJbdr0JsvWuA7Fmn6P+qJtFrOCwwn
         mIHiPjkHNcx/iTkOivTK5XVDWC+EIjMMZpUiQAQfPTh59m0lfC17vw66DhZOchMVEXPC
         OALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754920453; x=1755525253;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X4E1w+hIQ4kce+iEv51gMOFHtMhwy1x6OT83N+mRbe4=;
        b=VqXfS+5h99Y/hmWBccZJLUT/3Y9bUOcI+fIlQDlAdFd87ofqi9QmVhF2hG/URVwAh7
         bdIbXZCEM+2XjHd7nDOS3rMRlprYL6ORP0WvK9wEi9GdQpYNEs/zMInt5wxnNv3ryGiB
         3hTPkire5vok59UWnKuWa/60Nf71ZspfYyFH9d2GO03+nfviUEsLHuIfuos71HmTEBuH
         6SRFtw5843H5ITX5LfSzBR2tAh1I1GCr6OO9+0e8BtkBsQrqkUojTYe5pLuAN+58DM26
         PgUaFTziw9lUZY+8ipX2ir0nDmGP7BgMZ14ep0kmhC3ok8fmbsBEfaRgkorz/scO//uK
         ECMA==
X-Forwarded-Encrypted: i=1; AJvYcCWyk+E7Tb6Fat4R1dgqzzgI63j3aTG/gkpgHV/95BNOXxMXdbE7+wf+B6i08bZHtD7b38cblEx7wleT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl1NI5MbdDP/wxKlyUF/nbTcq+JdFisKYSrY00NVrU4GcwWdy1
	0Jwu+poKQ08nPrkRg/VI9X6chD4B4mslNGZyMZMyxsoyUcRSGnFWNQLbmdvGFt7cT7g=
X-Gm-Gg: ASbGncuXY6K8ZIgaC5PYqP9R5fh8gVnDvBfXuwIdKBgiY6k2iYgiOQBlxhN5DHcBmrI
	82nsiodS9Wct51bv1jvSW5sCYCH2Uo4YvKYhLnVoM2+rxKPyd/hS/BPFbE4ketSGMLPNodUhAxC
	IyMyhN/L0XRY5IQQAHy7uRzGmV85w7GrHXdqo9XOaa1xXtHQ46B4XZ7qri9FH+najpuCSyKQ5rK
	AIZa07LUS2lolU0QTpLyvQForEuG0VNMUWhHhjru0PCTttzdoG0SzP0ePzNYE8nAnsKAJMQHe++
	+KWZ3EXlVYFsuxTY6mw/P3YGBAwYmwKvl8W2hwHjKtMLIeLHkyPaaIwAlLvC7w8WGLmuTDcJRVn
	+3DCckZxhqtIKLGJit7kp+ZCQQOlQkt0vwnwPFz4uHe62PQrlKw==
X-Google-Smtp-Source: AGHT+IHeQhtn+GwAGxZiHen5xqVtV0k6a2xfnhqG8tq/SVPZOQOhdgU7YDXqOB3wSUZppQOTSjZ/QQ==
X-Received: by 2002:a17:906:c114:b0:ae0:bb1a:8c4 with SMTP id a640c23a62f3a-af9deaae559mr346505666b.1.1754920452931;
        Mon, 11 Aug 2025 06:54:12 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af986a477c4sm1179029866b.56.2025.08.11.06.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 06:54:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND 0/2] dt-bindings: Drop 'db' suffix duplicating
 dtschema
Date: Mon, 11 Aug 2025 15:54:02 +0200
Message-Id: <20250811-dt-bindings-db-v1-0-457301523bb5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPr1mWgC/3WNMQvCMBCF/0q52ZNrJFacHOzqoKN0SJOzPSiJJ
 KUopf/dkN3xe4/3vRUSR+EE52qFyIskCT5DvavAjsYPjOIygyKl6agadDP24p34IaHr8XBiY4i
 0tY4gj96RX/Ipwifc20d7u0KX81HSHOK3/Cx1af8plxoJnbYNNcrYnvkyiTcx7EMcoNu27Qekh
 Yi0tQAAAA==
X-Change-ID: 20250627-dt-bindings-db-38eaa005ccd0
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=812;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=D32owlGLOdlHqubNLaI9nkgZDRqlRnVWNbolwyy8jW4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBomfYAbFp5nM0BuZDzZfSz7NhlghSfON8hIYWfU
 2/PI5axk4SJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaJn2AAAKCRDBN2bmhouD
 171gD/9jmTBJd9weX4PdgWSBrNoi+OhK7XHL0dkfzxWr3gPih+Y1CUjQ92GvArexs7OSIVhb4um
 uOseVt8Dbup/XMM/MGDC1PpzpV8p8XdF4UAveq0pNbCcwYY+v2XYNGxnwnL4nr2wVEz4bperF8u
 dXljljLZlxUmioRkuVKfQKFeqFOtxTReuj30Aa1L9Jg/AM2lHWl/AmseQLt3bI04m81KnQk+6ZF
 /A+5PtOtF8JDNhBb2n9HXWyKslYnHGcIyYrxP5+zENqV+23fWNdCmQVV/fWzsxtgt89k8g5H6te
 uSi9CXUxJ3l+22rW4UIfWcMXIXV+mlAU/GpP8qc5TVPjGU77+0bOFKAR0MiClggadETQk6wUk9s
 e99hsxBC137+fpYgSjm1gZhF2MIA9Rr/f1DyY6NRlpJVod55+/W7eQis1d6OwEden9HaoGSqqIR
 gKnpWi6HkStV7dKm39wIzBWqty3KqqzAoFy+kQCGtY1A7Egt0bEEsRjlmyN7o2GDRdAAEH+FWTq
 r7/nf+NA90ybfUzoI/QgozgEPiLCljf+/hRtID3Xp+1rHHpIOhUDJRb5MdW2JW2TFpgx7aRDW7e
 5TiVtDmDj+sElyEwNNXEVSzWPxAIgbI6HY1IsRvzCTgAw01ZXRmBAhjO4Rt8MGOEF1hGglmN/VS
 7xnWoAozbu5jkoA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Resending because all dependencies are merged.

Please take individual patches via respective subsystems (phy, leds).

Previously:
- Link to v1: https://lore.kernel.org/r/20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org

Best regards,
Krzysztof

---
Krzysztof Kozlowski (2):
      dt-bindings: leds: issi,is31fl319x: Drop 'db' suffix duplicating dtschema
      dt-bindings: phy: fsl,imx8mq-usb: Drop 'db' suffix duplicating dtschema

 Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml   | 1 -
 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 1 -
 2 files changed, 2 deletions(-)
---
base-commit: b1549501188cc9eba732c25b033df7a53ccc341f
change-id: 20250627-dt-bindings-db-38eaa005ccd0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


