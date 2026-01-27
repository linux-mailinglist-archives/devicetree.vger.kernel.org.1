Return-Path: <devicetree+bounces-260079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMKrHkMKeWmxugEAu9opvQ
	(envelope-from <devicetree+bounces-260079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:56:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A53A99703
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:56:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85DD9302A1B5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CD183644C1;
	Tue, 27 Jan 2026 18:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mRRGG/6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42B2364049
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769539726; cv=none; b=D9jnYFr+BjY11hKGdRfdK7We5MoP+nlgyLM/BVbhS8amHfKOcrXvty3tKUZEk3SW152S/wXH4HtKOo4XN8LG0fyEwiCd03Ooyqyg0hnxXenrytAJE5XCQTQ79tX2Rdu4ZpZ+zXwKTTzlUwBIfKnfy6rL9DYtp+5lJNNRYYlBT8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769539726; c=relaxed/simple;
	bh=H84erZxT2MlAaY5J3iUKm8PxILlu1jOlSTZ53NjhBCY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rxKJI4DAsCw5v3Gi+F/sS3Iq1UmiDjCX/m0iS6bC/FaYVm2/9jNSfi8cXh0LofYjJhrTiAoLcZTesLel0cZp1oIr6j0m5F1AC6VX9SuLeqXfLmcQcsucZ3oasfM5nFR0T5+CrmgNvCK4qFeMrbiuROCuYS+ElUn0nZFg8mSKkLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mRRGG/6p; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so1078705e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769539723; x=1770144523; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j6l444t6jpG+w7dlEITp6QEjvTc4ukc4CjhdbSiVZ9s=;
        b=mRRGG/6p5tdPv4wPB+zXPrbEhTAdxSk77PV9nnkdgaSwn4NuiwjJUvM3cV32i3rVWd
         G25bTRNr4fz6ebS6pKCIwtubm1FKjqrciL+gEJM3EgEPJyU0PP6qSzSxyNpWA+2t/vPL
         vowL3BZ9Jb2cCdt/ZGZpwB0tnqE3I8hBwbvhFSBdFFbPnSA0Ft64cVGbqJWkEcAfHMgu
         F5IzDBOSzYazTPBz6Yi7duCHrl2J5KFrd637+RxLOyts3uiuzmuhuOm8XoEeWNg2CtiC
         GMfhkANvb6fF4iNfqXbJWFv7faCtTyNFpWLOfz1XGoocXeLiPjwydZgtOzMq1WZBXwhh
         7HlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769539723; x=1770144523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j6l444t6jpG+w7dlEITp6QEjvTc4ukc4CjhdbSiVZ9s=;
        b=kzqbFqJSAYEQEXRs3HnJXsd23mdpRHPOtmogV1ICV4KXJPUtQejHJyoBsNhkYP+twL
         YrGDZbifbN3+v0O9DPc9Q+PeQ8xxmu33aRnkTSAlq6JqxvTbrkJhBmiq1wninH9b7tOo
         ppHQP0YlmFrJBjKyiuJ/OMv47xphwvFrA9D2j2YXS7lS8GA1MQvyknb7nqT1AqjhN7x1
         y+16yn9iFsaQNG4I6j1v+kZ6Qmg1TLcOGukv/ftrS61Xth0c9zGQg9SywmMkiKqNcqne
         FVcq5It4MBADnhMXKPyrBGXFmdMZhwlZr/KPVq3UguQysYKwCu6eDAsSEMMSy7FHpAcQ
         Z2rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwa1RQ5Sp3B8GGeauxL6KsVNRqrOFLGAbGh4EVojQwxb4xxZHMePuGeIVmri11dJ3Oj8x5QuHx8SHH@vger.kernel.org
X-Gm-Message-State: AOJu0YzcMXDkBqzLYozg0MXaoefDMXhuWbkJMiadoXe9ziDTqKAEo5fT
	7cuCh0OEfIXEtCkg6reezKy9HcVtWw2LgAvXIM9qKykS/SYefbCTVruE
X-Gm-Gg: AZuq6aKj3ARIv6efAfW9tunRiczM+JWJfP8qGwNuvrwj+5tlS48HnZlgEQbiUm82z75
	/wxohxnb7g7g+b+JQG0Apkok7GG4x9ZY7Y2VFPrDlGiFe9mNYUlo+HVIPJ7qQCOWimyrshzolcH
	j3AoFsYsun9biQZKx0PimsWKssfrv1bv3XOxZULj2xRcM6P2KRWzB4xAHBxhpzLHG030L5329uO
	IGWROTARD0yCkvxACSElCZlpCTdtyqNvVKadGp+e1u2cwsCXKGKfk7Nz9F76YTdAb4nl5CQctRp
	VPd6+TNNZeHIyexXNvEnYtN8Ktcoyws/o2p20bzEExDWBBVlZ5CFIL8zmNOoSS4EHqQJR3PcLc6
	tbfFAgj+Q6SIh3w+406MphuKwX8XYDZfWfW3CIenCiC4UybZgzG97Tz1k/D/DjNL4HnBBo7UDy7
	uO1rcMBTESlzJcNlUqmklB/qtgcwoCMypK9tpiQtsaDwdR
X-Received: by 2002:a05:600c:4448:b0:47d:6c36:a125 with SMTP id 5b1f17b1804b1-48069e9b5dbmr38558875e9.17.1769539723087;
        Tue, 27 Jan 2026 10:48:43 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10ee057sm903100f8f.15.2026.01.27.10.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 10:48:42 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Tue, 27 Jan 2026 22:48:08 +0400
Subject: [PATCH 2/2] ASoC: sophgo: cv1800b: tidy Kconfig spacing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-incremental-for-i2s-dvier-v1-2-431b809c632d@gmail.com>
References: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
In-Reply-To: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>
Cc: linux-sound@vger.kernel.org, sophgo@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769539713; l=698;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=H84erZxT2MlAaY5J3iUKm8PxILlu1jOlSTZ53NjhBCY=;
 b=N5uJIXd1MfaMnAMCepcgyt3gC9Xj7DoHIF9W3uU+gs94PPz93VNI4wEbeV3fdbL7ZL/vEo6tZ
 kH+9BQDgcF5Bj2ECBnA1a+a29Tr89ihFUjfl7+ue7ClXiU6Yb9Xs6wS
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260079-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3A53A99703
X-Rspamd-Action: no action

Restore the empty line that was accidentally removed earlier

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 sound/soc/sophgo/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/sophgo/Kconfig b/sound/soc/sophgo/Kconfig
index e4786f087589..9b454261bcfd 100644
--- a/sound/soc/sophgo/Kconfig
+++ b/sound/soc/sophgo/Kconfig
@@ -28,6 +28,7 @@ config SND_SOC_CV1800B_ADC_CODEC
 	help
 	  This driver provides an ASoC codec DAI for capture and basic
 	  control of the RXADC registers.
+
 	  Say Y or M to build support for the Sophgo CV1800B
 	  internal analog ADC codec block (RXADC).
 	  The module will be called cv1800b-sound-adc

-- 
2.43.0


