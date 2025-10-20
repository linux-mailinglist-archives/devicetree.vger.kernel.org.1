Return-Path: <devicetree+bounces-228599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8769BEF6D5
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FD6E189BD5C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 615BE2D3A96;
	Mon, 20 Oct 2025 06:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="S3yl3n/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672932D320E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760940636; cv=none; b=egfI0oAwajywuW0aXuljVB9fIMo1uXqF+RzlqWh0fBUExQKx9IHSI3rnx3qFiJ8SA/XHlKNGyYlo7ENZUkQj4h8qbajgdx7wtmSAtyF3nRgQ3IdTYQVh9jJoT+nxS4pp8sWOCh53+WGyjUZvLmu3cMp3G5hMcQKipVqXU03MbKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760940636; c=relaxed/simple;
	bh=OObe4ErLkWgVnTTNcfeolQYkDMV9uQu3nhmRSg3aGj0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aZMXplAQTmoo2XaG+ubCFQP7981fg/AkBS7wcVhoXuEq3DNFDvqXbEVvm6dGKAXVXZ95K96QK5pXM25KHo7ujWzS5geTa9tKDBMKlg/RwLIu3fuEQbyh8FadSsebSPBUWOgFhxJfaq+TcMVnh8fnZAA70NCF6M2k6Pd8x1hp1y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=S3yl3n/b; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=0nTkCtsKIgXr2WMA6t7lMsVluJvzGAOx7z1QS1X8Rvs=; b=S3yl3n
	/bTCMfub6fBlpTU6KMcToSn/P9SMzCjvCdJY9zZpSrmRItahmsDKYED33XC9g2pP
	8fTCRMmuUwqi7m8Ok3IbqNIW8jlAko0JoP8TlLDisTBEtH7Xf4McbD6p92JqMXt2
	GV7LAO1jNO3brf6aWek6JV9Lfi5mwtCXiX6uGxDgvKicQqTwH9j85rgoIv/8tHui
	M1vzDeY2pfjzmy1+vM4qWZ4oKXtmK1yyseTcwgXBSCDMjUWDpKdbI8S2eUuHdZin
	DEMtjrGVtGdm/Vkt8vjtBZSQna9RlPOf6grg3Fmi1BxT0QOnfLeT9wC25nUI8wZS
	qHCKKRNnIkKgBwDw==
Received: (qmail 941049 invoked from network); 20 Oct 2025 08:10:27 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 20 Oct 2025 08:10:27 +0200
X-UD-Smtp-Session: l3s3148p1@BhWR8JBBLoggAwDNf0fPAEuMhp6AgTGK
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: devicetree@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Srinivas Kandagatla <srini@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] dt-bindings: nvmem: don't check node names
Date: Mon, 20 Oct 2025 08:09:51 +0200
Message-ID: <20251020060951.30776-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020060951.30776-6-wsa+renesas@sang-engineering.com>
References: <20251020060951.30776-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Node names are already and properly checked by the core schema. No need
to do it again.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
I'd suggest to give subsystems some time to pick this patch before
Rob applies it?

 Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
index 3b2aa605a551..ab4cdc4e3614 100644
--- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
@@ -31,7 +31,7 @@ properties:
     maxItems: 1
 
 patternProperties:
-  "^.*@[0-9a-f]+$":
+  "@[0-9a-f]+$":
     type: object
     $ref: layouts/fixed-cell.yaml
     unevaluatedProperties: false
-- 
2.47.2


