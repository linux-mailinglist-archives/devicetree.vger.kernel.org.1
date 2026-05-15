Return-Path: <devicetree+bounces-298572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOk7KLicB2pF/AIAu9opvQ
	(envelope-from <devicetree+bounces-298572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 00:22:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC59558CD2
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 00:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 69469300B3E9
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 22:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34BB03EE1F7;
	Fri, 15 May 2026 22:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YF+swYuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB913DD52D
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 22:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778883741; cv=none; b=Exd8h3jp+Fk2H/TEzVdIIiYFv+lMe+MLt8H9LNfjNGHZg5HkVM9p0/tdln0c1kBIjbeAd9Ut7P/mKqlzaZ7q62FmRGkl7c3+1bRAxejeUfcCyCtGWBrv5ZUc1BDZKVV8zaE029NMiaKyV7FkpOwnACK6KZft+6KSGfPpF6kI/r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778883741; c=relaxed/simple;
	bh=dQnacLOtfh1x/EVTAVwP8evevCXXsKE9KJDE9DiR4UA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YTiVbmhuSSXDuV208QXKwcRdGhX4QAE+aDRCZ3CC8EZ6q5YbiEyZ/m5xqhe/UuOwdOWd2xUPmTtv6FewYjqMkXdTErbxn83HMf00SfJ4w4zFakQviOWuAfwSeX/E4Mm23283Hhhyga63+TGCqYZ/bi+bH44YTFjqz+i0eOz/SSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YF+swYuJ; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7dcdd23fcdfso180994a34.3
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 15:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778883739; x=1779488539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=YF+swYuJFSLBiTRW0vFd1kc7WHQQrucBNvdnkCuGCl8n5suBsEfwqBp/Sx37JXoFxG
         5n52836oOHKICy04LNHllESr6LTgU8xvUScuxJezGF6gifQte80x+jyNOTfu9FkfIPJp
         8jwXD8XCX9jszfLIZXVz91ucdH/Xpw1pS39zRCYIYYBm1osKeZT1C7N5DiEbm5wIIyrL
         6BYAlJnOJnVMdEf2k3rW9K7sToaYNpU+8Vsj50vHY8TZRHMibv9oSu4EPCYqWookGUMR
         rxrznCCrubUy9YelaWbT6bXEC6f7tALtXpafvCzxAtfwhNlZq7zzGn/9Ohmr2FjhCAyv
         3svQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778883739; x=1779488539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=A06mvXh39RcRN/j5XY2AAgOUWSpYZcbSazpDpV6K7+7B6kxIS/ZIIopsNu+etbQTNR
         If/Su8WSeWT7zlc0KvMfMuS48tRcZ9LG2B8r4HVtb8Z7Ven/UQz9UDFY6zlsTf2mYCUN
         T2SqQjItA9W8Dir+lHx74T7Cpfsv+7PjxvwVSzEeprelHn91PW2nUH+5nCfzfMSK0uzS
         wphzLi6wVur+AF8En9pLWQaF7u4U19q+3vAX5l1ga/6PgpQXttc93XC6QGXTE2mINk5d
         vGmklwF/Ifii9vZx5m83MgWhNNOZEag67VsRrSI/Mi1w7EJSokAN86BpfCJIJp7Ngdoy
         UK5Q==
X-Gm-Message-State: AOJu0Yy8a0SWq6ZA4RgyfCHGjcF93XG3aPkM4oD1OENFIthUKE6DbpC/
	LN7zd+IlaQa9aFzBx3O9PAMwcaEVCaWqPZkF6Bhdpn6+Y7ePoI13EMF85N3cdnRn
X-Gm-Gg: Acq92OFstbupAw5z1GnLmI8Y/fYNN2Duyj2GnkmToVsae9QZBUBldEaCQvzbG1vW7Z3
	7WQXnHGdocgvmtlUmqCoath8o506kbGZRgI8ehGUDMLbQalQmONXOjwQckNpousodPyG1TeX2wj
	OF3uwPBHp9nAR2VwRL8ufkxI/01xhHlI2u2vu0bPikUtXY3AOZSCFOm/BYBE9FwqztOWTT+n74Y
	EoimWBfHMeyTAjuEho/hHcTWVa0/kFXk1Xg8j2YXBsSGthn9NgytxPM8oaPY0EIk4yH0Vnm7EQz
	Uv9Oh9m/Dgl9zUyZR5ub2qoLkAVDThdw0G7bqh5azpGU0tkPeAJ4xugUzBSI2+IufDe4WjHp4qc
	Zb5lbxsmSzZ2JwB7tsLqTWpH/89bzpYKKw0bx0CehRb249seFv9Snz1HufMFZYo64tOyjAY9feE
	ObED3pqLNaCV8HLIwTJjQvsB0RDee3JO2kT7mdYdRe9g==
X-Received: by 2002:a05:6830:917:b0:7d7:4fc7:21a with SMTP id 46e09a7af769-7e4f2b3bb74mr3851787a34.13.1778883738759;
        Fri, 15 May 2026 15:22:18 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e568c0d889sm980764a34.9.2026.05.15.15.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 15:22:18 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V2 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Fri, 15 May 2026 17:19:46 -0500
Message-ID: <20260515221947.299229-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515221947.299229-1-macroalpha82@gmail.com>
References: <20260515221947.299229-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1EC59558CD2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,rock-chips.com,kernel.org,ffwll.ch,gmail.com,suse.de,linux.intel.com,linaro.org,sntech.de,hotmail.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-298572-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


