Return-Path: <devicetree+bounces-170697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE014A9C064
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:07:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF56E5A44A7
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 08:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E45233726;
	Fri, 25 Apr 2025 08:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hAmJjKIo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821A1233129
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745568456; cv=none; b=qZ2hMuwX9jfPzTfRuKSoPjt8DTs7rO++YOnJF/I/ziTQbWJ3NtWsuFjmdOSfaxp0whhaPY0M33ELDc6C88BiA45cGXyHD7CP2+Zz0MmYv1KH0TSMZEczhtgfcR8V6gNmdPrJMWOIQ10nRISzgnFFwxSCULifHiq5zJZYgZn8Nso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745568456; c=relaxed/simple;
	bh=4r9tJ+EcKTSeTDqTruse8d4E3SvZHkJ5ztPCJLWlUSc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vol2lWwXz4nTAIylDEAxI2ibx69hwNUyrcpkD9hs4oE6OnQDmXEDsX1ExC4uClVFxut5aPIAeT7Vod4f1/imVRQBRo2aGym70Qpn01hICwu8DhZmzsgNYvhg5KLYmUB/bmfOgggSkBH2XaOs3BBoXM/uGiC/QVHmUTIlDdt27cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hAmJjKIo; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so1478142f8f.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 01:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745568453; x=1746173253; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q+B51z9x2y4YummWOIXlfsBUwS8WF++0rEKHeNnV0Us=;
        b=hAmJjKIo6hrty6Ia4dd+Hx12AtnoAWlBrMlJN4qqI/6fFypkKSN2pfcNP1xOumrSaO
         CLnQQKr6hZcPLEvbGtjTFrqKmVmDq7Xo8Cv+VOkyeV21csFzxu8BiH/ug0r7+TO2Qcyc
         DFKR6fUnVKKubyYnpB8nd21I9/sjdYRacLhulEOXlmZJ0pdeLcyFAAwm9iL6l8CWPRH7
         F85qFr1U44FNEJSlnatmW/1EN9ZWij1j+fjCvgXc5YnFZPku2wumRbKPV5htn2aBke9E
         Gg1wIEYj34s6jsQPwFy2gi++Zx/Yr7bjPvJZk5oe7NjrsOF/02lpbXZ2V6GukGC2m/Ps
         lSrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745568453; x=1746173253;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q+B51z9x2y4YummWOIXlfsBUwS8WF++0rEKHeNnV0Us=;
        b=mjdaPof290XR8oGgz5TX8YfA41CTz04qrx084TC/oQ2C4dLev6jJ0akVVKI7R0jY5W
         lDiK3oKkF4BR78fcboVYiHmBB9+HjlB0d39plKAI1jv1ex7lW9HXrLdC+tTEy0USjmgp
         TyT73OlncZSd2EfV0Cz+LRH6lsJMjDGNnZ6ex0mpLXXGvg5QdzODfOZcKKFnD4E81waL
         2iO2yo1JXyIB9iAzjew/i+fUo4f04sjMxmZC6vaLu/LrvGhs5ACGaeMogehTsCHxZQYy
         3eKICQeyVPf88LZ4EvQ1L++AgDHSxnJDWRJwJ1bebMQ8ruuHenA6L/RpIebMT7nFBYWF
         xAkw==
X-Forwarded-Encrypted: i=1; AJvYcCWgbNmvIEO+/uQeGg0+EsX9QanB3LVupQs51DrULCrGdS73q79idYunMFz6GaM+XnL6iax0WtUH7RgA@vger.kernel.org
X-Gm-Message-State: AOJu0YzC3z18vxkT2tfpr3faolKJiPFjUsfe7tG+ad92MBPM3FTGA2/d
	66vvoyCFt7eVTRZlJEU4VYWVBaPKdg/PWG+HiVveFQewdLGOQ/WowGteMMJhmD8=
X-Gm-Gg: ASbGnctnslyjEfXWBvrQuTGzWTVEU1odH1U8KzZpVk9KKV+yQYwHyPsydym+yT8oU+N
	q1/ALkr9zVj8DLMS8jPJRSmuuWn5S6BP+np6XJMVNuyluwEeY0bWVmkuCL/pyIFH9HjhnrQhvuU
	RmWoTg0PM5/tW+pyhob8b6gYRVy5igfxYZGM7g1P1v3hGhfIHBbR6BisKz/jzQM0xMrslQa/nt1
	HWoj20UGi6lF6hQus5HWboElmYcFNCgd/klYIIqWE+6ZewZA+Drvl6BBK84CwwMvNalKkK7pe/p
	lUWiFSdLMw5o+iPxZZYSgSUaBfmCIC8Vy89XqOnziz/B7PeFkcd5E/Yq7HTSG20sGotJbfLBwos
	9qnYsOuHVbpdqq/MuD96MBCvhrlxc7nLMmyESFjgXguPnwTEFYaGV+jya
X-Google-Smtp-Source: AGHT+IESPkwoSXL9H158Zipa+9IfMAIxHeKuyCQjlKcULNXaCkr05UQj4rmsW9F9V/zyF5XpgSj7jg==
X-Received: by 2002:a05:6000:2485:b0:39e:e588:672a with SMTP id ffacd0b85a97d-3a074e0f0c0mr971220f8f.7.1745568452582;
        Fri, 25 Apr 2025 01:07:32 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e461casm1593513f8f.74.2025.04.25.01.07.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 01:07:32 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 10:07:25 +0200
Subject: [PATCH v3 1/5] ASoC: dt-bindings: qcom,sm8250: Add Fairphone 5
 sound card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fp5-dp-sound-v3-1-7cb45180091b@fairphone.com>
References: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
In-Reply-To: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Document the bindings for the sound card on Fairphone 5 which uses the
older non-audioreach audio architecture.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 4e208cb7f6c61adfd4b687227038d275f849480a..57f62a228c262f38e703816efdcf443355052619 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,sm8750-sndcard
           - const: qcom,sm8450-sndcard
       - enum:
+          - fairphone,fp5-sndcard
           - qcom,apq8096-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard

-- 
2.49.0


