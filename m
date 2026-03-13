Return-Path: <devicetree+bounces-275025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE5DOPLOs2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 932EF27FEC6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02C1A30236AB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AFD0378D81;
	Fri, 13 Mar 2026 08:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VqCJedCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E86F379EFC
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391600; cv=none; b=fGkNwTX7Cjo5O8ugSD8KzxnaIuVP43NDZvPRhirBwQkUyOusiX1F8WKu0DJb5f+aAZB7/QST1zlxUvr9CFtKSMQrecSyBxl1nl/Yl8caHrE0ZoctU83IrnOBfP+k8RYLG+rUcMrxpDnCqdFnsz3QePds7M0eiDWCA+gJXXEtVYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391600; c=relaxed/simple;
	bh=HuHpz91KYcxtzb3pdzeY1NuW7aFjeJ5XOYyXgme0Iwg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RG6j7ZeG2LS5Cjnxl0U/6HpyyECJtIeLXLfWRb3DepTeXtGNa9JOHcdn245WuGkqIHohwgAgXRHZLit522zn2XuzaPCJtE22/Kodv0L7+oBZquHpxMhKS3XqPR8t66UG1Fcpf/XKGjgBTMXGY3jO6lKMQ3kNxedAzo6fT+2vD2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VqCJedCe; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-899efe93d4eso24838156d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773391598; x=1773996398; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWtVhcPwqjrv+e22Y/nIPTx2YCaGzJEiskvbRnBBT54=;
        b=VqCJedCeXCbD8Rib4MZXWr4LAz1yxBv8DufqgRydPFXAkQoCRPVzjtwWeh5e6dnp6L
         BHPOZBwZmEByPcPzogS4iaG6SBDI/orKo/9VSNbaTHtwGqwrIl28nbKOI9T9KWmnG2Hw
         gne1XaV+mPVywtrVj8Qe6bTW+yl7/xX1Gjtcu9HHqkBPLbHPFYfmXKBld9TVn2ueikDT
         e/zLeMPpklzMVuI4lfIM8vW+VreF+22cSFvXxu5ttVMDinsa97Iwg6KUZlc0cbq5HCeQ
         2T0H6fVqTLvtV0n4RvJA1FHlqQg/UDwWtGo9guvQduUSY3ZijzDogoZzLKZ3het5H3A+
         MbSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391598; x=1773996398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EWtVhcPwqjrv+e22Y/nIPTx2YCaGzJEiskvbRnBBT54=;
        b=na4r9beL7oA/SuQQAFDWAZ9BrxSqYtwTS5yWN3cMTRMuyTONerYywIgv7b9Auj1ySu
         FpizURvS7dBUzQIDDCWWEYnXCRv0kWIv4Ugs0htfEQU9LQoXjn4z0F9uPNgfySfA+v3N
         LNSchDPfpNIrw/bYtP/wo0ov7lY3IuvZq1ePdDC3IdH/e0cD5xvtPRr+96ahxusO4/kH
         WtybU+LiXV6L0BnDq8gqz7h8dkaAhGrdzeI6FZBNqPK5JImJTk1PRfQzPAKoMqI9PpJE
         oq9XAZkGfe+vFzlahjrv4wJSgShXoivFKCIqzdJwBfm7L9zh/lChygJMmoa24AXziNRv
         2FMw==
X-Forwarded-Encrypted: i=1; AJvYcCV/nw8wOggzNsYTkh0Y1Aruv23n/zOliFgt2uRps7Ky5acnTS8x8cwv8xnH96MBCwLkO27l7uBsgRjl@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy6cLwURsai5xIaesC2fSPc8BY3z8xEdUyu+AQedeuuitj/8VY
	bgudQaDFfVdEsyXVXRPop1wOQheeRQFTBTvhk1bubX7FIFB4h9B5SfLq
X-Gm-Gg: ATEYQzyW0jyFO5dKUvc3dYC+sZB1FOJpEC/zclaQKZfp6HeU0tTxz+8pAmF9ffqWZPq
	Y2rJPhSWCPXd8tFUp6eqDcYsGXyAuRcnt+ulicwcXPLJ/7wMwXBJ1fB/GNJ8w/D9WuPZAfsAkO/
	QP1md4lJF4wCxXZ4qnoJvcSlkhQq0+RAoYIC3aJHBBwphuwgVIa+jSozq+eF3Aq487GwqW0QY51
	Rouw9BL9hj4A+YGc3iRp4nmX1DtBAUljAAq/OUJxHE4qpWVCAg7nGNTZCVJQchEoYa+NXIWQiRv
	bscvCLc1Ga/hNLr7EYSMSK1GRrLBsojVuczDhIUQBGsjCzBsY5YxjC/CblJjMy8WwfdNc9ARxWU
	FqJHv/ESaZY/h+wY2q3PT47XMu9mcFomFt+vYi7kgboL7Go/BXmpnAFubmpEvuXFrTOwRP3CGvz
	viOxSXmjNilKh513m76Qr2fbVODqlftz5ikYE=
X-Received: by 2002:a05:6214:21c4:b0:899:fd8c:55d2 with SMTP id 6a1803df08f44-89a81cce733mr42999986d6.15.1773391598089;
        Fri, 13 Mar 2026 01:46:38 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb131sm50142206d6.13.2026.03.13.01.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:46:37 -0700 (PDT)
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
Subject: [RFC PATCH 6/6] [TESTING-ONLY] riscv: dts: eswin: eic7700: activate XPbmtUC
Date: Fri, 13 Mar 2026 01:44:07 -0700
Message-Id: <20260313084407.29669-7-ganboing@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275025-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 932EF27FEC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Set riscv,xpbmt-uncache-bit to 38 for testing only.
(Make sure your firmware remaps it as the following)

            [0x0,    0x20000000) Core Internal
     [0x20000000,    0x40000000) Core Internal (Die 1)
     [0x40000000,    0x60000000) Low MMIO
     [0x60000000,    0x80000000) Low MMIO (Die 1)
     [0x80000000, 0x10_80000000) Cached Mem
  [0x20_00000000, 0x30_00000000) Cached Mem (Die 1)
  [0x80_00000000, 0xa0_00000000) High MMIO
  [0xa0_00000000, 0xc0_00000000) High MMIO (Die 1)
  [0xc0_00000000, 0xd0_00000000) Uncached Mem  <----------.
  [0xe0_00000000, 0xf0_00000000) Uncached Mem (Die 1)  <--+--.
with firmware/hypervisor re-mapping:                      |  |
------------------------------------                      |  |
 [0x100_80000000, 0x110_80000000) Mem UC+ ----------------'  |
 [0x120_00000000, 0x130_00000000) Mem UC+ (Die 1) -----------'

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/boot/dts/eswin/eic7700.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts/eswin/eic7700.dtsi
index f16ec76fb130c..5c413439daf0a 100644
--- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
+++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
@@ -10,6 +10,7 @@
 / {
 	#address-cells = <2>;
 	#size-cells = <2>;
+	riscv,xpbmt-uncache-bit = <38>;
 
 	cpus {
 		#address-cells = <1>;
-- 
2.34.1


