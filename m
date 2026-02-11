Return-Path: <devicetree+bounces-264653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEkvCa88jGlyjwAAu9opvQ
	(envelope-from <devicetree+bounces-264653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:24:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 961A812230D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:24:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86899301D33F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18821344039;
	Wed, 11 Feb 2026 08:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HS6IRrXW";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="DwVN3jIO"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D5521CFF6
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798251; cv=none; b=XT1EW+JOOtD3720av0evO3s6blfpq2IX8dfHrxsO8uaOU/QJ+DTnTBzl/TbxvVOKdaGQWdhBTgZ3G+zERYxL8L1MZrd+mK7XlQG2sepXBYUlBnuXN69jH8+uo3gyjWmmuIPA+QAkkU+Z9GzxdL/4ToVhtw6tva65OA8iU7kSrmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798251; c=relaxed/simple;
	bh=x7t59V9c0xgToE/ETTekEsYROgYWlXaKoSCGQmcen0M=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=qjhH8BZ6wgkrT7p7XQE3EKFnWmNL0RbhFXd2rVcrHRb1HP09WNJMiFu0MYZvR1LQ3UE+2EbWrXWgSgebpxgiBci8VA/gaYOPokz83tknXZ3JBNs3hqsPj1Y9gU36yU9SPINhiDYmyacsdBoXsDrcG4FhmbQn1msCwBWDDQsIoMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HS6IRrXW; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=DwVN3jIO; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770798248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G1KvghMrg5FQLYtugCrRlvN5/+TeaaG+RNwvPgguvEY=;
	b=HS6IRrXWCl5RKVD/xvmaHWXgIFzXwtIacBMKUMyGva+O4wfteFm5BHAAiGcWl6mRppGef6
	Mq0+QyuZ09KemvJYAhbGd99FwmnVuXQNwVPb/HvEsOxenUkrewuz3mn3mOwICxiMaH2Tt+
	y7PzVr3+liF58ZZ6eZMmVM0AioJPROc=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-myGhyUIDPsCcdtgH5CnySw-1; Wed, 11 Feb 2026 03:24:07 -0500
X-MC-Unique: myGhyUIDPsCcdtgH5CnySw-1
X-Mimecast-MFC-AGG-ID: myGhyUIDPsCcdtgH5CnySw_1770798246
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a79164b686so20583745ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770798246; x=1771403046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=G1KvghMrg5FQLYtugCrRlvN5/+TeaaG+RNwvPgguvEY=;
        b=DwVN3jIOmagDSplLOzdmp+CpFTbFclkoOeYBQqMYm15Tf1NbsZhvakUBzxqFR/dHI1
         eVgabVPp5qLd6kXuAAoMfckw4auo8ikqBFZ5WelazfqmP83Y/EKNoOjF51scggpoYo10
         OGuj63sF/zpBcRWORJJ/O+Xy3QqIWoePzUPrnugOEYTEi9I+8UQ7wWwdrbGj/Y91eUeM
         qn0p0ZN/13e6ioH29dZqyfJnCgy4w70FK30jorON+LaNhNOww3zHmCRQVH5OBdsNqlQB
         quhk/EjO6RY4Ao6Ctr2FcOEDALjN4yqbtx1d6yMvLYUe6MAK8WJcZovyOTzrjADVUa3r
         uIjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770798246; x=1771403046;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1KvghMrg5FQLYtugCrRlvN5/+TeaaG+RNwvPgguvEY=;
        b=f8GbptZba6RPRNCf/deBHwjAhBnGFkdE/djXts8vDY6VzLOvCZMiAcXr3Wkdvo3C93
         8lhzyBskDegKOX/vWKomwV7EoJCHvFODSEAZ9A9/cdswQkdwmErZkC0jqvn7B3QTH28C
         Yb+6KLTbXY/ovavNoRygKknLYskKp/H57nCRl8P9OdY5xRHOEY4Yz/DlT//2+3qg1Gw3
         2nDPfObhSzktoDn8V2vyhD1wFFNT3GjE9ftIE9mvC5zDTNgK+1WJmg+pmnY1ccv+AUHY
         LuHcGHYr/IyyU/UYOQB0SpmBjfBANuDFKgHz9oedUS2a/1gJOhKXk/6ZjieDcyrF2znN
         YHfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSCP/e7zUgvffrnoG45DebksCKtzr0y+c/OGXuEFpvMEXqhDNgFUOlFB5L5ak0lsJ49sEXyb1faJez@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq+BpOFuJjNcDLoB61aZKAxakl++w5M/EFmKO9JMa0xb8foSAo
	zsCjUFsqGtC4rq/D81WLRao9XrlBUCuiQ0X+nj5rAo56aJ5rzz9SCNAnRLnqcznedPNhi0eJunn
	Kl8eYjf/IQJlMZ/DaV2ZAonry2+f0qvOoX7Gs9Tc09EvLncH9vEFWs72KMdgSTh4=
X-Gm-Gg: AZuq6aI6+UW8nNGRQwKYVOiLqCQGi5S/OwVM5RW8JNaNNbsqKOXMCU6BBTRh1uKtwwm
	bk1kfZF+GIkiiLeyWGRordHs7142RkqFRS8UaGMZ0CcNHbM/2U363siEdOFCrlxsAjUsc6UZs91
	iZKUr8qbavjmkr87oq/MZxfJcsqXQAZAV9wZpXHxNUrVJXmBeYIB8VzKqMRAvlBM6ZhKIJqc541
	oXvHjCUffNkJUKlxE6huuQ65q37b2KLXfHMZqNzzYDSVKcModFO1+I8GUPcXSrgbkpnbUuti5wO
	tHlhZNXGbsZSJJ/iSZjmACUTbnPUxoXiNPiIa5SZdcHwppQcguXYsf3HHrbO+4ZV2aE43EC6OVW
	ZGQd9zlQ9qwIO
X-Received: by 2002:a17:903:985:b0:2a9:cb10:42d with SMTP id d9443c01a7336-2a9cb100bcemr122999105ad.61.1770798246172;
        Wed, 11 Feb 2026 00:24:06 -0800 (PST)
X-Received: by 2002:a17:903:985:b0:2a9:cb10:42d with SMTP id d9443c01a7336-2a9cb100bcemr122998855ad.61.1770798245566;
        Wed, 11 Feb 2026 00:24:05 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2984ab0esm15186415ad.9.2026.02.11.00.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 00:24:05 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 0/2] kdump: Enable LUKS-encrypted dump target support in ARM64 and PowerPC
Date: Wed, 11 Feb 2026 16:23:58 +0800
Message-ID: <20260211082401.2407853-1-coxu@redhat.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264653-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 961A812230D
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

To also enable this feature for ARM64 and PowerPC, we only need to add a
device tree property dmcryptkeys [2] as similar to elfcorehdr to pass the
memory address of the stored info of dm-crypt keys to the kdump kernel.

[1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/
[2] https://github.com/devicetree-org/dt-schema/pull/181


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

Coiby Xu (2):
  crash_dump/dm-crypt: Don't print in arch-specific code
  arm64,ppc64le/kdump: pass dm-crypt keys to kdump kernel

 arch/arm64/kernel/machine_kexec_file.c |  4 ++++
 arch/powerpc/kexec/elf_64.c            |  4 ++++
 arch/x86/kernel/kexec-bzimage64.c      |  6 +-----
 drivers/of/fdt.c                       | 21 +++++++++++++++++++++
 drivers/of/kexec.c                     | 19 +++++++++++++++++++
 kernel/crash_dump_dm_crypt.c           |  7 +++++--
 6 files changed, 54 insertions(+), 7 deletions(-)


base-commit: 2619c62b7ef2f463bcbbb34af122689c09855c23
-- 
2.53.0


