Return-Path: <devicetree+bounces-259308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nSfsKoWEdmkuRgEAu9opvQ
	(envelope-from <devicetree+bounces-259308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 22:00:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F23F382721
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 22:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA14F3005E98
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E141830CD99;
	Sun, 25 Jan 2026 21:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MA9N1P8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 888BE22A1D5
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 21:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769374850; cv=none; b=GK99X/waLb5KaIgE3ucmb4857k/gVxguI6WA8R3gvPILK8yUWwVyb6Foo5EhLMGYXxufBPvjJtNgnpgQD0WK4lA0nB/AeJzjVTmFf3PJoFqEpO11FAqbmpl1v/fN51s+xfWt1roXCs6L1m0O1Qq2zjIDQtSZ9GNhs3gpo0OaeYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769374850; c=relaxed/simple;
	bh=5PFiR3pQjTqIla7qssIWU2YVWKms4qOZaGX0Q3wGiyk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TodKPj/l76IqYIzIOiy0f55gY4NsLyeg4unXi/79PJV9KRAklYYIobvyBd31Qb07RXFffD/RBcp5ST0gMGUMWElO/nqlJKZo8edq7pfuKxdeXHIBkAUocYrDX2HXJYDpOi3O15hCCqtUWHYKJQskengTi0UNqEX2r7bRPd1Jwbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MA9N1P8b; arc=none smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-649605d3664so2148846d50.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769374848; x=1769979648; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CAu2MatAEnI8QTVhImPBkJhxG/GJJFigkdVmzHyS/y0=;
        b=MA9N1P8b/cvEL0FamYqfKUCL7I8oRtfaGeMzTk5lAEIX11GWQtH9njQcJpFMfj+OPY
         kZ60i2vF2CUwRqbkArg0TsdJ+Dwf6+dvlwahXO0Tmz4dfpDDf0Hsla5Xr4uR/dYtySAM
         pg6D9vXIINlGk8gV1j77k5bng2if+sZJyWyT75e1aZ4/uvcOLz6cnigknP4Uvt3TuQXF
         MK5TachGreepaxNK3IYhxT6QVE3BtMdfaHfTz8QD/T5ww1BMhd/wWcswBdWpiRHXnd1H
         gZbxzI7YhH9qaGz/NdwTTysDQ7Wr1U9jgduqPjVURfkmyX9O6VbqBMgqu6QNnIon5pvV
         K2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769374849; x=1769979649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CAu2MatAEnI8QTVhImPBkJhxG/GJJFigkdVmzHyS/y0=;
        b=dI260yD5smiKrJWDwy2IJCMiUJyMsbVAHCu8Py7xoZrBircMIZwTJXFT8HCd3BNbUQ
         Bs67EzmuD3g4j4ShD/Ksi7Ej7jCyTUSRD4Yqoa97cmmvvxoRG0vtbM3jirU+8J4l57sB
         EDdF+fL3cUzCR+9ZkukzZVdjqKlp+7jxndepCVrkGdXkqacbtbYWSATC9aB+dXTldlk8
         SCn1ZP5d++z9DBB/AecA8z0ZPBrIEXyCWk/N7QxOz2TCY/myR3llchfHkNFXv1SvuX7Z
         Xd8jXK5OF/WAr6W2u3MTfqDNjtau0LDU97q2OyiN9Hbz0haAJiWB1QQmkK7D42FQSlUy
         Udyg==
X-Gm-Message-State: AOJu0YyKL/pIEamcKnPRraTsqXEg7iT/iI/c32ajC8WnMTkyjU2z6XrG
	bmqQTva+5UGrHR0pgK6yBQEvR0VIHicNK+hauwbg4SnuSvQ+MeV6arlj
X-Gm-Gg: AZuq6aJ7Y9Tc0iMK2A/mpdbSZULvhjdRe4BP6clTzNGQYNi8KFiNGGGkFoAJLbDiZTX
	MY1Ju0ygWjsXMPqBBYfm3ZSE3gzWL4mmLZN6IHXhpEIYmZ0ikEA6FaZoyb73i4YLTMQYc+hKP9U
	o9KNTTO5KLdHy/6p6FjlbLE8vgohbPbKOkPHvq05n59xRHpcWlvyH6yyPPvcxZirOjoDZPMZLdF
	UkqturAY8WzBzo1o8AKdthaFZXT0iO4T6SYfzMdsITG45gNlXlK/SscdztwJ//MRrwSbohnJPHJ
	DJ7Ca9FjdNohGU+EOT6nXEthEPkCtWPejFqt9tdny0Eaihv2bx38bQBhJfVtAapVo8LKn8RkusM
	a58l8blTA02hSDIilcg9k2HcXT8fezSMbZRFbX9SUqlaFV9n8tT7otlkpPXFRlCPQVR3JeZVnQu
	NcPzL8
X-Received: by 2002:a05:690e:1559:10b0:644:7398:6682 with SMTP id 956f58d0204a3-64970bc9f6dmr1471749d50.30.1769374848597;
        Sun, 25 Jan 2026 13:00:48 -0800 (PST)
Received: from [192.168.2.165] ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 956f58d0204a3-6496855d65esm2518183d50.12.2026.01.25.13.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 13:00:48 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Sun, 25 Jan 2026 15:00:38 -0600
Subject: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asrock Paul IPMI card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-asrock-paul-v1-1-956085a4bd06@gmail.com>
References: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
In-Reply-To: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Zev Weiss <zev@bewilderbeest.net>, Renze Nicolai <renze@rnplus.nl>, 
 Anirudh Srinivasan <anirudhsriniv@gmail.com>
X-Mailer: b4 0.14.2
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,bewilderbeest.net,rnplus.nl,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259308-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anirudhsriniv@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F23F382721
X-Rspamd-Action: no action

Document the new comptaibles for AST2500 based Asrock Paul IPMI card

Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd13b447e5ddbc64c5e169dcd08fb15..4660b615da18b7cc390ad0cf95f5a3d7523a865a 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -34,6 +34,7 @@ properties:
               - amd,ethanolx-bmc
               - ampere,mtjade-bmc
               - aspeed,ast2500-evb
+              - asrock,ast2500-paul-ipmi-card
               - asrock,e3c246d4i-bmc
               - asrock,e3c256d4i-bmc
               - asrock,romed8hm3-bmc

-- 
2.52.0


