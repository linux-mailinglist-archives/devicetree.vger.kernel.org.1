Return-Path: <devicetree+bounces-262162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPrYHFDIgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:05:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFF2D7490
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8EE91301A431
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D9B639B4AB;
	Tue,  3 Feb 2026 10:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i4bjb+AQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8963539C630
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770113096; cv=none; b=pRASVtDciz5bOFCMKyOjTSBYRnwQg2xwACTXcy3TyBxyiHche6s0TtIZT+jCOEYMl8eDmbssx/PVJYwSm+PC+K5umstr+yMMy+LuHxSSXz/XNmhc31KJIJTcgCxauw5VM22ucmI2I+hG3sLlwkKL8VEK7pVmgd+l2wRzl2FiNIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770113096; c=relaxed/simple;
	bh=LTDt9fi4JHMSnHlrIwfIAx5d5MWGZYp0pTmhyqg8FnY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ib0f5QAsd9OhtujQesvTDeXBnDmudV1k0LWpAtcnh0uvo+4pUvR1Yg4y0StS2cdCvHeF0GrsKP9V9jQGkC4rArrWILJdwWC72H0sC4VVptMZ5TjnBZ+885G1x+va2lvJhqMQy6z7MtC33rcQOPQoRYWa7UrB8NPRabANP6sQ3fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i4bjb+AQ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4805ef35864so46462975e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770113093; x=1770717893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p3UlFA0+6h5s1DkPOfyU17WjXdqB8dUR/b6rqqbq2XU=;
        b=i4bjb+AQPmH7jpP5Eyhc6zaKVkX58STUtNdy9OfGLY+XVCHOcxsQT6ENf8dQE7aS8A
         RjGh48vDORn0F7CT8qfMgrppv51t0OfMSAaBICQNc4YOijJShYLO0GE4TNgcvZUBbQ9U
         FMYceZ4bxzu4+Tr+ZRFMlI2+Hq26v+seisOOaQM6yEnH0pc4awrDGuZKHlJD6w7dmvCs
         46VJwb+asKtHZC0O6JkbV+cxgJhJqqLEn3g7A2h36uz+EX66Zzw37n2kWqQ7E2lN6Lps
         WcPjfKlWCbVGvVV5UMxFCeAMi1WYew06x4zUHtlq1F/kcxi+AcxU1sIW/icXjKDgOzOc
         gE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770113093; x=1770717893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p3UlFA0+6h5s1DkPOfyU17WjXdqB8dUR/b6rqqbq2XU=;
        b=a4ETIs+gGUTVAyjpAP3HPOf0YC5rkWpbNPnuuRC3QKRyxCfvkhBZpRGyQTSMjG1BHW
         0ocKjXXMiut0atwLO/jI0rU5eYHh7sqZ6BN77i8IT6Tc4s94kcf2NVSJ3xTIHsLoYDYq
         oMeXCOB+PvnAeZdN80Z2QFSjK0tWd8eUFP2IFCbuWCZRY/9cmWFgDcUYh8TG0enb4FMN
         xvDtHmkyKBbdczvFaaQED1xyBCmlz0fDX2n8o97+Oy3bVolgwlY1EpLjioWH65OVf3NW
         28OigJGnSfMxw+v4eSXBimxWlekKGJKoGq+NBcOrlgGFsGmFgrDOTsh7T23sbnNDklfU
         /4xQ==
X-Gm-Message-State: AOJu0YyPazl+8sbuFoMqJMcysOXqhthBkBZdFo/d5PUmlBfHl4aqqG2z
	kLGLgc04gLgB/4Xpxs0IVvxhv3NMnvE2VcHUCe86YudLf8YK4tFYkdFB
X-Gm-Gg: AZuq6aIaaNS94iyivJdi1maEi5U5yTxju0V9jDJpmgKlkcLvBUtZpZOwhS1YkS+BRUX
	3TlDk3M/k2Vf4fo6GHpwBYmeRnLQpRmiJ4gK+aCCGtzUCOSxE1CSEq9vYr1bgdrlmTl4+u+n8Fw
	GY10X7MyR30QAfz1OGD1s95dPZ8kHyKywRuPXFtHFja5C1W37fqLbAR1jnBscs5lh5iiqgQPVgd
	5MkC/aQb0FT78NUVEcCR3sftP8YiAnKp0mfv//2L37Yz8cKhPKIzUS0LozCofC7GPxrW4qR+1LG
	weR/vYnKZexs7bXCcxuBUKA/4cX+C6PUxpnySxW2Gkmi2CDdHYFtv6p/YoO6Unn0CBQL7eNP4Du
	bBHt+0nPsLkykXj8Zgh5i4M+1f3VeSMVkm/rmDG1xdFg/cOf4urfPYPHvDC5gPRGdlH4BnFDmVe
	FI9k/2lXaUbtq3xDIfRe5g4BqWRLtSFuKcZzjT8A==
X-Received: by 2002:a05:600c:6088:b0:47e:e20e:bb9c with SMTP id 5b1f17b1804b1-482db447950mr171113855e9.8.1770113092893;
        Tue, 03 Feb 2026 02:04:52 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dffd47c2sm115534365e9.0.2026.02.03.02.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:04:52 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 1/2] arm64: dts: imx95: add AONMIX MQS node
Date: Tue,  3 Feb 2026 02:03:31 -0800
Message-ID: <20260203100332.915-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203100332.915-1-laurentiumihalcea111@gmail.com>
References: <20260203100332.915-1-laurentiumihalcea111@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-262162-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.84:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EAFF2D7490
X-Rspamd-Action: no action

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add DT node for AONMIX MQS (i.e. MQS1).

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx95.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index 55e2da094c88..0c55861d673c 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -391,6 +391,11 @@ scmi_misc: protocol@84 {
 		};
 	};
 
+	mqs1: mqs-1 {
+		compatible = "fsl,imx95-aonmix-mqs";
+		status = "disabled";
+	};
+
 	pmu {
 		compatible = "arm,cortex-a55-pmu";
 		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
-- 
2.43.0


