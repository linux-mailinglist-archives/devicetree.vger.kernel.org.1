Return-Path: <devicetree+bounces-238805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A16C5E625
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 18:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7CED53612C2
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4926134403B;
	Fri, 14 Nov 2025 15:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4WhkwBh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F943342CAD;
	Fri, 14 Nov 2025 15:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763135662; cv=none; b=TOoJe5orO8C+431GFb2mS6p0DzI0BEkQ4nsfUkNoocoaITFSjhshRm4RgF8qvO2GiF01ORXpGTyXMGbO9yI15Eb4LWuu9UtDuH8oHlsUbPfuSSHAQwRLQukrwqdU+WfiXiBoPIa6yKYAYhfVoYRooKXCYxX+cHTCfXUM029SP4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763135662; c=relaxed/simple;
	bh=6dcBJsX+DWNI8iUR9izRHhNmTPyKKihwxdk1IowRBqU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qF0TEamTfhvMSj+F3PUZf9lr6qBl1K+7z17MqHIB6yPBn8h0M8SRYOdKVm9Sdf5koZ7i5FiACAHTJzgNqSQIfC4WfzBN79ru29OL4DYqWRHOa9nNNOwkEGHYByZE0KzFae1E6ci3vwnr3uDUjrfGNop8CpM+DpwplNQZiiGLZ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4WhkwBh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92F7DC4CEF5;
	Fri, 14 Nov 2025 15:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763135661;
	bh=6dcBJsX+DWNI8iUR9izRHhNmTPyKKihwxdk1IowRBqU=;
	h=From:To:Cc:Subject:Date:From;
	b=H4WhkwBhrBglf22WFMxpeOgknb+bVeu0AsDwv4mayUJqnN411hF7yFuggPdyD99R7
	 BJNV7QnOsoStXjU1sg2lR81Yg0syt+zyGxGDZ7NJLfFTXwNmxN1OFOP06M9VZDteRB
	 RdP7hJFkrJH8hOsftUphiNqJV6C44uyMcrh1ofNXSZ7v83Dbj3Ig9oXfNbEt0ifQKu
	 95W9atCjYTDg/7OXvRyLNni1DmMQ4pm9sarFV9Ga0XFHuVW2BoK7rIlTau8Bq4KVFV
	 f3JcsheBi02mLYkU7ez0TioptHLEDK0vXZRlQvEfistdHoF8P3PZS486ENdmzcK9sc
	 DhQ1Hom3r6kfw==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vJw7w-00000000373-0jlP;
	Fri, 14 Nov 2025 16:54:20 +0100
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alejandro Enrique <alejandroe1@geotab.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: gnss: u-blox: use open-drain reset and safeboot in example
Date: Fri, 14 Nov 2025 16:54:13 +0100
Message-ID: <20251114155413.11949-1-johan@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RESET_N and SAFEBOOT_N pins should typically be left open and only
be connected to ground in rare cases where a device is misbehaving.

Specify GPIO_OPEN_DRAIN in the example as this is what should generally
be used.

Note that the current Linux driver implementation depends on these pins
being declared open-drain so that they are not driven while the main
supply is off.

Signed-off-by: Johan Hovold <johan@kernel.org>
---

Changes in v2:
 - declare the pins as both active-low and open-drain (as the former is
   no longer implied by the latter)


 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index 9f14cfe7efd1..d016808f65cb 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -67,7 +67,7 @@ examples:
             compatible = "u-blox,neo-8";
             v-bckp-supply = <&gnss_v_bckp_reg>;
             vcc-supply = <&gnss_vcc_reg>;
-            reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
-            safeboot-gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+            reset-gpios = <&gpio 1 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+            safeboot-gpios = <&gpio 2 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
         };
     };
-- 
2.51.0


