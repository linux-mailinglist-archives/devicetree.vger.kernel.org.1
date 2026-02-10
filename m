Return-Path: <devicetree+bounces-264179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHncHMmNimmwLwAAu9opvQ
	(envelope-from <devicetree+bounces-264179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:45:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA011160B3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC1F33006903
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 01:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3C9211A09;
	Tue, 10 Feb 2026 01:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fakO++OA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950A135898
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770687939; cv=none; b=eo5iHKyZbXsC6OeHgLk/GDjeddbGV3yx41EvvohPg8dxd1QsIWKA/MIJEuYYyNI5BwfjAKI1mg5D+CL3pYFLcdPODXZd4VTa4HKZE5Q2Um8ydFxQY1MDzh5r8H1gFxBEQs72sRPI0eXKuY3sZ8pMvEhop5o2I3cHlB+aKV57yDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770687939; c=relaxed/simple;
	bh=cSJd7h0SOiZG9zgKCimkdXPOMGwNYUdgAMs9mJHXsWU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q0ynvra5xt8+E0I5+YcEnkstzfoxWsI7Cgj2P2ijDY8pHnq8MLHQQugqfU1fWijXscICc2sWgBX3TuPZ3m9EfR1sLg4nrqgHrMTyGjF1U0nhVNYlmOa8FWOPJTANsyXd9unJuMTbfJMGQZjjOvBAgqSjv+4sJcgB9VnYzuantxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fakO++OA; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-89505dd3e24so3738616d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 17:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770687937; x=1771292737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=elsS/kGMmD0OoEVMgvfZiiYPaJsOWDl9DHfN22z7daU=;
        b=fakO++OA3N9XJZjKhyaulSZwPrfZcqvKCnRgu+LKoObVeMCkE7j3nqTocTYzr+nuZE
         Hg1VpG4ShGJBwQ3C7mYKzwBPLEqwKnBbncxTqNn99wkpYCs6CvKrr+e9eqABh2h3B7e8
         +D2OpqXT6RR3aUtQQ63lLDpbfjFSHbTBFDO78jqUHCScQSbQxz8W/LbhXLmLF0ersQDJ
         euKjOupEmlPEshzK14HJoOXwxTz5jLlG4BRZSUm2QrZicjwqnsKlr9wU33GOQ2Jad+GQ
         8AD2N6WtIYy4Dlde11Pm/1pzD2TJYzwFQPlNPBYPyVFIow2WAQCtDxSbEJApp6TL7e4a
         X8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770687937; x=1771292737;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=elsS/kGMmD0OoEVMgvfZiiYPaJsOWDl9DHfN22z7daU=;
        b=RsZ9qEXDKoqT052T/3LQkx91naVXBNPpm0B8UWBjVsBo+081390VbqLDAGBBAec9/5
         YW8h62L78OFBsP1dBe+VTJ4kVPYTFmh0b862c4gtZ11seqLYGCL6eLlyVGq0KY25U5Da
         mZXoibcy3h+KqXne3JUV+yT7F3MPVNNk1+8x/3MvW9xpXLK3M0mRBJsrnDXDMkRYcOTG
         bkTpd17KwlA9F+jDyhRiRn9kU1GZiCcPCqyYdeSUAlyyhMjwtG+Ce65WHpi5eaYYUOAx
         H4BiJbgVUZDPvG6iKF/JZeEZbvBkx3aVmpIT4bCFFzYi41xme1djAwYZJ9PtsAtKw/9F
         YeAg==
X-Forwarded-Encrypted: i=1; AJvYcCXd1PyICEFJ/YbpoRNZey3PHEHMyu4+xgLRdSBX4lhEJeUmE/CyvjS+dNjls8uveg4WD0G6T3kFpdGA@vger.kernel.org
X-Gm-Message-State: AOJu0YzoUgBLGlHwdzPSuM29hIvUMSFLP/Y2NXdOI5wsJsu4VVODhe0k
	4sMppv0MrNOyaR9w541zC+P+gWj1oRVQTp4Q2fzO7BezihcQBd+88XIR
X-Gm-Gg: AZuq6aJa1ZzytOg4Jt1ehCblREn2bzeVtelA3pTo4Fcx1E6N1yXoq8bR2X2+MgmJqxk
	+56OmHNUH8abxPL6Alg7/E1yQvvvqHMzVUCKK04+Nl8RsMZmpNDyRwWPBGs94TSm2wfY+sp1BLo
	ni1y/TfdqgU3UkXgAknadFg1x8InNenA1TH8oCBG8gYKYU4qmJUdummFrwwb1y9Ir4L0cDvdNtq
	ZvKgUOgaTfH9guyH62Twf3cDWp+Cth59rag4hbFymVAMeSpzgSo9ehQu75yzEOYgDwdNfi3nA2J
	+kEkNEyl6uRQQdTs74iE5Z5fvgFI7swx/nmE9GUmCDOl+TazK+5w9MT4082kjm0yLUQYE2oPI6c
	TCWer2JVoZLv/ra3eiirghSjWHjsNgyi6rPpc/KYyczgP/fDcWOfRlgI3tUmjwOCLKGcNHd+ITz
	niA8ASfNZLkzvJlu9FPOINd2MxtA==
X-Received: by 2002:ad4:596f:0:b0:87c:2967:fd32 with SMTP id 6a1803df08f44-8953c82d263mr190898256d6.22.1770687937497;
        Mon, 09 Feb 2026 17:45:37 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf9a15969sm933984785a.34.2026.02.09.17.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 17:45:36 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 0/1] drm/msm/adreno: Add A615 GPU for SDM670 and Pixel 3a
Date: Mon,  9 Feb 2026 20:46:02 -0500
Message-ID: <20260210014603.1372-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264179-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9EA011160B3
X-Rspamd-Action: no action

This adds support for the speed-binned A615 GPU on SDM670.

Changes since v2 (https://lore.kernel.org/r/20240806214452.16406-7-mailingradian@gmail.com):
- drop applied patches (previously 2-4/4)
- specify that this constrains the regs and clocks (1/4)

Changes since v1 (https://lore.kernel.org/r/20240730013844.41951-6-mailingradian@gmail.com):
- add Acked-by tag (1/4)
- add OPPs exclusive to some speed bins (3/4)
- enable GMU by default (3/4)

Richard Acayan (1):
  dt-bindings: display/msm/gmu: Add SDM670 compatible

 Documentation/devicetree/bindings/display/msm/gmu.yaml | 1 +
 1 file changed, 1 insertion(+)

-- 
2.53.0


