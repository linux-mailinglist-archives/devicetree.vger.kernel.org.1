Return-Path: <devicetree+bounces-290233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YK4bEh0J7WkGegAAu9opvQ
	(envelope-from <devicetree+bounces-290233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 20:34:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FEE46756B
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 20:34:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19EC4303CE8B
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 18:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19B13783D8;
	Sat, 25 Apr 2026 18:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="qNA77ZAB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D721C353EC1
	for <devicetree@vger.kernel.org>; Sat, 25 Apr 2026 18:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777141890; cv=none; b=Gel6V3kbJ75KnqvWK1r5dnUO25jx/y387zf2HBkGZJybR/rO5Cgq2/MQAiNbDVaV4HcJCpNqGJnQWR44K1atEnrzMkqlJOMrr+F7XN3E5MdAJpU1boiUV4huahqsxSeRIQnAm2wS3afkEB7yEIgOZ+pkEbHkOkDUuXhtYrkB/Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777141890; c=relaxed/simple;
	bh=vI5c2wup3N7m7wvOZ+EpIQTCCYUqkmceXR+DGRotI8Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LQ9EbM7As/7EnnSVH5Oel0qDw3QMgBsEnqZFXjauyaMKXRsxqq+QS0a8whyv9pnoYdfLy7oJdTkk9u8iVHGjNnJhkUKbXAcl7o6Lw8adcYNeJZiKUscgRmzLD0jyqpvaEZ3VEje4IG+w2nllcJ5SI8cUHKVT/vNxuArYT8vHHds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qNA77ZAB; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-488af96f6b2so115083035e9.0
        for <devicetree@vger.kernel.org>; Sat, 25 Apr 2026 11:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777141887; x=1777746687; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EammlrfJSIT4ldTBdJIISmN8l1LiV/D3VbIo0yD3tMs=;
        b=qNA77ZABmGYyRinjOc2E4dORhLQmY33aZnQOhmikiOiuDjqubnKYUfmAU7b/19OiIP
         S3glB21ABZKlXBMRBYnIY6UemA3/jE1+Fy9Ms7W5EyDT2pRenc0AhL7mq/5COej9L3cE
         JH0kPDAkTBcbd1hJf3vbbpAJBzHZ2PEvew4eJEndafZas+hDWrWw0r4eegfW4DBC+Lxp
         XhN5MmNxP2qdKaut6Yiw24ntcITRuCTpyVLUW5MmeYBQrvHDAoZkumnOIN/W/ZrZRmZU
         gh1NknLEmgzHq+okCHe/3t4nXa2KdF/CI230WbX/hgYK/yYIe+5Tkvx8LC5O2o+6rAhr
         DNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777141887; x=1777746687;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EammlrfJSIT4ldTBdJIISmN8l1LiV/D3VbIo0yD3tMs=;
        b=YfCmzqBlvbWP5xWhI8s96xIoDyoRG2/ZLbYQxwdzZxA6JDJRpt7XwPhmtCpzESMbtx
         USVHdBXYslgkloGdcgD4WH+tG1j2DfCEQWnqDTAlo83cL7mI9lIcWbv0MC/25SS1c1G/
         r4yQ4Hg3DxbBagEmGspsccY9NXuQ4ZYuoupoFLglFKALPj70vW1LObRnd1jM9NbzTYdn
         AjY9C92GEFiFUJjj/bOtqL+6r2zsR2lKXlB9aeBloEYKh6CFUuX57/U+lE/PSq1YFKz7
         bMtPN6lX3ZtjzMrqFQu5aksI+KuWfO6Ys1WSv8YcYmMVaWhuZbZHSAlRSEQ6vHhguK5A
         qEaQ==
X-Forwarded-Encrypted: i=1; AFNElJ9HhNWuY8P/14yD7UDSVB/AgqH76S+1S9kTKK/VQ+gQQHd4xkPII9d0EpuPzDQLMhmBQW1T6EFN1xI3@vger.kernel.org
X-Gm-Message-State: AOJu0YwVRfnrxGz0tmb6X6dgbd05vYM2dtSgS2HvhJGWeFbuV1Y+fC8V
	i2v9ytV8mUl31PakG95bsNUjXrv+ZlwPpvnbJenfFuhCqkabyHlkHJ1x
X-Gm-Gg: AeBDieuOdHcn5LwrfKc3T+Soqyrj+Mjn6M3VOmVyMbRADryy9q2DvB00+WE1ESvVRFW
	+Mx6K4uA4AGgSzWgJBpoB/xc4XlY4JRlZdmndKnjb9zdj7+/paRAsSIqb7mB+SkRmAVmjQrg6m6
	5FAhB7rANhwUIhmZQdnqPGfrVYKo0plEsaNxf6x7x9iIYkSsnK+S5bYdEvJlElHypYvEPiVNOcA
	Rk2hkGmBJw21ph9v+A21LLdlpMBKgcSpHVs+qd39HnPgzCNSc/mKAdwtqtwejvhFXZ0agGam2ug
	Z5lNBYehlMtvRESvaKnW/Ele0hvWkJjm36DMMZXMIoXpxuPgm0ZFEcvv+OFG2/PM7SipbxiecH/
	EcRU58Ko6vyCV+CDPbdt/2BY2KOR7aPNfLKWMJ6K911D4EjWswutSGnokyGyonfRDniM2TuSJZg
	JJqzAKt5q7GH9hfDe9zWa6ycGjjDAIec9eF6U=
X-Received: by 2002:a05:600c:c10a:b0:483:2c98:4368 with SMTP id 5b1f17b1804b1-488fb771613mr401209905e9.18.1777141887310;
        Sat, 25 Apr 2026 11:31:27 -0700 (PDT)
Received: from [192.168.8.79] ([2a00:f502:260:fa4:a26c:adcb:8da8:3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4899dc95920sm133613675e9.6.2026.04.25.11.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 11:31:27 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 25 Apr 2026 21:31:06 +0300
Subject: [PATCH RFC v2 05/11] arm64: dts: qcom: msm8939-longcheer-l9100:
 Enable venus node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260425-msm8939-venus-rfc-v2-5-f69e52b36207@gmail.com>
References: <20260425-msm8939-venus-rfc-v2-0-f69e52b36207@gmail.com>
In-Reply-To: <20260425-msm8939-venus-rfc-v2-0-f69e52b36207@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: A5FEE46756B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290233-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[apitzsch.eu:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

From: André Apitzsch <git@apitzsch.eu>

Enable the venus node so that the video encoder/decoder will start
working.

Default paths for firmware work on BQ Aquaris M5, which means
firmware-name property can be left out.

Signed-off-by: André Apitzsch <git@apitzsch.eu>
---
 arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts b/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
index 13422a19c26a..48514c3df718 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
@@ -314,6 +314,14 @@ &usb_hs_phy {
 	extcon = <&usb_id>;
 };
 
+&venus {
+	status = "okay";
+};
+
+&venus_mem {
+	status = "okay";
+};
+
 &wcnss {
 	status = "okay";
 };

-- 
2.54.0


