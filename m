Return-Path: <devicetree+bounces-17325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EBA7F2153
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 00:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 402BC28283E
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 23:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740933B29B;
	Mon, 20 Nov 2023 23:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IQQt0Zv2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE367E3
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:18:02 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507f1c29f25so6661588e87.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700522281; x=1701127081; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8yRltIxaSGonkHk709wNhnMOnmu28WhSy5thJNygUYU=;
        b=IQQt0Zv2bwdEOXrSJevG+hwyn4s7Fis2UUAVNvK2bDT3wTVzJ9U/t13uVpkIGJQ8xI
         H4DZzy5poah2x2UW9PUBTqSedJqYNIfXf431BgcTtIRRtfAYjdgw07YlP+5KFgXFHNRT
         gtqBefFnrCoOeF+leB2m0LlnDX4mRhrsP6SOrUt0UUYA+5pXXC6IPTxs3rPweEQiJpAb
         cqLC02iH/sTTQYOD5ulE9nTKImqo36A4RXknvCzKnzku1noVJ2ZRJVuEZMyCQxTAq6Sl
         qlU/MSq4VTEoylegzVG/4rcZ49DWxvl1Xc8tus0zSjxENlbfuVhqWr5XbhS14e5JVAqy
         ijug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700522281; x=1701127081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8yRltIxaSGonkHk709wNhnMOnmu28WhSy5thJNygUYU=;
        b=ilnQQetnd7QoCYA2U5QNQZK93n1TaMrH0QOh/cgYwq2cGl/RHx/jd672DGrsLOUZ/5
         3r7GQO6/f2oLsxSdQ+euK7irOA3ALHa5rv1NRnigT4a0zRml6+vFe9dpQM+bxSUgSIA7
         lFCJrXfzEpW39yftUTEyeR3XroRKtCb8oKYxmb18p7Ai4k3elKJF2GlUhF6iVPY8+fCh
         wtBnREiauwQYAlz3aFIlegN2p2m9TEh4FSlp5Bl7aJCIeyDOfFzA3HjXPGhSLqj7nlnO
         s7IciU5TcJFuuQg1jV5kcsjW0awa1GWQXc80INmqGRsSRvHaJhjmudUKmH/hNG2OTV4q
         SgTQ==
X-Gm-Message-State: AOJu0YyCpF1oUmeziTMq2atreWPc5R7SEb313te/R7NKwrhcOLrXKgOO
	Z2jTu6ZOJew2anrLm3l6wYMXrw==
X-Google-Smtp-Source: AGHT+IE9L3VORyelf3Xks/jkQXQB478z0uVWNtaRVh9TqFZzCytSJ0a6JWGb/Zwah6hyHzQMJ/8ztQ==
X-Received: by 2002:ac2:4db3:0:b0:507:b1f8:7895 with SMTP id h19-20020ac24db3000000b00507b1f87895mr5887579lfe.38.1700522280876;
        Mon, 20 Nov 2023 15:18:00 -0800 (PST)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id bi32-20020a0565120ea000b0050aab042c7csm677036lfb.190.2023.11.20.15.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:18:00 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Mark Gross <markgross@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH 2/2] usb: typec: tcpm: Parse Accessory Mode information
Date: Tue, 21 Nov 2023 01:11:08 +0200
Message-ID: <20231120231757.2309482-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231120231757.2309482-1-dmitry.baryshkov@linaro.org>
References: <20231120231757.2309482-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some of the boards supported by the TCPM drivers can support USB-C
Accessory Modes (Analog Audio, Debug). Parse information about supported
modes from the device tree.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/tcpm.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 6e843c511b85..6297f803de53 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -6114,6 +6114,7 @@ static int tcpm_fw_get_caps(struct tcpm_port *port,
 {
 	const char *opmode_str;
 	int ret;
+	int mode;
 	u32 mw, frs_current;
 
 	if (!fwnode)
@@ -6132,6 +6133,12 @@ static int tcpm_fw_get_caps(struct tcpm_port *port,
 	if (ret < 0)
 		return ret;
 
+	if (fwnode_property_read_bool(fwnode, "accessory-mode-audio"))
+		port->typec_caps.accessory[mode++] = TYPEC_ACCESSORY_AUDIO;
+
+	if (fwnode_property_read_bool(fwnode, "accessory-mode-debug"))
+		port->typec_caps.accessory[mode++] = TYPEC_ACCESSORY_DEBUG;
+
 	port->port_type = port->typec_caps.type;
 	port->pd_supported = !fwnode_property_read_bool(fwnode, "pd-disable");
 
-- 
2.42.0


