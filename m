Return-Path: <devicetree+bounces-268124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JPCL9CQnmnTWAQAu9opvQ
	(envelope-from <devicetree+bounces-268124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 264F51923AC
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE380303798A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E30D2D0C9C;
	Wed, 25 Feb 2026 06:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Y+GHTspu";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="eZ5bn9kY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69CF1F471F
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771999438; cv=none; b=ahBNM/v/sgDny0Vr6BcO8GevcD1TJMp8cRPcbbCqPTkqepDEluwsKxyYcARhj4HdajKfXqWfnOKGEj9/CUASFR8NqoQ9ihTW8lAN++LAo1/MYsRfALm6MW/OhM5p3/rbGzyY2+8IzaRzFNBWTvvocCh2kkIb+PySFLb7gQPCzMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771999438; c=relaxed/simple;
	bh=kJlYzIEB5txPOlTkpgdgiUclx6kFroc5mmWhpgVQZIU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=WJT08qyf6fIp1CoNUsgFDuHE8KWT1rp5KIMmmxq2dDbCblct90TXIa5p5Jo22jaf5HHnvdILewSnoksMq6UKBHR+sV3wy9xCmy0z3uaVERI+IopvezliLawrnl1248zO37OPofwdmx6Wf0vBpOjGInXEbOHiGUx0avMAms+3Pvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Y+GHTspu; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=eZ5bn9kY; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771999435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aRRYrwJJKmmym1rA1RWT0WjPr4yt1zKA44KIR1qeZ14=;
	b=Y+GHTspuM8JNXmMOct50oXkFoEgXsYuQMS/utlmpHphynFxCaiq5ghD3NO2A3YYJwYLRd2
	NINP/IyTwFeu6fXzPGbw6+8bWiFXCqs/FgW9MFNbvDh9i8zu6WjBujkPMM/uDIMh4X8C0S
	qT3XqAAodBgBaUtySngRcQfTHUhxCQk=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-524-acOMcRvsN5KF1ngoj1Z6Pw-1; Wed, 25 Feb 2026 01:03:53 -0500
X-MC-Unique: acOMcRvsN5KF1ngoj1Z6Pw-1
X-Mimecast-MFC-AGG-ID: acOMcRvsN5KF1ngoj1Z6Pw_1771999433
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-824ad5d2098so2671807b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771999433; x=1772604233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=aRRYrwJJKmmym1rA1RWT0WjPr4yt1zKA44KIR1qeZ14=;
        b=eZ5bn9kYh20w+TUzZuKPwVu2ES4FW8RE4ieMxWj38Qx9N/aQsNMWGwQQ5AVFk94Wrh
         kdcsmpIrRirDhmlRpQiFckt3sWqoyt/3COquk6jQ9s2SchID7DyoJ4AQ7PTKRoq4qUga
         FqS4zep1HfkeUo2I7IVOmf1eLkkEMd/c3Lg2Owl9c+owEhZC7t2jnMO+MIKuyZ2EndVI
         Pvb7U8pYrH0F8FCX4LwCsxfre6qvfrhEfiZmEhjHdmZZK3g3oVk7jXUlR3FGNM5WaGoM
         bpgIcyQvexFSellrcaqPLnDQWaCb/IUdvUflIhvazc0aoEeU0dXRDuk+tuYG0/OrENuw
         UacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771999433; x=1772604233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aRRYrwJJKmmym1rA1RWT0WjPr4yt1zKA44KIR1qeZ14=;
        b=VxryYVT1lNBQVcSfIHShISNqlKN5zDNBfGcnv2g8oUSWR+xWN1uaUEPHGti8I0Pcxf
         8JQj2Nl/LTGmW4M823hsL8cKvLeqvE8Y3WdivzsARKXnte2EdKwiX2T4AbWiYqGlky0y
         nMAbFQikJpEvWCMLufNifqnNPQpYRLM8t8NBZ8v8kS7gpYo+86tcVlEspqLPzMCyBUq8
         gGkjgiboRykQOhUXsD47+7G1z1GO16bhMwxylK1cNjoGAjbBRc86L05/L91Sb4wRlVea
         h0X01U6PgAky5S1AtRwtG9W6m4ruUPfFaluAmxCCHgbbTaWbYKzX+OyWDrfVBnsXzyd1
         7Etg==
X-Forwarded-Encrypted: i=1; AJvYcCUvgQ0F37ck2P1qFdvVVALbPjKX7x2tW6z/WeeFLIf5aDqI0va5aIOkqoNL3w7fSVyPTuYOcD2qA9zt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+5XNbhwlz4DSVA9HvzDpOrk/wx2p2aDdgTTVVlfUJkO6LGZg+
	ML4n4alZnW4eRGc4t/xEhxzRALjLhYRnVy7rQxWNmWRqx17s8HZeMYsCNOyQnYkx/tuCnPv7rKC
	dad/GLDfKNvZaF/lCFvyJGQYcu/Guh8bcjqVg+IZXTEjO0wU0i+I0HtetkrJ+gVg=
X-Gm-Gg: ATEYQzzEcb9R6b4iiYCmtXQ2GS/uDLZAqUQLbVPm5MX69Le0k7C/WPUFUdiCJepsq1F
	n+abPcIk7Moua/Ga6bR8no42iqcilJwFUO9480Reu5wugEpa76nCcg4STq2MQsPcnII93Bw/Fg8
	8WW2S4t43GjaYh3FCWfZMqlDIcqqrNlQmFJw0FzsIdSf5/3IMcyBUsHSjQea6AyzKTR21NfiQ7q
	IsFAeC3ga9iFXY19ZoAG6N6XmT/MW/wEhFN3mSyBI4g7tLD+PO5Uf5BkpWBctymi3cp/szvDUFQ
	7Ew2Q1YEqEO2RQaQNBk1OKPrMMDINz9ap2+LllEUym1fwE+rT8wigDiW5vBA+N/i9O3mc0cRulf
	srXAqHPpVhxUy
X-Received: by 2002:a05:6a00:ac3:b0:81e:8e66:38e0 with SMTP id d2e1a72fcca58-827249f8d7dmr1267960b3a.20.1771999432580;
        Tue, 24 Feb 2026 22:03:52 -0800 (PST)
X-Received: by 2002:a05:6a00:ac3:b0:81e:8e66:38e0 with SMTP id d2e1a72fcca58-827249f8d7dmr1267934b3a.20.1771999432047;
        Tue, 24 Feb 2026 22:03:52 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8ecc83sm12341778b3a.62.2026.02.24.22.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 22:03:51 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 0/3] kdump: Enable LUKS-encrypted dump target support in ARM64 and PowerPC
