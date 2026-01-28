Return-Path: <devicetree+bounces-260387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIXhBuUAemnq1QEAu9opvQ
	(envelope-from <devicetree+bounces-260387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:28:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFFEA1365
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45511302336C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4482D7DF8;
	Wed, 28 Jan 2026 12:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="rk3Dnej0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51F734EF10
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769603219; cv=none; b=OSKTEKSYPs9jEIzRaBZHCWnqY4aS9cJ0MbVpKXcenP0gbC1Wit7UJIkDw4C44ReVoUXo8CrxgAfHKe2HbJ1dWSbr8TyY4pNEtUemMxfeawiMGfutCPig5O5TFxnMPl0cDavXUBbJUdHlFQdIyPrF8bdOz9o2Okt0MEM3BY0Aou0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769603219; c=relaxed/simple;
	bh=qkR3N/gsmXgYO2JfgTiDk4iF41iC5S+pPDgTyzbp068=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZC9kDCxSfdsY9uXQTWtZUlF8f/mb59Z67kKd32iyfy73CAaerif3itbYB8SL1Iql3D7snHNwrrYVxVXtPX7PPAIjCxkvI9ilrLHX9yxTin/SWzGWvrM9AWVaoxY+NFn3LUZ7YY/TWn23F4E9KAJNSzxY8XrBGNU9+OvJavjhhJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=rk3Dnej0; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b885d8f4092so950749066b.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769603215; x=1770208015; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2jzxQ31iaqft+vnkSfOSrEvDmT77JQeklbr0dv7ayhI=;
        b=rk3Dnej0q8dfkhQW3YGvlaL3fgExgtiP0DNmUWDjQh1XkzTvCTa4AfhcvTPLBWdNjx
         RTZjfwaLrrweb4E1uRHuHrGiQ72H5yGPII5NTf6uxdCvu4HufrXnTPLxbWLPk6HLCC2U
         0gk1TmQbXjaGnFM2MfzPPlFTyRgkyZk1wxomvAAcMKCMzNmo08bGq5sND7+Kw5oLpK+d
         v8VwvEhIUopzYotosJNtls6QuOUJyJgMOybF4dJ5KrEPPVawCfHGyg6HVB1iCed3k8UM
         oqi2Dqp0jJT75gjQkW5So/YxrXt6D5zghFBe+CJDxM/YLrfukdM7h3omhGRLNbqEpbbp
         JGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769603215; x=1770208015;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2jzxQ31iaqft+vnkSfOSrEvDmT77JQeklbr0dv7ayhI=;
        b=wnSiAqXmlfMrl0v9B7V6J8i9rR5EtV/Jfoyj69GRw1ki+o1aENeHnyl1WGoZCokoNI
         YNHnNhSdvgFKnRMbs/TFqYIXsgLQ4l1BIYGZI3enOQenVVhFDAo2wpy4dqivGCo9tJHb
         UCM+2+IprIsesHUGfpQqEL6/0J5ngf5iXXk+UnUPVZUilFZn8FH/sf2rO4omY5PuMPJJ
         AEG9ReQ/Gsqg1fH/G+qeaU7ZdC4PeHKiKLuzQKRo5Tr/pAUaiHYDUqVtvVRorBZm/jV1
         3ZMlm90E9yyOg1Ax8JV1Lw1bzqSdQbI/saPjadmxGpGfJW7gz097h5e2BREKhhbg8utB
         42ow==
X-Forwarded-Encrypted: i=1; AJvYcCUCUE2e4AqALQ74Zqip/p89vIVuUuJp46C5IR1pxKtFXlYKe/1/C8LSwzIuEx5WexA5s8YSsWA8AoXE@vger.kernel.org
X-Gm-Message-State: AOJu0YytOukPqoVnEvdlkcgYnwpDiPBAJ9krxF1Ff/1TIEqoDNZFjJ0z
	6yjW2LDsUUjWuHNpjvN+TJtogFaUAajK12nm1TF3TEL0joYO6njAwMANOqayIiYTir0=
X-Gm-Gg: AZuq6aLKxQPHEvxnuqRVRlbl8DyelOHWaFcQ+ef8xykcQaJ9SLp1EG2CsgyLBvvgX4T
	Y/I/2toj8ZB3tswRnAPN+VHe4xBRusTxSxnHn9d2KKKYt5RHvDvujZlyTkGiTBUG3bHyLDT/rW5
	pFOE7EMQ1kW7ebuf7u1nM+cre4I3WzmOvwDCypvGPsVX5JNVT9D77Tq98u4TSaq2ld1jqYK9v7F
	Ei5ygCSolA6G0bS3sPdvdVRWAmosHAuCxnAdOQlgNXSTLeWfBA5KdbMKPzPkR1AZpX4/BYcFfwZ
	56QAEfZHo2zhxWu7q7kBJDQMq57Wg+MuNbMubN+o8DQ1RZUjYgUnEbcWACF+0aSpRNy7Xn3tjKQ
	t8hDGGYqPHyYzKXlYMhUV6UgJfSB6mTzp7RoRJCXBZTCGCbUAB7rCC4TksEGVIYyVembzeXOLM0
	oK9IWzVnr9kgh5LHRv55MkDx42994fSLP0/A/zv7tEd8c78NbBlJ098gwVzZc9eUsESQ==
X-Received: by 2002:a17:907:c807:b0:b7a:1bde:a01a with SMTP id a640c23a62f3a-b8dab3cfca5mr370108866b.62.1769603214620;
        Wed, 28 Jan 2026 04:26:54 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm119536866b.46.2026.01.28.04.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 04:26:54 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 28 Jan 2026 13:26:50 +0100
Subject: [PATCH 2/5] pinctrl: qcom: lpass-lpi: Add ability to use SPARE_1
 for slew control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-sm6350-lpi-tlmm-v1-2-36583f2a2a2a@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769603212; l=2683;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=qkR3N/gsmXgYO2JfgTiDk4iF41iC5S+pPDgTyzbp068=;
 b=D03/QgscWazU563APEDJzM7rEkI223CiQQFxLqunbjc4WLt6AEk/9Rcq6Fo7fPo/PsMFqsCIA
 aY6xDo9C375CY9IyyCLXn67jvPq9wusbNMRO5nHBoS2ZwcxH22VIlga
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260387-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email,fairphone.com:dkim,fairphone.com:mid]
X-Rspamd-Queue-Id: 7CFFEA1365
X-Rspamd-Action: no action

