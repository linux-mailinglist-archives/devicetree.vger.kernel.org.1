Return-Path: <devicetree+bounces-26499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 298E3816B0A
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 11:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA0FF283339
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 10:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC90C14AAF;
	Mon, 18 Dec 2023 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rYo5xx4A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B55814F67
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 10:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3365f1326e4so1514825f8f.1
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 02:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702895189; x=1703499989; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKdUP1nh0OG3QlZNgtTdzYD4n/GWKZ63AtyvI5eXs98=;
        b=rYo5xx4AmR4ifAxcek5H1Bb0l9kbay0/PIXebT+SnwBov+08qbbJ4pHKfY4DuyYzQ2
         9n0/sAL6NrJP26Jihryv3bcYCkEle+GDxqlceCWboI8Q75EqIsba/tDx0ov79q1tLdsT
         RD8vslFLSdd+jKsHLWbAFOwyrTzTIV8tGVeQIKHGcGFbbFbrSPy68uI72bT52D89+Bfl
         TVbZSTk/F6FfW3KsH8qfdFMPLABzKtrWXPdqhoYKeZp1fbcI3fDsuXYZ4efHRza5A/S2
         bm+xw9iaskLHR1kOTJy4kcP0xdixPQEKSQE0D4aozjlEOzdSaNLJvXlfJ44w2p+CkBG8
         op7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702895189; x=1703499989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AKdUP1nh0OG3QlZNgtTdzYD4n/GWKZ63AtyvI5eXs98=;
        b=kCoR8M/DDsCnMPq/NP7YeBXX7yDUXJQu9q0z7AHO8sLqU60oHziqx5hW+nxBVybYas
         iuBgOQIt+e8XkYo6CF8USTlMml6z/6SUCVjaVRw9XNs9C0I78Ufjxp9CnQXjx0NNJyaO
         t5X2EA0bC91kXKee5kjhsGOo38Hec1CQcPwdSMk7g/43BbhZhv8k9iIPbTWcn2gXVwXw
         vJGC4jzPle5hR7AAbTJBuGq4hgDq6TmHiP/00OVrWZUtkGzQgqty5uf50SysL3RW3cpR
         V5pPTEyvdIAXdXjOrP+2f6DRt8tr+5/EC9KXshh0K2AAQqAJ115HjwVRrWyP25gMRcWj
         plZA==
X-Gm-Message-State: AOJu0YxbEYbFOARAU87sANNRMR1en4ThcESL960ve8vieFJ6pW5YlnCS
	oNlnUHdeCzQFzXPR3xppUe4L8A==
X-Google-Smtp-Source: AGHT+IEK+vOLVPj+gSBhk/hKv8smsW1vKxGIeG9soFthZY0uazs+3Hv47xCHTQX8Ql9Muf9U9l8f1g==
X-Received: by 2002:a5d:58e1:0:b0:336:431c:8db7 with SMTP id f1-20020a5d58e1000000b00336431c8db7mr4109113wrd.47.1702895189264;
        Mon, 18 Dec 2023 02:26:29 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id o9-20020a5d62c9000000b003364aa5cc13sm11365333wrv.1.2023.12.18.02.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 02:26:28 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 18 Dec 2023 11:26:25 +0100
Subject: [PATCH 2/2] arm64: defconfig: enable WCD939x USBSS driver as
 module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231218-topic-sm8650-upstream-altmode-v1-2-7900660693cf@linaro.org>
References: <20231218-topic-sm8650-upstream-altmode-v1-0-7900660693cf@linaro.org>
In-Reply-To: <20231218-topic-sm8650-upstream-altmode-v1-0-7900660693cf@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=684;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=VmNuAmZkD7FpY6bewTnP4V/44GbGai75MKliuJO6u5w=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlgB5RimQtAs9PeGRtiSAGBP1AMuyy5B3ombLnCBnF
 Z3moa8SJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZYAeUQAKCRB33NvayMhJ0WxzD/
 0YsYDmmoMF3Iae0OPlvRrSJaU9e/uoitz3urGosVlEIoYk1nv8+nrDpaumY//Y5wo5uj+ASYQjBo5A
 qa7RY2yvR3MneZPK3l9z4/7GBsM3ZErAPwwVIIgj/43DSRlhj5x9d+bG4s/IcjqfYbkgq7JlhIfXfm
 LYbbgtsv6sa997P+RQl8cB503BFyRvjYUb8dKADykfb3jsmRclWwV9w7Mf9rOLY0znjXsQyS954FaF
 Md85WGvgAiwkiKBObBYGsQOCGxyMQ5jfsJlDSkUvIyYk+stlo71ACCRgD91xMvFY9JzjPPjEneu4f/
 3jfldyA6c/LXheGz+ENQLPEaNeO3uyvQuheysITInQf2Uja2NBsW8fXDuKtpT20d92Z+0RZQRULOj/
 Gu6zBBnSsyt3ObWTzYyteIgNpN4jDvIfMDllBPkX8v7M4VjA46jJgWMOHQ0md5/Etb+luPJK09SgDa
 +dH2rzfG9Vm0ahrjnI9zUX1GTv0E2jRDhHcixGRo9VmVExCq7PMuJhkNW+U5XynzhnY2FbkdsEd++i
 Tcw2qglR8OP7sUGJZKriobfotvtPySTZN0or735C2Cmun5nRAzu+YJ9r6y2OmL8JvJr8y4ntWIqqP7
 g1t72CW/bWL7vKogprF52MORtnzsC0EaMpF2HGWqAOSMj8sgPGQgyjosYt2w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Enable the Qualcomm WCD939x USBSS Type-C mux as module as
is now used on the SM8650 QRD platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e67a4849b91..c9ba75f1b248 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1067,6 +1067,7 @@ CONFIG_TYPEC_QCOM_PMIC=m
 CONFIG_TYPEC_UCSI=m
 CONFIG_TYPEC_MUX_FSA4480=m
 CONFIG_TYPEC_MUX_NB7VPQ904M=m
+CONFIG_TYPEC_MUX_WCD939X_USBSS=m
 CONFIG_UCSI_CCG=m
 CONFIG_TYPEC_MUX_GPIO_SBU=m
 CONFIG_TYPEC_DP_ALTMODE=m

-- 
2.34.1


