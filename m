Return-Path: <devicetree+bounces-265954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMFCJiy2k2l17wEAu9opvQ
	(envelope-from <devicetree+bounces-265954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:28:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E21484B4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67999301DAD5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B47255E43;
	Tue, 17 Feb 2026 00:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HAnOt1cK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758D1248880
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771288092; cv=none; b=K97hXOVyvaTJfhxOlUOYecL3XANoiMKuKwp9S7F6xyvSNpuSVC/cRyv/0gos5eOgbNj2JqmTgAuqoaTl2TLUSwXTm5OOKAH+sSw+Z8u4hjLivQUOQkr8xNJ4aKeqhdOOyTGKTLaJ2+hMFpXKdhOCbY0P2axfNzrbDNFLmW8/2ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771288092; c=relaxed/simple;
	bh=1v4dPSgOcOuVrr3Qg9J9gEsFMLIU5i68Rq6Ja2quspc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qW+eaKENbq5TqttgMOxHh6rs/703BhKgEmcT9iERvnAV0cLON1sRP2lSdrEf4agAN1+SN9r5Q5rsWNKDi3oEQQpfe4/S6ensOCdj4U9Qr9dEe0I+4WD0Hyf6FoSITf4XsbdVZ+LvCKZOSWqMjKRyFFvCwfNP5p5a/NmgkAqoclg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HAnOt1cK; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-503347e8715so46786641cf.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771288090; x=1771892890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JChrl7P28KUq3wAAIILUlLq1kDzZ9Zu7NIGfFL/Hv8=;
        b=HAnOt1cKRSUStA/otjkj27uKR2JkaSAnza1rI/Nyw+mfuSJiCTwDBz+F0p8bCnPXc7
         VMldhHD7k+QCFDfCFNQ/vwyMldauo+2ZQRnhm9fQfKFuApNy2OLtz8zS7MAaLMXbcRJW
         zcarf/KHZ9qn9l+nsF4xyz1SnaVubHRrbe9sWcdB4kLhoO+H8SmKMXtDiJ2Lg4pLI6ru
         92R+tKjL1iuQVyt1/MsR1LeH+DRk9cU8+soHRuGv4i8Qkkkx1o9uWLWVj5tWB1udOlxj
         kAQkbi4WiXEJGxY4bexBons1IlnNIuxSglfhw23RlcqG/d9ep/OpHH7u8pInfp0Kvlvj
         0XrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771288090; x=1771892890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8JChrl7P28KUq3wAAIILUlLq1kDzZ9Zu7NIGfFL/Hv8=;
        b=SeAeixz9TgsN8Fh0CUVHH5MaP6yTB6a22pxoVurZuTfyUXfOlJW7jPBEROj7iBr3Ll
         E1phoQ8fQMr38ctOeug79pCN48xtbk7OizLGOFY4O2QfDOnpyTbAqPJ8idiRFfFv+tzh
         RhEtgl48NxFw5hSZEWytSp5ykOuh3h/k6eivpKlaapnNfKnD1f6AKxSmb3E5cQjsdVGS
         BHIKrszL4zHHRI5JJo0/uPMIP64Lxkrs+LZkTicMbatMfkbJs69knQd5v2xyogGJQqMT
         0QPygvCQejWSuuzwYbZvdcH38pOUZaSqj3XQ++FGgL0an/Z8ZL1HeyXaR5wtLH3WB2+w
         fJuA==
X-Forwarded-Encrypted: i=1; AJvYcCV89Ky/6Zw3bL1ZJ6vlrv5KIQGL5lFy2dgmq/CRIp3/6n+GcRtmVrV1TCMUjzxcdeIDZPtxUTAgNKFK@vger.kernel.org
X-Gm-Message-State: AOJu0YxCbzgCY9gryEM3zbLHJmxjKwJW/emPpcHvHJ8ZsCpidGVQD4Ne
	oi5oZmQi1o5/m8Lwn3rtOEk+ZGTqvuqKwjY917sLunDl3frEs2R7e0nd
X-Gm-Gg: AZuq6aI0DwKMsg5xqT1LeflarGqomIeVwVz4KiVfK+qa4isxMo34VYchQic/tBVQs3u
	Lxlb4jFxN2VbfD0iV8GWK0Jp+JyrwztYnIi+qs7rzbA6kb6kPe1dto/XqI3hXhPAJliVWGxwdzN
	GFZmsFekdgirHXQ04IwXpSDvqKHZhBD+83bLnULZ4hUBkyGHZjwLxPACDKEYRcSnuW1NZ8slr82
	0if3A9X7tKt6VCvpD6swQSNuj1OTZeDCpdsT8xlcdkcLdhVTMwLQ1Hgy+bquFYp3fFgpEgr4jo7
	us33Mo/evtQjQBZ/ICNkP3EGTGl0MS37KTxBJecJtAcDdGAoQgmr00EpikEEoJBEGYvpaiOIY18
	YV7X3k+Yd8ndjhNRkjr3MOWjHDtnMWjiEbZxiehu+2GGnHkYErlMyaAabu8QnrQCyOl4C0Cz7fb
	BTRyBljaJZOglua/8OCPTd3gTuKxLZ7w==
X-Received: by 2002:a05:622a:1654:b0:4f4:d2c3:b236 with SMTP id d75a77b69052e-506b3fffed1mr139068231cf.47.1771288090458;
        Mon, 16 Feb 2026 16:28:10 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506847d9852sm161636611cf.7.2026.02.16.16.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:28:09 -0800 (PST)
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
Subject: [PATCH v9 5/7] arm64: dts: qcom: sdm670: label the camss ports instead of endpoints
Date: Mon, 16 Feb 2026 19:27:36 -0500
Message-ID: <20260217002738.133534-6-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217002738.133534-1-mailingradian@gmail.com>
References: <20260217002738.133534-1-mailingradian@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-265954-lists,devicetree=lfdr.de];
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
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,linaro.org:email]
X-Rspamd-Queue-Id: E86E21484B4
X-Rspamd-Action: no action

Endpoints cannot be pre-defined since commit dcf6fb89e6f7 ("media: qcom:
camss: remove a check for unavailable CAMSS endpoint") was applied,
probing all endpoint nodes and requiring them to have a remote. There is
no sensible remote in the SoC devicetree because camera sensors are
board-specific.

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


