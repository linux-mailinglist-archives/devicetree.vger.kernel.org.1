Return-Path: <devicetree+bounces-225690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A24BD005B
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 09:34:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 532A93BB91A
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 07:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7BEE22D4DD;
	Sun, 12 Oct 2025 07:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="ld4VaRQX"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659FC224AEB
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 07:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760254432; cv=none; b=FSSXz+QR8RtqSnprJx2H5QGP7yJnQoQxkf85cyosZFWgzLOopgWfsxidjRZabd514YglG2TDSlT7EeMpsizVyGwQEySb+HpxX/lAl5wCQVrXCFsY9gMVuEENAVGmb+7q+A4yClA3bP0xcuge+tpUbRl75LeZ9wHHzAK5CBeweL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760254432; c=relaxed/simple;
	bh=x/+sEIf8VjKkMYSdEpbEU8plM/Af4caDH9g+BysFzU8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uqSkvjNyQOC1BoTC4ZR/zurcOF3vnrx5ltsisOdKmGnULuiE+7oHujUWDTnllNk98pn96UriEX/8WSDoxzQ55PPgZI54Hplkk6HJLyVYqtquYOIOPXjgIEptHt/fl1ZZ2ckK9lBUe9anE568Mlo+h1dLL+qVnJ0r/KKI1NTHtcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=ld4VaRQX; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 19226240101
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 09:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1760254422; bh=lRJWFiIlekaCJeQc8xyXqvXuD8E24YnSrfc0tVcVZFo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:From;
	b=ld4VaRQXdWwCmgMffweluQ2NuhVE5Ttse7AtsP20zfTedqHEH8vq/VzMAK/YsTc+A
	 fFTXe3FXfyC0Av2CVOA1ThAqGOohcjr/dwIBzrme7+nRy0iojBYjV1HSMrKLca6+Er
	 gRsxdRLlK5TPbkY3mVa6wyJfLRpcdaDrFWbCvYuLCCU2mu2zVjs/vIQA8F2hjIZ4RE
	 j+DMY2dunzT4DyOysPq3tAKVBsBc/OBhkF9Pnf/I5mmSobjp4uqxUzhPLUJeqOtdZ1
	 3yDyJgCZUnW/qqO5jA7kx4vNsEDy3O9xcuA5egit69KXeURGZ0OjPzFZHWXxzoWGSl
	 dQVCgZqKShEyg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4cksfS3dSnz9rxT;
	Sun, 12 Oct 2025 09:33:36 +0200 (CEST)
From: =?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>
Subject: [PATCH 2/3] dt-bindings: media: hi846: update Martin's contact information
Date: Sun, 12 Oct 2025 07:33:36 +0000
Message-ID: <20251012073314.9035-2-martink@posteo.de>
In-Reply-To: <20251012073314.9035-1-martink@posteo.de>
References: <20251012073314.9035-1-martink@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update Martin's surname and email address in order to be reachable.

Signed-off-by: Martin Kepplinger-Novaković <martink@posteo.de>
---
 Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
index 1a57f2aa1982..0a715081d271 100644
--- a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SK Hynix Hi-846 1/4" 8M Pixel MIPI CSI-2 sensor
 
 maintainers:
-  - Martin Kepplinger <martin.kepplinger@puri.sm>
+  - Martin Kepplinger-Novakovic <martink@posteo.de>
 
 description: |-
   The Hi-846 is a raw image sensor with an MIPI CSI-2 image data
-- 
2.47.3


