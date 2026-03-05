Return-Path: <devicetree+bounces-271490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CpfBUJZqWkh5wAAu9opvQ
	(envelope-from <devicetree+bounces-271490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:21:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDB020F9F7
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A4CD630172FA
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709A737F759;
	Thu,  5 Mar 2026 10:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IL/cFkxS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE803783AA
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772706109; cv=none; b=BTFcXp3HhZZ4XYgrXZgu1ga7/Vw1eTKvpqJt9bDCX25VLRyJIuEbiqdj5GHLeUI/jsHLZmjI1GmYRBe5vfJSofS2W5Njxp4D7iyJMp1lakW0/VtTbe/Bc4EDj5HxK9T51LGUvSPlUXzJtm+7zFBrzlmFRbnc4tvc/C4xVB2GUWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772706109; c=relaxed/simple;
	bh=CoeSUcu5JKP2vlIyuq71hLdki8LZeHARqdF+DbG35Tk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZFjkbkLGts/Roe6sHErhUI8Hx7q+EWzuHng9FvXcE8kiRtlW8ZpnCHwEol+YHlF13IQ0hmXHfP8xjlryJBgY7c/Tsu1ZGTAqRvw3E/nHoGsgw/6es4s7IRI5y9bGbUXJk6KTPkVI4Uezqo9A9z7n/CCMuypse+IosG9Y7lxTcXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IL/cFkxS; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439baf33150so3264575f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772706106; x=1773310906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GcDfVsxOaZtMJ1kOTr1x0s4TukCtP+zyp2wxcrrzJwc=;
        b=IL/cFkxSV7sFVJMh5VamY41mYfXW31HjLvxKSUmQqQOedI7gNGX0tSZYxGIhkExSOi
         y4nCGMX+poS0DBB3DBn/CD4U6fKtGCzQeyfXh2vtfqF77jtht5nAg/Z6XCNOjUWmgh6l
         kaqp7/4JAOEX1wb0l7sN57SjOW189jsiBF+2WrVRKamDjlh9XJ4XOchsjVvqYETADSG4
         oPWp9F1XsKNq5WnWXrw0+yUs4wyKdIvwjYGwbM9M3+XoNfV9uOKOL4oQ25VlqoxQ5z9x
         drBrXWwvvUWb4dgDDPsPTlLa+VcWFxG9Sfhty9SgBXHaGMryVA2a3SoAj142ntqJpeQo
         Em7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772706106; x=1773310906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GcDfVsxOaZtMJ1kOTr1x0s4TukCtP+zyp2wxcrrzJwc=;
        b=CrFhv1yv8dxxgw7eIlnq4kZmPTgXFg/m4dZEwMURCuO2Sjt8W6ApTAfViiQajqqSbf
         U0WbgpaquGI+G2kcyPl0ZYIzRUpqjf8Ll65nzlhWT+w/onYlBBdKD42IaWCz5CMqh0J7
         9W3mqJJzm7kUBJw9mAga3cv8FSaRCAQU1yvq/pv5YXGG4fH+4u5NYlcsz40gJaWoj2MA
         3CvGXJEKgpSXCq7dZgF0CLIjwG37FCAa5Y6NIIIi8RqBm2DBF05DjSVGQNWgmmMsLSWR
         MU8R6N0vQf8SDYqUOtm2+GSrwlAsUhrvHA1EJ+NanaGSpj8wK3tcXoywWfahtFtqMhwy
         VjMg==
X-Forwarded-Encrypted: i=1; AJvYcCXC27ghmoFbLdv8PF8ZHucVFpbMnZovZk69GXflR26ivqRnexwWqJ6+th9v7rNcgvQqHbTW/vHwo8/K@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3gyLTyQEcr98ZJxaLkQdMWLVbaVCwhZteJoJnYOkjcJQnw0A0
	G6wMgQJU+GluXhLfjnxTtHCQfoatBPVem7apHBEtw0wfpBsVvQi6CaKR
X-Gm-Gg: ATEYQzxFVg06VvBexLVP9q5MRs4nm8wKwJWeYRSkOCRZo1gsofAfiofnD8313l0uf8M
	AWBBu9rnkZC0OMHpUjkU6s25NtTKf+i4asagh9Uj1fFbBrL3tEzJW6cHxzpG+kfVhfVEsrOQZHT
	bz1orObljyyDMWvUCo66H6m0JyseMlxyujVYKDGi4qiBbgFWAEViqOFew4K3iehdgGmAWjin0ia
	Tb2keRl+3I+5WHMLXKv1hVnFSFgzCNbV4hf+lJBaYbkG2BcIMvpD1bmyGGAvkrOm3gfzopw0dxy
	00N1huzVQi5JbnkbDqShKWaLH0wRVDqkmF0QYyNbKdU3/Ja4BxDlJ6VFJZz4MxJDd8SrJZqtDzb
	mt7nMOYW+G6VM97J/81jlvye66LtgzrDX0a0YqwxAydMqp7eAnJ4xYk/GfIdjywE/XhWI8yUw5b
	F/8juRwVhIGzpx
X-Received: by 2002:a05:6000:2f86:b0:439:c5da:64b7 with SMTP id ffacd0b85a97d-439cfd65b13mr3269114f8f.15.1772706106411;
        Thu, 05 Mar 2026 02:21:46 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b503425asm32625444f8f.25.2026.03.05.02.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 02:21:46 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: media: mt9m114: document MI1040 sensor
Date: Thu,  5 Mar 2026 12:21:21 +0200
Message-ID: <20260305102123.17216-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260305102123.17216-1-clamor95@gmail.com>
References: <20260305102123.17216-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: AEDB020F9F7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-271490-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

The Aptina MI1040 is a slightly different version of the MT9M114 camera
module. It is used in several devices, such as the ASUS Nexus 7 (2012) and
the ASUS Transformer Prime TF201. The compatible "onnn,mt9m114" is placed
first in the enum, as it is considered the default compatible value.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml b/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
index dffd23ca4839..e896f4db2421 100644
--- a/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
@@ -17,7 +17,9 @@ description: |-
 
 properties:
   compatible:
-    const: onnn,mt9m114
+    enum:
+      - onnn,mt9m114
+      - aptina,mi1040
 
   reg:
     description: I2C device address
-- 
2.51.0


