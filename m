Return-Path: <devicetree+bounces-122368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2829D00CE
	for <lists+devicetree@lfdr.de>; Sat, 16 Nov 2024 21:37:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FE5B285DD7
	for <lists+devicetree@lfdr.de>; Sat, 16 Nov 2024 20:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9487F194C7A;
	Sat, 16 Nov 2024 20:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NtnlPApB"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0A6191F91
	for <devicetree@vger.kernel.org>; Sat, 16 Nov 2024 20:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731789425; cv=none; b=C+cVx07zieDJFIggFyLRFi+UYjeyTk+bjf4sMWFZ4tqKPeo5W4Zt26DsaabiOtTb/eY7XCOzNGEb2K3h8WsYnwfrUUcFH1iba6nLwBukxiZiP0S0DsghI5b2WeQQTysFFoYPEfs7V93ZY8k3hmwH0zeB/xMnqDSD3HbYrIhPCDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731789425; c=relaxed/simple;
	bh=m3OWkHTSLWTUOwdJQ8ONbUPa8uj2qOi8R7Ooe6Q7ptk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Lg6CPsqjhS0UMYdr/K7WwP7Qdv0WFtLE8I8xV3dwKyVSOqlmMkDsimmlXHxrB0EO2JhilUs+MUohx9lFPJ7bccM48iUIFNeS/lWhxLaG9DozOpEqHscok258mqVmienICfGsTO0IroXtVh5sSTY6DaQ6/B0NwLxfHa/zmoeW9Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NtnlPApB; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731789422;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HnuLBgjShB6JItGvQptzxKCXuY+/QrDp1kAZJwosvf4=;
	b=NtnlPApBhR2ukbqQyozVEeknpO7mOT0fP43GxKicgq2OaKrPygJEprbye56oohvV00mHnM
	1AptgXvl4i62XKwYnhnJWkAWb6jtusMLeYzLAcyW6pQLyU70xWsiOMJGSVn+sFiUBF8ePw
	7/rnJ3iYbkhKmIaDdh+RpJhHriNjnAM=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-74-ed4UtPiVPm2rR8lcmC30rw-1; Sat,
 16 Nov 2024 15:36:59 -0500
X-MC-Unique: ed4UtPiVPm2rR8lcmC30rw-1
X-Mimecast-MFC-AGG-ID: ed4UtPiVPm2rR8lcmC30rw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8E85B19560B1;
	Sat, 16 Nov 2024 20:36:57 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.14])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 0EB001956056;
	Sat, 16 Nov 2024 20:36:54 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Hermes Zhang <chenhuiz@axis.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: power: supply: bq24190: Add BQ24297 compatible
Date: Sat, 16 Nov 2024 21:36:46 +0100
Message-ID: <20241116203648.169100-1-hdegoede@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

The BQ24297 is identical to the BQ24296 except that it uses USB D+ / D-
data-lines for charger-type (max. input-current) detection instead of
a PSEL input pin.

This is the same difference as between the already supported BQ24190
(D+ / D-) and the BQ24192 (PSEL).

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 Documentation/devicetree/bindings/power/supply/bq24190.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/supply/bq24190.yaml b/Documentation/devicetree/bindings/power/supply/bq24190.yaml
index 131b7e57d22f..07adf88997b4 100644
--- a/Documentation/devicetree/bindings/power/supply/bq24190.yaml
+++ b/Documentation/devicetree/bindings/power/supply/bq24190.yaml
@@ -21,6 +21,7 @@ properties:
       - ti,bq24192i
       - ti,bq24196
       - ti,bq24296
+      - ti,bq24297
 
   reg:
     maxItems: 1
-- 
2.47.0


