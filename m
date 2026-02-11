Return-Path: <devicetree+bounces-264575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJPrNLHji2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3843F120A9F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1B1030A67B0
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 488ED2F25F4;
	Wed, 11 Feb 2026 02:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BxSQoqiJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFBA2DC32E
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775377; cv=none; b=A0xRB0X448jHUvYuR89RGEsvUefBKEDd1KTfu2DvIuDnb87SDIL9xwtsR8dGs376P2puC82agglDeTi6AJo7NeEUvMHQIDbwlslfpP1b3jlCm+eoNPkOAfLR7gVvRGQDxk5CF2HzO2jBl+GGet1Zp/mpi9Xl6O05LBNf8T0hcgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775377; c=relaxed/simple;
	bh=h0ABrlF6gXld0vBhklJE1jW9snkjCyGzWm+4OIIUAdE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WSV5QgxU+HgfT1fxyGP0GDfc0f9iV6KOQc8uZfMPv0rZpjDAVUM2OHBrAKLhgiAm6uPdUkm4YOZ6HOSaunQs377M3G64oShwLl+GcdBGjihBGyTyj7S6y7Nu+NbixjPUUn0tlYAg2Hcq9PiWdoijeQzC8PT5UybEF3MVgXqgbIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BxSQoqiJ; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-8951c720496so10733946d6.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770775374; x=1771380174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTZ5v6TZwH0D3KMaa2Z1A6g64aCTgmwvmVrwpuBxytU=;
        b=BxSQoqiJbFrLWuQQ2513t7tkKGHrxADcJpGDb6G52NANFFAwZlqBj/JydHHKPQxO+4
         T288yuLRTAtnKtLTqWUTWvwehfIlklCiG6pIvz/L7tDu2q/LddZFaDt+2kHe7cCQFDqt
         lw0Fvokz+b7O1MbcLNZj6Fybvj6fZkFdVzEbty6FB1hYKxApUPUYCP3wl8TyXvTYBSsJ
         U20cQzFGLJVJBop8qt6n8OAyJXqQHCJHPvSGE168PHAMkPG362Rr4m+gfrGYmiQRoq/y
         qpVILU0NLZFjMFhOOZIR/zkhRvpRKrVtaTS5wZQOJ9TWQhucncjFTSlJf9TmU7oK4D5c
         ztZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775374; x=1771380174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YTZ5v6TZwH0D3KMaa2Z1A6g64aCTgmwvmVrwpuBxytU=;
        b=UwBjBf6zuuGrgqORjZFSh9E1zGQbw6+6y4bzW/2qNQ7Xn798qqjSTGEO5FhrmSWupg
         TR1uRbVqe3YzPwN56GbTLmgqn3y4O33HOxa6m/+b4P2OqCx+fSO2Q0VktOW5b5f8wn1E
         l14h2BOHALrsZvN9+u2XMRgfyIJ3OanGtVgoFI6LbQ8BYI8ghXA2scTPoxHkNhmASZvs
         nzc+IjM+Tq7HYKn+A4nJlgkPBorSHr/chRJAprpjJ59RMewzErLzpiNaRsWrjXfSHSEx
         nFUZ4T+dYzSMLUAR6o9l+2Zdt858UWEoWJgbp5Lc4h+7XopHvYGVW3ckA2VWJ3oLWEXP
         3jTA==
X-Forwarded-Encrypted: i=1; AJvYcCXbFduTVEkGH+RX8NT16MeVa59EaV99Crtxf0RBOHW2cFdYOeqD49VPYlzdTTiMRvVpm18XRI/4B3f1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7FX8g4zuG0ZHk6BqcLPVg05S92enzcQFVglblptVcNjjUZp1X
	qXWScbEoTdHJIzGF1EbqjGSIgqUcaWvZfPFv9GMQ2D17AvhAAT/e//HA
X-Gm-Gg: AZuq6aIao/gPJ8ug4jJipHfR/B81fBWYIay5Et7qEa9BFl/c2JhcjGgfNqZ7I/8qlt4
	aSicUFVQ4WlbDwUA+CwR+zqXrj6cD/V+fpHyb0/wExFi37qi1eMHyVr6y7+FVaoOllz4CozH4sZ
	KY+pm16q5Ug+TwwLMzhuqm86q8FyG576/EUYgokL8gRpACvXNPislYu5HUJaCZNFPAewMjrYBxY
	rdwidowhSdeMZRXiTjBDFYfhdn7VDzlxasNp0oYeJ54qdvzBDw1Z+pR8GlsdmW1YIQ7og9DExP5
	UDBUsxVY1u05llEzaxWIVrhdXhOqQJJTVSgNVblKuTA40B1U2p8LMgTiRaiFjHkR0AtBMO5NbJr
	bzxEiLzLGQ3J/0QwCGisjCV56Xp24o+vGZLTB6b4eQALdoS7YFFL3Vvo2qioiKJ7E4PYabaIeHh
	xsOrz6fKfFMuafJn+Ty9q9ryDwLA==
X-Received: by 2002:a05:6214:c2a:b0:88a:2500:7d45 with SMTP id 6a1803df08f44-8953d09f207mr278373536d6.46.1770775374245;
        Tue, 10 Feb 2026 18:02:54 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc94dffsm3676866d6.14.2026.02.10.18.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:02:53 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 04/10] ASoC: dt-bindings: msm8916-digital-codec: Add SDM660 compatible
Date: Tue, 10 Feb 2026 21:02:56 -0500
Message-ID: <20260211020302.2674-5-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260211020302.2674-1-mailingradian@gmail.com>
References: <20260211020302.2674-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264575-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,linuxfoundation.org,quicinc.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mainlining.org,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3843F120A9F
X-Rspamd-Action: no action

The MSM8916 digital codec is also found on SDM660, typically connected to
the SDM660 internal sound card. Provide a space
for specific compatibles and add the compatible for SDM660.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../bindings/sound/qcom,msm8916-wcd-digital-codec.yaml    | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
index a899c4e7c1c9..33bc23b6176a 100644
--- a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
@@ -14,7 +14,13 @@ description:
 
 properties:
   compatible:
-    const: qcom,msm8916-wcd-digital-codec
+    oneOf:
+      - items:
+          - enum:
+              - qcom,sdm660-wcd-digital-codec
+          - const: qcom,msm8916-wcd-digital-codec
+
+      - const: qcom,msm8916-wcd-digital-codec
 
   reg:
     maxItems: 1
-- 
2.53.0


