Return-Path: <devicetree+bounces-270399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WP5UBAewpmn9SgAAu9opvQ
	(envelope-from <devicetree+bounces-270399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDE91EC273
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:55:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 124543039F73
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8D538C2DF;
	Tue,  3 Mar 2026 09:55:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C330369206;
	Tue,  3 Mar 2026 09:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772531704; cv=none; b=SYDcMdelpUAdjRoNnYZu9VwI4xnncVNqQFbXBhrjSc1Qu6+T7cbEYbGuy1/yAdvD6jVE1WIaPcAAV6bNeBbz1lhxpnT3xMKb8s5DjhTmkwu/ZRvDTZFmNB+P80kduO6q0MDNrwbXtMrpDYTnfMkRUsWr3mlvebWLP4LJpMdA1vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772531704; c=relaxed/simple;
	bh=uQuEV1L4Zeytm0zMAGjwc1P5mrMbM/X3GwH/RfOzjDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gtsar6TOyw9pQQtMNmVFxU70gNtZjdivmg+ZOKLGylPBR9AU3xqPDNhnK+kyQ90shUp/K1EHRBwKzuyf37Ib2YIyLs3q4/MYmhsA4bkgGUfpljTMPQuKzts5O3+ReKCOMQ89rBHgRUcDMq/pme4mtHNJlc4qYK1L5GDul1mjbAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iscas.ac.cn
Received: from [10.213.20.192] (unknown [210.73.43.101])
	by APP-05 (Coremail) with SMTP id zQCowAB3zhHor6ZpCWyTCQ--.36234S2;
	Tue, 03 Mar 2026 17:54:49 +0800 (CST)
Message-ID: <ded1cb94-8484-4ea3-ba7a-22fa76547db9@iscas.ac.cn>
Date: Tue, 3 Mar 2026 17:54:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: Add 'linux,pci-domain' to PCIe
 nodes for K1
To: Yixun Lan <dlan@gentoo.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dlan@kernel.org, krzk+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 palmer@dabbelt.com, pjw@kernel.org, robh@kernel.org, spacemit@lists.linux.dev
References: <20260202100000.19176-1-amadeus@jmu.edu.cn>
 <20260302071502.63672-1-amadeus@jmu.edu.cn>
 <20260302074235-GYB288339@gentoo.org>
Content-Language: en-US
From: Vivian Wang <wangruikang@iscas.ac.cn>
In-Reply-To: <20260302074235-GYB288339@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CM-TRANSID:zQCowAB3zhHor6ZpCWyTCQ--.36234S2
X-Coremail-Antispam: 1UD129KBjvdXoWruw1DGFy8JF17JFWDWFy8Zrb_yoWDCFb_uF
	yDAr1DC34DKryxKr1Fkws3XrWxA3y8Kw18trn3GFy2k3s5X39agFsYkFn3ZayxJFZ7GrnI
	yF1Fv3y3Zr1YvjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbakYjsxI4VWDJwAYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z2
	80aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAK
	zVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Gr0_Cr1lOx
	8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4IIrI8v6xkF7I0E8cxan2IY04v7MxkF
	7I0En4kS14v26r1q6r43MxkIecxEwVAFwVW8uwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4
	IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1r
	MI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJV
	WUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j
	6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJb
	IYCTnIWIevJa73UjIFyTuYvjxUxsXoUUUUU
X-CM-SenderInfo: pzdqw2pxlnt03j6l2u1dvotugofq/
X-Rspamd-Queue-Id: 9EDE91EC273
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270399-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[iscas.ac.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangruikang@iscas.ac.cn,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.964];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,iscas.ac.cn:mid]
X-Rspamd-Action: no action


On 3/2/26 15:42, Yixun Lan wrote:
> Hi Chukun,
>
> On 15:15 Mon 02 Mar     , Chukun Pan wrote:
>> Hi,
>>
>>> The SpacemiT K1 SoC has 3 PCIe EP controller nodes. Add the
>>> 'linux,pci-domain' property to assign a PCI domain number to
>>> each of the controllers instead of assigning it randomly.
>> Does anyone have any thoughts on this?
>> Without this patch, the PCI domain number is random.
>>
> You describe what's has been done here, but no why?
> Can you add description about why problem with random domain,
> and the motivation of the change behind?
>
> from my understanding of reading DT document, either way seems
> fine..

For example systemd-udevd provides the interface name based on the
segment group / domain number, so if you add an additional PCIe network
card, the name of the network interface will flip between enP0p1s0 and
enP1p1s0, which is a bit inconvenient.

This isn't inherently a problem (these things were never as predictible
as they wanted anyway) but a convenience would still be nice.

Vivian "dramforever" Wang


