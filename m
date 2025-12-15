Return-Path: <devicetree+bounces-246765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB4DCBFC2A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFB3630386BC
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9153131AF39;
	Mon, 15 Dec 2025 20:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JP48aUif"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020A63148A7
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765830673; cv=none; b=l5p7IiC5Ulj4Bgb2V17RQdU/+02sl6A4cQgJg9qsdUFlfTFkrX5OMuAEIUqFuElGORfPqD5gDWbnvrcIGl9wqLB8FvAqaWxCbLYAS9RdPFdG7nDXCO9qW0Iojxv4z3DuDcPJkZjhijrzEoczdYbUJp05GhlwmTdvqTd3vqwa1ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765830673; c=relaxed/simple;
	bh=ZhUn8vc+fD6SJ67VdT0zum01iObZTndkZuP2mWV+yYw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YBPVtsvAIjCie85yGC8fTglX4dYXbUoZrUWZr9BP5oD7T8jYpTvczyuFJK9FbwcyTAl5RfnurykaIqcAwbKzgyluK1oVb5Gz2OtGc8OsOWJDM9jPbo+ymJgVfIbFzpTv15AZzbZUhgzbE2AdKsny7oQ6DeA0B8M50Mr/iJ5up5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JP48aUif; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765830668;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mIstUGBR0rD4CfMkeCa+/gSeNm5pDQuFR2aC3PBwoZ4=;
	b=JP48aUifJwJNq/mtg518m6zGuAJsKltDqmQmSK9/AKEm4xS06ebHRyLqqVWmUjeIMQsJdW
	ylOQI5DXklKyz66EiaKZivLZBFxGosfl8xIsOl3sGe82W+0NK0tnnyGSMhBK/E3o+GNOgR
	xyMWyyA0OgGoc97OnQ43K7vrRhkrPD8=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-626--Ca_RcYfPyiCsgU4TiDNbA-1; Mon,
 15 Dec 2025 15:31:04 -0500
X-MC-Unique: -Ca_RcYfPyiCsgU4TiDNbA-1
X-Mimecast-MFC-AGG-ID: -Ca_RcYfPyiCsgU4TiDNbA_1765830660
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 09C2519560A5;
	Mon, 15 Dec 2025 20:31:00 +0000 (UTC)
Received: from p16v.redhat.com (unknown [10.45.224.214])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id B7B6930001A2;
	Mon, 15 Dec 2025 20:30:49 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Grzegorz Nitka <grzegorz.nitka@intel.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Jiri Pirko <jiri@resnulli.us>,
	Jonathan Lemon <jonathan.lemon@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Leon Romanovsky <leon@kernel.org>,
	Mark Bloch <mbloch@nvidia.com>,
	Michal Schmidt <mschmidt@redhat.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Petr Oros <poros@redhat.com>,
	Prathosh Satish <Prathosh.Satish@microchip.com>,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Saeed Mahameed <saeedm@nvidia.com>,
	Simon Horman <horms@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Tariq Toukan <tariqt@nvidia.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>,
	Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Willem de Bruijn <willemb@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org,
	linux-rdma@vger.kernel.org
Subject: [PATCH RFC net-next v2 01/12] dt-bindings: net: ethernet-controller: Add DPLL pin properties
Date: Mon, 15 Dec 2025 21:30:26 +0100
Message-ID: <20251215203037.1324945-2-ivecera@redhat.com>
In-Reply-To: <20251215203037.1324945-1-ivecera@redhat.com>
References: <20251215203037.1324945-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

Ethernet controllers may be connected to DPLL (Digital Phase Locked Loop)
pins for frequency synchronization purposes, such as in Synchronous
Ethernet (SyncE) configurations.

Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
ethernet-controller schema. This allows describing the physical
connections between the Ethernet controller and the DPLL subsystem pins
in the Device Tree, enabling drivers to request and manage these
resources.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../bindings/net/ethernet-controller.yaml           | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 1bafd687dcb18..03d91f786294e 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -13,6 +13,19 @@ properties:
   $nodename:
     pattern: "^ethernet(@.*)?$"
 
+  dpll-pins:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandle to a DPLL pin node of the pins that are
+      connected with this ethernet controller.
+
+  dpll-pin-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      List of DPLL pin name strings in the same order as the dpll-pins,
+      with one name per pin. The dpll-pin-names can be used to match and
+      get a specific DPLL pin.
+
   label:
     description: Human readable label on a port of a box.
 
-- 
2.51.2


