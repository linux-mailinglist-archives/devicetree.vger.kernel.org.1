Return-Path: <devicetree+bounces-7810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D19087C597D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0ECBA1C20E0D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF1D20321;
	Wed, 11 Oct 2023 16:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="Up+vNPJc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75ED41B29B
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:48:20 +0000 (UTC)
Received: from omta040.useast.a.cloudfilter.net (omta040.useast.a.cloudfilter.net [44.202.169.39])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70327A4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:48:17 -0700 (PDT)
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTP
	id qEXUqXvjlaLCxqcNcqPUBC; Wed, 11 Oct 2023 16:48:16 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id qcNZqaaZ2FJJgqcNaqfhGX; Wed, 11 Oct 2023 16:48:15 +0000
X-Authority-Analysis: v=2.4 cv=XNAj9CtE c=1 sm=1 tr=0 ts=6526d1cf
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=J9R/PiKqv2o3jGxbVGXx4w==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=bhdUkHdE2iEA:10 a=oz0wMknONp8A:10 a=8_dukLawoc1J__1ghQYA:9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=lrNVRxtmcUBMaOcugSW58dCqLe+RokwwhirKqMzcqNU=; b=Up+vNPJc8aNa1CFbxB3+Bal1YL
	6abewxA2+uot+ldXt1koVoIV4a3dbvN1LXtJxQBu+Z3NVDc9Bp0eOHuojICxpMmpJS65PD1DBOfym
	PUix9mnFh7snVqnuL5esWCqCiRrALIJdjQRU5JOfANmx/NBcSbNmBlMq+d1RrYRq0rSKc66jA5O+o
	zk1BT8luT/sOaoCXVmiPFwqznkA9zYxVM9YfB1vdV7ckCGjNAAKRS5eeikD1gLpXX1Ea0hdxFOf0o
	ozKI7nQ0EDcco7OJy1Pe1Wmd4AE3FfravXHxGSjXZvMCc5662ZIUtQDnENr7oAeEqK3jjc2sVLkeT
	/DhIegSA==;
Received: from [103.186.120.251] (port=36530 helo=discovery..)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <saravanan@linumiz.com>)
	id 1qqcNX-002Xlh-1W;
	Wed, 11 Oct 2023 22:18:11 +0530
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
Subject: [PATCH v4 0/4] Add support for mpq2286 PMIC IC
Date: Wed, 11 Oct 2023 22:17:50 +0530
Message-Id: <20231011164754.449399-1-saravanan@linumiz.com>
X-Mailer: git-send-email 2.34.1
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
X-Exim-ID: 1qqcNX-002Xlh-1W
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (discovery..) [103.186.120.251]:36530
X-Source-Auth: saravanan@linumiz.com
X-Email-Count: 2
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfFh7MUuUQGHpgPfVSaRj24hT/JPbFppCuL+erZSfNH0eW06Oeeb9foChl4r6j2o3AMYZbr64WEUlg8+GMlseOayMuu3hM3afBFiB708pbjunUvAnRWD/
 JHxQXu7w2MFhFWno24Z0pAVA/g2/5fmwBubCVbM6RWqdAUcybn87fevLFhcYqZzJwhXDmGfT3BjNXH5O77OpAt8kwZQnY5pKFZI=
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

changes in v4:
 - dt-binding changed regulator node and name from 'buck0' to 'buck'
 - added new pmbus regulator helper to define single regulator and used in mpq2286 driver

changes in v3:
 - dt-binding commit message updated the reason for 'buck0' is used instead of 'buck'

changes in v2:
 - fix dt check warnings
 - fix compiler warning on cast device_get_match_data and lexicological order of compatible



The MPQ2286 is a programmable, high frequency synchronous buck regulator with
integrated internal high side and low side power MOSFET. Application in
Automotive compenents such as ADAS, Infotainment, SOC System core, DDR memory.



Saravanan Sekar (4):
  hwmon: (pmbus/mpq7932) Get page count based on chip info
  regulator: dt-bindings: Add mps,mpq2286 power-management IC
  hwmon: (pmbus/core) Add helper macro to define single pmbus regulator
  hwmon: (pmbus/mpq2286) Add a support for mpq2286 Power Management IC

 .../bindings/regulator/mps,mpq2286.yaml       | 59 +++++++++++++++++++
 drivers/hwmon/pmbus/mpq7932.c                 | 19 ++++--
 drivers/hwmon/pmbus/pmbus.h                   | 15 +++++
 3 files changed, 89 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml

-- 
2.34.1


