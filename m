Return-Path: <devicetree+bounces-238699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D7EC5D689
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:46:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 624B435F12F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB99831AF21;
	Fri, 14 Nov 2025 13:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W/clKp4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2F031AF34
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127505; cv=none; b=po9hazLXQg9XN2qXBDGWUxb63bxS5phiyL3YwhKppBQH3k4T8GAvhOFZ937dJlignmarhg9WxqG71efqm4I27qu3NyC2saG6D/22Ouh0Qn/r8Cd5QAuhgt3rwHyq3h7M2DFN+ARfWF2jDWfTy8+ttS8VEgBrbd7ohQLzWpcqjmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127505; c=relaxed/simple;
	bh=26I9GTLb874hLw2vCdWMdaChtt9DDDr/+PTVQhi4eJA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dRKkDU8DydoQ2BQzAfkr14CU4g2hyW7bkZSIMFgBrD3Y51wdr4eVqaVrb+gixDVwlUI1G1lvFeZNcKnpLXf9RSwogi4rsbP7pziF+n4NTDpM+zbPm/kVqYrNKCPEppAxFRgma1mXHz/ujGDu9xyv2giYIjrB+CEhhdv0qtP5sIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W/clKp4F; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b71397df721so259334866b.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763127502; x=1763732302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VWdQjfJEv17Sa7ZPlM69WVgkJ4xrrn+SVmA6eSQkM3w=;
        b=W/clKp4FREdTVv1gbKsglCI8QRCk/ud4o4OmFJZdgTz9XBEsHJgk4tkSfwn8BBwtRa
         RZkQzc2331XaKe5S9dI/fp2BWTP/D9WTmlc3YGsRRwn3vt7HhDcD2dfRSCdwvMfgGMu+
         3cJqCWtvTpP1ZMWwkJ23WUQokCvBpNCcFw2Wwdzp4U//V5tJ1UHLiU1E3KaGeBneMMNX
         Dk2TlVKgQnYRtR2Bl7hjn7xy0mGIBkhZ8KAcAfQFSDlA0Yqan1dCptNlPhoudKseCu2S
         6NnO43H4y0rXXEFw2nElv0OnPpBqEyghfX7HXjr1rZ6khWqzejDTlHO3FpHRuMfPiPHt
         LNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127502; x=1763732302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VWdQjfJEv17Sa7ZPlM69WVgkJ4xrrn+SVmA6eSQkM3w=;
        b=EHFqXyYzVIvXk+KlOBO5E3WSrl9+6C+Zzur5OL7j6L0Mx4i6TrlgqKVlSr46AtrqmA
         FrTqMTZ/I1tTbcjNrHyAgbW+WFZzN+GqDk0+FAZk5Hda3OWzd0r14U3Z2b5KF/NPTnAv
         OKAbHC6/rfAntcnfUJe2lvm96H3e1tAppHNvT2DtM4u0LLOuq+/qFJuGFiZxKXczYqV9
         tKTxBGJoNc5vjKgm26wIxo3ai7Lf/K8gaPFxy56mb0jwG6KDrfqAymzp+tbtsJKkjlwE
         uFxBhADQUi2/VoFnp7W4Sv/2KO/HmhFXsnt0FgI5CTgDxBlslCSgCat5LAAmqGpytxop
         KKTQ==
X-Gm-Message-State: AOJu0Yx/w4DwRByOw2YKItf+IqI1WuvdSJ4WY0KGTBQO6oEtZnpy6joX
	5YnkQ2buRbHHQXwO1BPmsWTlYHyQOPOPnmd8hiNDtPPYMyD/QIyhUkel
X-Gm-Gg: ASbGncu6k5vyuOXiwnYEWwtUixxVoF+9a2SRlyO0OmyCx+8vhOQetnJM7JQebkMb6Rv
	uMvSDYbvxbUkvvz+0KWiDJl/EHXvfWKwGz+0SdMvNgXvTxk++OtYcgBfeMz3uKsu9IpMHcwmiFB
	JD03z6OEZsavxCEh5UaDxlIfiyJ/0DU6ALyNrPdofqiR6dzUf2VrcVsU/5G4j+qu1ugOc7Az091
	pubCA7nxMZTrh+G8TK4N1NQ0POaQQ/9JO9sdw1qKHe0jccJDBBmQ+yWGjdKr0jfA09kmMpR/2YM
	eVlWrm0Pkf8sV/GAZ0H+rcfDPfVhG4XTznSLNiJYitUY3gvnP4t+4BiPB/XV0TLFO2kblFcQqGt
	JX4oySYrNpgBXZ0YH+bBZ5LQwF5R6zCCee3M5bN69g9BfinFNE+y5xKm7laIe9w76fqwZHTX6an
	3uDJdSaCp9yHvjAjEOG92/HpEcMygVQ8drGIyJ7A==
X-Google-Smtp-Source: AGHT+IHL8SCZliSxbU3IoQx/aVhNRnS5pIg2oX9HCryB27tJyt6t44B6IxSN0UhqL2jYg3FBXXfTZg==
X-Received: by 2002:a17:907:1c81:b0:b73:42e5:a59e with SMTP id a640c23a62f3a-b73677edb7bmr274842566b.12.1763127502138;
        Fri, 14 Nov 2025 05:38:22 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2cfsm385330666b.71.2025.11.14.05.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:21 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v5 2/6] reset: imx8mp-audiomix: Replace mask with bit index
Date: Fri, 14 Nov 2025 05:37:34 -0800
Message-ID: <20251114133738.1762-3-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Replace the reset map mask with the bit index to make it clear that all
reset lines are managed by exactly 1 bit.

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index acfa92b15329..d993c294c548 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -19,24 +19,24 @@
 
 struct imx8mp_reset_map {
 	unsigned int offset;
-	unsigned int mask;
+	unsigned int bit;
 	bool active_low;
 };
 
 static const struct imx8mp_reset_map reset_map[] = {
 	[IMX8MP_AUDIOMIX_EARC_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask = BIT(0),
+		.bit = 0,
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_EARC_PHY_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask = BIT(1),
+		.bit = 1,
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_DSP_RUNSTALL] = {
 		.offset	= IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET,
-		.mask = BIT(5),
+		.bit = 5,
 		.active_low = false,
 	},
 };
@@ -60,7 +60,7 @@ static int imx8mp_audiomix_update(struct reset_controller_dev *rcdev,
 	unsigned int mask, offset, active_low;
 	unsigned long reg, flags;
 
-	mask = reset_map[id].mask;
+	mask = BIT(reset_map[id].bit);
 	offset = reset_map[id].offset;
 	active_low = reset_map[id].active_low;
 
-- 
2.43.0


