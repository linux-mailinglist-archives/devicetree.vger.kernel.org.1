Return-Path: <devicetree+bounces-270290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMiALyh8pmmuQQAAu9opvQ
	(envelope-from <devicetree+bounces-270290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:14:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AF01E96DD
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5DDD23009032
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 06:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C682137CD43;
	Tue,  3 Mar 2026 06:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YB5gyq+9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A7F374E50
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 06:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772518428; cv=none; b=gfA3+c7DP7bh2kDkuQYOb8rrfcf6OBiM4t/AugvW2ZHwoKZZHF/oc8MootSLgJhCChIh2oyu68bI8c2YI9Rx10ehQ/eWqRGWQHmdOjxNN4gk//aJOYBfK0x0LbgpvPg/iVMSVd3E8Bv/U//4AdHnVdkr9zSzob5ZZ6L9+EpvX1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772518428; c=relaxed/simple;
	bh=G66u8aauHLh3hv8Ltv8yWkfXW+pytZrpTmIScPLSZyE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Znihp1VNkq03a0j+W/cxHlZY8TCK8ww9r510Y8ryfU9nZyrp3VNoELM8q4fC23QcedCZhnmZTnutarbaKF5k2/K6HZfRrILl0SsHNJVVFT37ApoEyva8dqmSFTPXNu+VeFsCT+EUdToPeswwFKEk9VlenrWL8eRcE23dT29xoZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YB5gyq+9; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso24381625ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 22:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772518426; x=1773123226; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TBLRd0VVPT6JgeA/gmRFgTBh/C6/jiLo21KLSX9AmXs=;
        b=YB5gyq+9Jx/lm59QV8g/z0+2iozkEQnGdc/kAIsB9JpJTq7as0CQs9EhfBvcGCpD+f
         kTsyDpnRDmBrpTZ2uNx4PYMfFz4jLPCFTlgIe22H0kFOhIaoMzn8fS7Yht3rXY+Km7Ow
         uI8hKu6C18NFhyzz69Q88leyNI4L9GPnKdSUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772518426; x=1773123226;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TBLRd0VVPT6JgeA/gmRFgTBh/C6/jiLo21KLSX9AmXs=;
        b=Oq8yMFuKdmbC8bgQi2zvmiWp/quR7UV9D75EOhpbH9cTkIEE2hIJPcXnuQ8ToRQiIt
         8W0xWBUHPv7eFcRXH+WJF43vmG8wHi8oDtLPnZb8L2gUkcsFo+KB0bbOwvKFEPPeaKt/
         L7pRFRVMd/ICciN92DZCo1oIg3VPcuO4uDnQbr8Od2cAaWdwoe7BsZcBoUo7+schL2FJ
         k9XbtqlsdoJKe8u/HbZL92Isb7U+X0g6xjYyZR4TdbF0qPTOU2OR9dw1CclO0oGfXOHi
         0ECIVQ45h6rbm5DMu/tqmMo22ptZewFCEEyJ8/gVyn6tD06ubaxe6We3bRX9rUsVyCgU
         +GTA==
X-Forwarded-Encrypted: i=1; AJvYcCVSOz7+OQJO9NL9OgY9/qiW4Ze38AFSxXGhzxyQeh/uKSE6UnNmcK5pZf0yxyrm28XGSKHmyYW2Ol5D@vger.kernel.org
X-Gm-Message-State: AOJu0YzKrHUkMGPKx4JfZ81v5ManCPcBxwMohyyHh4oc+0m3+soqZwhu
	qJ8F1HfgID5cjc4HlKvLmqqEz/THOI8gOzAUjyxMjvxUvlqXcg/YDnAE7EJC2e2y8YzhW5NaiM5
	tAG8=
X-Gm-Gg: ATEYQzy3CR4VSQF9HLJ0BI3LF0FCQ2EvaMI6RrbPZ4oY8MpDOnBe+M56bXhwZcFGQFV
	KphTLfwS5Qx2MQXQmJr20IXhNF5xAg2E/5UPz0yg0LgdlWDAYVnPnVK3jv57U6O0uV2jlSMUe64
	kY1dfRMopchTB7rWW/4SIdL3MdYGC3BOmB3nj2vszxuGlZqtEPSJqclIlHw64zVZA8PXxinmw+f
	8D6plDSElOMl66Y79R8lCTAuLlEj2ZTbaY0/Ef+QBwLaVmkxBems19BFyLvQhnD5xgKDyC/WKtb
	QEonnMfUyUMDhGppihWjRees4ygEb962NxJQW5uePtkLOnb0M2l9dsVTiJ8aXsF5ibjiZ7fIY8+
	SSSx8sc9EnVAdt8j7V0qKOY+d0uYFdWzWOs/bmUcV6OSOnejMfsXyx5MxKkDqeUdRwCXjGHgLT4
	YTyUGLVGtPDW1kAEIR9swTznEILW579tywdWQV2cXqfFdgndq2PxjJdv+GKB76QHUiYxGXmwF+z
	70Mh1Qze7jl9eF0YFS5pBe/J8Ddclmu1w==
X-Received: by 2002:a17:902:f70f:b0:2ae:506e:4711 with SMTP id d9443c01a7336-2ae506e4abcmr61194795ad.31.1772518426248;
        Mon, 02 Mar 2026 22:13:46 -0800 (PST)
Received: from jingyliang-input-linux.c.googlers.com (111.169.168.34.bc.googleusercontent.com. [34.168.169.111])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6fe4f3sm152639735ad.91.2026.03.02.22.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 22:13:45 -0800 (PST)
From: Jingyuan Liang <jingyliang@chromium.org>
Date: Tue, 03 Mar 2026 06:12:53 +0000
Subject: [PATCH 01/12] Documentation: Correction in HID output_report
 callback description.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-send-upstream-v1-1-1515ba218f3d@chromium.org>
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
In-Reply-To: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
To: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Mark Brown <broonie@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, 
 linux-trace-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 hbarnor@chromium.org, Jingyuan Liang <jingyliang@chromium.org>, 
 Jarrett Schultz <jaschultz@microsoft.com>, 
 Dmitry Antipov <dmanti@microsoft.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772518424; l=1154;
 i=jingyliang@chromium.org; s=20260213; h=from:subject:message-id;
 bh=Ko4HAge31pJ3y5sK3I4VHU62kcrFbomkgScSw+0vFnc=;
 b=i1wJDOCOTKohS8sUVAT9KTdbS7usX9DiYzDm8pdpDiH1LnyATV9bgGB6dBKN6tIy1Yav+kyUU
 1E/czgHhZrsC9IXUbBdK9LOimEy3qzdp6R0G3SqQS+y4oZSRJt3mGxQ
X-Developer-Key: i=jingyliang@chromium.org; a=ed25519;
 pk=VTYSdqslTtYOjWWoIGgYoWupGWqNSidrggReKMgfPo4=
X-Rspamd-Queue-Id: 74AF01E96DD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270290-lists,devicetree=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[chromium.org:server fail,tor.lore.kernel.org:server fail];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,goodmis.org,efficios.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyliang@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Jarrett Schultz <jaschultz@microsoft.com>

Originally output_report callback was described as must-be asynchronous,
but that is not the case in some implementations, namely i2c-hid.
Correct the documentation to say that it may be asynchronous.

Signed-off-by: Dmitry Antipov <dmanti@microsoft.com>
Signed-off-by: Jingyuan Liang <jingyliang@chromium.org>
---
 Documentation/hid/hid-transport.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/hid/hid-transport.rst b/Documentation/hid/hid-transport.rst
index 6f1692da296c..2008cf432af1 100644
--- a/Documentation/hid/hid-transport.rst
+++ b/Documentation/hid/hid-transport.rst
@@ -327,8 +327,8 @@ The available HID callbacks are:
 
    Send raw output report via intr channel. Used by some HID device drivers
    which require high throughput for outgoing requests on the intr channel. This
-   must not cause SET_REPORT calls! This must be implemented as asynchronous
-   output report on the intr channel!
+   must not cause SET_REPORT calls! This call might be asynchronous, so the
+   caller should not expect an immediate response!
 
    ::
 

-- 
2.53.0.473.g4a7958ca14-goog


