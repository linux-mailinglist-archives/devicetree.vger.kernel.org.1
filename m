Return-Path: <devicetree+bounces-260508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL/bHy4yemlo4gEAu9opvQ
	(envelope-from <devicetree+bounces-260508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42159A4DAD
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 39F1530802DE
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBAD930EF7A;
	Wed, 28 Jan 2026 15:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="M1Z3iG+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C6630CDA4
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615486; cv=none; b=fqTykxJlu1g6NDePJ/RLE0kIrOV596vjozYKo0ctSebFyhpzcZt1fKEWno/9K2M92Skt2eWet3yw8YuB9dyMgr/HDcIykOluNqp2X91HXHvy6rSqrI4Y5RZ1XyDPdZKIXam5Lz1wtZSo9sjaWxCAGF9chWUqb2gh+QI6iRvy86s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615486; c=relaxed/simple;
	bh=UL7oG9FT+R61+JPV9a6SqQpi6w6GPW9Vnjs6JNCt/og=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EY/TCO9A/VMjD1WpKoootFKYlHEGXrZ7PCTW37oyLU0+O7cOQGgObviUSaK/87bIqIhFWhFL0GucfWK95tFbT7JySQo05wXAUYulMkVV1FDuwL4+rX5G0TYkoAhIn13TjrU0anNZiB/LUgIqGGLEwzCTZdTIm44Gk1Rlm+RnfR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=M1Z3iG+N; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64bea6c5819so26752a12.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769615483; x=1770220283; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bxosYBC+jkycfgMD0yZ2twi1arJ37bFp4Lz2LJNYscE=;
        b=M1Z3iG+Nh+1QJG9YjegV3mDd0y2f/eABfzlHa4JUUHLmNc8JEDchlSBY0/cP8BPl6P
         /qQyxh7zaszqn57GTbUaunqRuPbcNiCFDtT4P96XPmFesRMiL/gmsGOFmUP+ra/JwM5N
         iiepMFobOHMtFJcSpSB31uEKjE5aEr/rcyeJCe8Gr4nLAArM0HaTJQ7FHX1w5M5vziHP
         e42qKj4qVOt1p2KBmWiES5WeQsGyENQHzaNF8OqE7KG/wZQAEroovDHiT006YBvkIqQF
         Daa0kcTyZLiVqOT5a/ia5/gKr8H5dWGFl3Shqs3wgSw2KvKPs+W3cVR3QGxEG/0SFpo/
         5BYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769615483; x=1770220283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bxosYBC+jkycfgMD0yZ2twi1arJ37bFp4Lz2LJNYscE=;
        b=dFB/MDXVfrhIbuu+HjPju1kivbSzCgZzqx7reuCpbm52iBMqgqWVQCG1JGvES0w7ye
         0L+1t0IkFnCg8b9+6zuG/e+OrkkIJA+cTPxM4FM/t2FHGEXEWhFnHmA+5DyprdkEQFoX
         Qh0ZyvYJyczsy46miPcguGcRHMLEs4qu1buNma+lC8IYPorUwfOcMRWhpyw5pXJssj5T
         ShIViPL4xjlfgrItkPMUaCwlJuA/TUbXSud7F/YUFuu58M22Wb7XD5wyLOyteJThabzU
         eOBS66D1csF08mIc+DGMWbO47UjuNkqv1FHN4mrccHWBDqs+N9PCRsgjK+lVaOZ2z8Gj
         9KaQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/u5dg8C2QuKctw7Y9XMnj7xxx7AMvfSFs4DXcslKXldbjTtRuwoHPQp+uowOnu9HgBLaCfSY/wg/x@vger.kernel.org
X-Gm-Message-State: AOJu0YwIOwg6ngWsquGZHz6CabqYg2hX42Hoqn8i67kMoQqN2idkK30a
	dDyqJXPOAsmR0kzavLSFK+nVNRN4da2UwDS8LvJUK9HTuG6Lj0+Cdn3byhZEy1L+l6s=
X-Gm-Gg: AZuq6aIiU0gOWvnS1DZlrTF7a2kXhzxqftNjKqsswv82YiC+6hRuo2J1bmo5RMXQNVW
	6uqcR4bsJKzBnck0hUAUvaiP6I+AFtT+Pg+SrRXkBcxluYh18tme2X+YbwXwC/LSJpZQFIGq+d3
	yY/SKqM9TeRxPg9ttYhSi5BYMia3ZO/4rcs6HRpBy0Rwy8BAEp2o3f06t9QRpnJcNqv4WZYFhxN
	ijhB6h/wPsZWiBRqS8LDdyB8CMLhKcZiXidqg5WyKQ5GSG10yOMHgiO9zVQwf56Qh+sJYwqU/Za
	eBme/i4lg135MyqzNne/qLYDme7Maba4XHAQl+0oWbVHA7bKVVnp0r9R+Qu8+rL/mIB3xe0smXT
	bNlZyky1Wsssiigyxiw64yyyFS9EyUaz1tIGM5AvXyVu715im3+WLm2qcT1fIgVOG1WtELXpqVT
	95VwE1pIq2XVhXTE79trfuHNmhCojPuf8tPtiZBuTk4L+IVwnhtNGcb0J18sesR6pvX78x
X-Received: by 2002:a17:906:2083:b0:b8d:c364:5e28 with SMTP id a640c23a62f3a-b8dc3646fc5mr124941966b.63.1769615483312;
        Wed, 28 Jan 2026 07:51:23 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469eb9fsm1727223a12.28.2026.01.28.07.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:51:22 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Wed, 28 Jan 2026 16:51:13 +0100
Subject: [PATCH v2 1/3] dt-bindings: input: awinic,aw86927: Add Awinic
 AW86938
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-aw86938-driver-v2-1-b51ee086aaf5@fairphone.com>
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
In-Reply-To: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769615481; l=1012;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=UL7oG9FT+R61+JPV9a6SqQpi6w6GPW9Vnjs6JNCt/og=;
 b=aKHTzT/lhB2bB2KgRAkb3dRYwVVJH10iCeA7sSYkoE3JdKHSQdw8kEiu1ul6PCRgbkNBJqsXZ
 A2S2CW4LHrwAxFJgRisWsUq1kJQKHfvZogbAIpcZgIyfxI9T8OLfGx4
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260508-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 42159A4DAD
X-Rspamd-Action: no action

Add bindings for the Awinic AW86938 haptic chip which can be found in
smartphones. These two chips require a similar devicetree configuration,
but have a register layout that's not 100% compatible.
Still, we can document them in the same file.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 Documentation/devicetree/bindings/input/awinic,aw86927.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/awinic,aw86927.yaml b/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
index b7252916bd727486c1a98913d4ec3ef12422e4bd..c3dee660422192720da3cf63851cea27db819742 100644
--- a/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
+++ b/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
@@ -11,7 +11,9 @@ maintainers:
 
 properties:
   compatible:
-    const: awinic,aw86927
+    enum:
+      - awinic,aw86927
+      - awinic,aw86938
 
   reg:
     maxItems: 1

-- 
2.43.0


