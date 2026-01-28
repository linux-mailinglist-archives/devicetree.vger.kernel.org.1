Return-Path: <devicetree+bounces-260391-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNVNISkBemnq1QEAu9opvQ
	(envelope-from <devicetree+bounces-260391-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:29:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2C3A140B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03303305AC93
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF2534F245;
	Wed, 28 Jan 2026 12:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="cXv3WHM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5D134EF01
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769603223; cv=none; b=aJeYW9zQV/WTqu/ni2+tbR4QvFwHfA5TTVuvZHDXs0EtwZz36XPZOWYjZTlaMJiA0xDklyH3Im9HscV90hOx5c0Y5rbte0uy/+encneE5AXU4xYI5IS2idGaE9NYA24/DlxmUZ6TGIVq3+U/4MW5dShY9Lf/z+WdQgD1nSa2jgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769603223; c=relaxed/simple;
	bh=6q37WeeQdbfyWtDQufhuNOaDmHWFyJ3gZhhYFvngdNU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lLJ75d+hI7rbHlhIq6KOzOFgHxCoeGRhnNlgzRI1yuWJS4ENKi+KK7+MZsE1Vb8lE/kfu3QB/c2h8yJGaNoCoVsRQtPUZSEpzISO6pYb1/Vp269ThnyqdLOk23qJ6h0/nFOvEYwwXgTRENC/iyiUz4T7XIl1H3etYr/r/K+G9k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=cXv3WHM1; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-6505d3adc3aso9087098a12.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769603217; x=1770208017; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bmjzieLPBCEhG7O94WSZ0LkfVKWhnb5wTsqAsIjf3XY=;
        b=cXv3WHM1WkOoYSYyQfw2nBIxGtFfC9RPgy/J6eSg1ulwE+L5EXhyFtD/5e1NOPStrp
         /4MeuovFphaK6OCv406FC/wEE7S71XiMs3wwH6cePTH7iUppnn5cWPCIaNTuisZsbMPi
         utr5uGboLZeDxqhwyMG7ywW7zs3kBmPrYyzsm3NsGY2vRN6l/ZkWW7s0accUaOkqRc2A
         UgfKbNJkg5LMylM/HyBhytrGi2YhVOjzTukIjx12lc0bZdM6dtZM40uOvP56Ri0NpgB9
         a4oU0qJUNvy1D6yIxRYymN3eYqpG+vB+hAtD1vfMPtD26dLnKkQud9Jyf8tO2G9MgvOb
         egNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769603217; x=1770208017;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bmjzieLPBCEhG7O94WSZ0LkfVKWhnb5wTsqAsIjf3XY=;
        b=I50Qo2OK9culMx3HE1ZhguEYQt2nEkCl+c/7XrwhFGCm2Ec5u3ekZi+w4zWJQgac3B
         lBQEQii8CTZ91DhSM/tfNuCPX+lAEj2asuoqlQr8mJBFGmJQeBtHICDEXz66AEVnsNIt
         ByRMlTvr52LBHCt1jic8A9srAPH+GsiLd/pKyeyXgkExKEQmyfZnBoljOLM36wXw8C6F
         uX3rgw+ikhEHqogj75qVSCR4xqKZYhoO4FJmRZhx/81OPW74mZFxbc5cjICFAutEaZ7u
         VREzAc2GRuOnLmGNdhCuhMKKfN1Gihv2/3pO8gE7icmXnPZfz4N376ULh6zTsQUXCGSk
         EzSA==
X-Forwarded-Encrypted: i=1; AJvYcCWc/t84IyCxo0GTXBeA6QjDlq5ZomB3HLroaHIim+vtvmNsFxG01nwLiJ/BW1/Oc+nfrlw2tsdy4/Yw@vger.kernel.org
X-Gm-Message-State: AOJu0YztBLcBzGEBATFvqT+bO0k+qGeHtSYUE+vhzxEcyOQDIWAXN/GC
	4vLipeXKmBQqf/HppjsgeQnSJkLNlekvtd/fdx8V0Q5gdQ4Oqlz72fr89vCJ06XYDy4=
X-Gm-Gg: AZuq6aLdgbpxcvNwOQGVX4w/ppRkds+Sw+P08WxRc3vsmt/txW7RyBwt3+JBX5mnKBj
	L0RsGYUS8faB0EovliUyYWYBu94vgLJHpH5U1wuLZ8KcO8DOVQKGgM/8kwCa0VRDaav9fO5OGiU
	v5NGWkOfW2pegycuWp7MYikkzqHT6npFQ7ou+1xNRX67PHmxSy8voE+Kl+N8g/SHvd9yuNhKndf
	CegADh65HqtloV/3smlbe5j73HPixvbC8gRgPhFsUZfgXvKRd5UrMBkzMCF4D8tN6fpd+knR4gI
	1B1RETc2k5SqJkZAOy5MpBiQ0wyEBh2MeV2PuskBHnSPVeanHEFMoz/f+kNL+FfZG+3UrBhmjL2
	imurY67xuWkx7P5d54YF+ZuKHWFE/kcLAQH7MafngOxe7B8VXSYihy2Mf2Mgro2ruApHZzrcOmj
	v3Bynvy3j8tzVfmf1B1gahjB9yImC8+jn+vTFJ6sCxad0tlRuI748Nt9Zh5/1Xy7EW7g==
X-Received: by 2002:a17:907:9688:b0:b8a:f7fb:4f4d with SMTP id a640c23a62f3a-b8dab1a4686mr373282366b.16.1769603216835;
        Wed, 28 Jan 2026 04:26:56 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm119536866b.46.2026.01.28.04.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 04:26:56 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 28 Jan 2026 13:26:53 +0100
Subject: [PATCH 5/5] arm64: defconfig: Enable LPASS LPI pin controller for
 SM6350
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-sm6350-lpi-tlmm-v1-5-36583f2a2a2a@fairphone.com>
References: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
In-Reply-To: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769603212; l=778;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=6q37WeeQdbfyWtDQufhuNOaDmHWFyJ3gZhhYFvngdNU=;
 b=O2JhrNZ4cx0yR4rIclFuPK5si3IJLYw2s5Eatlepxy7kLpFKU0/o9C0bpUkv9kgglYZW4StSQ
 pnf0PMnNfZeBCJmTjmFtj3Uh+/chxTyFPoXE08AMOzWjHIem6EMS5tE
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-260391-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email,fairphone.com:dkim,fairphone.com:mid]
X-Rspamd-Queue-Id: DC2C3A140B
X-Rspamd-Action: no action

Build the LPASS LPI pin controller driver for SM6350 as module, which is
required for audio functionality on boards such as the Fairphone 4.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7a6d7e70d383..5160b81afc6b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -694,6 +694,7 @@ CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
 CONFIG_PINCTRL_LPASS_LPI=m
 CONFIG_PINCTRL_SC7280_LPASS_LPI=m
 CONFIG_PINCTRL_SM6115_LPASS_LPI=m
+CONFIG_PINCTRL_SM6350_LPASS_LPI=m
 CONFIG_PINCTRL_SM8250_LPASS_LPI=m
 CONFIG_PINCTRL_SM8450_LPASS_LPI=m
 CONFIG_PINCTRL_SC8280XP_LPASS_LPI=m

-- 
2.52.0


