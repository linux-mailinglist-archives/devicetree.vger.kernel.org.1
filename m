Return-Path: <devicetree+bounces-25876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 071E0814ED9
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 18:32:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64C0CB243D9
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6F83FE43;
	Fri, 15 Dec 2023 17:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zAyVNbdv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CA03FE4E
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 17:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-50bf69afa99so1091696e87.3
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 09:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702661412; x=1703266212; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZuB7T2TvtfzYulUsGwmzST1mtpoBCzmPcfLxjPTBXtc=;
        b=zAyVNbdvNydDUSfny5TzGH4PvLNXQceE35qqEdkDjkVuDQUT8VrkhAzm7nUbWKbxUl
         NUOGyeLDYLjnwREBzGIPznThTo2WfbOJwmSV1owRe08ywgXunqI6DCaRLgu1HcJjBPGJ
         J0/0RhUcNp0OO3GYWkPdPKoQ2CLQrqE0mlqE70hg3JUbHsYhUSgXnlYifslOCbh2ljFd
         Obl631QU9IHt1oBHKS54dfkVx8ResyoF2dIhomXzh4ueAed7cj/pBmgDRuuJH0I+5jMH
         LCFnmQKc+o4kzm+UchpdGAjopBsTb0JTVm2LB7emDXmNPCSI9XMQVv4i6hHoc4tkYChE
         LCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702661412; x=1703266212;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZuB7T2TvtfzYulUsGwmzST1mtpoBCzmPcfLxjPTBXtc=;
        b=vFdsAK10YkdVDfYyCKKS/42H4FsN6/VAC9SdZ8pHq14+fp1uEJ9OVwPoD1PlImsW1G
         P2bUwYmX6W0Sh4MevIjO2XC4wP1UBcK41j9Lo1Z1nVRHzV/nTr9SgoTTVdtxN6IQZLJY
         D2UjDJ7dVAPdGMIIMnmLV7GANaOshg+pUixUBjd601gFSaU/yqrjl5/Va/oW36B9Fj1A
         ZCcnRQqBufuUTWYblFWSxiz1JFowS21NZS4JFT3Zw4q7YLcu74LpQm0OyMbTQpzf754A
         kqFiI1nxIN/4r78pqcnkokeUx5jWlEoqXtG+BfpWFRn1OBFFteQwMN8ZihAKq4FdgKHR
         zyxQ==
X-Gm-Message-State: AOJu0YzGwYRpq7z1bG5NnfukzA7NYCFUyEX0KN4SZai04W6csBBJWUxc
	U3+vnxztoMZo/mU7EbhRLfZPJQ==
X-Google-Smtp-Source: AGHT+IEPLjpVgNbe9nBxVwGSFSX9zn7rmswGw82ggEzdpfzFloeg6DJ2uf7unFMM0hO/T0qrCNwzPA==
X-Received: by 2002:a05:6512:1188:b0:50d:1a16:e89 with SMTP id g8-20020a056512118800b0050d1a160e89mr8338568lfr.36.1702661412574;
        Fri, 15 Dec 2023 09:30:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (85-76-13-188-nat.elisa-mobile.fi. [85.76.13.188])
        by smtp.gmail.com with ESMTPSA id g8-20020a056512118800b0050bf54b9f18sm2202274lfr.113.2023.12.15.09.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 09:30:12 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH RESEND v2 2/2] usb: typec: tcpm: Parse Accessory Mode information
Date: Fri, 15 Dec 2023 19:30:05 +0200
Message-ID: <20231215173005.313422-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231215173005.313422-1-dmitry.baryshkov@linaro.org>
References: <20231215173005.313422-1-dmitry.baryshkov@linaro.org>
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

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/tcpm.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 8372f98de757..cf70f1cf2f61 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -6144,6 +6144,7 @@ static int tcpm_fw_get_caps(struct tcpm_port *port,
 {
 	const char *opmode_str;
 	int ret;
+	int mode;
 	u32 mw, frs_current;
 
 	if (!fwnode)
@@ -6162,6 +6163,14 @@ static int tcpm_fw_get_caps(struct tcpm_port *port,
 	if (ret < 0)
 		return ret;
 
+	mode = 0;
+
+	if (fwnode_property_read_bool(fwnode, "accessory-mode-audio"))
+		port->typec_caps.accessory[mode++] = TYPEC_ACCESSORY_AUDIO;
+
+	if (fwnode_property_read_bool(fwnode, "accessory-mode-debug"))
+		port->typec_caps.accessory[mode++] = TYPEC_ACCESSORY_DEBUG;
+
 	port->port_type = port->typec_caps.type;
 	port->pd_supported = !fwnode_property_read_bool(fwnode, "pd-disable");
 
-- 
2.43.0


