Return-Path: <devicetree+bounces-275024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAHDBf7Os2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD20827FEE9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 687CC3055C93
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F5E3845CD;
	Fri, 13 Mar 2026 08:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NxU4XSeE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B55E3806BD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391597; cv=none; b=cIvwgNblv1w9bDyB/4SBsaFJlY4QBTLDGrYha2ei2+9ROKkBp3ogyNY3xbug+x47xAz6cuy4Vg83vb13/M+tm9OFtJIIkYWZZB86199a1x3AGBLKLKIsWYfv7e4eTflS7N9qFp/RLXXOfIP/e2RctUxqcgke1Ob9XFgIGjZaUIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391597; c=relaxed/simple;
	bh=F85ua/d8qOWjdOkfuoDkCTncPT6NAHpTvZ/ZUgAPmqc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UUaw90H3paSsC+D6njX75H+nMUp36D/huG3mJvbBBlytDwMh4Lb1hiVlQZVmbRGzImElj31HlLS20pJkMf3JXplUk5iXNq4qpEFBfsqt7sbQ0hc6yPCa+msComQSJOzdhAD4oQA6aYVu9OSlDy5JPhwi2ax0gSpxvdcyzAWRHGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NxU4XSeE; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-899a5db525cso22642216d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773391595; x=1773996395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxGhsiu6vVtf2eBXG+5lirme72BJfSMC1iQP2Bm9SNY=;
        b=NxU4XSeE4qeoQJG5AhkaTfn3aYgMM+KO79tDC5yIGdOjjPMnznMpL2nz4MyEjz+Kfs
         Ml+JMsbgcj8aZ+McNXLnNNh3D+5fzt6AozqfOy6EIBliUXwNquGpVICXpTUy1/TCNHww
         ey7lPopcYL6j0tNGykn4ft48sSSzrPx5Sobcl+c+4VVUBLohHDNWaAVHH6bDV3Mbomw9
         1Lm6R993Fi2HkXtB9oqcPaBUu5SLc31xpk/6eooS8qkwUbM9vSmnYFs3KqW19iG/dDkB
         7ZVIK32SawD4sKa2/LBm3X/gECeF5sxuCq4n8JawrjBzzeunU+A7bbMMF+Ug7EsO+qJ0
         egBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391595; x=1773996395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SxGhsiu6vVtf2eBXG+5lirme72BJfSMC1iQP2Bm9SNY=;
        b=ay4cdHEBZOkR192uzW5ZLbSmn6vKXEItyaT86KF8aENJ7sNhay50WZpixF2oOxGQV7
         9FdKBOdinD3DwoNACd3U+KjDPjZfx9XrOMQuzWSEuXWuTDvPSAJKirqld6FPBzF8gICU
         7mX+VCziSyiVcIcCko2EP8X086IwxqGM1/ZekVRkubE2IXyEYU4AQFiHkaI/6ln+V4F1
         CVatRG5dfIYP4zgzEyUNbsA66QJ7+YB3i2fqx7GhCUxjhmIDZ+dDq7wLv3yykead5rx3
         XyoUc5BJPK6fjd1sBoQFx9ql3+VbslQgrd+aohgl87GYOUnVsn6QF56DNLmY9aM6D8qa
         7K2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUe9EjLf3aYyQmWN0jin8YtUvBlsdH3Y5d0TQm0ow0gd07NBpCZJmwPdB0MysZ2DLGdepO9hHPXCmkH@vger.kernel.org
X-Gm-Message-State: AOJu0YxllVBgzKDJfiEP5JnXdcbU49J2yVTcsBzXqG7FJH/Ab2g39Yl4
	mdnT9e5rMOWIm+JR9msG7Wwo4sgVB4BwErrklemuac0QrY8RLxJ93ufn
X-Gm-Gg: ATEYQzx/JrCtxIt4qcDahiaNHDcABb69hbLjNR5mG3phoIfJsop6Iga7TuRffvWHcLc
	vnNpUaA68xFNF6OcsCqjhfL1HlBrUbxVR4/kU90616O/W3Sjtdcf+22t47QJ0tL9+Y3SGJozUAU
	goKlLMNlwXMPpP3kta7x/ls+VU1i4tu+bJhJoETMD/sTBChET1zEOT3G6qJmzfabUtyume6iNY6
	JgFwLfUPQkbhkCfbUDLWcIx7rhu+HhPOW4dkJdPlGbMtQslmj6HQVWXnvK6S6Ixu6WPRRxQQm4b
	PFksscwIrjE9Z1rthDYXVWnpWL2kO2htElqdRquTVR9em67MH8vcnqLcoM8wgfKnCjHkCS/q9eS
	y2GVa2bbRIiZtgHTTFKllsOGEL5kl+bxWy3zMjnbAO9WBmEm3RkXkyooxRJO1uIpg8LbDKngARi
	wBOkZD71XziXRE1QTAOWXGilhN
X-Received: by 2002:a05:6214:1c41:b0:896:fa50:4c0c with SMTP id 6a1803df08f44-89a81f5282emr29582686d6.53.1773391595405;
        Fri, 13 Mar 2026 01:46:35 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb131sm50142206d6.13.2026.03.13.01.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:46:34 -0700 (PDT)
From: Bo Gan <ganboing@gmail.com>
To: linux-riscv@lists.infradead.org,
	samuel.holland@sifive.com,
	david@redhat.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Cc: lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com,
	marcel@ziswiler.com,
	conor@kernel.org,
	kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 5/6] riscv: dts: starfive: jh7110: activate XPbmtUC
Date: Fri, 13 Mar 2026 01:44:06 -0700
Message-Id: <20260313084407.29669-6-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313084407.29669-1-ganboing@gmail.com>
References: <20260313084407.29669-1-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275024-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AD20827FEE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Set riscv,xpbmt-uncache-bit to 32 to match SoC memory map:

           [0x0,   0x40000000) Low MMIO
    [0x40000000, 0x2_40000000) Cached Mem
  [0x4_40000000, 0x6_40000000) Uncached Mem UC+
  [0x9_00000000, 0x9_d0000000) High MMIO

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/boot/dts/starfive/jh7110.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 6e56e9d20bb06..6dfeb31538fba 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -14,6 +14,7 @@ / {
 	compatible = "starfive,jh7110";
 	#address-cells = <2>;
 	#size-cells = <2>;
+	riscv,xpbmt-uncache-bit = <32>;
 
 	cpus: cpus {
 		#address-cells = <1>;
-- 
2.34.1


