Return-Path: <devicetree+bounces-197427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7694DB092EF
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 19:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46220A41853
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 17:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B662FEE34;
	Thu, 17 Jul 2025 17:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cRQ8PnVK"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B182A2FEE06
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 17:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752772284; cv=none; b=n+gJrWUK2KW/MyjRt+WVc9au1ssZGFLVY6+rR7+LsKtuJPMmWy+UdLIfOuSa1vhTBLRLxKpHptHgvOnVH/ZzeFARi9HtJpq+8p4nYgy+gY50JMW9mjuTzYN8e+Diq54n15iGaYCjj/AFAe3TDcfAWIbioy9azjaT6Nl7bhPE0Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752772284; c=relaxed/simple;
	bh=8qCq9OayXSySDMcO9kUVXO5iWHFCPIYqWEidFWXyRJQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NstURsSeifd/m6mdmMbpymfwv1k8nZrUVgbS3FpHK1wf/XqQdqfJ73us/3fGkpaTUgAUkGymF51qIHC63BI2JATwjQD2CSIis5Mnx1Qq6Cz2hbignU28ZmVwfjJIHv9mXBydiuQaiP0JXZPhECdk6ix8PKNivfMTFzi33Ui/2ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cRQ8PnVK; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752772281;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xagYrAR0OP8mWYVE7CNmGAY9Ju20MBtsOAnBb9IfOoE=;
	b=cRQ8PnVKK2WCToNbg6aw3TJtgHbjfjKIgZ4CZqlizn6oQGvuZc/n9ht9jQwbPidr/q5KgX
	668QDQV9rpkNzQ0xuRqEgKqKV1eJzA3Kf255XPGO/S4d9Qo44qS3YovNzHGV08b7Wr9BhR
	/gcb3pLM/Vab8L7nsziFQf0G6DasLys=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-449-p6SJ0MBHP4GRtDfmFaGs4w-1; Thu,
 17 Jul 2025 13:11:14 -0400
X-MC-Unique: p6SJ0MBHP4GRtDfmFaGs4w-1
X-Mimecast-MFC-AGG-ID: p6SJ0MBHP4GRtDfmFaGs4w_1752772273
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8955118088B4;
	Thu, 17 Jul 2025 17:11:09 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.34.5])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 9CD1F195609D;
	Thu, 17 Jul 2025 17:11:05 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
	Jiri Pirko <jiri@resnulli.us>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Prathosh Satish <Prathosh.Satish@microchip.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michal Schmidt <mschmidt@redhat.com>,
	Petr Oros <poros@redhat.com>
Subject: [PATCH net-next 1/2] dt-bindings: dpll: Add clock ID property
Date: Thu, 17 Jul 2025 19:10:59 +0200
Message-ID: <20250717171100.2245998-2-ivecera@redhat.com>
In-Reply-To: <20250717171100.2245998-1-ivecera@redhat.com>
References: <20250717171100.2245998-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

Add property to specify the ID of the clock that the DPLL device
drives. The ID value represents Unique Clock Identified (EUI-64)
defined by IEEE 1588 standard.

The property is not mandatory because some DPLL devices can have
an ability to read this from HW. The situation is very similar
to network controllers without assigned MAC address.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 Documentation/devicetree/bindings/dpll/dpll-device.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/dpll/dpll-device.yaml b/Documentation/devicetree/bindings/dpll/dpll-device.yaml
index fb8d7a9a3693f..8e4ffe8ca279c 100644
--- a/Documentation/devicetree/bindings/dpll/dpll-device.yaml
+++ b/Documentation/devicetree/bindings/dpll/dpll-device.yaml
@@ -27,6 +27,11 @@ properties:
   "#size-cells":
     const: 0
 
+  clock-id:
+    description: Specifies ID of the clock that the DPLL device drives
+    $ref: /schemas/types.yaml#/definitions/uint64
+    minimum: 1
+
   dpll-types:
     description: List of DPLL channel types, one per DPLL instance.
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-- 
2.49.1


