Return-Path: <devicetree+bounces-273825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kp0sG9LxsGn2owIAu9opvQ
	(envelope-from <devicetree+bounces-273825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:38:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C329825C001
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A19C3013A7B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C752D97B9;
	Wed, 11 Mar 2026 04:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mtK1JOGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EB4C145
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773203919; cv=none; b=cbxCPDi/zGeVZ4/E1tJhatPW2RCyuWYR43mfxQGC/trEsqL81XbtFcpQEqrOFtmXmUEe0bKpLLPXdjotrE7vflX1X4WAnFfy3xwHSFUlq8M34j9fCEMkh+TVbq7hHz0hOIRrvdWc9gz3BSHSUvLHL4BTDGUvhxxyiVcPOXAiAAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773203919; c=relaxed/simple;
	bh=b73m/0G4bp9qlKbyGpXs2BmQnhyq68YsG8re+bxd7zk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OOvSvTt7KxS7JJOQWVaU4Gg8YDc6MhkqL8B18YIXvZHjbG8ToaMrCXcNaz46vsHaU4a3yxSjZGVufULWQP1OaWB1xUZl6dgfeNNyqM3h2S2cehHqgaRqNtof+JIONlBQKejNlYCHJd/vY0WKsjqNnWHQ7mF+0o8doD4kTnTZw0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mtK1JOGN; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-35a07ed3ebdso30572a91.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 21:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773203918; x=1773808718; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rOpJyc/uxw9YcZ5bYmcC7bF77XfwHzZK7dfWyiG9If0=;
        b=mtK1JOGNkUqANef7tcws9FG9uYdBx8rECyqe+z1NGsmn/MlG8YoLc42wGLz/f2Hnkx
         maoAr9hnvvC4zKx6qJL6x8QFH5tXsbCHt4X4GsY76XrAJeTCSxrjKlcydGzA7ZCavOVZ
         o9+aBhEwa8+tQS2gqSJrtg3adUCkLkmLp1Tr5h3fk6McCvVUnjKbb7u5uzqIaldZe6am
         8eUy/nbiM8O/r/raMQgVj21LKlbJDYA/ySlohnBhIeFRFh1tpOKvn0DTBPzgcsLK457r
         HX79GxnfpwQ3jHgGPGum1Lc/nLNPrqKQOqtD7Tqf2RXZ0bo8PPcl/BonHkzwYfGhU+9A
         PJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773203918; x=1773808718;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rOpJyc/uxw9YcZ5bYmcC7bF77XfwHzZK7dfWyiG9If0=;
        b=bIpKToD6s6Q8yqosMddswRw0YlCXgtGuCYF0JqKMM4aSlrqI0OLJbNxu+FGKeOfXWz
         VDLwX02kh71UrDecN/FgDHmH2wq2JlzNj1SOYfWwfJ+luE5ckPQSAt/OFkPCkJ9BRqbb
         OqvtrPZmhpetaoo/XuNJvcOEW4TMJBLWfE6OnphcATQwlDjjwBxnPfmnKxzwqy/j3kLg
         vHgex82/9YOl15ZWIpUzgMTMItB0yPp7vn1I0uHH0k5oPF83J14aVHSG96nepGyfwJhu
         T3/m01yfPilKd/sK7DXubi9swuRAoERgg5V8LlJ2799T7uzpm2dLWR+IhzhzxDQG18Fp
         tsRw==
X-Forwarded-Encrypted: i=1; AJvYcCW/mDxycVmxXwnXYPRqmN1bT6xyK7geBb5dRM6ltbraxHi2gv+pL4npUALIJ77pMAMsSPdjqZ04D29+@vger.kernel.org
X-Gm-Message-State: AOJu0YxWMFr26pYzy527pS4voe3EdXHhXo/k+oLsBZ0K2I8rCCl0S+6F
	8Sd1fG5sV9fSTkchR3o6k97/DLuaDwY/Hx2iQS8bxftUzNn3YWJsRtVo
X-Gm-Gg: ATEYQzwuzuUcSc9gO/yJPPq2SyqKEesGQCDTUPqXVH1RwA6fe896sgBwvesmPFf2D61
	BVy0z1Xv3ZlJUjxK9a11JPIZilDsftGQG/Enm3xYpnxtMoIQY7VPoOAbCNmLPvIV3JEf+TMgnWR
	gQPszmsM1egGfCmcJpcyxPLXDcZX4e51ddljfum0EjGbcAp/Q35oh4H7OPowHfminmfyeO3TcwN
	cDAAXRnRL3cwHSxuh63n3IEIHS4fl2IqRvBXqxucVr7jgaxNa7CcSEDIgI4OuHb72FrZQnM+UHx
	dQZ59YDR0Rg+IT4zw/3vE9KU+pQ3+3AX4Dg5dkQTF4dGrY2aw6o0xxZggPcsnHI3bjprY6/Jgnl
	IN31Vr7N4PI8oN7VTPST1F6THrgKwclQKWxgGl0MrxxAvZJfs+0nPNcJyEJcqfwnVbLz9W+eb1u
	oXKKlSlQyxosWDfIsGvIOMUfPoBr+wZxzrtdt4rWR3o6PHWf/S8Hr52tlI7M0gERp6wBfHs21tl
	3Yvvg==
X-Received: by 2002:a17:90b:3c90:b0:354:c6f3:d365 with SMTP id 98e67ed59e1d1-35a012eacd0mr1283571a91.17.1773203917898;
        Tue, 10 Mar 2026 21:38:37 -0700 (PDT)
Received: from localhost.localdomain ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359f06fa04esm4679484a91.6.2026.03.10.21.38.33
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 10 Mar 2026 21:38:37 -0700 (PDT)
From: phucduc.bui@gmail.com
To: john.madieu.xa@bp.renesas.com
Cc: bhelgaas@google.com,
	biju.das.jz@bp.renesas.com,
	claudiu.beznea.uj@bp.renesas.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	john.madieu@gmail.com,
	krzk+dt@kernel.org,
	kwilczynski@kernel.org,
	linux-clk@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	lpieralisi@kernel.org,
	magnus.damm@gmail.com,
	mani@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v8 15/15] arm64: dts: renesas: r9a09g047e57-smarc: 
Date: Wed, 11 Mar 2026 11:38:31 +0700
Message-Id: <20260311043831.2576-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <20260306143423.19562-16-john.madieu.xa@bp.renesas.com>
References: <20260306143423.19562-16-john.madieu.xa@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C329825C001
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[google.com,bp.renesas.com,kernel.org,vger.kernel.org,glider.be,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273825-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

I noticed that for gpio-hog nodes, the kernel already uses the node name 
as the default label in /sys/kernel/debug/gpio if line-name is missing. 
Since the node name here is already pcie-clkreq-n, the line-name property 
seems redundant. Should we remove it to keep the DTS more concise?

Best regards, 
Phuc

