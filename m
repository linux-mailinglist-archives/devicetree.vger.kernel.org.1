Return-Path: <devicetree+bounces-242014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E10CC854DC
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6EBF4EC456
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D067324B15;
	Tue, 25 Nov 2025 13:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bmR4rihD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCB0324719
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764079186; cv=none; b=ok7N3Lew3/weSKtqswZcQhORTYAo8M0LhCiOcQwhcTScknfe/iVWutC4PNdLigR4iQ18MU3Bszs0tWbTb2W+74t27p2tFBQGwk1wAuTvBX3PQ1+uQxeIw15u0bpFb6w0mCTxoR+iJPpKLP9H5GJJlIPWAMz+8sEeRgQiNLtyWj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764079186; c=relaxed/simple;
	bh=24M9VBP/DdVfnpUhvmLFt8NUeY96OvApR3dzSxHSaKM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I4j9ifUKtsBo5U55OS8tAVs5SXwtrjCP8aYzbXRBUGzJRjlvP6aOblXI6ybd+3yQ+oxY6IEgNm6yyTdB3xiZme/nrDfzao/7XSu+gfMB2vjzOT97Ju40FyxDzcsSC/UMF6nNoklTjgdaGV/ML6mqdL0WBcyn75CVA44o11yqwvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bmR4rihD; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7ade456b6abso4477868b3a.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 05:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764079184; x=1764683984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Wq6qWRdMJT8JkFWrdlIBvOjsRwtEbw2p0Rqikaex0U=;
        b=bmR4rihD2cbVzOtX1MQuP8mfAA3joe1YI/gR+4CzFwrJDsxJIUw1tulhNH2UDtaaxv
         Gxim50dLStx8KDlOgCP4TE4nEJlqPT0hTMnTzB2tN2z6dlv2zEaTiS80Nv5dbSJTRxeH
         9l5FGz35fV1R+3OH5SaRdPnjByFheQHiCYJ0u9OG+O3u+OPWrhL/U4CRT2G6eqMpK2SW
         3s/ojeFNql1s6yd51lYOZKtsDIqFRyiNGgXp+/iheVSe2JZCjjEK8a72sRxRL7WA0Vmr
         RPx7GMiqDjktw7q30tIV8YBUecOmWKOSCGq+xOfWV2OMswLK3u6FC0chDL+ev/X6CHAf
         mPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764079184; x=1764683984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8Wq6qWRdMJT8JkFWrdlIBvOjsRwtEbw2p0Rqikaex0U=;
        b=Z+gpLMCRpDebkCI5wWMBcuSliMT3y4xvSvwjxwooEoeYSxLj/ocGr7S7GwlFhBgeqR
         0qcD4KlNoJ6HnoT84f97fyfPRFn3vrI/IYvDnw96DOXecfbPwJ+rY9C97972WhhQiCgr
         VdPAQPh9G5NavdSaExKJAO/nfFsuKeUJQSXK5lWtW2qWfvEoUsWPJi36Oi2qQ+qjvt0b
         FZA1W7+LVZiTHCuk8NUffEcV9wbmWch+cam7FJjmlzVQB5uK3Q+meCx2hxEXGcVIQqYq
         Kl/+Th050TqRdjToemL7unoQfUW3ooIr+4X5UVhM2qWN/v6jkgODMkySjEIMc9KAr7tO
         2oig==
X-Forwarded-Encrypted: i=1; AJvYcCWDlOWLO28s4SE5iycI3n1iLjhJrc8rs8ZAAi9QxEqVTkFwKVTxjVlFhiigfHcmJQ5kmQ42SL5NY4Eu@vger.kernel.org
X-Gm-Message-State: AOJu0YxVRHtNOpW6Kx8cqazvN/o+TX7lAcrJ9wSGQH4SNgpL6FHUAfVD
	4Z422DyE7YSUt4WIlb+mmfrylV6hwFvnvQb3VJc6LsMJCL6IqvPyR3myW1zsMw==
X-Gm-Gg: ASbGncuIJxXsKfGSpItKQqK4L1CK4YekcEsNFNr3WcucBT5Cur32GtRt8Qe3XV//6ev
	0wf26Cc754nG411ICVySPyDDF3tW7nlro0bmwCIL6NgFHFuhTMG3LJfPBzk3ts8+0C2rdZaMCQa
	ldYxEg64IgJJmpOcvMJUr71Oaa1lkCjoYn3LlIMhzvBqNXYVmnCW2fR8Kl6NRBTcVxj2bkgOp9Z
	x2YndUo2lS0abbxZB81j3CsMV6MQldRPcrMprymXyLccAqTTknHyoZhl3a9YuAsETb5fn+Cr1T+
	TeIkNOHML9vqp2OqhIXkAKIeVpb7ry9oaaftFr83yItoGQkMHsJA5to4qc1BqeZ0x6wngx16dqL
	RC2wh81OpKNcZ+UHijyAh6eic7dYVXEms03rCTJAOEIOpGRKzvY1MqJJXkztz0bfi2qoO7AphQS
	GMAxgl/8NGVYHqeXLP7laAABeH3h+wMwp785PJhGCXuf3LQrnWqWp9wlKFswoUysl4m+ARmt/vi
	QY=
X-Google-Smtp-Source: AGHT+IGLG5ulH7QtmwgR215gpFL6u62RMBu83STuoUngtVM+z2Xb/xW3EJ/jrvfLs+uU70SnKpeLsQ==
X-Received: by 2002:a05:6a00:3d12:b0:7b9:df65:93a9 with SMTP id d2e1a72fcca58-7c58eaf27a7mr17838247b3a.32.1764079184121;
        Tue, 25 Nov 2025 05:59:44 -0800 (PST)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3f0b63dbcsm18216028b3a.50.2025.11.25.05.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 05:59:43 -0800 (PST)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] ARM: dts: aspeed: santabarbara: Enable ipmb device for OCP debug card
Date: Tue, 25 Nov 2025 21:59:31 +0800
Message-ID: <20251125135934.3138781-3-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251125135934.3138781-1-fredchen.openbmc@gmail.com>
References: <20251125135934.3138781-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an IPMB node for OCP debug card to support IPMI communication.

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts   | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index 4312ead311df..0a3e2e241063 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -845,7 +845,14 @@ temperature-sensor@49 {
 };
 
 &i2c7 {
+	multi-master;
 	status = "okay";
+
+	ipmb@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+		i2c-protocol;
+	};
 };
 
 &i2c8 {
-- 
2.49.0


