Return-Path: <devicetree+bounces-164849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF8EA828C1
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 16:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 391851BC55E8
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 14:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E892B26E155;
	Wed,  9 Apr 2025 14:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FfVRxDcT"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4318D26E150
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 14:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744209842; cv=none; b=RCSnnhrHi5Ptgt1JlfF0/xKSrecbl/eJM5iYLzD4h9e7orlda8eqO6KQchp+IWMcws/Mr6PtthflUed7FsHaVwvZLqn/RAe1OEnxZvWnKr+Xf/kJlerzQRg5/Vlw9b50PI6/RkeNzDwZEENsUtr0Is75XHiDKEoC49DhE7+f59k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744209842; c=relaxed/simple;
	bh=SgsRmurz3unGkRqxEm3MfQnZErzpWhbhL51W+jC3q3k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lf6Uu10DTuWpcK2n5cg8V//oZBHAHTKOPGe4+C9d1tfZwRgaiSynybcbWW3Rxp6rB+gpPBMsYC6ZyBxj7SIKesDFBXV3f+HdmgXcJZo5vMXal56gwKUs+3LZ7fPYZ1FyuQZCSi08SNFzzA7GLjYejAjBq+Hsup+q09uWZ/mbSSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FfVRxDcT; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744209840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b6Q8ao/e5OkpqPPXev21dyK86Mm2rk8ARTnaBlU+b54=;
	b=FfVRxDcTgnaZNghk+GLOcE5wFZBlFKQsIUnoS6M2a0n9jUoCnFNvRnRQ3eEc661DbHwMHF
	o3z2GAZ7DJyhtXWa7h4vFRpFYGnoOibX44KVs7GeM61fXjCytqEA/hQl6LZ//EYBy6hOk7
	hVe0zOyuzm6rGH7DIqlP7/R36a53KYI=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-674-yu06citwN0-ajwajavgBsg-1; Wed,
 09 Apr 2025 10:43:57 -0400
X-MC-Unique: yu06citwN0-ajwajavgBsg-1
X-Mimecast-MFC-AGG-ID: yu06citwN0-ajwajavgBsg_1744209835
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B29B519560B2;
	Wed,  9 Apr 2025 14:43:54 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.72])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 20C351801766;
	Wed,  9 Apr 2025 14:43:49 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Kees Cook <kees@kernel.org>,
	Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
	Jiri Pirko <jiri@resnulli.us>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Prathosh Satish <Prathosh.Satish@microchip.com>,
	Lee Jones <lee@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Schmidt <mschmidt@redhat.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 12/14] lib: Allow modules to use strnchrnul
Date: Wed,  9 Apr 2025 16:42:48 +0200
Message-ID: <20250409144250.206590-13-ivecera@redhat.com>
In-Reply-To: <20250409144250.206590-1-ivecera@redhat.com>
References: <20250409144250.206590-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

Commit 0bee0cece2a6a ("lib/string: add strnchrnul()") added the
mentioned function but did not export it so it cannot be used by
modules.

Export strnchrnul() for modules.

Acked-by: Kees Cook <kees@kernel.org>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 lib/string.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/string.c b/lib/string.c
index eb4486ed40d25..824b3aac86de0 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -363,6 +363,7 @@ char *strnchrnul(const char *s, size_t count, int c)
 		s++;
 	return (char *)s;
 }
+EXPORT_SYMBOL(strnchrnul);
 
 #ifndef __HAVE_ARCH_STRRCHR
 /**
-- 
2.48.1


