Return-Path: <devicetree+bounces-262917-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMQ8BxZghGng2gMAu9opvQ
	(envelope-from <devicetree+bounces-262917-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:17:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F2AF07A0
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 24B7C3003379
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D437D36F408;
	Thu,  5 Feb 2026 09:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="oxhIMknM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9565C325727;
	Thu,  5 Feb 2026 09:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282678; cv=none; b=mwJRwFObFEWzYFeucBf8Lmn31rioMVjLrx5bBZcnsrocX5Oo28aCtS0aX9sDndq4/bIU9Rd+YjjZiSZQgkLV/ioc77UDDI1sOPLOiADzfyQZg5S4QTom6RTIdjNEFSs4dUkMPlzNw2+FyjamK8M+7DHbHc3Y+OQocovBs51kOho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282678; c=relaxed/simple;
	bh=NB0By9FN34hvS0Z5fUPzrGrRRmnQ7gNZuf24dtcutUw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bd+uhqJ0xrR+/Ih0sQNlGUmOJgN1cD6tczzAu2/wqZl5JcoRQIu9pdklL7KxFVVgd5aQvL1kLOov/be+DTDpoXmi4u6qTdssffdWn++aWuK8eoY4u9iHGbsLdzuyG2HBAMWlEW9OX5o6cS3BtMj7kYIQ4LT8qrcUlPp6aZisTng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=oxhIMknM; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1770282621;
	bh=NolWR8JIBAdYnikugRoTc6MkkN9oNFAhxt9dq5W7BjA=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=oxhIMknMx2YVOm8VzLcA8EnxFmkSkqDFpcnOiQV73cb+zhIXn9QqypsAQLIFsJu0A
	 6Xp5H/iZhBePU5eqLYh3T2J0aHsjV2GEj1OOIpkKIl/Gdsnn7ARJ/In037OQ/hDhVl
	 AIAZrUnnD8GIE9wm1IcMGR8VGjKR1JisNqXGJrD0=
X-QQ-mid: zesmtpgz4t1770282619t1b7f7520
X-QQ-Originating-IP: 4xlMdgZm/qRXr0DGjUoqk+B9g6ZxuKZ+q/SLOnxKpyg=
Received: from SurfaceBook2-B.localdomain ( [101.70.125.34])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 05 Feb 2026 17:10:16 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7761756182653473071
EX-QQ-RecipientCnt: 19
From: Lv Zheng <lv.zheng@linux.spacemit.com>
To: Tomasz Jeznach <tjeznach@rivosinc.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Cc: Jingyu Li <joey.li@spacemit.com>,
	Lv Zheng <lv.zheng@linux.spacemit.com>,
	Zhijian Chen <zhijian@spacemit.com>,
	iommu@lists.linux.dev,
	linux-perf-users@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: [PATCH v4 0/7] iommu/riscv: Add HPM support for RISC-V IOMMU
Date: Thu,  5 Feb 2026 17:09:59 +0800
Message-ID: <DACC013F46A47459+cover.1770281596.git.lv.zheng@linux.spacemit.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1769562575.git.lv.zheng@spacemit.com>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz5b-1
X-QQ-XMAILINFO: OLsBWtCIHsg6jy1vFAM7i3sntcqk6iP6zXXdmx6q2+zK+K23BakH2/7q
	trRKF2dBKBaGtASr4cqPfLwkI+TuKokgZi+t94tREZMyzZ5UbgeHw4iXamqnf9F8brZ8Ka8
	a5HOMRY/ySEfXw2sKLoK6pqY/pjzHCEBr8nJtxz9e+OJ7NN3yqr7nu99f6jgcWsgyFUMIw8
	Dou3HqBtQRXOl5kt6SzSS31qb+A4ne3wvCXqbYMeoHaC5ns0W3GVWWmk4Q/5mrSHTM2iiyX
	Td13MTaTRaJTPfmE4//OJxTTvVztf6xVmNxKneoxz/VhWymuwWH12XVIcrGMDLHbBHgUlFy
	7eQHy4OrT0H7kWmUUaITsudMz2CsIsCn3VCn82ffMBaWq7LzYP/kgSy7YXrKgZD+xkVwQUC
	bRFpa02IhKuIb30iaiXNC6eISJllG47tqu0bJu0uA6JOZ844Rk3jmCdNNtfWIzV787scGMR
	58vNc5j8KBHXyaMNm5/Ln6u7eDgQkA34fNGlLtDKAhgAsYjHJLS6ctiKnfRXItVjw0B+0je
	PQwucgToj8R6IauD3aLqvQd+4UEoJuqNWH+tpb1jufKZj+V7Q4ojCWIDXnujz41v8CUqMQs
	zHp4I6WPRRFRTCTd5YLoW48naEZJbkarSunZYs3ABKtjwhS2yslGzbtGDcTQET2+BYn3MKU
	sLPpOPRayRfxSorDwmoSAedqhNNWqTrHX2/J8JKt2FZPs/zpDkZ2UM2WVLTppLqjz5uhR0i
	9HuLRD9wKsEBDs3fJ+hmllYW08DaaCv1KYhMB4wBWsj2ieIDSEdDCmp3NwppZqe3RxaK7ek
	YVm7bdSsOqRSp4Wh3r1xG074nlBqoSnCma8LsBm+RL6UeA16RxlTeM/0TtXMnWYVtHNUWD4
	zWCJylBwlTL0jMzZWbYPgCS8m0yhnbXXgh8z8OXnGQV/qq1ZwfUxjL3FJW1hgBEvbPQFgjt
	6jnYFyGb2ircQzDNkJmmRiUTKC2VZKuxCcZ4yHgQzU8uilcXGnjEJ4s3GU6scyi799LjG2j
	SO8X0r9dH0kOH1Zykp7ufWtsV1Q1xpQJt2xCbT+dTA5XtQYh4UlpS3UShFrQIWFvjYtNi85
	g==
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[spacemit.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-262917-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lv.zheng@linux.spacemit.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 54F2AF07A0
X-Rspamd-Action: no action

Includes HPM support for RISC-V IOMMU. The HPM hardware mechanism can be
found in the recent announced SpacemiT SoCs (K3, V100), where T100
(SpacemiT distributed IOMMU) is shipped. 

Revisions:
v1
 Initial release.
v2 (sent as v1.1)
 Split and cleanup DT-bindings.
v3
 1. Refactor using vendor specific compatible.
 2. Implement vendor events with a userspace identifier.
v4
 1. Drop ICVEC check which is not that usful as WSI device tree can use
    only 1 vector for IOATS CIV/FIV/PIV/PMIV.
 2. Solve DT binding check of "interrupts/maxItems" attribute.
 3. Address Robin's comments for an old revision sent by "Zong Li":
    https://lore.kernel.org/all/20250115030306.29735-1-zong.li@sifive.com/
 4. Limit IOATC enumeration by referencing spacemit,riscv-iommu.

The tested result can be found as follows:

 root@sdfirm:~# perf stat --timeout 5000 -a -e spacemit_ioats_hpm_00/dd_walk,config1=0x20c0010000000000/ dmatest; sleep 1
 [  145.630224] dmatest: Started 1 threads using dma0chan0
 [  145.644896] dmatest: dma0chan0-copy0: summary 1 tests, 0 failures 123.60 iops 123 KB/s (0)

  Performance counter stats for 'system wide':

                  3      spacemit_ioats_hpm_00/dd_walk,config1=0x20c0010000000000/                                      

        0.193108000 seconds time elapsed

 root@sdfirm:~# echo dma0chan1 > /sys/module/dmatest/parameters/channel 
 [  327.001820] dmatest: Added 1 threads using dma0chan1
 root@sdfirm:~# perf stat --timeout 5000 -a -e spacemit_ioats_hpm_00/s_walk,config1=0x20c0011000000000/ dmatest; sleep 1
 [  484.037180] dmatest: Started 1 threads using dma0chan1
 [  484.048832] dmatest: dma0chan1-copy0: summary 1 tests, 0 failures 172.11 iops 172 KB/s (0)

  Performance counter stats for 'system wide':

                  6      spacemit_ioats_hpm_00/s_walk,config1=0x20c0011000000000/                                      

        0.191970000 seconds time elapsed

 root@sdfirm:~# perf stat --timeout 5000 -a -e spacemit_ioatc_hpm_0003/tlb_mis,config1=0x20c0011000000000/ dmatest; sleep 1
 [  546.332494] dmatest: No channels configured, continue with any
 [  546.363062] dmatest: Added 1 threads using dma0chan1
 [  546.377994] dmatest: Started 1 threads using dma0chan1
 [  546.388376] dmatest: dma0chan1-copy0: summary 1 tests, 0 failures 213.94 iops 213 KB/s (0)

  Performance counter stats for 'system wide':

                  3      spacemit_ioatc_hpm_0003/tlb_mis,config1=0x20c0011000000000/                                      

        0.225062000 seconds time elapsed

Jingyu Li (2):
  iommu/riscv: Enable IOMMU DMA mapping support
  iommu/riscv: Add HPM support for performance monitoring

Lv Zheng (5):
  dt-bindings: iommu: Add spacemit/t100 features
  iommu/riscv: Add vendor event support for RISC-V IOMMU HPM
  spacemit/t100: Add global filter awareness for RISC-V IOMMU HPM
  spacemit/t100: Add SpacemiT T100 IOATC HPM support
  perf vendor events riscv:: Add support for spacemit,riscv-iommu HPM
    aliasing

 .../bindings/iommu/riscv,iommu.yaml           |   53 +-
 MAINTAINERS                                   |    3 +
 drivers/iommu/Kconfig                         |    2 +-
 drivers/iommu/riscv/Kconfig                   |    9 +
 drivers/iommu/riscv/Makefile                  |    1 +
 drivers/iommu/riscv/iommu-bits.h              |   18 +
 drivers/iommu/riscv/iommu-hpm.c               | 1123 +++++++++++++++++
 drivers/iommu/riscv/iommu-pci.c               |   13 +-
 drivers/iommu/riscv/iommu-platform.c          |   12 +-
 drivers/iommu/riscv/iommu.h                   |   46 +-
 .../arch/riscv/spacemit/iommu/sys/ioatc.json  |   30 +
 .../arch/riscv/spacemit/iommu/sys/ioats.json  |  163 +++
 12 files changed, 1464 insertions(+), 9 deletions(-)
 create mode 100644 drivers/iommu/riscv/iommu-hpm.c
 create mode 100644 tools/perf/pmu-events/arch/riscv/spacemit/iommu/sys/ioatc.json
 create mode 100644 tools/perf/pmu-events/arch/riscv/spacemit/iommu/sys/ioats.json

-- 
2.43.0