On some platforms like SM6350 (Bitra), some pins have their slew
controlled with the SPARE_1 register - probably because they ran out of
register space for an extra pin. Add support for that.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/pinctrl/qcom/pinctrl-lpass-lpi.c |  2 ++
 drivers/pinctrl/qcom/pinctrl-lpass-lpi.h | 20 ++++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
index 76aed3296279..15ced5027579 100644
--- a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
+++ b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
@@ -220,6 +220,8 @@ static int lpi_config_set_slew_rate(struct lpi_pinctrl *pctrl,
 
 	if (pctrl->data->flags & LPI_FLAG_SLEW_RATE_SAME_REG)
 		reg = pctrl->tlmm_base + LPI_TLMM_REG_OFFSET * group + LPI_GPIO_CFG_REG;
+	else if (g->slew_base_spare_1)
+		reg = pctrl->slew_base + LPI_SPARE_1_REG;
 	else
 		reg = pctrl->slew_base + LPI_SLEW_RATE_CTL_REG;
 
diff --git a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h
index f48368492861..6ba0c4eba984 100644
--- a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h
+++ b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h
@@ -16,6 +16,7 @@ struct platform_device;
 struct pinctrl_pin_desc;
 
 #define LPI_SLEW_RATE_CTL_REG	0xa000
+#define LPI_SPARE_1_REG		0xc000
 #define LPI_TLMM_REG_OFFSET		0x1000
 #define LPI_SLEW_RATE_MAX		0x03
 #define LPI_SLEW_BITS_SIZE		0x02
@@ -47,6 +48,7 @@ struct pinctrl_pin_desc;
 	{						\
 		.pin = id,				\
 		.slew_offset = soff,			\
+		.slew_base_spare_1 = false,		\
 		.funcs = (int[]){			\
 			LPI_MUX_gpio,			\
 			LPI_MUX_##f1,			\
@@ -62,6 +64,7 @@ struct pinctrl_pin_desc;
 	{							\
 		.pin = id,					\
 		.slew_offset = soff,				\
+		.slew_base_spare_1 = false,			\
 		.funcs = (int[]){				\
 			LPI_MUX_gpio,				\
 			LPI_MUX_##f1,				\
@@ -73,6 +76,22 @@ struct pinctrl_pin_desc;
 		.pin_offset = poff,				\
 	}
 
+#define LPI_PINGROUP_SLEW_SPARE_1(id, soff, f1, f2, f3, f4)	\
+	{							\
+		.pin = id,					\
+		.slew_offset = soff,				\
+		.slew_base_spare_1 = true,			\
+		.funcs = (int[]){				\
+			LPI_MUX_gpio,				\
+			LPI_MUX_##f1,				\
+			LPI_MUX_##f2,				\
+			LPI_MUX_##f3,				\
+			LPI_MUX_##f4,				\
+		},						\
+		.nfuncs = 5,					\
+		.pin_offset = 0,				\
+	}
+
 /*
  * Slew rate control is done in the same register as rest of the
  * pin configuration.
@@ -87,6 +106,7 @@ struct lpi_pingroup {
 	unsigned int *funcs;
 	unsigned int nfuncs;
 	unsigned int pin_offset;
+	bool slew_base_spare_1;
 };
 
 struct lpi_function {

-- 
2.52.0


