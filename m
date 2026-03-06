Return-Path: <devicetree+bounces-271963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAhKK3arqmkYVQEAu9opvQ
	(envelope-from <devicetree+bounces-271963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:24:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B344021EA40
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C9B323003731
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C56835B12B;
	Fri,  6 Mar 2026 10:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W/OhqbzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EF935F605
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772792688; cv=none; b=qwvb7ccsDveDtYmmxNAG+fHCbsg3nPduz2bKD+pU5oV9ttF2WNdmb+lZY/Nusq3nA4pE85ymMP2yE1G0/AagvlNoal2dzwY7U62xMJ7q53GESl9+iH9rJhukdPsy4tZriRi8ADj8fJIqUqhqZPa1aAYIrjB0KxCCrzDI5gL9RZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772792688; c=relaxed/simple;
	bh=K5zUA29EOHlsQwWG1ZLNtqOq3eZuUrFY697i5ltzkG0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dAruhNxjEbtwSlqZG4RXaDylUjkaGvLvqunm9RyejWOy5VOAfpNuWFdie17/ylgDw6eqpgxvzVXy7D8yvQERXua2GRFtMCI9FidLI+XMU3f4H0/iQL5lKQsOdEz/v3VZcfqEB5/4Zy504qnbcb0WZX0t9rpjrqB9aHzj7HjdfBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W/OhqbzQ; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2ab39b111b9so42550255ad.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772792687; x=1773397487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MEdOKSA16mhhtBoc0MBYDqjTPTIP+5b6vp0xDmyG/4I=;
        b=W/OhqbzQOWHEOD3x12R3uP0ykfPaFFJfhH2hqy6LFEETNuLsrJx0yZXJN28WiJKvim
         CK4Fm1TDHq01ubNWPm551nFcKPyn3wmveZfcJOZfqGfY5bxB6DeWDYcEeUjm0zMAPsa2
         HvOdqzdA1XLAdiIfZprpNseo8TTq7jKb1M31IUHQHUDNBO0RpldyMj84rFEe7yJdMbQJ
         /Yer5gDUpnYl8aTuOQSsafGvVAlWZLYlM17OyqK1lVGxby5OPPZvSmewP/GaAlZYtyeS
         6LWy6ZNou6oUkfiUH00i1Ib6swHbrSaqGhniIUTGUSRFeuRGWikfxnYlDmkCRpRqr2ar
         ldGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792687; x=1773397487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MEdOKSA16mhhtBoc0MBYDqjTPTIP+5b6vp0xDmyG/4I=;
        b=QDq+0nCHR0TM8myFPgP69SZ04isu7ZThXvjkG6j27c+qzii8pUfqh2KbKM9LJgV6Tn
         NZyfFboqmTWIv8rXKh0qhyGuPYQQRuPRk0nWv+VqjPrm+HXhFKbUW1D3N/QS2yd+Maci
         U+tU8Q6SJ6Vpk9pmmJ1ZIErSMPz47NrHLXUOm0xzO6P6GyR5ZdBD120Ylf7rVNfwBRTj
         miUUzYSIV+llXlxkkr+YiWnlQfbJpYqH5KV5fZ+kB8BgvH1I4WN1/eh2m2MLbxzgZ0fU
         hv3gRBGe0ej/Kr0MUUPMCgypPCO67zcc1E8AsiCCmAAtam8L+ULWoXaWJlIQU8NMrU3f
         pkGw==
X-Forwarded-Encrypted: i=1; AJvYcCWKP6+XgtUn3nDOq5vi6Appgx56ylppwrER1dgdXyVHN2Q55q8ey0WjqPSWp72GKM5+LCohLou4cgwg@vger.kernel.org
X-Gm-Message-State: AOJu0YzG6E6mrlvTZzKrR8tuQXLhPoLes2IOs/DKTvdGWdrN/yiiqKCE
	aU+96T0s5pg0Az7NQxmE4XaExU0HVdYZw/SBYSJk43QDlQKKLpGO5T3f
X-Gm-Gg: ATEYQzyjU+/aUHqkG2hLV7rsPw0+dtAp39OZJ0H+YqGI69JZm/Y5gSJh7XWk8mnyD8y
	ZUAqyn85V6v8WQMuhKuYvmm/akrzbhFOk1uHt8qStE9/h3wR5DeAm3Wl4pbzeO6lsO7hRb4/o82
	3ZHdob0sbhOfZPXbWxf8Eh7p9/T3eJJTqZHQN8uZyChJNuoYHocsm14FfEXtRk71vVXPmSXo3c2
	GOnBXR+vj7nwpzLiAM7UzLtnR7EDrMYupBalNwSEOZuJl5oQDiBn3zJlYUKK5XJI55p9DqYFma2
	bgMzNm+qruWnE6jeqHEOihx7tpo42b8OjNWt5IiNEQRmhv+Vu7dboiCiu903WsZ0jKdMWhDlZy8
	e+EE5PskmYiLHxYj/IjyeqqZQ3vjoOtrShfvYsfMDQFBXIb+523CXytzsP/ATbeUIrDgCPnXbit
	RTZ0LfCyWnyFgQDZKsfB0c7TyEJitzcu3evtZj9i1tfNFoEskRagzQu9C+LYPJEJ2CqoICDZHh0
	vLXHyQWEbKLGsQgr7pBUw==
X-Received: by 2002:a17:902:c94a:b0:2ae:698d:94a6 with SMTP id d9443c01a7336-2ae8241dd3dmr21919975ad.2.1772792686854;
        Fri, 06 Mar 2026 02:24:46 -0800 (PST)
Received: from localhost.localdomain ([14.160.25.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f770ffsm21667495ad.45.2026.03.06.02.24.43
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 06 Mar 2026 02:24:46 -0800 (PST)
From: phucduc.bui@gmail.com
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	geert+renesas@glider.be,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	krzk+dt@kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	phucduc.bui@gmail.com,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH 1/2] dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
Date: Fri,  6 Mar 2026 17:24:41 +0700
Message-Id: <20260306102441.3605-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <20260306-fossa-of-unnatural-authority-29e0ed@quoll>
References: <20260306-fossa-of-unnatural-authority-29e0ed@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B344021EA40
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,glider.be,wolfvision.net,sang-engineering.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271963-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NO_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org]
X-Rspamd-Action: no action

Hi Krzysztof,

Thank you for your review. I will drop the description for the 
'wakeup-source' property and send the v2 series shortly.

Best regards,
Phuc

