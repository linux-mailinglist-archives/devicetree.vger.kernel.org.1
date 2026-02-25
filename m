Return-Path: <devicetree+bounces-268119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOUYMLKMnmmPWAQAu9opvQ
	(envelope-from <devicetree+bounces-268119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:46:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BEC192256
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:46:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C1403045238
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 05:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A75F2D6E5A;
	Wed, 25 Feb 2026 05:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W2P9nswb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4748928314B
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 05:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771998359; cv=none; b=nF3dQ5NYSsSuVXDv3TugWEY9lGzXwuUBfn5FQM+1nHZ12Ns/Shy/4Ph5nNzqDaZoHueeF0Ni5d0sQr318GKUU0KBlAxxwTx0qtJfwzeXRlhqNEYSSSc0r2VT3v/NjjJpGWJeGUii897/8vsX8/jv5K9YLjVvWHgEagfR3FY0BqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771998359; c=relaxed/simple;
	bh=ChNvtHrH4EbYmvN5ivxVHMr2Av3mczy+XB4D5qEHwTY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NJZeprmSxxOumcVkOSB3aTcZswigf0KfcbmBaCuLZSIxAYQ1V3HovKgV3SRgqYCBgNRxXXFvhuEHNyfXsy2eeHmsWd2jWmHZitK+ZLt7KCx2ZfzoBM1DFEuCLup73NL8cSSFESpyOKeWuthHpNlVL4ppdwmoWi6HyX5jT0BvhHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W2P9nswb; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ad21f437eeso4166825ad.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 21:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771998357; x=1772603157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UcwLimubQBfiLX8st4sqZlervVty0bzM6m9RsnitoWg=;
        b=W2P9nswbpjQOTBp88Gm3ul50souYSrbfd87s4nNLtOERgxphT0Ne7sdes3sPJ9+V0Q
         U9TMak5nlj5UfgPSIPLX/8uAMBhKWvDxsBM4mt9Wk8WSRuiwy8wATBpUMTW+55AZYVjE
         Vfg+YOb9MT58Ptiqarb4u8Q6F0mbzFOatsymXkzC+SylDlPZqKO4ii/CtKir6k9ytJDL
         vlHbVIoQiHGPzobQ8hWU0GtbhuRlxa2BlvZBF2wLiNOg4B1Q7ghkQLduZXaXpa11kbIN
         R48DcXJILCggv+dtYOpOb5dSCZFSoN5itxkTuVfKYilLpUm+onk0x+WBmhntKPvE2+Mt
         bS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771998357; x=1772603157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UcwLimubQBfiLX8st4sqZlervVty0bzM6m9RsnitoWg=;
        b=CYFxX3poZGmHPyUWkCvLb6t54X+ZdkT2BepVGGbYL67SuG/NTLqlfaGSIV9NkRDwUK
         /EwjO38xMNU2zbiFQpWzgBD2CF1XmMIZAL5L67XZ6LNnevIOOr53cPIffwQufXQy/Tae
         zChwNI40ZU2C4ZKOuUZH8asKjYq7k6EcuJjt7BTfLz+8JNazhO7Grl2Xot5Q2Pe+Q42w
         JVaTjCRDjWqECWGGm5TwQ0wXHmUSDEK9s5bXf+88klp0B0/ZtvEKoT3ZcfIBo4ltHMNt
         wZ12slyoJ4l2gxneQEANqrJjhJg1SmqU6VBl7sFBNLxjv9aqeB8YV6VwhXoJiMNn24rL
         2+pg==
X-Forwarded-Encrypted: i=1; AJvYcCURigD61M8s/i7dT+1d6e2/9CqFXcYxdamKbwmoUedzlAavgjU0veDqlC74StlmvN8lY/khZBuhmFiz@vger.kernel.org
X-Gm-Message-State: AOJu0YyPlV0p9+NM0eLma9MO3u3MbYYTFVS3qibFDylFkqPsYwIjszpa
	xh6rJppWvB8Kbp42/am/QIrSInNaOGS1qLOGKgEeGlZGK9vdrhLnrIFJ
X-Gm-Gg: ATEYQzzLJwj1ZF1W48ByMxlbx78BpO0AiLXlVuEYSeNlE0gTdVrnRNJcZhzYPaF1rh8
	ylWptELmLnAyQ3wXf3odMSIsLZ4B6c+SyMs4j8elnQQP4ma0WIw8auxDDrvuaUzd+EO5qPUYTmn
	o12eSxYHlN17TEvk26TYAieIR6AIIMn/gxAV7/0f8WiWsOyXuQTLMKjntb/8LVh2Zz/EXEFiffE
	7iuAzv5ILMwd0LWe0paLMk1te3u0tvoURo7L2hCqtIHNWWGQhbDfDMlFrelB6LJfvOqLYFB7TAs
	q61vYT9+OhWBOYVZwf4RxgA9wZdRkqs6eTg3Ddi8gjkGP06UdGCnQ25TcRhLgti8TR0Kn4vAdr1
	pml5HAk7MHa+MvgmWlGLzpjw6lEVFEaB76Goyj56KNJ+nqSmwfniXTzGpfAU9ojPnFZHsJ2BODQ
	sFwSZM9N/q2WWgmlL8
X-Received: by 2002:a17:903:acb:b0:299:daf0:e044 with SMTP id d9443c01a7336-2adbdccd7a7mr24913605ad.18.1771998357542;
        Tue, 24 Feb 2026 21:45:57 -0800 (PST)
Received: from nuvole.lan ([2408:824c:a17:8230::c83])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e318sm119665295ad.43.2026.02.24.21.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 21:45:57 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tianyu Gao <gty0622@gmail.com>,
	White Lewis <liu224806@gmail.com>,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH 1/5] dt-bindings: display: msm-dsi-phy-7nm: Add SC8280XP
Date: Wed, 25 Feb 2026 13:45:21 +0800
Message-ID: <20260225054525.6803-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225054525.6803-1-mitltlatltl@gmail.com>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268119-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 46BEC192256
X-Rspamd-Action: no action

Document DSI PHY on SC8280XP Platform.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 9a9a6c4ab..9223af1f4 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,sa8775p-dsi-phy-5nm
               - qcom,sar2130p-dsi-phy-5nm
               - qcom,sc7280-dsi-phy-7nm
+              - qcom,sc8280xp-dsi-phy-5nm
               - qcom,sm6375-dsi-phy-7nm
               - qcom,sm8350-dsi-phy-5nm
               - qcom,sm8450-dsi-phy-5nm
-- 
2.53.0


