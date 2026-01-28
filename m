Return-Path: <devicetree+bounces-260513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMnYNgA0eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:06:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B87A5148
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54C6A30F23CC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90755302779;
	Wed, 28 Jan 2026 15:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="et6DJQ72"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EA9301465
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615738; cv=none; b=HYtdpXIY8IBjG8vxNg1elSDuLM1GJHoKZc0nONJyU3QP9GHt4cSkJmqjploEcb8FMEuBDV3p00Doxcr8X9/Ogwp0i23BCel1QR1xY2q73RyPIIyz2tLn9Ib350fg6q1JGbZ8tob0YWWb3Cm4i4AIhe6azcYyxZ8QdEyoz26mfSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615738; c=relaxed/simple;
	bh=JiYGTuHq2oLea1U9eF36mE1SQsl/jFbB+f/XpeC+SjY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lRvhyVoZB0b/hhc7B7AlJMfRBapCYsiKqs7cromHt44222aCEhLFzoLw7dJ/jgnW25LLJ+1q2VOS9Iy7AyjAiaPH2lKhVCLcj0dXh3oUfBTZll1mLKrs9Dg49bNlpBwvUe3fkWvLyw1YQP2JRagVxms+Ysk2b3XJRPCUXuuFXXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=et6DJQ72; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-34c708702dfso3929118a91.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769615736; x=1770220536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GvMGMjr+cGrxf3kN3/yzoufMe/etzQ/b/TcpkTkqcfA=;
        b=et6DJQ72aD633iweki55A9oF+tHtj5I21yL3P74xo5aOKS37DB/Hv0YOXPakvlqYTA
         JgWeV0m2MiJiGLWbVhUKYx9LiMoO7WqYjDraY9vN8CE8/jCFF4dX9nNOQs5ZtVJELmei
         rVPOIvH7hcS4/IG2k64xauGz4cxvccDWzUAd/OCR+DpQfLe4HIhXcWv8TeHXsVKrprOM
         YAtZrykza9tbby4ll2vqkSdRDX8E3FA3njKgmWPZDvlSCrq/wN2Rg0TQIBlLpt6HspQ/
         3AcdTTdW4YumkNfC2CVkn8Cm4X42cvr3rATq77LULNsxgXgqUM4ENJLOa8hAdpH1XXqB
         n5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769615736; x=1770220536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GvMGMjr+cGrxf3kN3/yzoufMe/etzQ/b/TcpkTkqcfA=;
        b=sWhCyNMXl054h8S4LLTW2h2bsFCQmG6CzgWEyXEt0/L1yod7WmW9z3iKq6nrq/CAf9
         D2mtPe++kmDdxJvVFCNLACZ15gzN5Q6q5NJOf2yFlp/nxUT87E1A9oz14qdCrSmRTZkC
         eq8RQAyX229ki+lBkspQ6xudlp0SmRzObFLo4qqvP0sHlINwHmSswjK4RCzwqAlKdShW
         bjmjBrn3WSN4GvNqr/f6RJub/6ssu/PYNEqWHyxYRMuPVX30Cxsx0LOZIJO8dohkEKum
         faqtHDz3UGhIT49E5WUMbvjf4kx0E4utY9Fd+t4rdXiugD3djiC7DukeIts4cBSxhEvB
         F7wg==
X-Forwarded-Encrypted: i=1; AJvYcCWodxojVRKVl0zfISBMFMvay0KdMgm+NwE/Zz1nkEke6n1MwDPnnkr2VuerE2DzsHx6JM9xRT4OxsoY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyh5HimtaJcCfuyIilUfkVtNaJiFrUGBO/zTnx0F5vRLlnoCyQ
	SkxXN6EoaKQecaPcwtS+fO1RwOrMxY596P0d9jDe5T8N/BHs0u1C7OnqZ3R13g==
X-Gm-Gg: AZuq6aKUqIORstL5jizYGjLZKHHFbyqcYOj6b0F4C7EU//Z8aiMaerBPqTNxJqhmbUr
	HjfQa2uTU6YZeHYWiWQGGVXOlAAx0a5woozRx42kam6XG97JWRtKNcrcI0h+xWJaE0mabMJcspW
	Uusu/4Ngbk28SLYclhjmKhap40gE989Rpjt5/i5GKHdHgCP71ZcUsjnj2HcvzTdTcGGNCzJm7yn
	Qcm3MGiUawD70WHGfZLe6gUmn2UUOLgATWbRYo31Ur4uxDJFDmUTy32gmDlRYpHQKz2QY/DuoF9
	M8EPcD0eYH8x5oWCq415Nco02QStyANK0ae9ithEV2kJ5Imcoilu8MKVJQ2IwEJ+fpvTL3GJuwU
	YtPSEadwGfSzgkEXBGhLohYecdfZBt5/F5oklEBVLX6AxvDANDciLoc6jERxD+TP7mIQJSiKIrb
	8OBzlo6/bePyNKQ3OjzHV81J8byZYesKOFfS66HB+7jehnO7jtq2V4xwg=
X-Received: by 2002:a17:90a:f946:b0:353:f7b:6d60 with SMTP id 98e67ed59e1d1-353feda10admr5504546a91.33.1769615736352;
        Wed, 28 Jan 2026 07:55:36 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6427da845csm2621521a12.12.2026.01.28.07.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:55:35 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: shawnguo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH v3 0/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Wed, 28 Jan 2026 23:55:28 +0800
Message-ID: <20260128155529.3699599-1-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127025740.2601841-1-onlywig@gmail.com>
References: <20260127025740.2601841-1-onlywig@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-260513-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 87B87A5148
X-Rspamd-Action: no action

Changes in v3:
- Misunderstood reviewer's feedback in v1, improved commit message description

Changes in v2:
- Fix Makefile alphabetical ordering
- Move vendor property before status in device tree
- Simplify commit message as suggested by reviewer

Wig Cheng (1):
  arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM

 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 51 +++++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

-- 
2.43.0


