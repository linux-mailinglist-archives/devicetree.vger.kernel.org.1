Return-Path: <devicetree+bounces-263386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HGevGwMAhmlhJAQAu9opvQ
	(envelope-from <devicetree+bounces-263386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 15:51:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBD1FF39A
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 15:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75B453047DCB
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 14:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF002426D15;
	Fri,  6 Feb 2026 14:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VhefWbOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DB24266AE
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 14:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770389445; cv=none; b=gbGThUdjuTjnCj3qVzjHWOqc5/mZ9E+VlDmYqDj33DaIJu7M5pV3joinow6V7xMdbNTLMBnQ+IrsDMoDkbe1iOgotZwYoG8PjX79oGoCQtiNM2zap8ciBdEeqaYHgPVq8Ry4k58vvsuO00bksCQOWeqce3Tbt2NZI7tw1ZAmBeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770389445; c=relaxed/simple;
	bh=e8pzRN+C8ACMBcukIaiVpQzGH+euW8HR5vxtjI0f+Ds=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WLONLE+15bbVv3XeIcBkecusHyFZF+XT3iAGa1ME2aI5VHwjDOFFLTL7khbe8Icncbs5bWsmDwXeun0DkjetYrm9aCmijT8DYQ/l6so/BvA9C2FBIGdv2AuYscSHbdxM4nk6/fErQSGmWXGtECWdIjAQ0XuHbFxjknhswDVdU4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VhefWbOD; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso23804815e9.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 06:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770389444; x=1770994244; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+kM/Pl8XWTSE9o2j4VB9J5wVR5uzUXKqDz9HEirBDc=;
        b=VhefWbODRyqqs1/cbffLLzaIudy0cVbThRZ56gpEmDNuJ4EnRYwetQGK1oB9oxfJzZ
         06tgcv5HtjjeA7vGRnBGUboMnIrgDpaKDpJ6YKLEYP1wIAWoA7IfJqOfN3KNww9jxTOP
         7X23QkKu5jO+2hTPtSdkBZ3k8fJ4Ouf/UsSjcydSBRyyyEsCVTUFBREj6yC3YEMOEErg
         8JOOkOOP8X8cOZDEyee6NS/gI2WUJxRhLF5dhZpZ/ptGP9zsN0zGuHg2stz2IGl1vFBF
         X0DiptYjoh/AnG9RIl62lV8DmhZwTpYs1EDxie+v0m7AJfyeCqQAzC3dkHfdMxtFzO9B
         ZZBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770389444; x=1770994244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q+kM/Pl8XWTSE9o2j4VB9J5wVR5uzUXKqDz9HEirBDc=;
        b=I52z2gkPNvlR7l9xlRWjMAPrhLly3cRIlAG10+MkDsGjpPae0OfWeIawiGMu70B5D/
         aHzQbeXP9TwyeqSlAiutgZIqmdu8cEvsSJcwFeW59fzK/xP4iRrlamdS3VqV6/HijYEe
         oSFRTtwRDFYFCEdtjYxQfa0aSHqATCfVt5f08VeGwM0JZR7WOBiFaoV6IG8gbHiV8wud
         Nil1tozihD3voY5ZEasflG10b0W7nZAMu4kG6r5cLXkFKN2oiAkT6P3/i7LIKIJakXaq
         MbYOFqjU2Or6VHxrvg7XtyXaz32RMVdyIdrGKQugmBri3ImYGIZeWtG5FYINAUdLoYEs
         lMeg==
X-Forwarded-Encrypted: i=1; AJvYcCUJhPTW1qam0mYs+hR+v4im2OjSrkFC3gmRI5SvRfcxoZ13dyU8WKdl9/USLZnZY9uzz5hq04U5OkBD@vger.kernel.org
X-Gm-Message-State: AOJu0YzB2L27tc048jUTVlhe3VQRVm87I9eOopLJ1Fl1zdlqsk6fGqc7
	JBSZIabwgs6F96WMeV+jdKSx+d9EpAJmbhJINFJ/Gy5rcOIWwi7HtAPjbsyKREuhCgI=
X-Gm-Gg: AZuq6aIy994YlUIAiyTREG9PCqjFQD7uviK/y4YQ5CCUI9wJa1mMpjaYpc1M9N8/S5s
	n2Lru7z2yl92HlMLRTmCVfSuthH8WQrqDqcKK/wNIKppvVy4vCoxctm3F9cn7dz8RL/++io+RXC
	5kjxcAeKnPXZXIbQ35+otOJRnhfTYqRDwFPDFj0hnz/p2krNbocW++js6qafaCp37wDONmlx6tv
	+Rlw/zhSMonQloUHRo0JIXdDgeoXzv3EMqt39UBvZdGaVS6ko7j2gsnmPMWO+35DRkbDW9oWtXX
	p5q8ayqcTHkRd0BrcYSm/hE3x6vSsirXNizzSunYFfn8nTCHbpd2GnX5xdfUMQkYq2CgcO20afV
	zS9B99ROm/aM7XlJjN2axs6eGYrIXyiBpFfQlHYu2bIHXw/GYedRgnuVqEX/N58VpVxUkSFpqWS
	MqDfX8BXH8NCpQbW7g7PCwDB/ZxybhCn1V
X-Received: by 2002:a05:600c:3b99:b0:480:5951:fc1e with SMTP id 5b1f17b1804b1-48320933765mr34387505e9.11.1770389443497;
        Fri, 06 Feb 2026 06:50:43 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4832a38425asm3825805e9.7.2026.02.06.06.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 06:50:42 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 06 Feb 2026 15:50:32 +0100
Subject: [PATCH v3 4/9] pci: pwrctrl: generic: support for the
 UPD720201/UPD720202 USB 3.0 xHCI Host Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-4-5b79c5d61a03@linaro.org>
References: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org>
In-Reply-To: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=776;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=e8pzRN+C8ACMBcukIaiVpQzGH+euW8HR5vxtjI0f+Ds=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBphf+7ir4ISpN14JC2lFkd5iPKOaXwaAK5xCsLp3Pk
 G5J/0cuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaYX/uwAKCRB33NvayMhJ0TKfEA
 DKQnR6oFqniFA6PEyth+3Dc7qExlLqa+VF2sAijV0VEuuTMTxnXDypSlYF4CSJ4cDPJugF8+mPOBGW
 XLjrM877cNJjAHiQC4e9LRyQWDTWvYrUrLW3BLRC4atjlBhV9ieK34jI/RtA8KOGM9o71nTDtS4BdR
 bh5kUKeDJSCgsBjHm+L6FJmh+DFg+x5Zy8LLq8BYtlkIdm21kBNO4mu+eYj4u68XyFOYzMRq04HaCf
 sVGkHU3kXgpFEaH5yw/P/upacgAnT/i7Uks4SaCX0uQXr9jGX7l6SfWGgKCy3t/xCrwRZJ5Cw6xrSW
 0Nodq5PrNgVLBOMZwywXnx0g++LkFEwJNYmQcRXkLuXs/+Y7p2BvVkC1MZUiq08BuqOCt21rttX6eM
 Zla2Z8LfRe7WcO74dMsR6S0kFLvNRms9ysZ2VAOtRnlvHlZXl3Gq6fiHtIL+o5SydxYOFtm5FXeLZA
 ClMTYvr62dGPPocJL3Rfn8Kg1Mf3+NZmC0YUHBmrR2RwdK3Sv5Ww+OwcxCJwUjk2VjMW5NQlW3YcJ5
 gUQDoXw31/t0MTEmVVLA4QWOXOCYvf+CZTEeHupGH4W4zMCec39luZFGvkKCnIpEY4LaCBP/kSU/UE
 QuxoB9NX6Y9JqkTDaWvYPbDpiXBrWfj/4nM/EXH4c5rqm76+fl+ehWVsbpaw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263386-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 4EBD1FF39A
X-Rspamd-Action: no action

Enable the generic pwrctrl driver to control the power of the
PCIe UPD720201/UPD720202 USB 3.0 xHCI Host Controller.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/pci/pwrctrl/generic.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/pwrctrl/generic.c b/drivers/pci/pwrctrl/generic.c
index 08e53243cdbd..4a57a631362f 100644
--- a/drivers/pci/pwrctrl/generic.c
+++ b/drivers/pci/pwrctrl/generic.c
@@ -73,6 +73,10 @@ static const struct of_device_id pci_pwrctrl_slot_of_match[] = {
 	{
 		.compatible = "pciclass,0604",
 	},
+	/* Renesas UPD720201/UPD720202 USB 3.0 xHCI Host Controller */
+	{
+		.compatible = "pci1912,0014",
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, pci_pwrctrl_slot_of_match);

-- 
2.34.1