Date: Wed, 25 Feb 2026 14:03:43 +0800
Message-ID: <20260225060347.718905-1-coxu@redhat.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268124-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 264F51923AC
X-Rspamd-Action: no action

CONFIG_CRASH_DM_CRYPT has been introduced to support LUKS-encrypted
device dump target by addressing two challenges [1],
 - Kdump kernel may not be able to decrypt the LUKS partition. For some
   machines, a system administrator may not have a chance to enter the
   password to decrypt the device in kdump initramfs after the 1st kernel
   crashes

 - LUKS2 by default use the memory-hard Argon2 key derivation function
   which is quite memory-consuming compared to the limited memory reserved
   for kdump.

To also enable this feature for ARM64 and PowerPC, we need to add a
device tree property dmcryptkeys [2] as similar to elfcorehdr to pass
the memory address of the stored info of dm-crypt keys to the kdump
kernel.

[1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/
[2] https://github.com/devicetree-org/dt-schema/pull/181


v5
- Improve commit msg [Christophe]
- Fix a compiling error found by kernel test robot

v4
- Make arch-specific code more succinct by printing more logs in
  arch-independent code [Will Deacon]  

- Also use device tree for PowerPC to pass memory address of dm-crypt
  keys info
  - powerpc v2 patch that passes the dmcryptkeys kernel cmdline
    parameter:
    https://lore.kernel.org/all/20260106074039.564707-1-coxu@redhat.com/

v3
- Delete the property after reading it [Rob Herring]

v2
- Krzysztof
  - Use imperative mood for commit message
  - Add dt-schema ABI Documentation 
    https://github.com/devicetree-org/dt-schema/pull/181
- Don't print dm-crypt keys address via pr_debug

Coiby Xu (3):
  crash_dump/dm-crypt: Don't print in arch-specific code
  crash: Align the declaration of crash_load_dm_crypt_keys with
    CONFIG_CRASH_DM_CRYPT
  arm64,ppc64le/kdump: pass dm-crypt keys to kdump kernel

 arch/arm64/kernel/machine_kexec_file.c |  4 ++++
 arch/powerpc/kexec/elf_64.c            |  4 ++++
 arch/x86/kernel/kexec-bzimage64.c      |  6 +-----
 drivers/of/fdt.c                       | 21 +++++++++++++++++++++
 drivers/of/kexec.c                     | 19 +++++++++++++++++++
 include/linux/crash_core.h             | 14 +++++++-------
 kernel/crash_dump_dm_crypt.c           |  7 +++++--
 7 files changed, 61 insertions(+), 14 deletions(-)


base-commit: 7dff99b354601dd01829e1511711846e04340a69
-- 
2.53.0


