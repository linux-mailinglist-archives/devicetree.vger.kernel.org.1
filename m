Return-Path: <devicetree+bounces-79968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EED0917806
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:23:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 335671F21BFC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 05:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 179E914A4EB;
	Wed, 26 Jun 2024 05:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2yTyQTI4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B35B13B78F
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 05:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719379368; cv=none; b=Pua8pHcDXzxWyVszQE86aPnJoRFjUH9MuGWRlzCbQBr5cAoYE9f+EpyR84u+AHVUNq6pw9IEykPJWQqat5fe2LaGpIe8VX/0KAapTJLMkg20fE84Clx3cHyNfm7oODhyHcSMUIMKT2wA8n0gD3rQhaEBFUFwRI3GyFmqNX+hdMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719379368; c=relaxed/simple;
	bh=lT52MzFD7qpYUTWTDFDG3pIyxKvlTWAutLR1BrNxUA4=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=OzOMyjab2Z8wc1sE28RhuwkYwCawOmFlurFMF38S5zB3ytszHMzOKhuLGSci+Ttw888k205fjEBncPmw8UY3cVPTutssWSmCDDQH+0R5nq+OjKpdkGFRTQ5O/pBNV05N47iawO6JXYx39Z6RGF7GrMReZNN/YL43Qx+CE7/neFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2yTyQTI4; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-646f6df9683so34130447b3.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 22:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719379365; x=1719984165; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PvKOlYXT6DEYuH52e2UV3CHMNpzpAZjsjgVTw3pHU3M=;
        b=2yTyQTI40SY/n2CWTwiasEN3EWe+j7ikYwNcdfe3GWca5tMUOQUJOJVfipytXYAW7Z
         H5qq9xAHor7BtDkkeKmb3FOtxVuXkQDk39ZOU3ZU+LFoHZxdv9O/YMp3a5OqxEJ6V7ni
         3OKyiGSV5NIUEVQ0dfeA26V+9f/KUgIXouMn0OoustFmdEd7KEy37K1UqZ6qOtaY3byJ
         5D1rblHOTFERjiG7dspb74zjyzU2dr0QgOtnaoRlPdyDBVRubIEsjQro7vczKhNS9iuT
         ux0qdaMyM2B9Yo+2Rn8SlC6r8aAQtqpMFLrcF4XVPJuYnSgoDAdTNzp3H972YVqoRK2f
         Ijtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719379365; x=1719984165;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PvKOlYXT6DEYuH52e2UV3CHMNpzpAZjsjgVTw3pHU3M=;
        b=l3CXXODiEVajgMVZk6JGJIyUDPcKIX9gnVtQiBs3RBANhIHLUMv24H8enP4dVUkvXc
         PQTb0EJXl2oHnsZU2UDZspJrSvlO14epEpuNxh6Cl72GAznfC3BrOO8omV3XokY68JPT
         n+tIIFyVKpH9xnWfuTt1JVrNCkl9tPZDUMC+CEXbVaH0DIHmoOjiW208qV8P29vlfS4l
         ezJLfpfCxMnL5OegOS/tld24wWYTX8ejfkNzN1fEXi/u5YLjyBGu4tNhDruWOFPegGGE
         mfjVPK12myqb2jYY4IvN3//4bgUvJvlZBsWSApRtK520oXxG+UgVxJde3ZKf7NKuhZFn
         vOEw==
X-Forwarded-Encrypted: i=1; AJvYcCUa/okqww4lTMSWoEfTit7xtCnBahjQDvk2ltl73JHpK3YKvzyrGMpnOo1Q+4LZFZ2HB+rdUMOyDf90F5cVYd77K83GsTpWj9dX1w==
X-Gm-Message-State: AOJu0Yw5k0GTJF2wljOxa8vT9KVDlPpYQ+E+zKp1WL7fO8PiDE8o/4jW
	DVkS5zYUJt7rCo6MLnPRRElg8E2+fe6uH6mJnUDfnMOdQJOUyYTvwcBbijZYaG3t/I64VCKG7wI
	Jui0nyTtJOI8KB/Bb/MUa8OsDhA==
X-Google-Smtp-Source: AGHT+IGzl8x7DxVv6F3p8R1sVwIyMgFIzmWoKOItdjSMIzZLcv+zWyJvzolxM68jTcTziqMHoGm4QEXPpeTlvxEJdYY=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a25:e056:0:b0:e02:bdcd:3bd4 with SMTP
 id 3f1490d57ef6-e03040e5ea3mr320815276.12.1719379364918; Tue, 25 Jun 2024
 22:22:44 -0700 (PDT)
Date: Wed, 26 Jun 2024 05:22:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Message-ID: <20240626052238.1577580-1-aniketmaurya@google.com>
Subject: [PATCH 0/2] Select IBI ops for base platform
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

This adds the option to select ibi ops for base platform driver

Aniket (2):
  dt-bindings: i3c: dw: Add property to select IBI ops
  i3c: dw: Select ibi ops for base platform driver

 Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml | 4 ++++
 drivers/i3c/master/dw-i3c-master.c                            | 3 +++
 2 files changed, 7 insertions(+)

-- 
2.45.2.741.gdbec12cfda-goog


