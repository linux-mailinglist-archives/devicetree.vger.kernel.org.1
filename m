Return-Path: <devicetree+bounces-179153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C789EABEFB9
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 11:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F4937A1D1E
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 09:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4093241122;
	Wed, 21 May 2025 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="dpbYy8La"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F377823FC6B
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 09:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747819714; cv=none; b=HkiVI0YvOyQPfNO0q3A9s9bOO0otymaCa6b9dBBF5CeIh+ahBrgDhX1eo9yAAG+BoHh4mimWGiFFoRHq6ORvkeQXlVteJGAnDWIrw7f95KiRdCsMapyxA+F/uA5eYAhiSUdqVumkUwz0yLU4Se52fN7c/D3j/2ce4sbWB7MCPEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747819714; c=relaxed/simple;
	bh=FKD70PE5Epxp3lEHLPKpUCel+rzHcrPmnKbb2/plsmE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ppuDDEXrLrPJnEL2h+n86QqmdNYMj4YxZNfT57WaZHJYSlofgeopnY8uexBapQziz0bH0pLvNymS3BEcS5Dbu88WhnZZca/7GpGqB/ni44szmv9IeoO8gAfzIyYxRtGIcXszF/UA4tpT9CMjK+6iF7rD0sdQH8K8dnAdarbJk4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=dpbYy8La; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ad5533c468cso599572766b.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 02:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747819711; x=1748424511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4ZKx8OEuhG5n3iA9Ht1qjJNqikHTEvlSRpqNyHprtI=;
        b=dpbYy8LarCP2vvASLPTuCPbtlTK7i7/C9YiSAac3EMOUGzMRccHzqO8CB30K7HM2DC
         Tbd4vxIf3UmUFkZu4AlXr5T2qPm4Gyxt/fW4Pvh1Zw0yKIJfIhVPnNNpamAX3ywWgoSz
         DYKyHpqbbwK2xIlONSrqbI7m21jA76mupAYuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747819711; x=1748424511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K4ZKx8OEuhG5n3iA9Ht1qjJNqikHTEvlSRpqNyHprtI=;
        b=fi6OTjAwj/Zxya8DQYQ/SPs8t7KzdGk0+NVV8Ya5DYWvRZzdQsjmUJ2/dDZ3Bb0V78
         s3DcYYACBXppMwU1bpKTy6Khhk7oqGkiQqIQBy8Zy9ikxOWmqlDucm9Kvq8Hchlpr9Db
         CXYQlltkbTHOM9TVF+ftzk6rsVEG0/6qVGPpJ4UyqiUqWaLhzxq/Sf/V23qfCBQw1g6t
         YGdwdaJOOLo4QYHZ2cgqZUo7TuyeQkC1WjhMgQOTuc/M5KFYgVcLZ9gW8nTFyrbhB8w7
         xVpPMWFLew7GbhsmaZdY3N9DhGyNaRb3FTxMa2HY8Sjq9Lr4rBE568RJYli49yUxQUg4
         dONw==
X-Forwarded-Encrypted: i=1; AJvYcCW3/EB3zafuHF/j358rj1s2lQvB30/BtGDtRupUJVU83vsdOfpE4+wmlhGDBKaz7dXtlVD3JmQw+aCY@vger.kernel.org
X-Gm-Message-State: AOJu0YwmBCKMgV3UprI7ss+IsQHrQqRINL6D2XfqQoXnjeQV+tEmlIDj
	TGIPzxJlDPX87jMvx7EwymHAo8JVyiiI5TNHaHMZT3Xqu6CO+PlsCjtrQltnS1/T3VE=
X-Gm-Gg: ASbGncv5TRaKviXvJ/8syigCLGPL/g5C3EztQ6wsMB6fRSwKA4oLoDZMYw7hzW3/1VO
	VRlk2LcYE8WwnQP5UzwqW80EejrvVRfMmTKQ9VETF3t2B6gbCoiFILEbJiqt+BIEh60zkfE6hJW
	Clw7IyqFnY+/EhFRejJyqHM3WrvB04z77u1TJONddgot5xYrON5p8zM8cD7fjpfymDwoa9FHl8u
	o215vTLz8tsxnWQspOvV1WnY4ua4wwf2oGKDyNlYN1A19X+9smR6p31Y0pRBibe4OTOGquliEPC
	MVCurQDXFOWKMGxNmC53Co1PhPwunz0skUyeL+SxUzPrNdFUdXNetvOWt5dhVNE5VBB6qhtzUFm
	9xlJHr/tOrHcY
X-Google-Smtp-Source: AGHT+IFNzWiTTqQss9HBBtI+Nr/N9FAThr7Gi7sc3HVIWm4O6Gp1xrzlrO/3vjZUf5bm0cbWUM6fkQ==
X-Received: by 2002:a17:906:5582:b0:ad5:4b4e:e2f9 with SMTP id a640c23a62f3a-ad54b4ee44emr1238839666b.1.1747819711158;
        Wed, 21 May 2025 02:28:31 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:cfc5:5070:d6f4:1d86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d275d9fsm867442466b.74.2025.05.21.02.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 02:28:30 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: imx28: add pwm7 muxing options
Date: Wed, 21 May 2025 11:28:20 +0200
Message-ID: <20250521092826.1035448-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
References: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/nxp/mxs/imx28.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index bbea8b77386f..ece46d0e7c7f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -755,6 +755,16 @@ MX28_PAD_PWM4__PWM_4
 					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
+				pwm7_pins_a: pwm7@0 {
+					reg = <0>;
+					fsl,pinmux-ids = <
+						MX28_PAD_SAIF1_SDATA0__PWM_7
+					>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
+				};
+
 				lcdif_24bit_pins_a: lcdif-24bit@0 {
 					reg = <0>;
 					fsl,pinmux-ids = <
-- 
2.43.0


