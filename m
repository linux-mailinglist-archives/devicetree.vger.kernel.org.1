Return-Path: <devicetree+bounces-73795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8E4900AEF
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 19:04:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 217DF1F264DC
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 17:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B812F19B3E1;
	Fri,  7 Jun 2024 17:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hFpamCYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1787819ADA2
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 17:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717779821; cv=none; b=sSake6tSZKAaqillAfiEFGub6aiCegF/rvEbapwaKKIkWF1nbO8pz1/5Ofvqk8HcXC+clh7hUxTnHCHyF/YaILtSvEDu2U05uMUoK2oBc5WD+pMzbgev58Kc4bkgg1Z76gS/U/N6pDRb3MV3mSdyE5eZG1GUQNmpoWHQl0D97DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717779821; c=relaxed/simple;
	bh=xABQwRoV/rPfzO361kpsP71OpAjQdGoHAsuSMSpEf8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iRUASY3Ny/JVT6I9PpdGbEq1ejUfV1UHyrAWccEeNkkbeg8OFc1yJiNHNykcIOlIRsw7X26qjaQBrsTRRaZNCRb1Ze57sEASfoC44Jo+HgzhwtdQ10ZffTI/ozA0wbtIqfB31pp5052JBJigqo188uFFkQRqPIVU3Jsg51e4ODM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hFpamCYt; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7023b6d810bso1946477b3a.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 10:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717779818; x=1718384618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FhekWzHrW9NurW+RaIOThqGP3SBDgZ6s+7MlrIOk/wY=;
        b=hFpamCYtw/N3mIMaagyv2r/1WB8Ikv0oXO6hrq2HeR63PlpVcWwGjGhUak482wh8n0
         YhJLuDFocjoKsJPf1xPDZ2h8qFYOgmwTNfDlJObeR6AiO+B9L+QPt3uleAP8pjOvU1Sw
         FpMI1u6/sb+MRL9J2SHAuDQMpiCDpQbsjwPDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717779818; x=1718384618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FhekWzHrW9NurW+RaIOThqGP3SBDgZ6s+7MlrIOk/wY=;
        b=mV5z3oJobjEkKX3mfvFTxeFw6p2m7xgXWzJ2EH2Its/WlcQiHi58PUJ/vgr4TQNs0G
         w86I2u8HyihIpooXTmyPLEW/akt/ZOr4Ol2rHfGDfaIhthiH8HUwqsvqpqJ+oYZUm1Xp
         KbGHM+L9nfqK72McgV9PWPi1Ar8nwtWjqZ2vKJ+1SiHuz6fkVXOZdlSuD54JpHhl5MjQ
         gp2db+VcG2hnvMBuveP9bP7vTixFev481EQssadgK70qXe1etTA6G9drNlQu4juOm4ml
         DlMVPA9m9NRf39ZdzixH9DfPv2NTlbnlfpn/UCgUj9bPUXcFX3BEarx9DpSVaV5rzYsd
         V96w==
X-Forwarded-Encrypted: i=1; AJvYcCXG/ECNMJtyjKzBxleBt7pnO0KrO3gz+caAKCt12oRwL78Ij/cvXT8D5qhgTGCWZEjb7y4HYAAuhjjfAbwfLMvuJQcoUOD06r8h5Q==
X-Gm-Message-State: AOJu0YxY43q+F9pBPcJCBtG8/2QYfRM+jYyU6BPVo4TrrdS3RPr2L9Bj
	Kk5MGlINlfq59FeDzafH0xQT3Vspc9A7SuLQMnnEDfiAmNHQQyKAwr6rVbgx1A==
X-Google-Smtp-Source: AGHT+IEpjaA/kSrwAvONF6UhQjiqu4q5K255WpGG4WFBR0CeXDxX1BUw3pzT0BEar/Zz/T7Ht5DJFA==
X-Received: by 2002:a05:6a20:3d8b:b0:1b0:14ee:3b1c with SMTP id adf61e73a8af0-1b2f97f05a0mr3495750637.22.1717779818345;
        Fri, 07 Jun 2024 10:03:38 -0700 (PDT)
Received: from pc98uv11.mtv.corp.google.com ([2620:15c:9d:2:98ef:4953:160:1c67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6e439d12cf5sm970705a12.67.2024.06.07.10.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 10:03:38 -0700 (PDT)
From: Daisuke Nojiri <dnojiri@chromium.org>
To: 
Cc: Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Guenter Roeck <groeck@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Reka Norman <rekanorman@chromium.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Pavan Holla <pholla@chromium.org>,
	Gwendal Grignou <gwendal@chromium.org>,
	Lukasz Majczak <lma@chromium.org>,
	Daisuke Nojiri <dnojiri@chromium.org>,
	Ching-Kang Yen <chingkang@chromium.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Prashant Malani <pmalani@chromium.org>,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 1/3] platform/chrome: Add struct ec_response_get_next_event_v3
Date: Fri,  7 Jun 2024 10:02:56 -0700
Message-ID: <979b1fdaa5b3d3165e53f5429470c42581394d14.1717779167.git.dnojiri@chromium.org>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
In-Reply-To: <cover.1717779167.git.dnojiri@chromium.org>
References: <cover.1717779167.git.dnojiri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add struct ec_response_get_next_event_v3 to upgrade
EC_CMD_GET_NEXT_EVENT to version 3.

Signed-off-by: Daisuke Nojiri <dnojiri@chromium.org>
---
 .../linux/platform_data/cros_ec_commands.h    | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 070e49c5381e..fff191a8d413 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -3527,6 +3527,34 @@ union __ec_align_offset1 ec_response_get_next_data_v1 {
 };
 BUILD_ASSERT(sizeof(union ec_response_get_next_data_v1) == 16);
 
+union __ec_align_offset1 ec_response_get_next_data_v3 {
+	uint8_t key_matrix[18];
+
+	/* Unaligned */
+	uint32_t host_event;
+	uint64_t host_event64;
+
+	struct __ec_todo_unpacked {
+		/* For aligning the fifo_info */
+		uint8_t reserved[3];
+		struct ec_response_motion_sense_fifo_info info;
+	} sensor_fifo;
+
+	uint32_t buttons;
+
+	uint32_t switches;
+
+	uint32_t fp_events;
+
+	uint32_t sysrq;
+
+	/* CEC events from enum mkbp_cec_event */
+	uint32_t cec_events;
+
+	uint8_t cec_message[16];
+};
+BUILD_ASSERT(sizeof(union ec_response_get_next_data_v3) == 18);
+
 struct ec_response_get_next_event {
 	uint8_t event_type;
 	/* Followed by event data if any */
@@ -3539,6 +3567,12 @@ struct ec_response_get_next_event_v1 {
 	union ec_response_get_next_data_v1 data;
 } __ec_align1;
 
+struct ec_response_get_next_event_v3 {
+	uint8_t event_type;
+	/* Followed by event data if any */
+	union ec_response_get_next_data_v3 data;
+} __ec_align1;
+
 /* Bit indices for buttons and switches.*/
 /* Buttons */
 #define EC_MKBP_POWER_BUTTON	0
-- 
2.45.2.505.gda0bf45e8d-goog


