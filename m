Return-Path: <devicetree+bounces-299667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIQTM2mYC2rXJgUAu9opvQ
	(envelope-from <devicetree+bounces-299667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 00:53:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 542A9574D00
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 00:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C8E33035ABC
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 22:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98DB33043C9;
	Mon, 18 May 2026 22:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRIypVOO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E5E30DD22
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 22:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779144801; cv=none; b=UwoLRtggWfMrgNdPqQZ+E2gynsVlVU1BuBWBm2O5kdj5HEK/dDCyjceMIcnulF6OGLxdcXwcjqdjstT8zeA4tRUvSLH/5g/BCY734ii4J+5l+eW7JFStKTFYMxTNMQuQF/HrJWB79sZktsGspek+5gffSwxYjl3whAswqvbn/Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779144801; c=relaxed/simple;
	bh=LRCn80kM8HBzYaSZlDk72UNrNNqLYgqVin8TWWYQOGw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eIqmk9Qe6a8uS17MESHUu7uGIqN7lleNYfgnFo/wB1/gMS/c+WcxAEbvZde+5i8zsH/kRXP7Ggy+ZJlB58hVS8i1TzF1fb/Oi28feNbfXdP1IMWFkbhlF17In4iOZv8XOmq5imB2wE5t+4zMLY/DJ5YKFpER2g7YekeM7FYZOR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRIypVOO; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7dbe437b072so1440676a34.2
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 15:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779144799; x=1779749599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LRCn80kM8HBzYaSZlDk72UNrNNqLYgqVin8TWWYQOGw=;
        b=TRIypVOORcEtFJEhLDKGhQUIdEb4weWEpmBG5ggFinaVKfx79oVoE0WQQQhK8ySvX5
         KpSzthShOJnLKJUQPTDu1TZA/uEZxg61Q9B6cfLm+KvovpiAcZAdwy/jLfkeKBCBc9fg
         iQRpn3w/pspYow5AlzVPgjRUxU5Ukk32PxiYPOcHIaFAN2Sx6xy5i82LtMWysu4pqjWA
         FGpkFZubQrurlz6hazT9FpyOWzEOylrBITFHTVmJqOjPCp0jKPzktCAMAAKcYAkdAISy
         gm+EiEDj5owz+SLiCEXc3m2Ywwd2V21cTjB8n8252ndpr98FssWH7PwSMirLmRV6xoG7
         pOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779144799; x=1779749599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LRCn80kM8HBzYaSZlDk72UNrNNqLYgqVin8TWWYQOGw=;
        b=nYuTr5qwiTapxJ/XikGbNcShXF5FBuqcIMN9ozGS8PoLl9GQLEHpQZQCPH8KLdhkt9
         nbyagH+ylL/tkWQ7diF3uJOvY8FV0Tcmn7FnKAgT1pFnMFgiGn7I31oC2EnFijVc0u8W
         rPvoMO9JFMOlycKRCiZlsmqINLZ2q8Abytd2UCaox3H3caWEcH7bl057uXPCj5YYXx5i
         3R2YSs5d+e3PMZ/Ntuh4PdXjnjz853EBueH/KT/qmMwbip0o68GRf/AahqHyfAmIpc+F
         lZnfOI42Z4o3Oi6P+ofr5/EbZaRlXwSfS6aGaJ+YqBpr7LaiCjLQM2sIui7skQ0sjwvj
         +ZsQ==
X-Forwarded-Encrypted: i=1; AFNElJ8+LRfGcawSMPpulxLs9WKezrxe/FFcZ1gMP2d4h4TOUcxeubnKNmskNLgSk7E8zNPN9o3KuHG/wiZ7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw030YUfdB9UbEy3YnASSWI0kVbGVFjfHf8r1ZwxgpWCeKblcXS
	myjOoQBvB80TU1x9rmgaZlHjJQK+fza0xO7gcqBPkIUnJe125ix3qcW3rEopNC29
X-Gm-Gg: Acq92OHKg1qVbzbsFiIexwOv7l/MjDG+K5c6PD3yHoXNqQ/HoAwWwQN3Vz4DBh2FeMe
	54SEOZNZhVQORgOYhple39sggmFYrXW7pV6Cij2SslqcMXj37LURtQntK9/lyxodS5w4GsGkiny
	5egPdqFzdTvr9YjDnR1fftw4ysZOVJ3LgykAzE0qZ8eg9FYg8DmvdgzGERfbx96VijvbC55F9JJ
	H9N/CIVyGCtDarfQH8hFWzLQnPF38IFR1YLiEsybAsxPb/Wo2yb/eB0kg/XkCOv3mHUrbcVilxZ
	b4UZIRvbYu+BtHgZ2Y7IkJOgobxRGzawWnROJNg2oJyy9zrIS21gYAuSt/CJ0lt1+ptHBfx699f
	3o0hpAWNTPsiwiLIoa84OY882zVBcLJtohtb426zNghW17pldtaWzt6X/9g1sBW5kVo5iSWqwX3
	iqnHKSEwIDq4lYaW1AL8jav8lYLN0Qgw4vmudAAQ3cYaDWPWutvS8dusPPjgkxKTt6
X-Received: by 2002:a05:6830:2117:b0:7d7:da05:f2d2 with SMTP id 46e09a7af769-7e4f2b3dfc9mr12303565a34.16.1779144799071;
        Mon, 18 May 2026 15:53:19 -0700 (PDT)
Received: from Dell.cheetah-searobin.ts.net ([108.243.219.47])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e55bbd0be3sm8668776a34.15.2026.05.18.15.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 15:53:18 -0700 (PDT)
From: Akash Sukhavasi <akash.sukhavasi@gmail.com>
To: sashiko-bot@kernel.org
Cc: akash.sukhavasi@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	sashiko-reviews@lists.linux.dev
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: richtek,rt1711h: add missing 'port' property
Date: Mon, 18 May 2026 17:53:17 -0500
Message-ID: <20260518225317.53138-1-akash.sukhavasi@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518164403.C09F1C2BCB7@smtp.kernel.org>
References: <20260518164403.C09F1C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299667-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,lists.linux.dev];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[akashsukhavasi@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 542A9574D00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Is this comparison to realtek,rts5411.yaml accurate? The RTS5411 is a USB
> hub that physically routes data, while the RT1711H is a Type-C Port
> Controller (TCPC).

Fair point, rts5411 is a hub, not a TCPC. A better precedent is
qcom,pmic-typec.yaml, which is also a Type-C controller and uses the
same pattern: a top-level port for role-switch signaling as a sibling
of the connector node.

> Since the RT1711H is a TCPC, should this role switch endpoint logically
> belong to the physical port inside the connector child node instead?

The top level port describes a control-plane connection (role switch
signaling from the TCPC to the USB controller), which is distinct from
the data-path connections inside the connector. This separation is used
by qcom,pmic-typec.yaml, and on the controller side by
snps,dwc3-common.yaml, dwc2.yaml, and chipidea,usb2-common.yaml.

> According to the standard bindings in connector/usb-connector.yaml, the
> connection to the USB role switch is typically represented inside the
> usb-c-connector child node.

The connector ports describe physical data paths (HS, SS, alt-mode).
The top-level port describes role-switch signaling between the TCPC
device and the USB controller. Both patterns exist in-tree across
multiple bindings.

> The Linux TCPM core also appears to expect the standard layout, as
> tcpci.c initializes tcpc->fwnode to the connector child node, and tcpm.c
> attempts fwnode_usb_role_switch_get(tcpc->fwnode) first.

The TCPM core handles both layouts. Multiple in-tree bindings and
their corresponding DTS files already rely on the top-level port
pattern.

> Would it be more appropriate to update hi3660-hikey960.dts to move the
> port into the connector subnode rather than changing the schema to allow
> it at the top level?

No. The top-level port layout is an established pattern, not an
anomaly in this one DTS. Moving it would be a functional change to a
6-year-old in-tree DTS (commit 47e2843f5e2e, 2020), and the schema
should describe what exists in-tree.

