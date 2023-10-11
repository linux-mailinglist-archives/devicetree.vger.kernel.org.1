Return-Path: <devicetree+bounces-7812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 046607C597F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 348F21C20FF3
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60EBD20321;
	Wed, 11 Oct 2023 16:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="fnUUgScf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D2D1B29B
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:48:23 +0000 (UTC)
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF0D598
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:48:21 -0700 (PDT)
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTP
	id qMdwq74SlNWIeqcNhqKbhT; Wed, 11 Oct 2023 16:48:21 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id qcNfqELqW3ii3qcNgqH2PT; Wed, 11 Oct 2023 16:48:21 +0000
X-Authority-Analysis: v=2.4 cv=JfGvEGGV c=1 sm=1 tr=0 ts=6526d1d5
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=J9R/PiKqv2o3jGxbVGXx4w==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=bhdUkHdE2iEA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8 a=z9z4ehcbrjbCTUJShTAA:9
 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=TAIo/kdxn6phUDZB2owXMXEudIKhpdeNPdldyEZXUdQ=; b=fnUUgScfWTMnbTlMi/AGVQOk8B
	y7LCBUleV38bmd3vFhA9fgoK7ZoAqosYr53RV54DHOJvoGkCs6s0zjqJIAWMRUJ11cJX3kpWB7LTT
	8ao3LyCk8Y1m1nZaW1g25CHc/QDoYgkZRuFz9yo2QzjHIpgrsLwAG69ntKpaYgJ8oEeB9vdqvqEyY
	dGZ3yqKJmyDmjMMKQw/RH87fFDrjfHZ6iKZoHtox2aK/Acy4wHc+/f4AlkQ4gCRBUeV0DKHYEPVHa
	DdsXDx3ZuJezcMGBUOHzCfM+t90+9gH6pvomkJeYzn/CSofEtk/478pWLNFa1ppdH6bhLINZI+3ER
	nvew975g==;
Received: from [103.186.120.251] (port=36530 helo=discovery..)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <saravanan@linumiz.com>)
	id 1qqcNe-002Xlh-24;
	Wed, 11 Oct 2023 22:18:18 +0530
From: Saravanan Sekar <saravanan@linumiz.com>
To: sravanhome@gmail.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux@roeck-us.net,
	jdelvare@suse.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	Saravanan Sekar <saravanan@linumiz.com>
Subject: [PATCH v4 3/4] hwmon: (pmbus/core) Add helper macro to define single pmbus regulator
Date: Wed, 11 Oct 2023 22:17:53 +0530
Message-Id: <20231011164754.449399-4-saravanan@linumiz.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231011164754.449399-1-saravanan@linumiz.com>
References: <20231011164754.449399-1-saravanan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 103.186.120.251
X-Source-L: No
X-Exim-ID: 1qqcNe-002Xlh-24
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (discovery..) [103.186.120.251]:36530
X-Source-Auth: saravanan@linumiz.com
X-Email-Count: 35
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfIDMIKzrcGivkPmzEhv9+cI6oPN2EPvn8e3vOzpMctsa/tyrr1CT4BLT9EOFSCHqkdmPJH+NC0JWZxLVUpqjsmdWWQh82gGIQVk35cL5lk2qldXR97xe
 Dc5SbCg+XGNlGSvuCXtGbpQRd5+FCyYzZ1kbw+hjAAZM0M+zk3wm3H33wGI2ZTgl05Z0F1GkoDtoEeYqg9MPRVppS3GKljb2uss=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The bindings for single instance regulator should be named with no instance
(e.g., buck not buck0). Introduce a new helper macro to define the single pmbus
regulator.

Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
---
 drivers/hwmon/pmbus/pmbus.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/hwmon/pmbus/pmbus.h b/drivers/hwmon/pmbus/pmbus.h
index b0832a4c690d..f4df3d6a41df 100644
--- a/drivers/hwmon/pmbus/pmbus.h
+++ b/drivers/hwmon/pmbus/pmbus.h
@@ -480,6 +480,21 @@ extern const struct regulator_ops pmbus_regulator_ops;
 
 #define PMBUS_REGULATOR(_name, _id)   PMBUS_REGULATOR_STEP(_name, _id, 0, 0, 0)
 
+#define PMBUS_REGULATOR_STEP_ONE(_name, _voltages, _step, _min_uV)  \
+	{							\
+		.name = (_name),				\
+		.of_match = of_match_ptr(_name),		\
+		.regulators_node = of_match_ptr("regulators"),	\
+		.ops = &pmbus_regulator_ops,			\
+		.type = REGULATOR_VOLTAGE,			\
+		.owner = THIS_MODULE,				\
+		.n_voltages = _voltages,			\
+		.uV_step = _step,				\
+		.min_uV = _min_uV,				\
+	}
+
+#define PMBUS_REGULATOR_ONE(_name)   PMBUS_REGULATOR_STEP_ONE(_name, 0, 0, 0)
+
 /* Function declarations */
 
 void pmbus_clear_cache(struct i2c_client *client);
-- 
2.34.1


