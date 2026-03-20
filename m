Return-Path: <devicetree+bounces-278445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kQ9tLVy1vWkqAwMAu9opvQ
	(envelope-from <devicetree+bounces-278445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 22:00:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1A72E10EA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 22:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 95045301F69A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 21:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A256330FC34;
	Fri, 20 Mar 2026 21:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="QXIwY4Z5"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D42D347534
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 21:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774040410; cv=none; b=o+zfxa7eZ0fZTfFl4sYcOAYqaNuoqn9O/luD9pNYyoQlPEdt2B4fC1JmvtJV9rtb2FnY85EZxB79Obo26beYHY4er5OYHib8yiMZyOsqoUk6CNaie79+hRN0H7NB8qL/jbt1XKLuHrmTDNeyx9hUI5SiawQ/SNuOH4lTBVMhh7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774040410; c=relaxed/simple;
	bh=HNE8C7w9g1/4voggQpftBytVvmz2Z92PQTdjhQWvvQY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VN54WTaWDYhsIv6Hy+anpRDKu8FZ1Aak0BlVLHDwjPwZNg7OffyxFBe6/oa6KYcmBWdrP6OQSll439NHrz9MpXtkl0pjGYU3uWZ24xlEJ0L32UWcbXdJfk+AY9HOawPgzYsWUTQNKAPVZb2mukQQt9fE9APYiNz93KLqzkepavM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=QXIwY4Z5; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774040408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=er/L2lgzVHVQDMDgXULdYtorAV7nNEDpgqz9pFsg7cs=;
	b=QXIwY4Z5XRzzqNL6XrmUeZjJrMEPSpqIvEY/PiiOf/0DA6HFD1hsFBTJbXEsA8vwvyr/sV
	ys6y6PH2WQBeQwRO0hUwiqD00U/GDuI92rzqXM6j/PucvvHzHNcELYeoK6xeZ/YA9+xjUm
	5npuLUZTcblVmW8un7B+he1qTU1ETzI=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-62-ABoiZTcQPWO6KyCACFc1og-1; Fri,
 20 Mar 2026 17:00:04 -0400
X-MC-Unique: ABoiZTcQPWO6KyCACFc1og-1
X-Mimecast-MFC-AGG-ID: ABoiZTcQPWO6KyCACFc1og_1774040403
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CC1B61956096;
	Fri, 20 Mar 2026 21:00:02 +0000 (UTC)
Received: from thinkpad-p1.kanata.rendec.net (unknown [10.22.80.230])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 73D2730002DF;
	Fri, 20 Mar 2026 21:00:00 +0000 (UTC)
From: Radu Rendec <rrendec@redhat.com>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Lei Wang <quic_leiwan@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 0/2] Add Qualcomm SA8650P SoC to socinfo
Date: Fri, 20 Mar 2026 16:59:31 -0400
Message-ID: <20260320205933.992852-1-rrendec@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278445-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rrendec@redhat.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4D1A72E10EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add SoC ID for SA8650P to socinfo.

Note: Posting patches originally by Lei Wang <quic_leiwan@quicinc.com>.
Minor edits to commit messages for better clarity and to match previous
submissions that add a SoC to socinfo.

Lei wang (2):
  dt-bindings: arm: qcom,ids: Add SoC ID for SA8650P
  soc: qcom: socinfo: Add SoC ID for SA8650P

 drivers/soc/qcom/socinfo.c         | 1 +
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 2 insertions(+)

-- 
2.53.0


