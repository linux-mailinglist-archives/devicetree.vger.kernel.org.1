Return-Path: <devicetree+bounces-273769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBbBN1S1sGlvmQIAu9opvQ
	(envelope-from <devicetree+bounces-273769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:20:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F43259AEB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:20:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C5173070FF4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A22A31E832;
	Wed, 11 Mar 2026 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="owUGBEXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E9C315D5B
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773188392; cv=none; b=D2iYRZU87yUjUnb2bZFfew3Le+PwUVXqosIBFWLMvWTPKlfr8g1ZXGYXXyazoz+7UTDz3TclX5tBWSx3hww4AeMFQ239lyHinMNfN0cakLcqJLu1w26vC9iuWa49zET9A1bhHIPH8psbGIQAb5ME5RDCJsTOGVgx07/e+pEU7a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773188392; c=relaxed/simple;
	bh=6Ortp2qq9rULdDJuVn66N0Ei8iDpZMGkkqjcAu1CgyQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sjdVTiSxDyZ6aKIdjXuN574w6EWHGahx0OVy6SddwQnzK0ZLbhRzdhHWAbMpzBJ0fF5h+sIiQjvFOEtRdzFj6jmwZ2xkgS7T9igxswGMunL+l5xrc7p214bPnx6x5MNki9607p5OHBWs7+6cGuIUlwMDn/Gs2axHg+r0qrObpGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=owUGBEXJ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ae88e16485so27156625ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773188388; x=1773793188; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4gbKDbPXbOL00FNYZLFnwugvEIUZemApaFjbSsjN8o=;
        b=owUGBEXJqZcL0qqkMwBpibLyCafIpP+U4nu9A6qeI/SL625HZ7fpiQDyrJq1IMuRRZ
         DGJDaxHZ07FjDmwZ7XFnZ7UVKJXpCzd5hfXJIzc8rdcIdWWlf+bTmOIYzPvGVt1riOSZ
         Yg20/uL3JXH/6LWwdVHqFsPwPI7DhzyciXmQACbSFdMUIWDj3NcIBoodDdWcPXH7UlTp
         gETzpVUp6yw2TVpV6soCpfGf6JKc+IYpadNWtY5Q25TaLNstN0/m1BlvfdSJblhz98Le
         o9quglNuwznvhzfoo39WfvJUxrCkwr6V5vH+TpC83d3Vvvi7ox39n11LkC1197+3Z2Wh
         j9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773188388; x=1773793188;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q4gbKDbPXbOL00FNYZLFnwugvEIUZemApaFjbSsjN8o=;
        b=Ak8OM8tu6Jmu1yObtuaeptlKCoNDfEAMs/A9vzD4BaYqgvSI9ie21JE2UzfYBG9kff
         9eu45V8cJ8LHW4pttmJyKgmMtKSBduJVey7f2SEpvy6LDMp168reT4fvgWvkN1Cj3RKn
         Nb1QwfZpQ9yMxap2qRN88elCssBOg0PQ2kx94mXaEq13usk0wC71QyYZvW4eHAG1hcWV
         zWH/VoIQPXTbwMJaocBuT0prld0B8oX7JV9pqO6mOQ3QpDE9+dgloAK6uF/mqP7wB9zo
         Pd0VqCSuWO2b4bALsQDCHe/8rMRn05IpQJgsXTks+oIMlB1eP8+dxbp/d0RSXkCmN0P3
         9jwg==
X-Forwarded-Encrypted: i=1; AJvYcCWozwkrLbI9rSpRvNsAzm74rrn8AQMyo/HWKuT4j3N4aTSt9624qUzAIwicgBskE4nFP1nJzZACf6Qi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1wVmMAdTZzUIw4U2t56Mlr8FKM3fE2iHRNsNAxPwkkNgOebY4
	eiA5jhslOtpupGbQLdgk6duYHDfaDI7e2Z0ZF0tZjiHYPn30xxvsMgDVgBbFB4K3lek=
X-Gm-Gg: ATEYQzxv28C7fj45pQCLjRdRPah9Sa7Fr9XMNN9UxjD0cDBUQcbtFpd6LKE0HXLnr1i
	3+MD87Qm8Fy8VtbF8ekuz8vp1hjnO0DJhqKCisTVd9vZZZdNZotr5pv144yfW9Aj6n/MuRQclpw
	7RBWyKWlALtxLqh4uHsYmHZwyFcWa77WIXzhqbw2vusHhzuxr1jWsGMjvaq+TeQA/JCnX6f9wvy
	rw5n4JoHGIIoV5WlBYoNSteFhdBsWVydURZxZghz6RoJEgVf+bwQG3LPPboCws8dAUXpbbaVjjP
	YYlhl5f4UvNz59jpteixnXVJSgfRZQF6DHHMA7Nv/uzAlgY3ejWI8qoJ67FokMC9y4LS+CFZ8xi
	vatRu4NAVeigOZvwnQkgGH80pQVxM2eIyFcVb/zX9QxWMAlYG9GDQbWi/jMuvHSZvNUorgrFz9m
	zJjaGEaXY3CJwbBdLdnijzMbKALrgLCUI=
X-Received: by 2002:a17:903:1249:b0:2ae:4409:5993 with SMTP id d9443c01a7336-2aeae90f919mr5730215ad.55.1773188387884;
        Tue, 10 Mar 2026 17:19:47 -0700 (PDT)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae361a00sm4023795ad.76.2026.03.10.17.19.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 17:19:47 -0700 (PDT)
From: "Kevin Hilman (TI)" <khilman@baylibre.com>
Subject: [PATCH 0/3] pmdomain: core: add support for domain hierarchies in
 DT
Date: Tue, 10 Mar 2026 17:19:22 -0700
Message-Id: <20260310-topic-lpm-pmdomain-child-ids-v1-0-5361687a18ff@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAq1sGkC/y2NQQ6CMBAAv0L27JoWBAxfMRxKu8oaSmtbiAnh7
 1bxOMlkZoNIgSlCV2wQaOXIbs4gTwXoUc0PQjaZoRRlIyopMDnPGidv0VvjrOIZ9ciTyV5Eqkz
 dKqpbcRGQEz7Qnd+//K0/OC7Dk3T6Nv9GoNeSv+nQYFCRUDtrOXXF2pzlFfp9/wAeN1H/qQAAA
 A==
X-Change-ID: 20260310-topic-lpm-pmdomain-child-ids-e3d57ae57040
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev-53144
X-Developer-Signature: v=1; a=openpgp-sha256; l=2366; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=6Ortp2qq9rULdDJuVn66N0Ei8iDpZMGkkqjcAu1CgyQ=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpsLUiM05+PR9pR5YLqjfw9+cFI+c5ucZfyQF5p
 p+lPCd72oaJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCabC1IgAKCRBZNxia0/vG
 ZS1oD/4x2mqWfLt1MAFIqsfziojPD3xLYTRrYeJyPAT3KCbqlFVTfIM+6+Xy4IJrB8w0JvadZR0
 Vqwd0ukODb2BJo3AIFTiw1NAQQG9yXNSq0JTbohmEXaEEa9Q2Do0neOaeaxUnwQ1nkhPg8X9zjM
 SW0or1GABD/q4bR1HWDcgAGynbTiQbnB/tsR1jd9IfrMUjI7rQ5UyA2CMq5oLFTXOIgd1d0rsQy
 NjIftYUFNHL7g4oUTLAg6IKrM5CiAm7V4STroOqyR3E5t4hA+nIswqoi0+epBeG9Eg5vBl/o8XX
 csibD+sW0GefgcHfAMU+EjMu6xq9d53fC5uFJMU6Mfku88ZudHWiO85hCh7K7l5d+pSzhFPQ+PO
 uV4mV7CjNqF5optte9B61Vi/2007ep6sLMtbz4VA314IDmWbVH+FECnpGdkLkuc1n3kku7GuZQO
 nlH6RC32zOzjyfxFmSv4zXGqA4w98NnMNgnkggXxxYmSUn3Ez92baszynk+FtzTweDCB+2sBsKG
 Z0K3qET3l8OOjN4aiG4XhBxDe1Znz1hk2cuyCE4yMoSI5uruPY9/XFiAdNWZ5n0h4SLV8Gl1LRH
 OYxbcRqvAoCydhb/2iMn2ne+cqQYc8+VSVuzV0K6Gp+YaqeMiVonRB1ga4RgtmoOa3EIQOJRYOv
 1qnWae3pQguJVSg==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665
X-Rspamd-Queue-Id: 99F43259AEB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-273769-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

Currently, PM domains can only support hierarchy for simple
providers (e.g. ones with #power-domain-cells = 0).

Add support for oncell providers as well by adding a new property
`power-domains-child-ids` to describe the parent/child relationship.

This idea was previously discussed on the arm-scmi mailing list[1]
where this approach was proposed by Ulf, and then an initial RFC[2]
implementation was made.  From there, it was suggested by Rob[3] to
use a nexus node map instead, which led to several more versions
attempting to implement that, culminating in v5[4], where Rob and
Geert then had second thoughts about the power-domain-map approach.

Therefore, I've gone back to the approach in the initial RFC[2] to use
the child-ids approach.

Changes compared to initial RFC[2]
- dropped RFC
- rewrote the parse/add function to use iterators/helpers from of.h
- add a remove function for cleanup
- use child domain language instead of subdomain

[1] https://lore.kernel.org/arm-scmi/CAPDyKFo_P129sVirHHYjOQT+QUmpymcRJme9obzKJeRgO7B-1A@mail.gmail.com/
[2] https://lore.kernel.org/all/20250528-pmdomain-hierarchy-onecell-v1-1-851780700c68@baylibre.com/
[3] https://lore.kernel.org/all/20250528203532.GA704342-robh@kernel.org/
[4] https://lore.kernel.org/r/20260122-pmdomain-hierarchy-onecell-v5-0-76855ec856bd@baylibre.com

Signed-off-by: Kevin Hilman (TI) <khilman@baylibre.com>
---
Kevin Hilman (TI) (3):
      dt-bindings: power: Add power-domains-child-ids property
      pmdomain: core: add support for power-domains-child-ids
      pmdomain: arm_scmi: add support for domain hierarchies

 Documentation/devicetree/bindings/power/power-domain.yaml |  35 ++++++++++++++++++++++++++++++++++
 drivers/pmdomain/arm/scmi_pm_domain.c                     |  14 +++++++++++++-
 drivers/pmdomain/core.c                                   | 169 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h                                 |  16 ++++++++++++++++
 4 files changed, 233 insertions(+), 1 deletion(-)
---
base-commit: f7b88edb52c8dd01b7e576390d658ae6eef0e134
change-id: 20260310-topic-lpm-pmdomain-child-ids-e3d57ae57040

Best regards,
--  
Kevin Hilman (TI) <khilman@baylibre.com>


