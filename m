Return-Path: <devicetree+bounces-263074-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJ2hAoy7hGnG4wMAu9opvQ
	(envelope-from <devicetree+bounces-263074-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:47:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0893F4BE3
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:47:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B9DE30065D6
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A7454266AE;
	Thu,  5 Feb 2026 15:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="yPZ10TXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7674266B1
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306437; cv=none; b=DEbck9TH7lnBQMdkd1CmEwzBSpAcxQ6EN7DraW6uKZS7NpoZMGwuxJngt1l2hked9RsNcgoLtu3+il7pRjwQ96+CI41YnmAKK8RjH6zM1KV3ItMMsiO0cpfNnAXuL/srI1h5RAP5Vzpoe2B8eI5fc5swosWn9PWZbKEcrS/OwhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306437; c=relaxed/simple;
	bh=PIWWsixsQ2YZ4aUGYmwJrE3znC1fqoLJEuukWw5wuiI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YRazzxaVXxvpnEA6H5YBoy1nNJqAByduQcrkREMt+b8/iGwXZqKiwAfaYcj0MIva8GxKextzPayxIkoECprobd54Kh5mJ/foq10IB2hvFXVQaQ+uUjBySfBMZ66OnoFG8vtzkTw2+4FBiAQwC0qowKbZ21YrMs3rFgUHrv1WhyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=yPZ10TXT; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-823210d1d8eso636014b3a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1770306437; x=1770911237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDKwYtSz2rHLZlmz++8JE+5jZt5IbvWeMlaBLIl+ipQ=;
        b=yPZ10TXTTtl27ph+FQdZS2WfDBkOfYRPrv3QDOq8iN1oTHxkNDypuDQTgXf6+7lcX/
         y3zh/uY3S3+P6PCe60Xz8wDtyhRniUIriX2ELjK+ErQ4QZGoD2zPVNhN18GtxsGa4P4j
         iA/NwYAYxMmt1UUqwNGdN5PoGXbA+DIsKTIUp5faJmN7evNP3hM7BiI9FBbrLqKCt63R
         fD3BX2q/ssRzMXKXbF/FK16oKIyBbNeKv3+nxr79jZyITcUomZC4IRh5CMWUXmo8FOyS
         HH8qk42IRNnVFvdJFXN0EmIQmeAIZCJACrA7vp+BACrtDPbGvsDMKxAiMkm6/gOy5Iqt
         /59w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770306437; x=1770911237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yDKwYtSz2rHLZlmz++8JE+5jZt5IbvWeMlaBLIl+ipQ=;
        b=JdMEufTMoDfifDJd16O6uBOqIAG5YGebYhJ8yKH/a6FOZygaVuoksR/l+gVXl5jIKt
         9o4UckrvIs9OskkaXcY182yPyVcFSiom2McR3DcgmlaqJ64xWIJTTcl196gZNlQV7aPB
         glygZHATrzU4xTAfwoo9I9YSnpX4VQvUFhuyoZM4cwkh6pDR4uNS4oyEtAau5fdL4KVd
         Fwu4TJCz/+nJI7vdpOd7voyups9H348GErxbjBHQPXOwhd/uGUEplJR19+gvc1/5sASt
         pr/UFXt0ODndXwCkW5uGiO95HUCWR8tpHQPLDo2oVMytEK/RFZDFk4T93Hci3yN43c63
         q8qA==
X-Forwarded-Encrypted: i=1; AJvYcCWFNvATwVjRPFm74asofAdywPOdBvfN5LOEDwHLXGS73JkHWVDRj1KlL3wM0DMu8qoJnDinZQr4D9oM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4Pm6jK1VvRnHM+GN1XnLJGyr7nhea1hsL8y2nQo5I7n/x+TIK
	JoQOgqI6hDBnjznQ1IHQSDD7Lna9ZyBwUoA+zJOjg2bKieVrjEw0rSnCDzykVEU2lCs=
X-Gm-Gg: AZuq6aKR/F11MWjRqfmQcikE0YfNcpfJY8iMyatt8pglTmq9eRBMgCbNdzGMPS8lW4c
	sf4lLIxo00SqwOb69LUSfF/hlKZBV7nTAVIvuCgLVgbHAaZM4CXvjmK8EH3fBjLQiaEW0H3FDyH
	d0S6GCkXtEImVk3+iOsqV0KxohKZ8RtzTLIiYsYjpmnpUjszT2RfeHvbfUxAHGkFR85kn4d9Fh5
	kKsQ8k2xWolfuqWHqNRm5TmNDMVwVvqnfZkr8AOm12WlHq4io6Y46BtRe7bOVl0YoPa9PlBIUQc
	YCPdUJochUzKPl8Xhbe4Fdf86V5IfMVwpwOMh3x3qFFbvtbc/U0/0yMS15y0+G/nTyIjowsJ4JR
	nwSI/ZzDKYT5foIkAvVTFW+KtuqBCozoFCKbVctpxdUxIq4NclgnJRZWSK9j/i3T+ndnv0k8bbz
	j+KBq9QaQ8n3kj9JaMP9Byua/xKzDWPYCrwjS+BCp8udgWkatuP+GamVnzBA==
X-Received: by 2002:a17:90b:2889:b0:335:2747:a9b3 with SMTP id 98e67ed59e1d1-3548720a3eamr5471859a91.32.1770306436773;
        Thu, 05 Feb 2026 07:47:16 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c09df19sm2792675a91.1.2026.02.05.07.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:47:16 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jesszhan0024@gmail.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io,
	kever.yang@rock-chips.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dianders@chromium.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 2/3] dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
Date: Thu,  5 Feb 2026 23:46:56 +0800
Message-Id: <20260205154657.3085820-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.34 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263074-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huaqin.corp-partner.google.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: A0893F4BE3
X-Rspamd-Action: no action

Add a new compatible for the panel TAIGUAN XTI05101-01A. This panel uses
JD9365DA-H3 IC, so add the compatible to the jd9365da-h3 binding files.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 5802fb3c9ffe..cac8ff562492 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -23,6 +23,7 @@ properties:
           - melfas,lmfbx101117480
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
+          - taiguan,xti05101-01a
       - const: jadard,jd9365da-h3
 
   reg:
-- 
2.34.1


