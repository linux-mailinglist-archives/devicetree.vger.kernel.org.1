Return-Path: <devicetree+bounces-290697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UL4sH2+m72mvDgEAu9opvQ
	(envelope-from <devicetree+bounces-290697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 20:09:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACD6478406
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 20:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B5F53079E89
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 18:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EA6C3F1661;
	Mon, 27 Apr 2026 17:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cloFT4Ur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748703F165A
	for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 17:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777312776; cv=none; b=Z6X1AYGxzHnStITIEEbu1Onck8QSGHzibH7L49FiDyjtXtLqjyKe2sNzT2tJEMJJbHOjvmNR3o5voIZ9TkdCqzGRNnz5pmpwO8DLdru/H2Aq2Pbzka9F+dCPYA3jFHgKLP3eXWCsHz8U0y+13h48ktWeB9ocIFMhsMcpK52i3mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777312776; c=relaxed/simple;
	bh=jaeITwTqO4QGRkrd+ii3VEXitM34y6Z0TnInmvQS8UE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TVVsaOw2pqp4IpKMecfGJiU/bni/P9yCl8TmAds3BWDSr3MYYf8/m/zT/UFk5BahF/dhdxl4I37Y6ODT52UnFhSMKJxGnEJV4/Br3nxjyt20BUMILwipXPNP9Q55w1/Y0z1OiRu5pkR40Bjj8vxfIsMOfczXAHhdq9fA1NQ2g0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cloFT4Ur; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-79a535e7c00so114040937b3.3
        for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 10:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777312773; x=1777917573; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UonjgGu1yenUo9y1UU2Zm+nX8gxbxS5Oh+dqLJhe99s=;
        b=cloFT4UrX1eHGRseqTfWtZAWUrTYM1Ah88ObizgSjn2oOSz2i/ut7BolUj5m6OobQO
         AtaJk99aTPh+N18Uvr9OQkBfkJDl/vwpPR5QqLJYJaY5mTctquf6ezA/i4cg2n1zjzsC
         Zb7TV7Q3oK25agJ8K6dDg3KbSr/kDiF+zLK5YPQBaGbH2EN7+KLishycnsONW6yeo5td
         CGGQJk4q01a3iP+IMcLZhCx6EF3K5NzYwi64/vLiqLME5OsB3h4Oe+ctYv/zYYjyaM+l
         ca/sBV81xwQWjg/S+K4ctBrS+hH8pzStTLoq7dtOQ5nYCbGIPh8S60Y/8T83QNPLVDo1
         RYLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777312773; x=1777917573;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UonjgGu1yenUo9y1UU2Zm+nX8gxbxS5Oh+dqLJhe99s=;
        b=LlwZBVS76xTA0IEPhzOlHlEqXT17XzZCWgM7fE1jFA2uhmD9JfIxyhh7O5BYTIiOih
         ocZbDwRMiXFLoHZ0MybbYTzlcGCRGYceHzvS3l+OjUJQxTHplYD6n/nmbgWTZVorjIcb
         WpTFz/3Srn5o9sd+OOFqIS2DU4/vnAotIRy7n81A7mfZavRjxeYi9+3wZ+5LSqp5JXq9
         HKa9XcfHTc7LTLEYbM+zw8763aJbJZXAUdB9ns3VdDqChAcsmUNBZABE32Uq3NgvizOB
         9AhmHGEky/FWe5YUvMrO58gn9q46XAWP+G3ZfAfl8+nY8shV9GJwiGtUJjUVUgBrLhpk
         vvvg==
X-Forwarded-Encrypted: i=1; AFNElJ/27uGWhvcX2hY3oil/gxlRTA4DPAv4wkNtTD/7cGXD8qdQK0smzXfK2kyiFYKm6jTQcsQiiW0WTZXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyyMBi6eNQ4IogpnF/CmmwLagfH05gvH1uFKX0Y0NY27UpK2W6T
	fA7kLgJK4DkGiELSwvuWuDQvp2hNsrw70U5ofkIWJ6HtT1Khk+XIMnve
X-Gm-Gg: AeBDies6YNQeqo3nWqW13QCfeN3rNZwqbytXV1JuVrfhIy1zvOqXRhTyojyuzkbEjiG
	3ScuLZmJv+UQHxsfPo1vcEUtqfTg9UyMz72bQ5Hb3BRHcwsdJAIgaQQibHpdI96KKDhqdXVUg2A
	nZFgtxj3OCFLv0LALP+E6VKQ10zsmbOA4WQXjVzuL1+1SJ9AtHiTXpq8QB/ZxOn0yMrBe/g/5i5
	TzMlqFujEdd3rsIuBzS8cHls5UawXZDpfufe3rEc6S3l5Pb/CRIdPhoWdQOUju01Xkf3TKBJzgx
	EbIZU4cIl+Yv9w6YEaEWtZqs9SDDyE73jm5/z8oIBm/pTvnq+NKUbcEU3lUjmfOCysEryAlAVhZ
	ojEgS02896TCYYptcI1/gkvh3yc7JY1YNQdPOPYHc4tcvLeAgw9n1wNLnuZYT+lV6LXgGiuU46+
	pG2C511ZtPq07W3tMRE07aD3zvpQ+yLooL7nvP5vF24+UcFxg=
X-Received: by 2002:a05:690c:9c0e:b0:7b1:e942:bddb with SMTP id 00721157ae682-7bced9fe6bfmr3858847b3.13.1777312773578;
        Mon, 27 Apr 2026 10:59:33 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7bcf05e9cf8sm198467b3.18.2026.04.27.10.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 10:59:33 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 27 Apr 2026 20:58:33 +0300
Subject: [PATCH RFC v3 11/11] media: qcom: venus: Enable HEVC decoding for
 MSM8939
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260427-msm8939-venus-rfc-v3-11-288195bb7917@gmail.com>
References: <20260427-msm8939-venus-rfc-v3-0-288195bb7917@gmail.com>
In-Reply-To: <20260427-msm8939-venus-rfc-v3-0-288195bb7917@gmail.com>
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
X-Rspamd-Queue-Id: 8ACD6478406
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290697-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

MSM8939 supports HEVC decoding. Do not disable the HEVC codec HFI bit
and add it to codec type converter method so it can be recognized.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/media/platform/qcom/venus/core.c       | 2 ++
 drivers/media/platform/qcom/venus/hfi_parser.c | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 5bd3ad21b366..943d498f4e4e 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -178,6 +178,8 @@ static void venus_sys_error_handler(struct work_struct *work)
 static u32 to_v4l2_codec_type(u32 codec)
 {
 	switch (codec) {
+	case HFI_VIDEO_CODEC_HEVC:
+		return V4L2_PIX_FMT_HEVC;
 	case HFI_VIDEO_CODEC_H264:
 		return V4L2_PIX_FMT_H264;
 	case HFI_VIDEO_CODEC_H263:
diff --git a/drivers/media/platform/qcom/venus/hfi_parser.c b/drivers/media/platform/qcom/venus/hfi_parser.c
index 92765f9c8873..178274d10c02 100644
--- a/drivers/media/platform/qcom/venus/hfi_parser.c
+++ b/drivers/media/platform/qcom/venus/hfi_parser.c
@@ -207,7 +207,8 @@ static int parse_codecs(struct venus_core *core, void *data)
 	core->enc_codecs = codecs->enc_codecs;
 
 	if (IS_V1(core)) {
-		core->dec_codecs &= ~HFI_VIDEO_CODEC_HEVC;
+		if (!device_is_compatible(core->dev, "qcom,msm8939-venus"))
+			core->dec_codecs &= ~HFI_VIDEO_CODEC_HEVC;
 		core->dec_codecs &= ~HFI_VIDEO_CODEC_SPARK;
 		core->enc_codecs &= ~HFI_VIDEO_CODEC_HEVC;
 	}

-- 
2.54.0


