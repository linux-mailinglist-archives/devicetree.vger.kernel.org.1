Return-Path: <devicetree+bounces-6591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CCD7BBE56
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7A381C20935
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD9735889;
	Fri,  6 Oct 2023 18:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IAyRYkOB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7051134CE5
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 18:05:15 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02D5CC6;
	Fri,  6 Oct 2023 11:05:14 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1c746bc3bceso4074715ad.1;
        Fri, 06 Oct 2023 11:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696615513; x=1697220313; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9GzLt7eqjSCCnRTgmtF1m2Nl7kCjjeUWS02UJrHNOb4=;
        b=IAyRYkOB3ZjINQMESzouL9O0XgQTk5YP8DxT6Z0iEfvnGAFqRjTBLtmqR6Lg9onik9
         kpE1rKjq2fTdcFEx9CaGsPkA/Dv9S79+biP0YO0QDGm3OPUTzZX1DaIQVkqq2nkXwyvc
         2ZUUdSKHgJlqhgj8e8RUiKsUtZNvg4Ac4oed6fOQCFUUIstTHnKU2FTIoQFsHSNSU8+i
         HWhHOFPVg5KUiWYITjdjASDfJAebrMVuSZqwwcdwpeE/YmD1yy4d7kUcn8zfSgXPC3hk
         S6F0AZwglQv2TvspquotNDCQF2AqxfIazxSoYS5vN8gZ/6og63NwrMdhNPYk8nz8mkde
         z5EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696615513; x=1697220313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9GzLt7eqjSCCnRTgmtF1m2Nl7kCjjeUWS02UJrHNOb4=;
        b=Mimu1/6k2100LZA7xaCLmO35/s7dHXBbnZd59BcyWDMW7Xh/pW5ZdDGlHwqusFcPxA
         RgNalUOk31rGjPKhoODv5AXioKJAhqwz1CA0/ct8eMhrG1AQKrHiVjXc2jAF/HyeSz/p
         CkPDzb73vMeXH+JLvLW7x248y0z+Ys+xnF0rVYo068sTot37iwuA6zuXjB6hDGKtQ7/0
         LjrLrPzg0UHIW09zBQfRC4whAHx3uppW24jUfNOsKiCnrleAgNkiV3LYgqwIvgitS7HV
         bNwf31PINljj70l9zJdGgHxezH5IfrLX9wipfCoql+dNRB0qNtHrHP4TECbj67T1rxEK
         YNPQ==
X-Gm-Message-State: AOJu0YxMmfkPc7+/zOkphRyleB3bYZ+L7AO32H/Rf3+Yb+E3L2e1x+yU
	P05T5OQxIo0y9wIy7nppk5T5UQoOVHY=
X-Google-Smtp-Source: AGHT+IHAjDxfF1dQpZF1YV7RdnNH3OLMGhipF0xm8+hRiswMOrfbOBgqkz6p6+vxaIsfd4wGO9P1Pw==
X-Received: by 2002:a17:902:ec88:b0:1c0:bf60:ba4f with SMTP id x8-20020a170902ec8800b001c0bf60ba4fmr9297996plg.4.1696615512909;
        Fri, 06 Oct 2023 11:05:12 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d018:9da6:2e69:1658])
        by smtp.gmail.com with ESMTPSA id f11-20020a17090274cb00b001bb1f0605b2sm4165355plt.214.2023.10.06.11.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 11:05:12 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: daniel.lezcano@linaro.org
Cc: rafael@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v10 4/4] thermal: thermal_of: Allow rebooting after critical temp
Date: Fri,  6 Oct 2023 15:04:53 -0300
Message-Id: <20231006180453.2903342-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231006180453.2903342-1-festevam@gmail.com>
References: <20231006180453.2903342-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Currently, the default mechanism is to trigger a shutdown after the
critical temperature is reached.

In some embedded cases, such behavior does not suit well, as the board may
be unattended in the field and rebooting may be a better approach.

The bootloader may also check the temperature and only allow the boot to
proceed when the temperature is below a certain threshold.

Introduce support for allowing a reboot to be triggered after the
critical temperature is reached.

If the "critical-action" devicetree property is not found, fall back to
the shutdown action to preserve the existing default behavior.

If a custom ops->critical exists, then it takes preference over
critical-actions.

Tested on a i.MX8MM board with the following devicetree changes:

	thermal-zones {
		cpu-thermal {
			critical-action = "reboot";
		};
	};

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v9:
- Fixed a typo in the Subject.

 drivers/thermal/thermal_of.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
index 1e0655b63259..4d6c22e0ed85 100644
--- a/drivers/thermal/thermal_of.c
+++ b/drivers/thermal/thermal_of.c
@@ -475,6 +475,7 @@ static struct thermal_zone_device *thermal_of_zone_register(struct device_node *
 	struct thermal_zone_params tzp = {};
 	struct thermal_zone_device_ops *of_ops;
 	struct device_node *np;
+	const char *action;
 	int delay, pdelay;
 	int ntrips, mask;
 	int ret;
@@ -511,6 +512,11 @@ static struct thermal_zone_device *thermal_of_zone_register(struct device_node *
 
 	mask = GENMASK_ULL((ntrips) - 1, 0);
 
+	ret = of_property_read_string(np, "critical-action", &action);
+	if (!ret)
+		if (!of_ops->critical && !strcasecmp(action, "reboot"))
+			of_ops->critical = thermal_zone_device_critical_reboot;
+
 	tz = thermal_zone_device_register_with_trips(np->name, trips, ntrips,
 						     mask, data, of_ops, &tzp,
 						     pdelay, delay);
-- 
2.34.1


