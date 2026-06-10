Return-Path: <devicetree+bounces-309467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cspFKp4VKWrBQAMAu9opvQ
	(envelope-from <devicetree+bounces-309467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:43:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A29666B74
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:43:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=V7omvVh6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309467-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309467-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 994FE30566A5
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1184839658D;
	Wed, 10 Jun 2026 07:41:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC11393DF0
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 07:41:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781077317; cv=none; b=aJKReZLG27z2u7ZgZCtir7tM3NaYg7ZBl9XEzb/fe1ka1ryjgpjUwtSvcJosZ6uBIc9rPpscCfKHGWqs5IRir8mnd2TWN5HfY5PX0J5g/Bwndy1bpCAl5XwdGQGx7ZZ9xdtgAHfO24RiFmXywlb4XV4o37jUiYUHKe30qjHtyvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781077317; c=relaxed/simple;
	bh=Qn4TFtKF0zH/YtALFUlzzIs3K59F5uQTYpF2B2pucII=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t6rzkbExsEy59aG0nEn+jaQTnzelMsK2tdLOiWsfq2TFq8mPOd+zZWjMSJRbTZ1UpshAfZoWSQ4m2LC1X8SmN4XU6+oKrS3iaGRs3+m6kVyRsQ3Kn/B1GMY2LgtJa+PhGIwo4c37aqpAE4e3UltS6qzxV0gTJSQ/flMjBtaRhUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V7omvVh6; arc=none smtp.client-ip=209.85.128.47
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490b613a17bso62807445e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 00:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781077313; x=1781682113; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b7eBobhuN0t2F3bxCh2U0niPdbCcCjlL+1oHTHNqL/8=;
        b=V7omvVh6reHfyCPv52PmKWmWzJgpg7npl6GucoBJer8+togLlE2ihtucY1qpGw5l5V
         1t3tXLfNloq52ZMavk0LGg4ywSvkM2043VDy0L5FHWwqBqkevC7ZY48w3Od3XY/towAy
         WVMAISi4iLUMjD+kvJlnna1WdWV7+m7iaCKDjW/sm1nvJOvDWsa2JATADSKqLMew7KKg
         aUTjfykV7qwo8bsnoh6oCifdPDrI+l1QH35epA4ttRiNcqXg5bAPB803svksip22wRbG
         Fw1bv/NbzvCQykPPEaQf5eqkm42m966ccRLujisWHAO0aiyrod2GOxTz7r+rIvHBZNrf
         0Xvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781077313; x=1781682113;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b7eBobhuN0t2F3bxCh2U0niPdbCcCjlL+1oHTHNqL/8=;
        b=K2iDYozun/5G0rReZTd2M7a2OZ11hnGUuxgiccIttud0cGmQ+FTFiaAC7yeQKztGw7
         Z6uaYMvifFDZ8YHu1oOV410SN1OJgNGUuim6+7reEmstceUO9kxE98Ma4PT1rRDg1+Kx
         FMxVRn5n2Frb4tV/CvY+B9623A08tUYelMJjQQwnzxiqAkgItcyPKTGc2+cz3CBXXpFk
         kEAzsC8pqmH67YphE3FUG4Xwoi6fR8p/ywKSqq5lKO8MBgphBcl9YiZ9BeRirwbL8pbl
         V0KIcrb4xBwzIhKOL47AFfN7JAS93/GQb1e7h7Km22jU9rG4a7yRoyPb54DbdNfq83PN
         STVw==
X-Forwarded-Encrypted: i=1; AFNElJ/q60lDrWnpeXlZ6dlFBrCFnma10xG+JuRH2XRLDOtsjXaFv3kavfle6BPXFYlCYAsDzmHvTuN1iW04@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7Y6v1kzaSV5AgZjr6y1zhC/oF+nlv0xoQuGnKrra19ZNiI6Xg
	Zv8uNe5UZw1noa6WRH5ghGp4DPF4PTX0wyFFvsa2u+8wycoJF75hvVhoHN2qi6NTXBs=
X-Gm-Gg: Acq92OHA/lbKbay7Ay8KjxPJHqrMeHJoJZ+s9MiCjCEVlBFsCHvw6m50MmqdKaBGACV
	oXhjpRoWWx3iwxcaY03DDpxyzkU/7OBNzCj7tJTtEEBVsKdU8CYJ6CysvHfrwN4RNam6+TJ0ufF
	jzvX5K0kpFD/6SgcWrN76AtCV5nbF8lYszPQQUsECORiu0RpK6MUnRM9lIfMNi6SNtSD3o6bu3z
	VWp1Qfdl/Rh2HcimcNsZMVcQxmfwhOdaNwzYZUCehiX/MRWv28tdRqct0WhDgZIC9e2bXTKUaW4
	8t9e7WvUaEHRBDuhmde3/WfEVyPEFzIa0qQahxK+fGhdMTcio3NoJNAMzxcShzqoMMqyci0AO2/
	FnpmWof94W5OnhvHpvi0xSYku5mJUlQoL53g61QvOiR25wMZsOIjdKJ7xxtlH3I47Wer6vPUaSH
	mVXDOyj218fYN9/0uSs8Ed4f90skZcIJhFJTqyAsPIoZswKZiKoHAUMfzqtzWAr7isLw==
X-Received: by 2002:a05:600c:1552:b0:490:b115:e03f with SMTP id 5b1f17b1804b1-490d71fa5a1mr78852405e9.8.1781077312982;
        Wed, 10 Jun 2026 00:41:52 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f3444fesm69161344f8f.20.2026.06.10.00.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 00:41:52 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 10 Jun 2026 09:41:47 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: sm8650-ayaneo-pocket-s2: switch
 sound card to ayaneo,pocket-s2-sndcard
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260610-topic-sm8650-ayaneo-pocket-s2-wsa2-fix-v1-3-18bb19c5ca22@linaro.org>
References: <20260610-topic-sm8650-ayaneo-pocket-s2-wsa2-fix-v1-0-18bb19c5ca22@linaro.org>
In-Reply-To: <20260610-topic-sm8650-ayaneo-pocket-s2-wsa2-fix-v1-0-18bb19c5ca22@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kancy2333@outlook.com, linux-sound@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=917;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Qn4TFtKF0zH/YtALFUlzzIs3K59F5uQTYpF2B2pucII=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBqKRU8AV9+r1C54zy/T9xZXXpG3cmS3d8cGw0RxpKx
 G06MVSyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaikVPAAKCRB33NvayMhJ0Xp9D/
 4tXneInCiTYra0b4m2ya7YSBNpbBZDJS7u3Ypi6GWwYsTwBI6Dq99j+omnkbT6c03A0gtj1+7V8yrA
 2NjCZFrXZPk1kMFEmIDYb8vRBJnykRw3MwA6NptmsKjxjeexxECgvzCrkmt9Hd479xgLrbcqTGxbfN
 ygPz/7qGkVmzgYHUZ1p9OB4WheLQhdC3I7NhjLPnoU3ohuyrZ5JctUKXq8TCZguajceMqBsJK3z1B3
 fC/QPgU8cFO+Icct7HdclzZ4LIMh9m04yXkmgipOdhIdBIFlTF2rpl1t9DQj93dtLwUIMxDgYkE+rY
 qtnBvp4ly0T+J2OdZ72tk6LTHjuuA09wUSZNX9xpkP+pb7OUNwiCUposU7WvjXStgGCAgVBmY9iXRz
 c4RNTF8sboANex45CQLu7YIbQGK/Gf1giN6tLOhECH6SDJX0/srdV5LloJDna7SIrh5IFIZHocWgOi
 BtxEZobvtJDxGmqNw1y8zKuBxrFGst5nKnTDHM1/DWVfgWp1cCVsB8lUdswhCXHUhtLMOY3RppD7h+
 ssmDn4SAtC3qURx6lDaQ4Ux54qOAy0I5yZMpZuYqZmRao7WMcP7zEA8FB8euJvj+oepPl7G3Pf398X
 qiWMvxMwyuJBT97fC9erY9f84w96nBQ58sRMTYH3hcokdcDGCXv7qHb06nwQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309467-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kancy2333@outlook.com,m:linux-sound@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[outlook.com,vger.kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18A29666B74

Switch to the ayaneo,pocket-s2-sndcard since the hardware layout
is incompatible with the default SM8650 generic sound card.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts b/arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts
index 0dc994f4e48d..508d1445bf21 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts
@@ -221,7 +221,7 @@ upd720201_vdd33_reg: upd720201-vdd33-regulator {
 	};
 
 	sound {
-		compatible = "qcom,sm8650-sndcard", "qcom,sm8450-sndcard";
+		compatible = "ayaneo,pocket-s2-sndcard";
 		model = "SM8650-APS2";
 		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
 				"SpkrRight IN", "WSA_SPK2 OUT",

-- 
2.34.1


