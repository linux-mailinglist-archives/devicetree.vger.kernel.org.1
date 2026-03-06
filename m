Return-Path: <devicetree+bounces-272017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLBlGom1qml9VgEAu9opvQ
	(envelope-from <devicetree+bounces-272017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:07:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A90A721F6FB
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 12:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 175F7305147D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 11:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B08C2FF;
	Fri,  6 Mar 2026 11:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JWcsCK20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF633845B8
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 11:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772795242; cv=none; b=JfTB8pReZMdo1dFFSQcBtQaHVjF5pdc7umn5SioX89gpi6Lcz3/ppFzg4ExK7jLZOuCgpbJJxtnSdylnTJXC1ydka8iQ4ugDOOO2rBx4UTFHfenFNRFt0OWuV5pVPZzXHYp8uhMS89eVhw5QsR5HwpaxqGqfBoq9IAkELixtx6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772795242; c=relaxed/simple;
	bh=FSIP3SM84dQdhjEo4jc4DMMlhDQi8z47WoQbZCoDWLc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BOIySmH4NSEfWpgsPPOgFCfV/EmT+E/oRcUrnHEBRcSQ9IX/bhXMKn3+yS00g39QhxeUGd6ZUY/YWNzGL4qlQhtHwblbKMs+o3Ipe/sltGUASThxAsCcuV+y4Z2/FjOTItVbihL6nTScHE8CGtLs06lBGDFjo+SbTdrs2l8whm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JWcsCK20; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-829865a8471so1888422b3a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 03:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772795239; x=1773400039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LkZRQN19x7mFcsCOofw3+jxcPy1oc8gx31GqMlFvfgk=;
        b=JWcsCK204wvRcUmpZXjnfDLoZsRcUseoY/HgqISRjwES9SByQm8Y1fRcd9cWDXPMTb
         crwCvFziEpz/6w2Yo3RWHa5ARGREubngZCQpx4QF+uuTM8RDtqgl8rC+PnLT6R2XqwXB
         6u515Ty1gTk1EMAZEz1tNCm3U5/MuStYcH1W+OHU3AXyUJH4lIqehgfLAh40p392xMQo
         k4dVXxfu4BH5NZu3N35AjmHqZDpWgICc3D3IwnZPOhjx3HwixDqtRCCU5N19dLAzytF7
         /1yFv+K6fst/AwUpT09TO9WytjoM96ELxvKoFatDGEstgFxOCQcaBn5Yqwb4jmOPJNpX
         AkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772795239; x=1773400039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LkZRQN19x7mFcsCOofw3+jxcPy1oc8gx31GqMlFvfgk=;
        b=GekKXv3OB9RWUjJ2pidXQazBHfq64hc2bgb6kHxwHcFeT9Z7J3STfD5V9BuqMv5opX
         ahFUeUyfkstFrJSEzCb2KnDLHDuGkmGpVN9PcDIsriPSDEVsjFJNtda0WRkFVqFwK8+o
         OFm6zNYDhTtEbjj+tGqrlcRb5r4uP2vnwSxyeOnZzlXLdJAMJl2emsDywhqP3qdOF//Q
         ztmBB0LlY0FUGDRVlENFbtMyMRjgNg/77VppFu2QNaJAduhV5k2iiuV0Sfyf4YyDVzef
         tehaf+81ZO6oS/BErB0fnL9PDsCayhlLRwQMnhwMZ0kXaDxpGST/Cp9P8a8MAXDxN77o
         /AHg==
X-Forwarded-Encrypted: i=1; AJvYcCXVNEi7OvhvnV3M1sbJddlLxvsntV8Z56cp47+vgvIuiT/DLjH34Bi33U0qK+sw6pkrJEmarUG0KwLc@vger.kernel.org
X-Gm-Message-State: AOJu0YxXqatScDwO5Xo1Cmd4CHgSDeVb1dObyfoi4PMFbMm6B+nYfSk6
	Lyh5hAQpDYBaev0K2NsHMUWPIIedkhcOugUPUndEKB4jEHH/9GubpacW
X-Gm-Gg: ATEYQzyw1fQmwQy6zOlu+98RoFtq/M3mDgMDk/jCrYRL9ZTN2Oho31X1tLfvt4bQxCO
	v7uNP/FqxlYi6TQKe1yZF53TQe/6uoLzQYxPojArScVcnYbGEqSNL1BPJHuEXKqL50K06iIXlYQ
	eGiIMgTwzgJN3spZOmYNQ/At8Jm8D/a1lhdUrbLxZuX6/yTS2kq73UM0/FcxiCBkdWQBKFDacMC
	M0L2pRHrRM1KXYpXlxgfsQVjt3ZV//GmxuFouUvB9WLBFg9C05nU01QXtMqL/xHgiN/wCf/HdGP
	IiJWlVVJDiLGAw3N1+lOi2DtZTFbVflqMhjSV184lYldbSfh5HLaBX3RTCWXUBGm488XVu6iV85
	AnRiuUJnzMC4Fi7M9o4eP953R6+1oqdVd0AR3lzRv9MvbtFG5/rpdnFb+ZlN3eqwMx0ktigUcDw
	+vgBGMwCx/i/NT9Ric98cqKXYhaw1rVDc=
X-Received: by 2002:a05:6a00:1a0e:b0:829:8e91:eff with SMTP id d2e1a72fcca58-829a2f1429fmr1340770b3a.30.1772795239104;
        Fri, 06 Mar 2026 03:07:19 -0800 (PST)
Received: from localhost.localdomain ([58.29.79.238])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48d6985sm1428631b3a.63.2026.03.06.03.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 03:07:18 -0800 (PST)
From: Lee Yongjun <jun85566@gmail.com>
To: krzk+dt@kernel.org
Cc: robh@kernel.org,
	rjui@broadcom.com,
	florian.fainelli@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	nsaenz@kernel.org,
	ulf.hansson@linaro.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: allow dma-coherent property
Date: Fri,  6 Mar 2026 20:06:53 +0900
Message-Id: <20260306110653.3519-1-jun85566@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260305234703.38490-1-jun85566@gmail.com>
References: <20260305234703.38490-1-jun85566@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A90A721F6FB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272017-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jun85566@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Dear Krzysztof, Rob, and Ray,

Thank you for the feedback. I've checked the linux-next tree and confirmed 
that Rob Herring's patch (commit acb52756e90c) already addresses this issue.

I apologize for the redundant submission. Please disregard this patch.

Best regards,
Lee Yongjun

