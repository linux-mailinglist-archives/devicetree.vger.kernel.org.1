Return-Path: <devicetree+bounces-262297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4E+eBM0IgmmCOQMAu9opvQ
	(envelope-from <devicetree+bounces-262297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:40:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FC7DAB4C
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:40:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7D243076935
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F381D3AA1B0;
	Tue,  3 Feb 2026 14:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AJDQvPlG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89A53AA1AD
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770129610; cv=none; b=bahPxNAc+p/EaKuLt7j/ikxTYNCnpso5eGNM8gejqZbROq4LrRBOA4F2t+NjceBzbwHdU0eOodjQWc7B+XGnHxS6RmXItavXBCBdJidaOBCPQXNf6WDcZ4x3QRt4mlDI+Rs9f0OaGAoB2arMi41trf+cr/7lF+XkwnoCQH5cx0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770129610; c=relaxed/simple;
	bh=eCh1JlqigfgpIfO+qIsvmTVA08jKK4MFxzSQjJHW420=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eSpWg5UUTumBBZ2SqiZSyrOYr7NDRdhKJLr00BvmnnT7PEmFKAJi4fIczQvTpAVHdErKfvpzSOeLiHKA4K/gzj3ewD1kMqameceiUE/2EWnRJKiH+U4gB2Pt9geJ0byETuesSnUNPd3c5qXVbKDqnGYEjttQ0LrQtamC71AsFWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AJDQvPlG; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-81f4f4d4822so2912385b3a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770129609; x=1770734409; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OSwiV30p2Rwa/WNUs6szqKx/rYH4lygABVF3uf9QiEA=;
        b=AJDQvPlGv4Q+LdmsgYzZsDCHfNoPNv8cW3PJLNYJmSsIMjPiNVWfeGRyFz7P+ASIJD
         8YYeygP08n2pJhz1pDE2HPsZ4Zz56WJ7TGk7Z5nNrobmNumUWFaRniczDbRLfj7K8HHq
         kCRsPiPvMl616nqF9YNZt3tCYBTqXaX3VBBUtllOOq1UOayNsIM85Dd8/gaNWK2f5PUc
         nCADrT4no6t/VUSngerf6fNUTp4LolSXPv8dS82GezLg2EJLWE6mBUhWArPJyXAcVg8/
         M5o7BO5ZlN0gsYfXBqJFBlRUqDkZeUp4b/oHOoiZW5Ap/2gZ/YLQCut0Gvl62JC0anbj
         szow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770129609; x=1770734409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OSwiV30p2Rwa/WNUs6szqKx/rYH4lygABVF3uf9QiEA=;
        b=v8qAxOo47MnlMoWFZ2UTfVd++oqaKPEfFVXciO7J5/gYC97k8rjJBLB+SZL86mO5Sy
         O50DZhOQihjMMBoQNfHUnjd4M+brJ8fE+f1YbcvBBFiH1e+no0lsuadfWkKL59z9gof0
         I09p2DmElfWTVvEBH/M3kDqoMUK+MpBR3AkhMdNfOpLhFMz+2RyXu5jWTfcjWD3oYcLr
         k0fsfOowKLoqYpztxAD7yHRqPgM7E4bHHGEOyQEvqm4uim090t2oiBRzYqmT5uxQVF5u
         9yKOXUpORT3Kl0RQXTC6M+0FJbdNtLtvFkNjmkukhGaQ388FRoLDMBg6zY2VPDxDIjtZ
         UnvQ==
X-Gm-Message-State: AOJu0YyVIfR5uI6XM2owBzN+bZJW2G9yJ8rgNv4k8uJAI9wMGjQ4klQD
	QMly/YQcQowH2wMO6B0zy/u1W3PbozSvOv65eQCI95bN0LvOsVsQF8ckDiyQ59LW
X-Gm-Gg: AZuq6aLV7knEcAiQFGudfNuso5PHq0VyjOvo8WZv/SeAZ4GrFcUpNYhpbbvUXMdbZv4
	i3Q3YmMrtMRuRiAvPVrNfWtP7P0fuA85kgf9Q/7usbkSg7n3CbSw33QK6FdxrQMnHTuAh8/pHiB
	gh1Ymlc9cZQTab8nzNuLaD6wmBn2KKAFHLhr9BtAe06UzxOmVS9n3xGqSGPEgmJzUtQa3nnKoAw
	uQvqrzm9xiLigqUmfWS0xPeDyYdSF1hLA93SVBJLH5aPPX32VNSpoNA+fUFb4ZTil28jN0jdPJY
	91/lq92QummWA0XqFlqr8JSmTNQvY5gvvctIhwaS/WgGqtBvkxE5WJOqvR1sHxdcXT7TAd6rggX
	2jFXc89Jp8aK/R/JMvJYWIKK4WKQ9ib9nImd8jULlf1tFxq9bg9PZTux+LZ3JlQS15XrUJwwRbS
	ZwG1d5CvH9kjv/9TwzxyM=
X-Received: by 2002:a05:6a00:2313:b0:81d:dd3a:b8f5 with SMTP id d2e1a72fcca58-823aa9597afmr14495016b3a.38.1770129608775;
        Tue, 03 Feb 2026 06:40:08 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b1ee89sm19810313b3a.14.2026.02.03.06.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:40:08 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: iio: magnetometer: bosch,bmc150_magn: add bmx055 magnetometer binding
Date: Tue,  3 Feb 2026 22:39:42 +0800
Message-ID: <20260203143946.301233-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260203143946.301233-1-jerrysteve1101@gmail.com>
References: <20260203143946.301233-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-262297-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C4FC7DAB4C
X-Rspamd-Action: no action

Add the device-tree binding for the bosch BMX055 IMU (magnetometer
part), which is compatible with bmc150_magn.

Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../iio/magnetometer/bosch,bmc150_magn.yaml        | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml b/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml
index a3838ab0c524..09d1dc861d4f 100644
--- a/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml
+++ b/Documentation/devicetree/bindings/iio/magnetometer/bosch,bmc150_magn.yaml
@@ -21,11 +21,15 @@ properties:
     description:
       Note the bmm150_magn is a deprecated compatible as this part contains only
       a magnetometer.
-    enum:
-      - bosch,bmc150_magn
-      - bosch,bmc156_magn
-      - bosch,bmm150
-      - bosch,bmm150_magn
+    oneOf:
+      - enum:
+          - bosch,bmc150_magn
+          - bosch,bmc156_magn
+          - bosch,bmm150
+          - bosch,bmm150_magn
+      - items:
+          - const: bosch,bmx055_magn
+          - const: bosch,bmc150_magn
 
   reg:
     maxItems: 1
-- 
2.52.0


