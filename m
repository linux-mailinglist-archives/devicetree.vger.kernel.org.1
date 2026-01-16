Return-Path: <devicetree+bounces-256138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC62D330E4
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54FEC31256A9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9E8346E4E;
	Fri, 16 Jan 2026 14:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zj0Jz96c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51873358C4
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768575054; cv=none; b=t2RKMOwMXD1dZ0mfYgOiOC8GI3wTwLNr3MfSjwQ27LWdTBKc2535cWYbyKRWPvep4OFz3zWoVNEy9nr3+lF4mhYDUk/xhkFbJn685NtrTUvqQw+e5YcMOMw1C1A0iFNT7HAuXC2pfkoTwTXHEgkerRJv7l9OW7jeQxQReR49C5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768575054; c=relaxed/simple;
	bh=ahUcEGPytnk8Si96cVgaUrgSwtkt/kRnPkhww2URxL8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=twdOM88D0FVE5lox711gqz6tA+9uz5EC5ZDy+PSqkPz2v2ZE0hMfk1O7moM42aw/VrxewlsQeLfmJDM0x4UuL7UjftCQ60Im77FMN7oP/Wu68lk85NG4ZHw+QszP1yfIJB9agDyripSuozyrjz3eh5Ji7gqnVhxVVwUr/Eg47co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zj0Jz96c; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64d02c01865so3570920a12.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768575051; x=1769179851; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kMptCAYYTXce1rQ8rmGChbIW938AEbv2PXNH6WP9t4w=;
        b=zj0Jz96ckVaszgzj30Lr5WeCC8QFhRnCAf67SFouedHOzcMxTySE0mhI+Ig6ObQNEv
         kCWE1lrZMCWwNZ/HVqWK0MY8o+e1hwXC3Yyw+kvXFDXus81X2O9Q5jBrUOaQT3y7cTQF
         cICceky+aRpO17MIsBPLKPnd9zCfx8NOf9WshGFtaez6HL+GfT8duiCpYQOnL8zzQ+Lw
         uoXJmhSUNfkEdWrPD0fw5JaMSjBTjRko6si5x2gxSrirjrMFKmX6n6NFzG1ubI7A0GmI
         DlbaLrquWdeuhd4HTzUNp3vZQBE4tIniXChbuQrqFvmWc9J61HSYNQ7Q2wacDjiRUHON
         UIwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768575051; x=1769179851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kMptCAYYTXce1rQ8rmGChbIW938AEbv2PXNH6WP9t4w=;
        b=I/GlAufIOLl9fSUBwaDTLQN5yGFKYgMp6jhLpHFTdeVEpFzjrwfOB2hps6G8aW1Tv6
         W2uBMNpRrIHjg1OF+saGJr6L9/9EhPPAaJ61n9QibWBTbR7gJAwGX/dWM2NcjZPVZp+m
         SU2rBD+BNJfLIIU0SsWQtffOYKdTvwOFgzDDtbRK6Uys3CmZkBzaZLqolmn2a28fd3Pp
         8v1CmWyek2qeYpM0H3AA3fJXK22fY0ORmz7nfkCRuoj0iC33IW7DByMz4ta/uf+cDW8V
         pN9qa6EB/Sx/cG5IRTsOkTyVFNkE8MpHB/ZoYQSyOEkv707WaLBhOx+tHzjs/DwEtDW/
         7gnw==
X-Forwarded-Encrypted: i=1; AJvYcCWy+yy+f567qxqd2RQJwbSfm+vIR4Wp5R/mtWOBrGlC0zQaX8YJhgm5FBQpS7ULIFiRe6xZLKQ4iKsz@vger.kernel.org
X-Gm-Message-State: AOJu0YxwaDTBRU5s/Ylqe8UGQNiGTCqi75JbYhSvfxWJcdTI7Rbgcu8M
	mbokz4qiY9Nzt7EIxgBZZeU5RkAhew8zu93NBpiDLroOTkWs/Y+6BJbWgytQKDTSdrw=
X-Gm-Gg: AY/fxX7MwYgpI9RO4ef2dB9f2TLCOE1n/cSupgf2GktN0IM57qUvQFvHXv/+Y3Tzacb
	OKDehsa7hsEZco5i8UUsjz9naK9HgaMFZbLRV5R7QIB3GGGIfqh202CaqEtYjuBYpMAqK2SNSJa
	fcQ3Ka/msJkfAdQ+Vm9DkKWPdqJt4PpgY9+CnH590Wv1VpWSJ3i0nwnPvunjfjz9gv7j7IyrtRR
	Z9TpH11mm3LR3hACfrUiT862DyH8oVdUmf7mKnsRP5CCyPNaT63u/k+CZtLXmtJsrnEPG8B7948
	jvjTGIVii0BDY3XIQhKNy7wguJn8WUtNmiVJUn+scl6T2JnAryYUESepOfChuVaIcyrWCB06Nyf
	gw1wMtWE6Y2NrbdKrFVyNY0dB1MW6ODRKhdOpzRsc9Cp9mEDTrD6vrUQQnryQhEAShTjIYaAn6T
	ntqUflYGJn6hnGfUpyl14/SXO1Z0Dw93Oe4pKHiulAPVtwR1XtLytYFsRQ/7Sk1X84
X-Received: by 2002:a05:6402:34d5:b0:64b:a1e6:8018 with SMTP id 4fb4d7f45d1cf-654bb70fb62mr1997705a12.31.1768575051053;
        Fri, 16 Jan 2026 06:50:51 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdab55sm2699427a12.10.2026.01.16.06.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 06:50:50 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Jan 2026 15:50:47 +0100
Subject: [PATCH 1/5] soc: qcom: pd-mapper: Add Milos compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-milos-fp6-bt-wifi-v1-1-27b4fbb77e9c@fairphone.com>
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alexander Koskovich <AKoskovich@pm.me>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768575048; l=1032;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ahUcEGPytnk8Si96cVgaUrgSwtkt/kRnPkhww2URxL8=;
 b=pQ0d7mU49Oaiu6eodLT7kdl3pBbBGjYE/xrRcrTvoLeTdG6y1PAvrfT20CLnuXrPrJ8aNVcfD
 b3uSdA9TjFvBiuyZI6uYBlNz04Cgh/p0M5YyyidWOX6G3efIex9tvN/
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support for the Qualcomm Milos SoC to the protection domain mapper.
Milos shares the same protection domain configuration as SM8550, so
reuse the existing SM8550 domain data.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/soc/qcom/qcom_pd_mapper.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/qcom_pd_mapper.c b/drivers/soc/qcom/qcom_pd_mapper.c
index 1bcbe69688d2..e6f525813b32 100644
--- a/drivers/soc/qcom/qcom_pd_mapper.c
+++ b/drivers/soc/qcom/qcom_pd_mapper.c
@@ -562,6 +562,7 @@ static const struct of_device_id qcom_pdm_domains[] __maybe_unused = {
 	{ .compatible = "qcom,apq8084", .data = NULL, },
 	{ .compatible = "qcom,apq8096", .data = msm8996_domains, },
 	{ .compatible = "qcom,kaanapali", .data = kaanapali_domains, },
+	{ .compatible = "qcom,milos", .data = sm8550_domains, },
 	{ .compatible = "qcom,msm8226", .data = NULL, },
 	{ .compatible = "qcom,msm8909", .data = NULL, },
 	{ .compatible = "qcom,msm8916", .data = NULL, },

-- 
2.52.0


