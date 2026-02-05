Return-Path: <devicetree+bounces-263072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPcVLIC7hGnG4wMAu9opvQ
	(envelope-from <devicetree+bounces-263072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:47:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 056CFF4BBF
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABCE63010BB3
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB74F3A9D96;
	Thu,  5 Feb 2026 15:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="RNmEohGC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767C0423A9A
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306429; cv=none; b=T0c96fDSWJRRh5KBSebbqVuAKBs41MTxnzEAuzFBK97iew9jeT5f9/cqFfk8fRJMoviXSlWxVtET1VkiH19XJodk8TrI0kqlHRwyuXMv7TdLLjISsVAnjr/fehqeWoFm4V01j+U/hNnO60MnXLVlYTsEdHfj/0L90WH5wVrIMcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306429; c=relaxed/simple;
	bh=csW8Q1wiviTJ39u+nqggXQJVliixTHSX60tJ/4LLxYk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eSuxovL4+Y2xRiyTBZ837BwWFFAty/BP0JxYav768hX8qNOFBjK5FHao2NKi0/ZawEE4JX3aA1y3iQNepw3Tg43fUgkdlOyYyGsP+rXKkvORuH1G1SVmRjH8CuDnqFiBAwjcSUkIzS8ofmKiO4vyusZ/WHj+ogetneOALl3fBFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=RNmEohGC; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so11997715ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1770306429; x=1770911229; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=demHIeaXhtYOCexws30SQF68jX3ViWOu3xcS2NdOUdo=;
        b=RNmEohGC8QEcl+tvcoq3tVGypPmby9Em1AcwxSGPlDDqmR8J0J52oxXn3Dhc+z5DeX
         DKpy0AFC03WxPxK6mBCYp95yHA70zsepUN5IyGpq+K7bXDHFAf0R7upMsWxRE0tKX8cs
         FJ+UX3mZXqqVsXDX3TAcwL3H9nhLqa/bC2xLqiYjfGXw+BVh0AebAzi2pUDaNrBJsanI
         LjBSjyo188MA7UgyKjq4Mz2PhCQiWeNMpin3LlugsT2jeCt61lWXV2K/Ykpar13r33Bf
         Z/S8/3XzjS34CxqJk2Wgk6nzMcErIzZayznSiM6r5PnAT4c566GwVxWOikSKQWhcX3KT
         ebpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770306429; x=1770911229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=demHIeaXhtYOCexws30SQF68jX3ViWOu3xcS2NdOUdo=;
        b=IQzhfJsNuDVjT6nqXKUZCTH5b9stMnX2gP7++GXvIr8EdVh1CrVgCt2Iem54fFMvIm
         r4se+JcCFIB1cPrwYBP1PWBoBOgDpUNR4iTLWuNbH0CKDvDUdj8Rhsd2fIeFgZPSxcCe
         SfDLlJkEf7rfFAdTkM/aMcEBGIK9iPDEaQCG9rvP6hHUiOGz+rjDESFFEzZBg15gJdej
         QyiPRSvj8uRouUUcW25a0FY3amhyReJe/VhP36nJ/1QJrAAz609nXco8O4IaKLZYYMZ7
         oiyzQd/pduC0m03ehB5CNfzbf5GW3IdxZ9BudtFXBsOT3N65DLAKmMp+J4aPcpkZbQGl
         Jw+A==
X-Forwarded-Encrypted: i=1; AJvYcCVB/bDUMfKaqrCUJkX9pZVjTtbvhavVrnYJKTcNXXsjrseoO5I6MkESDoA0rbKPTlXoRRDPQMyyLkGu@vger.kernel.org
X-Gm-Message-State: AOJu0YyX/LUBXZGugt9CHcGUdrmPf/RWwlPSmwklsRe/hMtLzBvyB76+
	YIdjlNRpfUKcftTWPLHMMAJQoNQfiu+3/SeJcjlM+k0PmdItr/hdZyX/Wf8D2qSaEAA=
X-Gm-Gg: AZuq6aK/CmxBW0YjVFwgjSms5qWl0Tbwcaphq79L7J/0Vg3KV4FN0q5vbOHKP0G/LOa
	LbdIT/JDjRediupEHQ+JCIke1nxXWZRG10qqQjVu/CMqAzhvGU29WSL9el00eqiga3ICtKkyQn6
	NvOTNOi7LF7wyj3DVki7xuhtukJF2l4rUh6jDj8Qc1mnQuM/cEBqOp+cU1iV02KBir5eAca/TtS
	MtQrcWn5WWzMx8nZZrp9N2NPHXgXGXYR86YqxLe0ymDllK+LizhfvsdskvFj+5hvG0PNm15FwXf
	Wa/RzY4vjKOK8/xKL5kN7sO7aZFkRf0dUNO76JINH24/CbMdfjuKl9M0rpsPcj7WFtBB3j8KVJC
	sGKqEMHu4i1EkpMWgXdtQ6c/D/MZytlP/C2BgTJ8ij/77px2ICEGaeJCf+xr3kGrTMncuUqetD0
	2CpNqjt63crcZhk1vi993Lor2hhCfskRJpqosok2ugl5kL19bgSyWQEzMb+g==
X-Received: by 2002:a17:902:f682:b0:2a9:410:2400 with SMTP id d9443c01a7336-2a933e95230mr69060745ad.28.1770306428718;
        Thu, 05 Feb 2026 07:47:08 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c09df19sm2792675a91.1.2026.02.05.07.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:47:08 -0800 (PST)
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
Subject: [PATCH v1 0/3] support for taiguan-xti05101-01a MIPI-DSI panel
Date: Thu,  5 Feb 2026 23:46:54 +0800
Message-Id: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263072-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 056CFF4BBF
X-Rspamd-Action: no action

The panel uses the Jadard JD9365DA-H3 display controller, which is already
supported by the existing panel driver. This series introduces a new
vendor prefix, adds the corresponding devicetree compatible, and extends
the panel driver to support this specific panel variant.

Langyan Ye (3):
  dt-bindings: vendor: add taiguan
  dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
  drm/panel: panel-jadard-jd9365da-h3: support for taiguan-xti05101-01a
    MIPI-DSI panel

 .../display/panel/jadard,jd9365da-h3.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 244 ++++++++++++++++++
 3 files changed, 247 insertions(+)

-- 
2.34.1


