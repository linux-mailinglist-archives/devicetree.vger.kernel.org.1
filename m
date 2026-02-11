Return-Path: <devicetree+bounces-264573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNShOaHji2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D2D120A8A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F838305B2BE
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1261E2F0C62;
	Wed, 11 Feb 2026 02:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXs2E65J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F462EFDAD
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775362; cv=none; b=rh7cn1QVzK20R6EzHE3J8+QM2X3oNlKZDxqW/5cWC67yDB0rIfm1XYXv+0OkCXtxItZWvRJCrGUaqS34HD6kGeX042m+PS0wFlGmHua8oPSYNFSI2OuWCAkPdVi8dEdQ9eGMqZjsv6jKrTtKuW2rF1eXE6KUpaZFpbadLDWsA3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775362; c=relaxed/simple;
	bh=xR/y7Hyddrcb+jajnVZbm9d2DBLyODaE0s37WmmwLnw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QoN5V6A2pqub0/tGdZg5YBmxFF7bpW7IGKLwECw7D26Djk+3+bCgUVbiwKFG0SpCKUchdySpfz0LOzAJy+jJ2GZqra8NePLVcefSS8ns2VvU8WED+QWC8OdfnoFmQNMlrv6b8ieSLh+cvjnfokF4kQ8H8krQwy1Z+sZ4eiWtAH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXs2E65J; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8c70daf9c94so461660985a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770775360; x=1771380160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3CwB7WHiwTdv+oP9pKXzEf1IEdmHOUqyv08rivHB76s=;
        b=jXs2E65JTt95H2dVaAB118a1ivL737Je8R4ITBBtFZ6gdxyAxUywwvP54hyf7dXWvN
         VPlQaffkbLUmp966vXOhoyLOZlSTfKaiXfeWTG7fQewYJXBGWdkfxe7JBcy85nlPr5ee
         oEbDyyPRNtYFnetH4uhr/VNO7G2Gmoa83JIxLDFJcjOd+RVV7NYWzeDsAnN8/nQaQaZ3
         EDi4OIuwS+S2duFt6XBOcHR7QbKM32gjdtBvrp+rcrGyELmpks88tl/35bH27sd4InGu
         vOpMv0WjW8+gPZWmL/F7voqQz6tXg1eEChbIYu0GoiYIOXSvu69uKjNv3FM9G8dVR1ay
         990w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775360; x=1771380160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3CwB7WHiwTdv+oP9pKXzEf1IEdmHOUqyv08rivHB76s=;
        b=s9qmrEl9n+fOBbUwZP8PQQZzFlysQgOZATBefphWXU4UqWEAWUV+gK86R4+hgBpz1e
         niZpkJo46YI6ga85MAD9qMlPq94QrYiFHxSypwm42bPOGMUXVaNfeQ0yAeSSnJOYlbtR
         xW44eLW6Ysxj+92L2huFz0uNJDAVajiuejy14ZT8lwYIlqvAUQ7l7y2BmNQmWA3k3v/A
         sr3RLorlHjcSFttvMyeno/04sFV47ZcB3cKlEp1dyjH7z0s3sesgBI4ZX3GCs+1Kn1qu
         E6l3ADeLyxTj/jEQZ3DAaWSYwkr19tKNpaN9ZvD8D8enCpfPofsVXqxHcRqT73VkE09F
         KsjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUORQB/ZsqzB+R32oal5mZfdiiSIvuA/KBsqcJ7PZeBYp8lk7vCHSzXmIoxSJSdr0P+L59LmewXnnDU@vger.kernel.org
X-Gm-Message-State: AOJu0YyTWMAmqDTD29eE2uWhpj8gZhusXDB7S1jWzHeab+El0ZLQlvlF
	EV4nVBO27mgLv2B+PVecPWwtn+Ryx/eAW4DraSKWujBavxujeC7AWCiJ86bE9w==
X-Gm-Gg: AZuq6aJUreByvmSRK5JVTt6kL8FeCFDMd0qEdkH7Nx//5bJlcNGcYKhOubAjDs7gBme
	O7eyU6Fb/SrUd74KS61+uAIbxQkdM1RQW+EUshNxKGiIRtNmWkkG6vNkpr1s2mZF8oGaJ29J1oo
	80CGF/t7U/IZ48nsAUuZSltL4VxCb/mJju+9ai3M6begoJ4DKsIzQJk2XOeF8+IJmPKsTWmK4Fj
	CoKb+bBEHQUHtGrp27y5D0sT8vYtaM/U0cCH1KLXLy1uKXLimXaojcuFUzOOqRv0AakQ56kbReL
	FJ0cKxmsZiFPvHSK0HvHYJtaOypIJ0AAm9XCWdzcooXp/cAlPWDHv8KnLwhWVAgKoY1TffxGO5O
	GlYfPhi+AFLU99uMCKLuUBcNshmzT2e4fl19L3+Ds0bugUlMrZBXlHkIDFfM8CAd9KNDL7+XzFx
	YUR9IjQg4idOdV5lXF3/21Ou8GuVM95D9ciVwEDblM24NAl9OaIk/EIuwcVLQTNufQLrL+85Thk
	fK9c5qvNO2dEVs=
X-Received: by 2002:ac8:5a91:0:b0:505:e5ba:14ac with SMTP id d75a77b69052e-506812528famr17195711cf.72.1770775359798;
        Tue, 10 Feb 2026 18:02:39 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b1c7eb3sm10593385a.23.2026.02.10.18.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:02:39 -0800 (PST)
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
Subject: [PATCH 02/10] ASoC: dt-bindings: qcom: q6dsp: add internal mi2s support
Date: Tue, 10 Feb 2026 21:02:54 -0500
Message-ID: <20260211020302.2674-3-mailingradian@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-264573-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 88D2D120A8A
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


