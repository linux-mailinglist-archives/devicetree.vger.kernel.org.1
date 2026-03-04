Return-Path: <devicetree+bounces-271244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC3tHemOqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:58:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B37420750C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD44F3062236
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51BE3DFC8B;
	Wed,  4 Mar 2026 19:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l1JnFAuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA182373C0B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654291; cv=none; b=sCHXztwfEhsA1k+DWYrBrolxiLXVKg2DF10o4yMiWCJ+wZe4Eq3YrqZ4Pa/QLhzBHTKdLVp8RJ3wuMktJSDNd35AQ+HGGsIJWlHbRDlTGaUGAenTKA4FI53LmtLek13wauaymeHPV1q+KgmALiBhfJGJP6d+0fMxGQmHLgE5tEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654291; c=relaxed/simple;
	bh=xR/y7Hyddrcb+jajnVZbm9d2DBLyODaE0s37WmmwLnw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nTrYJc45ps0hLJgRDUU5hzKvZsKjgKF2XB9pjTXp3hZOkXpg7nzde/qftasg+jgC7PN86i6wjxBlsyur8IQ98EW7wp028n0uxtpw6m8ZCVyb+lpObB5d/B+p6N2/AkadXMXdZVdquPNO1O9JPC8hY8Lha0JoIDIORS9ZChIUQsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l1JnFAuH; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-5033387c80aso100748941cf.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654289; x=1773259089; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3CwB7WHiwTdv+oP9pKXzEf1IEdmHOUqyv08rivHB76s=;
        b=l1JnFAuHWS5v4w2NtUtAkqNRlhHdPVx6PwehyKMogcPBk5HtjnumWEvMLzIK5Wt59G
         kXURJqXX/Yt81r/stXC96rvPYdgCCTEzm21IA4AYd5CPaiClhPWfQYlJF+tZOn7c/ubr
         qBacl5/3WuqglD0QK4PZT/0jkFINLGkhU1URdUctWbyMYIgUjSgWGMwLC3hY6KK3KMs9
         nZoCUPqyKOXIcUFziuwg0niLazPrtIV093jWEn8Xhuxlni7L4a3d5BzXeXD30JXctmX+
         PaoncawvlS4oAygl+Q3IEtaUKMdmgG4/F9WQA/1k6R3+LYxRXduFiET7/qdH7hI5vNxd
         JebQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654289; x=1773259089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3CwB7WHiwTdv+oP9pKXzEf1IEdmHOUqyv08rivHB76s=;
        b=BV2O79ztniuWqEl6s82xfS3EqgdDU8SGxRYkT3xWB/xU0Fi5O2gXOdvCRLT9fy/Iku
         CeR6dvKfjQRPmd4lD3Stab52XXDFZBMuxWBw+Ujn9QeBZbjarVsbKFBYKTc9C7WNriK7
         ysI2fhYE4ZMakEtZQelc1aSc4i5VwRqpwO5xCElnTO7Een+bd+5WOeINe7+ghulhhvIo
         Dhs7RaqVp4ZKX7TVD0J+3Ynr01Hl8EDSegrdaW5oZPb5b+V7I3l4gG1c2D3JcO140OeK
         ZZjj0xp/vOweqhI3ui3ho0Mbwu+3dRI+xtkw3l5DpTXptf003vllkjpHti2D+gzI6KV3
         bkTw==
X-Forwarded-Encrypted: i=1; AJvYcCXIPDRf7CMC69CiyqN5Vfe3T7pnQXh2WUcfAW/rX1QaS+TgCNozNihWgk6/ZD5JT6uJnYHO5a+c8SVk@vger.kernel.org
X-Gm-Message-State: AOJu0YwPXuR2f/+HZ1moFXw5JV8BHscxRSG51Vjp4TpTiElQqHlaAEj6
	TpauGzh4Qbj2SLtQZdqORTg5eaw4xHdqElJjUt3QVHQ+/LCUSmTOGgR8
X-Gm-Gg: ATEYQzx3e+y5I387P9XCMJp4RW+531eTFWbbw3ZOMpBKtNRF9yDvNdHO7f9Ji6JOXip
	rDtWROQw2499WhbMrAVilsuab1kTyJtgr9jW0DY+jzpjedvccuMTGVX9N0d3xvhETqS353HYfFy
	F9+/asgi/hS2DXECXIgoBC2lIvccdbMh2JndD1r3+5n7gMOLI8F6Y45bwV5AwlpnqgLbUw7goaq
	zhuB/LE5k3Wvhg0WWlP5T763y9o7a9zz8dRenEbEovCOoV+OEOIJwZ1lmXpvkNF9i1v+S4vfPIs
	fd78wKHdZra5wZHSZjrGjWBOqW603vTFSNNVLvknYabUvLm2aX6WJfk+auVgQMCIHdq+1maPIfx
	5/LPtRNzfcsX7B7IrsHSKCM0WW7mZPPumpc8dCwQzgOZuF9LoVsjSte7sdQ3T3MSMF9fPL8nNbQ
	q3FXxRdGZ9lGOIEAJhELTqLLmpTA==
X-Received: by 2002:ac8:7fc6:0:b0:501:7d6c:2d4e with SMTP id d75a77b69052e-508ceb652d0mr84601891cf.42.1772654288623;
        Wed, 04 Mar 2026 11:58:08 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899e53a0d04sm107589146d6.1.2026.03.04.11.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:58:08 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 02/11] ASoC: dt-bindings: qcom: q6dsp: add internal mi2s support
Date: Wed,  4 Mar 2026 14:58:06 -0500
Message-ID: <20260304195815.52347-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304195815.52347-1-mailingradian@gmail.com>
References: <20260304195815.52347-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1B37420750C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271244-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The internal MI2S ports are found on devices with the internal sound
card for Snapdragon 660. Add support for them.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../bindings/sound/qcom,q6dsp-lpass-ports.yaml     |  5 ++++-
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 14 ++++++++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
index 08c618e7e428..751913894dd4 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -126,13 +126,16 @@ patternProperties:
             reg:
               contains:
                 # MI2S DAI ID range PRIMARY_MI2S_RX - QUATERNARY_MI2S_TX and
-                # QUINARY_MI2S_RX - QUINARY_MI2S_TX
+                # QUINARY_MI2S_RX - QUINARY_MI2S_TX and
+                # INT0_MI2S_RX - INT6_MI2S_TX
                 items:
                   oneOf:
                     - minimum: 16
                       maximum: 23
                     - minimum: 127
                       maximum: 128
+                    - minimum: 137
+                      maximum: 150
         then:
           required:
             - qcom,sd-lines
diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 6d1ce7f5da51..6753f7bf004b 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -140,6 +140,20 @@
 #define DISPLAY_PORT_RX_6	134
 #define DISPLAY_PORT_RX_7	135
 #define USB_RX			136
+#define INT0_MI2S_RX		137
+#define INT0_MI2S_TX		138
+#define INT1_MI2S_RX		139
+#define INT1_MI2S_TX		140
+#define INT2_MI2S_RX		141
+#define INT2_MI2S_TX		142
+#define INT3_MI2S_RX		143
+#define INT3_MI2S_TX		144
+#define INT4_MI2S_RX		145
+#define INT4_MI2S_TX		146
+#define INT5_MI2S_RX		147
+#define INT5_MI2S_TX		148
+#define INT6_MI2S_RX		149
+#define INT6_MI2S_TX		150
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-- 
2.53.0


