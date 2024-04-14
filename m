Return-Path: <devicetree+bounces-59034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFF78A4116
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 09:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 836D71C20C8E
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 07:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62441208A4;
	Sun, 14 Apr 2024 07:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=michael.haener@siemens.com header.b="Gz8TYfjE"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58886219E4
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 07:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713081438; cv=none; b=csIpie3NHsZZN1UF6Ql3BubdnedVw4BnRT9r7oPcbb9wctln0SJmpODYUW5KiYkfgz2t7tZPafFX07QO4LTgXU2yLxIguFu8OIX248KEvDIJEcEcYFAbhYsm8jnAK2hSrfe9VyLM04J0rQ7wQLDIl/wKBRLym65POxHdUJ2IRcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713081438; c=relaxed/simple;
	bh=66B9xW2JnZF+T+ORl+vmwNxP9ZuLdipN2y3NqjssXK0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qkqpCWzNR6SLtFWjAjvbqEVlp9PqBYOVn0ODmd9gl6F5XQJTysMjNYz0Sm1PiaobtvQUlBm3HnGxmQqtjaeEaU85n+j4haurMZq3mvQ3eAdIa7hfpYrGKiY5+G/ud/8AboI75ufLmhqW3QCOz32dTiE6yyf08Td7P+kPIbxtZaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=michael.haener@siemens.com header.b=Gz8TYfjE; arc=none smtp.client-ip=185.136.65.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 202404140747035d020daa25218f68f8
        for <devicetree@vger.kernel.org>;
        Sun, 14 Apr 2024 09:47:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=michael.haener@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=mRTcKk9CAwzkOcmbjmAlIJKdoAVTq0P9oRRdIYZzYdw=;
 b=Gz8TYfjEfurOTWhvYtKCLk18xlnVUejBN5W04nkiza/SyUHBV6y9rUVvs5Ab279BVT5Y4j
 3Z4Z9+I8eg3XPlDoLp/3GpAPJJGtnxmPuHXVb6Lt9m7pAlTu2wjdly7zWfG/6gjINpe0VLMb
 XlfvwUemmwfBr2vtISPg0rpvxXrnQ=;
From: Michael Haener <michael.haener@siemens.com>
To: linux-integrity@vger.kernel.org
Cc: Michael Haener <michael.haener@siemens.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Peter Huewe <peterhuewe@gmx.de>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>
Subject: [PATCH v2 0/1] Add ST33KTPM2XI2C chip to the TPM TIS I2C driver
Date: Sun, 14 Apr 2024 09:44:33 +0200
Message-ID: <20240414074440.23831-1-michael.haener@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-664519:519-21489:flowmailer

This patch series adds support for the ST33KTPM2XI2C chip.

Changelog:
v2: removed driver patch

Michael Haener (1):
  dt-bindings: tpm: Add st,st33ktpm2xi2c

 Documentation/devicetree/bindings/tpm/tcg,tpm-tis-i2c.yaml | 1 +
 1 file changed, 1 insertion(+)

-- 
2.44.0


