Return-Path: <devicetree+bounces-264183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEqmAKeRimk1MAAAu9opvQ
	(envelope-from <devicetree+bounces-264183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:02:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 41958116207
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:02:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B30193027971
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410D82BD597;
	Tue, 10 Feb 2026 02:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LhBItlgr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3E92AEE4
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770688904; cv=none; b=gGccaZM241pJDJ5cHRavEZL9zXJd4UIHs8rtMUXf68wUR/FRoCfwCeWePeh1JkOa9VbQ9k/qOUkbfgpqTm64CjMYLxsyBFT0kBHQCwFF7I+cfS5xlHXZ2run5ZsAEWMUDs+WR7pqZsHoUtADcU0IKhpRMFKSliAh8FEiihJmeNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770688904; c=relaxed/simple;
	bh=0o8U2gcjTNQ4vDr6UZXp78OySADKbF17k1AkPUv068U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rs5AcXpzU3aS5JXZaKxRhuLLQYdVxK03DiElxuGRfFQIa9rWXCn8Z8++Rz0wpvJbyL4xdwLa6HjYGFyoO1pEJwggCJvibgnFySUQOGwHSV3wmwRdXM920whgWCEUuoMcAqGkCQ1HV/qXz40iQCzItEzY34uL1fiPwDM115fDpu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LhBItlgr; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c531473fdcso515629985a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770688902; x=1771293702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8V9j+WcUBTGuq4+DLWgdunD0gzm+6gbTsWVxuBpzJo8=;
        b=LhBItlgrBTYcfBEQMHViBXVMJnAQlBcg9zFlmmx6qczBayq8LNer6o1lStM7JDLiOs
         GEk/b0XvfZzcoJJulnuFm/2skncCQoSstCQfgwwtQvTplFdSUnE5harfLv1JKQbpxz7S
         vraZED4pUnqN9bYqIilM0Gq2yDoD4cFZ0m7b9xO28StW+9bIekhDzgXpHExi/uJOr6Cq
         hzUqo+9I96cGM3N61apzGTHXfDNKhtS1pMYnYKTHfDXamZtC75WOcNwVGScmQfD0fzdg
         1W3YR4V9WGlw+dyHi539oQIRLuTJ3pp+xFB+afKuZ3Rt+vDNiDqvpVeCb1V00ZFXuzdB
         iqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770688902; x=1771293702;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8V9j+WcUBTGuq4+DLWgdunD0gzm+6gbTsWVxuBpzJo8=;
        b=BsBYUrld9klySYESR5X5K0o9QoXrFvzQpbQepIRvA3luGmOd0MKj4lqU4drUJB6OnL
         rZlMixNDPsRUUVop5G2OBx9w0Of/eO8Z4YTg1BV8kjkiCemdy1EneK2ZnkOYvoDYIaqZ
         TK4p0GEbz9iWC52e0UwwhlcSVfLwf9xTFSXKBpdqviLWw8zahHKcPNgGie29CvXdlTB4
         4kWeqmURUsEwLsOV7YyzuLf/hhqmUqN9H2IYBouIjWZ+stjNDT1T52jCeocKj4aIAn5u
         5zN7oDLYtwns4MQ5tfKLVKrh51DeU+cibJQLzwM0SuP2wmtPCR+QI/DEgSoaJZEICW5B
         hm6g==
X-Forwarded-Encrypted: i=1; AJvYcCVAlA0HwqYVr/pnDPtmUH6AnEKPOMKZx/NoDT+JTPOQZ1uQLHSYr86vMj2DLVH2K8RH62LupIVAobVs@vger.kernel.org
X-Gm-Message-State: AOJu0YwhFk8m4oJli5QWUVYeU6QuceJPKiCDuwcFff+aOhMPEqcoM1GZ
	H61YXDsLMEuwup8/XcqscR8nEe3n7IMGVb6GSoMLI+qGZYO2GLrMv+5l
X-Gm-Gg: AZuq6aJo214F99VesCWknoeah8cr5m4DZBEefr+ubHkV5rru86K5ALvuXa1Nesisy75
	bQCa7YB5eKsSXNjfX05ClvCsdCJEh7xfBW3yqjKufk/8vxyh+KSCoqfhcJ0uIg0ECCu8ADhMXss
	ul8//WF+q03krbDu46TNdYmJMIWvMQShVivYxnOV3ZKumCpYtU9y39DooRJVGFkfJFWv45M7w/S
	sJrTYkezVEgzCzOGhO1dPH8sXnXRoMYjJOx0kIJDO/RshdYNqpvHzR6S4SZfW/i5fvxpoHycPrd
	WDMxf+ZaeqKe1D44PxdMSRkeXyaUiviIrTLwAYNQGW+kQ1IZVtRIYsEHVBHlwEXW9kaW5X9/jtG
	W1BXs+1DMvp1LIIVxM4M5pDcIVlWPMPFTodc4kgupXKmZxTJSzqoZsV8QgZDtyuj+hz0Dv6q2AC
	KspzX4Mm10N4AzopNIG2FgjH3CuuVe2bBfLBjLzDm8UsjJL79m78NZNBNcd9bvEr3nuGQqmr4T4
	UB6i2TLqSxDxKg=
X-Received: by 2002:a05:620a:3942:b0:8c7:17ea:7dd7 with SMTP id af79cd13be357-8caf13ffaa5mr1659349985a.69.1770688901997;
        Mon, 09 Feb 2026 18:01:41 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8953bf5b2e8sm89171196d6.23.2026.02.09.18.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:01:41 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v8 5/7] arm64: dts: qcom: sdm670: label the camss ports instead of endpoints
Date: Mon,  9 Feb 2026 21:02:04 -0500
Message-ID: <20260210020207.10246-6-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210020207.10246-1-mailingradian@gmail.com>
References: <20260210020207.10246-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264183-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.2:email,linaro.org:email]
X-Rspamd-Queue-Id: 41958116207
X-Rspamd-Action: no action

Endpoints cannot be pre-defined since dcf6fb89e6f7 ("media: qcom: camss:
remove a check for unavailable CAMSS endpoint") was applied, probing all
endpoint nodes and requiring them to have a remote. There is no sensible
remote in the SoC devicetree because camera sensors are board-specific.

The ports are meant to be extended by a board devicetree in order to
define fully configured endpoints and connect the ports to camera
sensors. For nodes that are only meaningful if extended, labels are
usually assigned. Label these ports so they can be extended directly.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index b8a8dcbdfbe3..3eb4eaf7b8d7 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1776,28 +1776,16 @@ ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				camss_port0: port@0 {
 					reg = <0>;
-
-					camss_endpoint0: endpoint {
-						status = "disabled";
-					};
 				};
 
-				port@1 {
+				camss_port1: port@1 {
 					reg = <1>;
-
-					camss_endpoint1: endpoint {
-						status = "disabled";
-					};
 				};
 
-				port@2 {
+				camss_port2: port@2 {
 					reg = <2>;
-
-					camss_endpoint2: endpoint {
-						status = "disabled";
-					};
 				};
 			};
 		};
-- 
2.53.0


