Return-Path: <devicetree+bounces-259809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IWQOp+MeGmqqwEAu9opvQ
	(envelope-from <devicetree+bounces-259809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:59:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F6B9249A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29A6930490F9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1C433B6E7;
	Tue, 27 Jan 2026 09:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H4iSseZy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAA633A010
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769507870; cv=none; b=GeCbNOMaFjmC/Fa734qz0GvccV+UuWntD+z1R6rqPXfFkR+1i8Yre3Jd15pydAv5kePk4nKKmw5eILv8rUpnb/7085GLdVTUPtIphUNvG1VOF8P+e2ayWF7+r08Skm1IszM2witCQ5/HiCgvyq53WhnbvA4wM5XMKhYOZs4cwNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769507870; c=relaxed/simple;
	bh=R2eSMSfkF1CrXn+gdldnHlOy1u5nKEpnHBlABgFJnG4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uueWuTnejN8pqROhb/UsDQBikB4JSW0MeZAVVfhPl9egUSOp1hxNDuIh9S8jl9akF5T3NZ+49c3esMI3XNdWPvNlgOgQW6DCdco9uUvFPOMm47ojJfn6sDKgeEGmU1knqn/8Dva68lZYX/PDbVlhigrPTCYZS7oAKZ4EyvQt69M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H4iSseZy; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4801bc32725so42450255e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769507865; x=1770112665; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cb9V9b2ORNjXPVcwOKQNOEMmMPtYl7t/ceGkGIE011E=;
        b=H4iSseZyy1Hq1WnpO3S0m0azf7wKXxQeSLGwbiMu7ekOXJMIHfibF5lKbdZBekL2UW
         fVbRK5sC5VrTRPZ4emLoBlrIOKgpoQnPZ+uxLr14POPmEPb0k2sTNei8azQs6tDZMd35
         pGOpOWfrvd/BRgSeTYMQVMaVTzKhwjVTbZU7syCj5CIy041LlGaSArUNsKxqG7Sh8Gwg
         jRzvdbcAjbINndOZLLf/8ieEYDUNCJJbOPRwt0ER260Y8llvoG5f03zwf+LJ3yrvX5Ks
         Fow1Wbr8dBFl1rO9pUPsEwVBcw890SY1QXno8RRo7sJpzLnjTa6Y1Aa2CaEFfwYeUaRR
         ZYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769507865; x=1770112665;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cb9V9b2ORNjXPVcwOKQNOEMmMPtYl7t/ceGkGIE011E=;
        b=IDbG6BeITitLp70liIrEld82oSlnHqvnITxCBvhumhFQY+5Jk3/T14qgObg3pzItR+
         p0cbR47rh4AvAy+BMgcCV7Di/NfK6wuzdT7M2sFjZadMX7XZoTawEwVFNS4ikFm1JRg8
         ozbLlB/LMBc3NQJsA7EbGgL7gQQ844vG1ywYQoW/RNhbwzuqeRow8O7cHJWtK1qYxDYH
         AiobUnFcdtgScEDK6JIlROHJ8Bn/R63Qv7Yaa3a8j24wiM0njCdpXEyzWGSyr0kZwa6W
         8qg739jIhluTe5WRqkqXVL0XuIVqhAQKqv7sv8aW2bnMioXxDGZM7ITpTmtGN7FY64lZ
         Kwgg==
X-Gm-Message-State: AOJu0YzT0JFM2w9bmL1AyxAkO1bCZotEjogTvReEB2Owl0q07C5p1DfF
	Q4wqlXHuS1B3iuX/NfXIwQm9DqLCyRd6smYzgLSseHsEB2vF0DjlAXY0eR83C204Zvg=
X-Gm-Gg: AZuq6aJ/IdR0iUGEYzkK4oe6Aa5uUkaHk0zUnFDjQRSvj14Z6I5V11XCizrIsqT97G8
	qIArvZKT4ZoRJJN0qY2wdipxgxIQvFa0R6LrWcQ2+YafpGmfrhR+liqiJZdc6cchhis7VQSEOgy
	TVFGLhhwJNjqroppQddqWNz3R9DBa379bZSkI6SUuZKDbPSvRApQwmLZVtL6K+vbpvb6M7LS/ud
	Lh7tZi6MCMN+L4nIuBQ+kJe9pBlZ/CNCeBmTT3UP5D//sTJQvSNhEV8dOd3vHc/eK6rj1cGCWRO
	XEeaoyNTh9qafrUmIfKhIe7AEITXGaj2H09Ox21idb6Og3E1FgqOVCI7caya/eOyZxs2xJ97N6z
	vrDxHgd3paQhYrrSiAwVTukYHeiENqefocM93AxPa9xCw10DdsRqhyzJiK8eRREaKEoImgabru6
	hfEj1mXLMkOtDL7vAB6fPuUi8KMAa9/N8=
X-Received: by 2002:a05:600c:3505:b0:47e:e952:86c9 with SMTP id 5b1f17b1804b1-48069b8bd79mr13663395e9.0.1769507865414;
        Tue, 27 Jan 2026 01:57:45 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066bf93cesm49056225e9.9.2026.01.27.01.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 01:57:45 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 27 Jan 2026 10:57:30 +0100
Subject: [PATCH v2 3/7] arm64: defconfig: enable pci-pwrctrl-upd720201 as
 module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-3-c55ec1b5d8bf@linaro.org>
References: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
In-Reply-To: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-usb@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-pci@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=724;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=R2eSMSfkF1CrXn+gdldnHlOy1u5nKEpnHBlABgFJnG4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpeIwSWwYfTlxDUpjTB45rdckHrd/ghXsMVEfoz3KA
 UJIdDDOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaXiMEgAKCRB33NvayMhJ0XFfD/
 0ebA/1uCI8aJQIY1G5W2HlDeP9+sA6gxCy85Fvlqu2QKR3v6HVdjmWewHNw7QmUyO5DavQTVVHKnhe
 nrwTvnHhShHIokOkxqLidW1RgWFFBXuAKNT3Py33p6UIFRFdUUqZnP4h67dezuWMkU20ldSyRmhfCc
 nYklx+uuwFhZKhZWI6LAg0wmTWUqj9eyvd2M88Eovk5uVP5baUWiIjMmNYLYpLKtk+TR5l47+v5i74
 GA6Fs36+RrakZzYXCfg5BGrNVTBVPkPmYAQ4h6BYsMEgisj8zFWTJIhz6RUMuOCLC11kC+BQoiezNL
 1nmMvEDYFbIOttmDi7qohh0aD/vMiu6vvXFhnAHok8qXpvygBD1FXmAV2E7TX9LzS6l8OsmzTuFmpb
 fuHfRHWFiEN3vhqJMfaJYwRJdcQfIvYttQKWKaqrNelljs1UZewRIPMynslHWhKNASwWImTkjiu8aO
 zIRpcbOaAj6V3s+wB9czZuXEudHIt0uM/CsIzy/d7Ej/NlbG/VVASaHlNZF8S0MPmQbAQ0oquUFqkJ
 TetXbupkFi6TAHpLJLs/1BruV5sTO4OB60LqBoXcsFWySSc5VASS5FahQbjY8MOqelxfeZJkYW7LPw
 XOqevKwZKEpZnRxhBsxBiI5mVfSTc4cHYZick8NejQ2VcmO0RF3o27j17KnQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259809-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linuxfoundation.org,glider.be,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 99F6B9249A
X-Rspamd-Action: no action

Enable the Renesas UPD720201 power control driver module since
this USB3 controller can be found on the Ayaneo Pocket S2 gaming
console.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 45288ec9eaf7..67c642821d35 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -250,6 +250,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_ENDPOINT=y
 CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
+CONFIG_PCI_PWRCTRL_UPD720201=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y

-- 
2.34.1


